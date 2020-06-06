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
	<23.978142, 35.185467, 34.871681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284027, 35.153584, 35.127449>,  <24.467558, 35.134453, 35.280910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284027, 35.153584, 35.127449>,  <23.978142, 35.185467, 34.871681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284027, 35.153584, 35.127449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622398, -0.165567, -0.764989,
		0.166840, 0.982972, -0.077004,
		0.764712, -0.079704, 0.639423,
		24.513441, 35.129673, 35.319275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.542355, 35.532890, 34.534431>,  <23.978142, 35.185467, 34.871681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.542355, 35.532890, 34.534431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714708, 35.308998, 34.817570>,  <24.818121, 35.174664, 34.987453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.714708, 35.308998, 34.817570>,  <24.542355, 35.532890, 34.534431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714708, 35.308998, 34.817570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622208, -0.383852, -0.682287,
		0.653604, 0.734411, 0.182874,
		0.430882, -0.559731, 0.707843,
		24.843973, 35.141079, 35.029922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076035, 35.519745, 34.194103>,  <24.542355, 35.532890, 34.534431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076035, 35.519745, 34.194103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085539, 35.231091, 34.470848>,  <25.091242, 35.057899, 34.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.085539, 35.231091, 34.470848>,  <25.076035, 35.519745, 34.194103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085539, 35.231091, 34.470848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772393, -0.426123, -0.470986,
		0.634700, 0.545583, 0.547262,
		0.023761, -0.721636, 0.691865,
		25.092667, 35.014599, 34.678406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806540, 35.460499, 34.586327>,  <25.076035, 35.519745, 34.194103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806540, 35.460499, 34.586327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611305, 35.112362, 34.612492>,  <25.494165, 34.903481, 34.628193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611305, 35.112362, 34.612492>,  <25.806540, 35.460499, 34.586327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611305, 35.112362, 34.612492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730985, -0.448586, -0.514229,
		0.476900, -0.203170, 0.855154,
		-0.488086, -0.870341, 0.065416,
		25.464880, 34.851261, 34.632118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426630, 35.577885, 34.955540>,  <25.806540, 35.460499, 34.586327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426630, 35.577885, 34.955540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716232, 35.389862, 35.157475>,  <26.889994, 35.277046, 35.278633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.716232, 35.389862, 35.157475>,  <26.426630, 35.577885, 34.955540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716232, 35.389862, 35.157475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204561, -0.552628, -0.807934,
		0.658762, 0.688220, -0.303951,
		0.724008, -0.470060, 0.504833,
		26.933435, 35.248844, 35.308926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070883, 35.568825, 34.595875>,  <26.426630, 35.577885, 34.955540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070883, 35.568825, 34.595875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017010, 35.254063, 34.836758>,  <26.984686, 35.065205, 34.981285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017010, 35.254063, 34.836758>,  <27.070883, 35.568825, 34.595875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017010, 35.254063, 34.836758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108307, -0.615789, -0.780431,
		0.984952, -0.039888, 0.168164,
		-0.134684, -0.786900, 0.602203,
		26.976604, 35.017994, 35.017418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619608, 35.060646, 34.505310>,  <27.070883, 35.568825, 34.595875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619608, 35.060646, 34.505310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327436, 34.853607, 34.683556>,  <27.152134, 34.729385, 34.790504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327436, 34.853607, 34.683556>,  <27.619608, 35.060646, 34.505310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327436, 34.853607, 34.683556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059679, -0.698320, -0.713293,
		0.680377, -0.494415, 0.540962,
		-0.730428, -0.517593, 0.445615,
		27.108309, 34.698330, 34.817242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845732, 34.431019, 34.322865>,  <27.619608, 35.060646, 34.505310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845732, 34.431019, 34.322865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472431, 34.349865, 34.441441>,  <27.248451, 34.301174, 34.512585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472431, 34.349865, 34.441441>,  <27.845732, 34.431019, 34.322865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472431, 34.349865, 34.441441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021145, -0.792773, -0.609150,
		0.358595, -0.574759, 0.735569,
		-0.933254, -0.202885, 0.296438,
		27.192455, 34.288998, 34.530373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840204, 33.708549, 34.523823>,  <27.845732, 34.431019, 34.322865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840204, 33.708549, 34.523823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472755, 33.830685, 34.423504>,  <27.252285, 33.903965, 34.363312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.472755, 33.830685, 34.423504>,  <27.840204, 33.708549, 34.523823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472755, 33.830685, 34.423504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101675, -0.796007, -0.596687,
		-0.381827, -0.522631, 0.762276,
		-0.918624, 0.305336, -0.250799,
		27.197168, 33.922287, 34.348263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364876, 33.239361, 34.748329>,  <27.840204, 33.708549, 34.523823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364876, 33.239361, 34.748329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174776, 33.425411, 34.449589>,  <27.060717, 33.537041, 34.270344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174776, 33.425411, 34.449589>,  <27.364876, 33.239361, 34.748329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174776, 33.425411, 34.449589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285858, -0.884419, -0.368902,
		-0.832120, 0.038174, 0.553281,
		-0.475249, 0.465131, -0.746854,
		27.032202, 33.564949, 34.225533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657701, 33.004635, 34.849819>,  <27.364876, 33.239361, 34.748329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657701, 33.004635, 34.849819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673975, 33.105938, 34.463203>,  <26.683739, 33.166721, 34.231232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673975, 33.105938, 34.463203>,  <26.657701, 33.004635, 34.849819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673975, 33.105938, 34.463203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489632, -0.838181, -0.240237,
		-0.870979, 0.483024, 0.089904,
		0.040685, 0.253261, -0.966542,
		26.686180, 33.181915, 34.173241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.052124, 32.659504, 34.571365>,  <26.657701, 33.004635, 34.849819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.052124, 32.659504, 34.571365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309891, 32.739296, 34.276085>,  <26.464550, 32.787170, 34.098919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309891, 32.739296, 34.276085>,  <26.052124, 32.659504, 34.571365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309891, 32.739296, 34.276085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212552, -0.880604, -0.423507,
		-0.734539, 0.429820, -0.525078,
		0.644417, 0.199476, -0.738198,
		26.503216, 32.799137, 34.054626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.690805, 32.459187, 34.004356>,  <26.052124, 32.659504, 34.571365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.690805, 32.459187, 34.004356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073854, 32.459370, 33.889149>,  <26.303684, 32.459480, 33.820023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.073854, 32.459370, 33.889149>,  <25.690805, 32.459187, 34.004356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.073854, 32.459370, 33.889149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136767, -0.879339, -0.456134,
		-0.253475, 0.476197, -0.842014,
		0.957625, 0.000459, -0.288019,
		26.361141, 32.459507, 33.802742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636763, 32.036228, 33.448910>,  <25.690805, 32.459187, 34.004356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636763, 32.036228, 33.448910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033558, 32.072201, 33.484402>,  <26.271635, 32.093784, 33.505695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033558, 32.072201, 33.484402>,  <25.636763, 32.036228, 33.448910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033558, 32.072201, 33.484402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124041, -0.826468, -0.549149,
		0.023947, 0.555755, -0.831001,
		0.991988, 0.089928, 0.088728,
		26.331154, 32.099178, 33.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909620, 31.932810, 32.819775>,  <25.636763, 32.036228, 33.448910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909620, 31.932810, 32.819775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188223, 31.816353, 33.082108>,  <26.355385, 31.746479, 33.239506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188223, 31.816353, 33.082108>,  <25.909620, 31.932810, 32.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188223, 31.816353, 33.082108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121407, -0.852995, -0.507603,
		0.707206, 0.433171, -0.558768,
		0.696505, -0.291142, 0.655833,
		26.397175, 31.729010, 33.278858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416067, 31.564125, 32.472828>,  <25.909620, 31.932810, 32.819775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416067, 31.564125, 32.472828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549650, 31.450657, 32.832382>,  <26.629801, 31.382576, 33.048115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549650, 31.450657, 32.832382>,  <26.416067, 31.564125, 32.472828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549650, 31.450657, 32.832382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244415, -0.894961, -0.373236,
		0.910348, 0.344348, -0.229546,
		0.333958, -0.283670, 0.898890,
		26.649837, 31.365557, 33.102051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.135502, 31.236773, 32.325100>,  <26.416067, 31.564125, 32.472828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.135502, 31.236773, 32.325100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993505, 31.096325, 32.671673>,  <26.908308, 31.012056, 32.879616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993505, 31.096325, 32.671673>,  <27.135502, 31.236773, 32.325100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993505, 31.096325, 32.671673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248293, -0.928915, -0.274712,
		0.901295, 0.117608, 0.416936,
		-0.354989, -0.351119, 0.866428,
		26.887009, 30.990990, 32.931602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618525, 30.779810, 32.378128>,  <27.135502, 31.236773, 32.325100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618525, 30.779810, 32.378128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311039, 30.674877, 32.611454>,  <27.126549, 30.611917, 32.751450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.311039, 30.674877, 32.611454>,  <27.618525, 30.779810, 32.378128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311039, 30.674877, 32.611454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074178, -0.942427, -0.326080,
		0.635278, -0.207392, 0.743915,
		-0.768713, -0.262334, 0.583320,
		27.080425, 30.596176, 32.786449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896940, 30.214767, 32.747799>,  <27.618525, 30.779810, 32.378128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896940, 30.214767, 32.747799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499935, 30.165915, 32.748177>,  <27.261732, 30.136602, 32.748402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499935, 30.165915, 32.748177>,  <27.896940, 30.214767, 32.747799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499935, 30.165915, 32.748177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120016, -0.976673, -0.178064,
		0.022671, -0.176617, 0.984018,
		-0.992513, -0.122135, 0.000945,
		27.202181, 30.129274, 32.748459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785959, 29.499294, 33.093307>,  <27.896940, 30.214767, 32.747799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785959, 29.499294, 33.093307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432985, 29.559385, 32.914986>,  <27.221201, 29.595440, 32.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432985, 29.559385, 32.914986>,  <27.785959, 29.499294, 33.093307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432985, 29.559385, 32.914986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103329, -0.986394, -0.127869,
		-0.458950, -0.066771, 0.885949,
		-0.882433, 0.150230, -0.445806,
		27.168255, 29.604454, 32.781242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304028, 29.050480, 33.382626>,  <27.785959, 29.499294, 33.093307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304028, 29.050480, 33.382626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134655, 29.126902, 33.028404>,  <27.033031, 29.172754, 32.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.134655, 29.126902, 33.028404>,  <27.304028, 29.050480, 33.382626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134655, 29.126902, 33.028404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077170, -0.981563, -0.174871,
		-0.902635, -0.005708, 0.430370,
		-0.423433, 0.191056, -0.885552,
		27.007626, 29.184219, 32.762737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771732, 28.545212, 33.291306>,  <27.304028, 29.050480, 33.382626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771732, 28.545212, 33.291306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796423, 28.660549, 32.909092>,  <26.811237, 28.729752, 32.679764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796423, 28.660549, 32.909092>,  <26.771732, 28.545212, 33.291306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796423, 28.660549, 32.909092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109731, -0.949597, -0.293641,
		-0.992043, 0.122978, -0.026975,
		0.061727, 0.288345, -0.955535,
		26.814941, 28.747053, 32.622433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.526381, 27.976393, 33.016628>,  <26.771732, 28.545212, 33.291306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.526381, 27.976393, 33.016628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692234, 28.163082, 32.704155>,  <26.791746, 28.275097, 32.516670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692234, 28.163082, 32.704155>,  <26.526381, 27.976393, 33.016628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692234, 28.163082, 32.704155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003379, -0.859237, -0.511566,
		-0.909983, 0.209472, -0.357845,
		0.414632, 0.466725, -0.781183,
		26.816624, 28.303101, 32.469799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093868, 27.845654, 32.432941>,  <26.526381, 27.976393, 33.016628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093868, 27.845654, 32.432941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467783, 27.925663, 32.315529>,  <26.692131, 27.973669, 32.245079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.467783, 27.925663, 32.315529>,  <26.093868, 27.845654, 32.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.467783, 27.925663, 32.315529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042848, -0.883837, -0.465829,
		-0.352614, 0.422874, -0.834770,
		0.934787, 0.200026, -0.293534,
		26.748219, 27.985670, 32.227470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107958, 27.419949, 31.913710>,  <26.093868, 27.845654, 32.432941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107958, 27.419949, 31.913710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494684, 27.514885, 31.951511>,  <26.726721, 27.571848, 31.974194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494684, 27.514885, 31.951511>,  <26.107958, 27.419949, 31.913710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494684, 27.514885, 31.951511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255139, -0.915784, -0.310232,
		0.012915, 0.324050, -0.945952,
		0.966818, 0.237342, 0.094505,
		26.784729, 27.586088, 31.979862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.421431, 26.722149, 31.769272>,  <26.107958, 27.419949, 31.913710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.421431, 26.722149, 31.769272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708927, 26.993660, 31.829496>,  <26.881426, 27.156567, 31.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708927, 26.993660, 31.829496>,  <26.421431, 26.722149, 31.769272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708927, 26.993660, 31.829496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694809, -0.693288, -0.191290,
		-0.025462, 0.242099, -0.969918,
		0.718743, 0.678778, 0.150560,
		26.924551, 27.197294, 31.874664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866344, 26.609627, 31.232227>,  <26.421431, 26.722149, 31.769272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866344, 26.609627, 31.232227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064322, 26.743670, 31.552910>,  <27.183107, 26.824095, 31.745319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064322, 26.743670, 31.552910>,  <26.866344, 26.609627, 31.232227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064322, 26.743670, 31.552910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741401, -0.644042, -0.188504,
		0.453165, 0.687686, -0.567213,
		0.494940, 0.335109, 0.801708,
		27.212803, 26.844202, 31.793423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403246, 26.372612, 31.028906>,  <26.866344, 26.609627, 31.232227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403246, 26.372612, 31.028906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453140, 26.488340, 31.408535>,  <27.483076, 26.557777, 31.636312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453140, 26.488340, 31.408535>,  <27.403246, 26.372612, 31.028906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453140, 26.488340, 31.408535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675859, -0.725076, 0.132209,
		0.726399, 0.624947, -0.285980,
		0.124734, 0.289319, 0.949071,
		27.490561, 26.575136, 31.693256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101309, 26.478964, 31.100128>,  <27.403246, 26.372612, 31.028906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101309, 26.478964, 31.100128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908667, 26.368715, 31.432896>,  <27.793081, 26.302567, 31.632557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908667, 26.368715, 31.432896>,  <28.101309, 26.478964, 31.100128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908667, 26.368715, 31.432896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732501, -0.647745, 0.209448,
		0.481144, 0.710253, 0.513850,
		-0.481605, -0.275621, 0.831920,
		27.764185, 26.286030, 31.682472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798185, 27.128510, 30.744120>,  <28.101309, 26.478964, 31.100128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798185, 27.128510, 30.744120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088486, 27.331751, 30.929642>,  <28.262667, 27.453695, 31.040955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088486, 27.331751, 30.929642>,  <27.798185, 27.128510, 30.744120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088486, 27.331751, 30.929642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612668, -0.784016, -0.099785,
		0.312929, 0.356578, -0.880300,
		0.725750, 0.508106, 0.463805,
		28.306211, 27.484182, 31.068783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407595, 27.050838, 30.346270>,  <27.798185, 27.128510, 30.744120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407595, 27.050838, 30.346270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476362, 27.125980, 30.733084>,  <28.517624, 27.171064, 30.965172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476362, 27.125980, 30.733084>,  <28.407595, 27.050838, 30.346270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476362, 27.125980, 30.733084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742904, -0.669395, -0.002039,
		0.646945, 0.718764, -0.254640,
		0.171920, 0.187854, 0.967034,
		28.527939, 27.182337, 31.023193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178398, 27.229820, 30.390173>,  <28.407595, 27.050838, 30.346270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178398, 27.229820, 30.390173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026735, 27.115303, 30.742146>,  <28.935738, 27.046593, 30.953329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026735, 27.115303, 30.742146>,  <29.178398, 27.229820, 30.390173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026735, 27.115303, 30.742146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715469, -0.693747, 0.082577,
		0.586807, 0.660873, 0.467872,
		-0.379158, -0.286291, 0.879930,
		28.912989, 27.029415, 31.006124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676561, 27.233173, 30.948748>,  <29.178398, 27.229820, 30.390173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676561, 27.233173, 30.948748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388006, 26.960712, 30.998762>,  <29.214872, 26.797235, 31.028770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.388006, 26.960712, 30.998762>,  <29.676561, 27.233173, 30.948748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.388006, 26.960712, 30.998762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691649, -0.699511, 0.179740,
		-0.034964, 0.216145, 0.975735,
		-0.721387, -0.681150, 0.125039,
		29.171591, 26.756367, 31.036274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687372, 26.618399, 30.501665>,  <29.676561, 27.233173, 30.948748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687372, 26.618399, 30.501665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038069, 26.739887, 30.352491>,  <30.248486, 26.812780, 30.262987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038069, 26.739887, 30.352491>,  <29.687372, 26.618399, 30.501665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038069, 26.739887, 30.352491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292660, 0.278437, 0.914780,
		0.381679, -0.911167, 0.155229,
		0.876739, 0.303724, -0.372935,
		30.301090, 26.831003, 30.240610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309904, 26.339743, 30.897152>,  <29.687372, 26.618399, 30.501665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309904, 26.339743, 30.897152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385794, 26.692965, 30.725471>,  <30.431328, 26.904898, 30.622463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.385794, 26.692965, 30.725471>,  <30.309904, 26.339743, 30.897152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385794, 26.692965, 30.725471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117752, 0.413522, 0.902848,
		0.974751, -0.221832, -0.025527,
		0.189725, 0.883057, -0.429202,
		30.442711, 26.957882, 30.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527235, 26.574757, 31.469666>,  <30.309904, 26.339743, 30.897152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527235, 26.574757, 31.469666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487425, 26.860071, 31.192158>,  <30.463539, 27.031260, 31.025654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487425, 26.860071, 31.192158>,  <30.527235, 26.574757, 31.469666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487425, 26.860071, 31.192158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141692, 0.700285, 0.699660,
		0.984895, -0.028666, -0.170765,
		-0.099527, 0.713288, -0.693769,
		30.457567, 27.074057, 30.984028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039162, 27.069994, 31.557676>,  <30.527235, 26.574757, 31.469666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039162, 27.069994, 31.557676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788635, 27.294012, 31.340761>,  <30.638319, 27.428423, 31.210611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788635, 27.294012, 31.340761>,  <31.039162, 27.069994, 31.557676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788635, 27.294012, 31.340761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237817, 0.799729, 0.551250,
		0.742411, 0.216290, -0.634070,
		-0.626314, 0.560046, -0.542290,
		30.600740, 27.462027, 31.178074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427649, 27.816355, 31.333975>,  <31.039162, 27.069994, 31.557676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427649, 27.816355, 31.333975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028316, 27.838694, 31.339861>,  <30.788717, 27.852097, 31.343393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028316, 27.838694, 31.339861>,  <31.427649, 27.816355, 31.333975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028316, 27.838694, 31.339861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054840, 0.836685, 0.544932,
		0.018120, 0.544830, -0.838351,
		-0.998331, 0.055849, 0.014718,
		30.728817, 27.855448, 31.344276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235939, 28.503866, 31.303602>,  <31.427649, 27.816355, 31.333975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235939, 28.503866, 31.303602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913382, 28.334955, 31.469212>,  <30.719847, 28.233608, 31.568577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913382, 28.334955, 31.469212>,  <31.235939, 28.503866, 31.303602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913382, 28.334955, 31.469212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170077, 0.836113, 0.521526,
		-0.566397, 0.350138, -0.746054,
		-0.806392, -0.422278, 0.414021,
		30.671465, 28.208271, 31.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657116, 29.078838, 31.287613>,  <31.235939, 28.503866, 31.303602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657116, 29.078838, 31.287613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582417, 28.796499, 31.560934>,  <30.537598, 28.627096, 31.724926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582417, 28.796499, 31.560934>,  <30.657116, 29.078838, 31.287613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582417, 28.796499, 31.560934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127069, 0.707051, 0.695652,
		-0.974156, 0.043084, -0.221731,
		-0.186747, -0.705849, 0.683303,
		30.526392, 28.584745, 31.765924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137009, 29.382483, 31.614759>,  <30.657116, 29.078838, 31.287613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137009, 29.382483, 31.614759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274632, 29.103867, 31.866619>,  <30.357204, 28.936697, 32.017735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274632, 29.103867, 31.866619>,  <30.137009, 29.382483, 31.614759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274632, 29.103867, 31.866619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278501, 0.564707, 0.776881,
		-0.896696, -0.442647, 0.000303,
		0.344055, -0.696541, 0.629648,
		30.377848, 28.894905, 32.055515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570099, 29.303707, 31.984388>,  <30.137009, 29.382483, 31.614759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570099, 29.303707, 31.984388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880293, 29.164309, 32.194977>,  <30.066410, 29.080669, 32.321331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880293, 29.164309, 32.194977>,  <29.570099, 29.303707, 31.984388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880293, 29.164309, 32.194977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287823, 0.547039, 0.786070,
		-0.561942, -0.761117, 0.323916,
		0.775486, -0.348495, 0.526472,
		30.112938, 29.059759, 32.352917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333563, 29.084005, 32.708389>,  <29.570099, 29.303707, 31.984388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333563, 29.084005, 32.708389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723763, 29.166821, 32.738159>,  <29.957882, 29.216509, 32.756020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.723763, 29.166821, 32.738159>,  <29.333563, 29.084005, 32.708389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723763, 29.166821, 32.738159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166073, 0.471084, 0.866314,
		0.144300, -0.857447, 0.493925,
		0.975498, 0.207037, 0.074422,
		30.016413, 29.228931, 32.760487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482006, 29.066854, 33.381092>,  <29.333563, 29.084005, 32.708389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482006, 29.066854, 33.381092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817122, 29.259323, 33.277882>,  <30.018190, 29.374805, 33.215954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817122, 29.259323, 33.277882>,  <29.482006, 29.066854, 33.381092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817122, 29.259323, 33.277882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083807, 0.580320, 0.810065,
		0.539521, -0.657040, 0.526513,
		0.837791, 0.481172, -0.258030,
		30.068459, 29.403675, 33.200474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865292, 29.109480, 33.966515>,  <29.482006, 29.066854, 33.381092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865292, 29.109480, 33.966515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021112, 29.397650, 33.737000>,  <30.114605, 29.570553, 33.599289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.021112, 29.397650, 33.737000>,  <29.865292, 29.109480, 33.966515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021112, 29.397650, 33.737000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075402, 0.645859, 0.759724,
		0.917912, -0.252688, 0.305918,
		0.389553, 0.720427, -0.573789,
		30.137978, 29.613777, 33.564861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336061, 29.465717, 34.316330>,  <29.865292, 29.109480, 33.966515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336061, 29.465717, 34.316330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220049, 29.742023, 34.051384>,  <30.150442, 29.907808, 33.892418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220049, 29.742023, 34.051384>,  <30.336061, 29.465717, 34.316330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220049, 29.742023, 34.051384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023576, 0.697057, 0.716628,
		0.956727, 0.192229, -0.218454,
		-0.290031, 0.690767, -0.662361,
		30.133039, 29.949253, 33.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618061, 30.083267, 34.576832>,  <30.336061, 29.465717, 34.316330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618061, 30.083267, 34.576832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387512, 30.242756, 34.291508>,  <30.249184, 30.338449, 34.120312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387512, 30.242756, 34.291508>,  <30.618061, 30.083267, 34.576832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387512, 30.242756, 34.291508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158773, 0.801615, 0.576371,
		0.801615, 0.445459, -0.398722,
		-0.576371, 0.398722, -0.713314,
		30.214602, 30.362373, 34.077515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821230, 30.909733, 34.490971>,  <30.618061, 30.083267, 34.576832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821230, 30.909733, 34.490971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452602, 30.821117, 34.363449>,  <30.231426, 30.767948, 34.286938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452602, 30.821117, 34.363449>,  <30.821230, 30.909733, 34.490971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452602, 30.821117, 34.363449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327213, 0.885168, 0.330770,
		0.208917, 0.409143, -0.888232,
		-0.921567, -0.221538, -0.318804,
		30.176132, 30.754656, 34.267807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551264, 31.537861, 34.403408>,  <30.821230, 30.909733, 34.490971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551264, 31.537861, 34.403408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220360, 31.313314, 34.394367>,  <30.021818, 31.178587, 34.388943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220360, 31.313314, 34.394367>,  <30.551264, 31.537861, 34.403408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220360, 31.313314, 34.394367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518169, 0.746819, 0.416847,
		-0.217123, 0.356553, -0.908695,
		-0.827259, -0.561365, -0.022603,
		29.972181, 31.144905, 34.387585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083702, 32.142582, 34.305389>,  <30.551264, 31.537861, 34.403408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083702, 32.142582, 34.305389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876932, 31.819763, 34.419556>,  <29.752871, 31.626072, 34.488056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876932, 31.819763, 34.419556>,  <30.083702, 32.142582, 34.305389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876932, 31.819763, 34.419556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741008, 0.588800, 0.322834,
		-0.428597, -0.044616, -0.902394,
		-0.516926, -0.807047, 0.285419,
		29.721855, 31.577650, 34.505180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322367, 32.200672, 34.039562>,  <30.083702, 32.142582, 34.305389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322367, 32.200672, 34.039562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373657, 31.983273, 34.371384>,  <29.404430, 31.852833, 34.570477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373657, 31.983273, 34.371384>,  <29.322367, 32.200672, 34.039562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373657, 31.983273, 34.371384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674989, 0.565005, 0.474509,
		-0.726600, -0.620785, -0.294412,
		0.128224, -0.543503, 0.829556,
		29.412125, 31.820221, 34.620251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636507, 32.008350, 34.222416>,  <29.322367, 32.200672, 34.039562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636507, 32.008350, 34.222416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859686, 31.977015, 34.552883>,  <28.993593, 31.958214, 34.751163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859686, 31.977015, 34.552883>,  <28.636507, 32.008350, 34.222416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859686, 31.977015, 34.552883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723630, 0.441442, 0.530555,
		-0.406267, -0.893864, 0.189615,
		0.557948, -0.078336, 0.826171,
		29.027071, 31.953514, 34.800735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099455, 31.902285, 34.853771>,  <28.636507, 32.008350, 34.222416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099455, 31.902285, 34.853771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437290, 32.029152, 35.026318>,  <28.639992, 32.105274, 35.129845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437290, 32.029152, 35.026318>,  <28.099455, 31.902285, 34.853771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437290, 32.029152, 35.026318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530999, 0.599492, 0.598874,
		-0.068655, -0.734856, 0.674740,
		0.844586, 0.317170, 0.431366,
		28.690666, 32.124302, 35.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905518, 31.958017, 35.483425>,  <28.099455, 31.902285, 34.853771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905518, 31.958017, 35.483425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234365, 32.183002, 35.448204>,  <28.431673, 32.317993, 35.427071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234365, 32.183002, 35.448204>,  <27.905518, 31.958017, 35.483425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234365, 32.183002, 35.448204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394993, 0.674912, 0.623277,
		0.410001, -0.477626, 0.777028,
		0.822119, 0.562465, -0.088056,
		28.481001, 32.351742, 35.421787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200167, 31.981947, 36.113895>,  <27.905518, 31.958017, 35.483425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200167, 31.981947, 36.113895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356705, 32.312187, 35.951302>,  <28.450628, 32.510330, 35.853745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.356705, 32.312187, 35.951302>,  <28.200167, 31.981947, 36.113895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.356705, 32.312187, 35.951302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454802, 0.557521, 0.694497,
		0.800002, -0.086917, 0.593668,
		0.391346, 0.825601, -0.406488,
		28.474108, 32.559868, 35.829357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469957, 32.445148, 36.669090>,  <28.200167, 31.981947, 36.113895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469957, 32.445148, 36.669090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449570, 32.711781, 36.371613>,  <28.437336, 32.871758, 36.193127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449570, 32.711781, 36.371613>,  <28.469957, 32.445148, 36.669090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449570, 32.711781, 36.371613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322747, 0.693707, 0.643898,
		0.945112, 0.272844, 0.179777,
		-0.050971, 0.666578, -0.743691,
		28.434278, 32.911755, 36.148506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745478, 32.973652, 36.933426>,  <28.469957, 32.445148, 36.669090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745478, 32.973652, 36.933426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523920, 33.128292, 36.638470>,  <28.390985, 33.221077, 36.461494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523920, 33.128292, 36.638470>,  <28.745478, 32.973652, 36.933426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523920, 33.128292, 36.638470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303101, 0.731258, 0.611058,
		0.775456, 0.561964, -0.287861,
		-0.553893, 0.386598, -0.737390,
		28.357752, 33.244270, 36.417252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885963, 33.737255, 36.888470>,  <28.745478, 32.973652, 36.933426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885963, 33.737255, 36.888470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529070, 33.631958, 36.741707>,  <28.314934, 33.568779, 36.653648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529070, 33.631958, 36.741707>,  <28.885963, 33.737255, 36.888470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529070, 33.631958, 36.741707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422314, 0.774136, 0.471556,
		0.159897, 0.575687, -0.801883,
		-0.892235, -0.263246, -0.366903,
		28.261400, 33.552982, 36.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426447, 33.435837, 37.348396>,  <28.885963, 33.737255, 36.888470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426447, 33.435837, 37.348396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382202, 33.829887, 37.401005>,  <29.355656, 34.066319, 37.432571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.382202, 33.829887, 37.401005>,  <29.426447, 33.435837, 37.348396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382202, 33.829887, 37.401005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591988, -0.040992, 0.804904,
		0.798320, 0.166891, -0.578647,
		-0.110612, 0.985123, 0.131522,
		29.349018, 34.125423, 37.440460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980850, 33.927757, 37.172825>,  <29.426447, 33.435837, 37.348396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980850, 33.927757, 37.172825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191549, 34.012913, 36.843651>,  <30.317968, 34.064007, 36.646149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191549, 34.012913, 36.843651>,  <29.980850, 33.927757, 37.172825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191549, 34.012913, 36.843651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639787, 0.538121, 0.548725,
		0.559652, -0.815541, 0.147253,
		0.526747, 0.212884, -0.822932,
		30.349573, 34.076778, 36.596771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663837, 33.590103, 37.156094>,  <29.980850, 33.927757, 37.172825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663837, 33.590103, 37.156094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617592, 33.953892, 36.996349>,  <30.589844, 34.172165, 36.900505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617592, 33.953892, 36.996349>,  <30.663837, 33.590103, 37.156094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617592, 33.953892, 36.996349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660306, 0.370728, 0.653113,
		0.742044, -0.188189, -0.643394,
		-0.115615, 0.909476, -0.399358,
		30.582907, 34.226734, 36.876541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344374, 33.889389, 36.953903>,  <30.663837, 33.590103, 37.156094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344374, 33.889389, 36.953903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072559, 34.160149, 37.067066>,  <30.909470, 34.322605, 37.134964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072559, 34.160149, 37.067066>,  <31.344374, 33.889389, 36.953903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072559, 34.160149, 37.067066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629275, 0.339544, 0.699087,
		0.377149, 0.653085, -0.656688,
		-0.679538, 0.676897, 0.282911,
		30.868698, 34.363216, 37.151939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512169, 34.653564, 36.838985>,  <31.344374, 33.889389, 36.953903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512169, 34.653564, 36.838985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286943, 34.622070, 37.168049>,  <31.151808, 34.603172, 37.365486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286943, 34.622070, 37.168049>,  <31.512169, 34.653564, 36.838985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286943, 34.622070, 37.168049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735028, 0.407301, 0.542071,
		-0.377750, 0.909894, -0.171460,
		-0.563062, -0.078740, 0.822655,
		31.118025, 34.598450, 37.414845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581459, 35.255363, 37.153770>,  <31.512169, 34.653564, 36.838985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581459, 35.255363, 37.153770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460327, 35.009914, 37.445461>,  <31.387648, 34.862644, 37.620476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460327, 35.009914, 37.445461>,  <31.581459, 35.255363, 37.153770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460327, 35.009914, 37.445461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734584, 0.337199, 0.588798,
		-0.607191, 0.713981, 0.348641,
		-0.302829, -0.613619, 0.729223,
		31.369478, 34.825829, 37.664227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627476, 35.595566, 37.762131>,  <31.581459, 35.255363, 37.153770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627476, 35.595566, 37.762131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602249, 35.212070, 37.873013>,  <31.587112, 34.981972, 37.939541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602249, 35.212070, 37.873013>,  <31.627476, 35.595566, 37.762131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602249, 35.212070, 37.873013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609445, 0.182959, 0.771429,
		-0.790316, 0.217595, 0.572759,
		-0.063068, -0.958738, 0.277207,
		31.583328, 34.924450, 37.956173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564445, 35.629440, 38.545414>,  <31.627476, 35.595566, 37.762131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564445, 35.629440, 38.545414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709562, 35.282806, 38.408348>,  <31.796633, 35.074825, 38.326107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709562, 35.282806, 38.408348>,  <31.564445, 35.629440, 38.545414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709562, 35.282806, 38.408348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688417, 0.001396, 0.725314,
		-0.628065, -0.499035, 0.597075,
		0.362791, -0.866581, -0.342667,
		31.818399, 35.022831, 38.305550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602318, 35.281395, 39.041882>,  <31.564445, 35.629440, 38.545414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602318, 35.281395, 39.041882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880169, 35.106697, 38.813236>,  <32.046879, 35.001877, 38.676048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.880169, 35.106697, 38.813236>,  <31.602318, 35.281395, 39.041882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880169, 35.106697, 38.813236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697609, 0.215000, 0.683459,
		-0.175601, -0.873514, 0.454024,
		0.694627, -0.436747, -0.571617,
		32.088558, 34.975674, 38.641750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923605, 34.660835, 39.388447>,  <31.602318, 35.281395, 39.041882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923605, 34.660835, 39.388447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183384, 34.820599, 39.129620>,  <32.339252, 34.916458, 38.974323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.183384, 34.820599, 39.129620>,  <31.923605, 34.660835, 39.388447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183384, 34.820599, 39.129620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694594, 0.034693, 0.718565,
		0.309450, -0.916116, -0.254896,
		0.649445, 0.399409, -0.647065,
		32.378216, 34.940422, 38.935501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571487, 34.415112, 39.618256>,  <31.923605, 34.660835, 39.388447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571487, 34.415112, 39.618256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681610, 34.707954, 39.369026>,  <32.747684, 34.883659, 39.219486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681610, 34.707954, 39.369026>,  <32.571487, 34.415112, 39.618256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681610, 34.707954, 39.369026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779768, 0.209026, 0.590144,
		0.562289, -0.648325, -0.513328,
		0.275307, 0.732108, -0.623076,
		32.764202, 34.927586, 39.182102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385330, 34.413647, 39.511295>,  <32.571487, 34.415112, 39.618256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385330, 34.413647, 39.511295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255516, 34.786983, 39.449909>,  <33.177628, 35.010986, 39.413078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255516, 34.786983, 39.449909>,  <33.385330, 34.413647, 39.511295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255516, 34.786983, 39.449909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645194, 0.337082, 0.685638,
		0.691666, 0.123495, -0.711581,
		-0.324534, 0.933341, -0.153470,
		33.158157, 35.066986, 39.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916019, 34.859756, 39.779587>,  <33.385330, 34.413647, 39.511295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916019, 34.859756, 39.779587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637768, 35.146061, 39.754990>,  <33.470818, 35.317844, 39.740231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637768, 35.146061, 39.754990>,  <33.916019, 34.859756, 39.779587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637768, 35.146061, 39.754990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502035, 0.545563, 0.671061,
		0.513868, 0.435939, -0.738848,
		-0.695630, 0.715764, -0.061491,
		33.429077, 35.360790, 39.736542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338203, 35.399879, 39.869236>,  <33.916019, 34.859756, 39.779587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338203, 35.399879, 39.869236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964760, 35.534420, 39.918613>,  <33.740692, 35.615143, 39.948242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964760, 35.534420, 39.918613>,  <34.338203, 35.399879, 39.869236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964760, 35.534420, 39.918613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325282, 0.651272, 0.685591,
		0.150200, 0.680231, -0.717444,
		-0.933612, 0.336348, 0.123446,
		33.684677, 35.635323, 39.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462532, 36.129086, 39.954208>,  <34.338203, 35.399879, 39.869236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462532, 36.129086, 39.954208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116119, 36.025761, 40.125446>,  <33.908272, 35.963764, 40.228188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116119, 36.025761, 40.125446>,  <34.462532, 36.129086, 39.954208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116119, 36.025761, 40.125446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293940, 0.429580, 0.853850,
		-0.404460, 0.865295, -0.296101,
		-0.866032, -0.258312, 0.428093,
		33.856308, 35.948265, 40.253876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082115, 36.800510, 40.307213>,  <34.462532, 36.129086, 39.954208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082115, 36.800510, 40.307213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959553, 36.465378, 40.487942>,  <33.886013, 36.264297, 40.596378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959553, 36.465378, 40.487942>,  <34.082115, 36.800510, 40.307213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959553, 36.465378, 40.487942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167919, 0.419636, 0.892025,
		-0.936972, 0.349194, 0.012109,
		-0.306409, -0.837836, 0.451824,
		33.867630, 36.214027, 40.623489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928444, 37.046154, 40.826820>,  <34.082115, 36.800510, 40.307213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928444, 37.046154, 40.826820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901348, 36.667614, 40.953201>,  <33.885090, 36.440491, 41.029030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901348, 36.667614, 40.953201>,  <33.928444, 37.046154, 40.826820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901348, 36.667614, 40.953201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179352, 0.299968, 0.936937,
		-0.981450, 0.120133, 0.149412,
		-0.067739, -0.946355, 0.315950,
		33.881027, 36.383709, 41.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429871, 37.132130, 41.425381>,  <33.928444, 37.046154, 40.826820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429871, 37.132130, 41.425381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628891, 36.786823, 41.459373>,  <33.748302, 36.579639, 41.479771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628891, 36.786823, 41.459373>,  <33.429871, 37.132130, 41.425381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628891, 36.786823, 41.459373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138418, 0.175727, 0.974659,
		-0.856319, -0.473180, 0.206924,
		0.497552, -0.863262, 0.084982,
		33.778156, 36.527843, 41.484867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081284, 36.743263, 41.907913>,  <33.429871, 37.132130, 41.425381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081284, 36.743263, 41.907913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444534, 36.576534, 41.923759>,  <33.662483, 36.476498, 41.933266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444534, 36.576534, 41.923759>,  <33.081284, 36.743263, 41.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444534, 36.576534, 41.923759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038998, 0.178402, 0.983184,
		-0.416881, -0.891308, 0.178267,
		0.908124, -0.416824, 0.039613,
		33.716972, 36.451488, 41.935642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140759, 36.368690, 42.480312>,  <33.081284, 36.743263, 41.907913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140759, 36.368690, 42.480312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521156, 36.471104, 42.410973>,  <33.749397, 36.532551, 42.369370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521156, 36.471104, 42.410973>,  <33.140759, 36.368690, 42.480312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521156, 36.471104, 42.410973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147114, 0.118451, 0.982001,
		0.271956, -0.959384, 0.074981,
		0.950998, 0.256030, -0.173352,
		33.806458, 36.547913, 42.358967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503727, 35.935284, 42.914989>,  <33.140759, 36.368690, 42.480312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503727, 35.935284, 42.914989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788822, 36.201859, 42.827484>,  <33.959881, 36.361805, 42.774982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788822, 36.201859, 42.827484>,  <33.503727, 35.935284, 42.914989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788822, 36.201859, 42.827484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265401, 0.032467, 0.963591,
		0.649279, -0.744851, -0.153733,
		0.712741, 0.666440, -0.218764,
		34.002644, 36.401791, 42.761856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161182, 35.649971, 43.242306>,  <33.503727, 35.935284, 42.914989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161182, 35.649971, 43.242306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162609, 36.043396, 43.170086>,  <34.163464, 36.279449, 43.126755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162609, 36.043396, 43.170086>,  <34.161182, 35.649971, 43.242306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162609, 36.043396, 43.170086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296557, 0.171392, 0.939510,
		0.955009, -0.056894, -0.291070,
		0.003565, 0.983559, -0.180553,
		34.163677, 36.338463, 43.115921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737526, 35.924980, 43.582115>,  <34.161182, 35.649971, 43.242306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737526, 35.924980, 43.582115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481380, 36.227665, 43.529469>,  <34.327694, 36.409275, 43.497879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481380, 36.227665, 43.529469>,  <34.737526, 35.924980, 43.582115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481380, 36.227665, 43.529469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004723, 0.167477, 0.985865,
		0.768060, 0.631930, -0.103671,
		-0.640360, 0.756714, -0.131617,
		34.289272, 36.454678, 43.489983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886501, 36.469296, 44.043110>,  <34.737526, 35.924980, 43.582115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886501, 36.469296, 44.043110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503479, 36.548904, 43.959705>,  <34.273666, 36.596668, 43.909664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503479, 36.548904, 43.959705>,  <34.886501, 36.469296, 44.043110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503479, 36.548904, 43.959705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099169, 0.451761, 0.886610,
		0.270650, 0.869657, -0.412850,
		-0.957556, 0.199019, -0.208512,
		34.216213, 36.608608, 43.897152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860046, 37.055599, 44.295258>,  <34.886501, 36.469296, 44.043110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860046, 37.055599, 44.295258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471737, 36.967049, 44.258190>,  <34.238750, 36.913918, 44.235950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471737, 36.967049, 44.258190>,  <34.860046, 37.055599, 44.295258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471737, 36.967049, 44.258190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197852, 0.519716, 0.831113,
		-0.135834, 0.825158, -0.548328,
		-0.970775, -0.221381, -0.092664,
		34.180504, 36.900635, 44.230392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399422, 37.696671, 44.437790>,  <34.860046, 37.055599, 44.295258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399422, 37.696671, 44.437790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170403, 37.377029, 44.511139>,  <34.032990, 37.185246, 44.555149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170403, 37.377029, 44.511139>,  <34.399422, 37.696671, 44.437790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170403, 37.377029, 44.511139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354591, 0.443016, 0.823409,
		-0.739224, 0.406419, -0.537002,
		-0.572549, -0.799100, 0.183376,
		33.998638, 37.137299, 44.566151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757717, 38.064671, 44.729725>,  <34.399422, 37.696671, 44.437790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757717, 38.064671, 44.729725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754406, 37.682079, 44.846405>,  <33.752419, 37.452526, 44.916412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.754406, 37.682079, 44.846405>,  <33.757717, 38.064671, 44.729725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754406, 37.682079, 44.846405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483382, 0.259188, 0.836160,
		-0.875370, -0.134081, -0.464488,
		-0.008277, -0.956474, 0.291698,
		33.751923, 37.395138, 44.933914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142738, 38.069363, 44.955952>,  <33.757717, 38.064671, 44.729725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142738, 38.069363, 44.955952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297852, 37.754383, 45.147594>,  <33.390919, 37.565395, 45.262581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297852, 37.754383, 45.147594>,  <33.142738, 38.069363, 44.955952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297852, 37.754383, 45.147594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453024, 0.289855, 0.843062,
		-0.802743, -0.543971, -0.244334,
		0.387779, -0.787452, 0.479111,
		33.414185, 37.518147, 45.291328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575016, 37.886719, 45.345787>,  <33.142738, 38.069363, 44.955952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575016, 37.886719, 45.345787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910038, 37.747612, 45.514336>,  <33.111053, 37.664146, 45.615463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910038, 37.747612, 45.514336>,  <32.575016, 37.886719, 45.345787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910038, 37.747612, 45.514336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302754, 0.346580, 0.887819,
		-0.454793, -0.871172, 0.184994,
		0.837558, -0.347766, 0.421373,
		33.161304, 37.643284, 45.640747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410717, 37.461311, 45.876648>,  <32.575016, 37.886719, 45.345787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410717, 37.461311, 45.876648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780544, 37.530018, 46.012691>,  <33.002441, 37.571243, 46.094318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780544, 37.530018, 46.012691>,  <32.410717, 37.461311, 45.876648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780544, 37.530018, 46.012691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380626, 0.375694, 0.844972,
		0.017362, -0.910687, 0.412733,
		0.924566, 0.171767, 0.340109,
		33.057915, 37.581547, 46.114723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500950, 37.181286, 46.585201>,  <32.410717, 37.461311, 45.876648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500950, 37.181286, 46.585201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805332, 37.438251, 46.548847>,  <32.987961, 37.592430, 46.527035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805332, 37.438251, 46.548847>,  <32.500950, 37.181286, 46.585201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805332, 37.438251, 46.548847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083825, 0.236249, 0.968070,
		0.643371, -0.729036, 0.233624,
		0.760952, 0.642412, -0.090884,
		33.033619, 37.630974, 46.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848202, 37.061893, 47.243237>,  <32.500950, 37.181286, 46.585201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848202, 37.061893, 47.243237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991482, 37.404415, 47.094406>,  <33.077450, 37.609928, 47.005108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991482, 37.404415, 47.094406>,  <32.848202, 37.061893, 47.243237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991482, 37.404415, 47.094406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233476, 0.303703, 0.923717,
		0.903982, -0.417744, -0.091141,
		0.358198, 0.856303, -0.372075,
		33.098942, 37.661304, 46.982784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557407, 37.146236, 47.442833>,  <32.848202, 37.061893, 47.243237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557407, 37.146236, 47.442833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426529, 37.519943, 47.386135>,  <33.348000, 37.744167, 47.352116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426529, 37.519943, 47.386135>,  <33.557407, 37.146236, 47.442833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426529, 37.519943, 47.386135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254349, 0.231536, 0.938988,
		0.910081, 0.271184, -0.313388,
		-0.327198, 0.934265, -0.141741,
		33.328369, 37.800224, 47.343613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067039, 37.623764, 47.797226>,  <33.557407, 37.146236, 47.442833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067039, 37.623764, 47.797226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741829, 37.852676, 47.754360>,  <33.546703, 37.990025, 47.728642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741829, 37.852676, 47.754360>,  <34.067039, 37.623764, 47.797226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741829, 37.852676, 47.754360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094124, 0.310821, 0.945797,
		0.574574, 0.758868, -0.306570,
		-0.813023, 0.572285, -0.107162,
		33.497921, 38.024361, 47.722210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357952, 38.288403, 48.024559>,  <34.067039, 37.623764, 47.797226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357952, 38.288403, 48.024559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958153, 38.296669, 48.034145>,  <33.718273, 38.301628, 48.039898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958153, 38.296669, 48.034145>,  <34.357952, 38.288403, 48.024559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958153, 38.296669, 48.034145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030844, 0.467101, 0.883666,
		0.007065, 0.883962, -0.467505,
		-0.999499, 0.020663, 0.023965,
		33.658302, 38.302868, 48.041336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190086, 39.001659, 48.261761>,  <34.357952, 38.288403, 48.024559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190086, 39.001659, 48.261761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863129, 38.777504, 48.315170>,  <33.666954, 38.643009, 48.347218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863129, 38.777504, 48.315170>,  <34.190086, 39.001659, 48.261761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863129, 38.777504, 48.315170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093895, 0.358282, 0.928880,
		-0.568375, 0.746724, -0.345476,
		-0.817395, -0.560390, 0.133524,
		33.617908, 38.609386, 48.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834499, 39.334499, 48.780735>,  <34.190086, 39.001659, 48.261761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834499, 39.334499, 48.780735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651695, 38.979412, 48.803009>,  <33.542015, 38.766361, 48.816376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651695, 38.979412, 48.803009>,  <33.834499, 39.334499, 48.780735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651695, 38.979412, 48.803009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106320, 0.116679, 0.987462,
		-0.883085, 0.445358, -0.147705,
		-0.457008, -0.887717, 0.055687,
		33.514591, 38.713097, 48.819714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345139, 39.438965, 49.215820>,  <33.834499, 39.334499, 48.780735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345139, 39.438965, 49.215820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420776, 39.046593, 49.233776>,  <33.466160, 38.811169, 49.244549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420776, 39.046593, 49.233776>,  <33.345139, 39.438965, 49.215820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420776, 39.046593, 49.233776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081044, 0.029972, 0.996260,
		-0.978609, -0.192025, -0.073831,
		0.189094, -0.980932, 0.044894,
		33.477505, 38.752312, 49.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863823, 39.136467, 49.564358>,  <33.345139, 39.438965, 49.215820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863823, 39.136467, 49.564358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168015, 38.882797, 49.620213>,  <33.350529, 38.730595, 49.653725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168015, 38.882797, 49.620213>,  <32.863823, 39.136467, 49.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168015, 38.882797, 49.620213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218434, -0.047318, 0.974704,
		-0.611524, -0.771742, -0.174509,
		0.760477, -0.634173, 0.139639,
		33.396156, 38.692547, 49.662106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581974, 38.552330, 50.107548>,  <32.863823, 39.136467, 49.564358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581974, 38.552330, 50.107548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969780, 38.454342, 50.110050>,  <33.202461, 38.395550, 50.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969780, 38.454342, 50.110050>,  <32.581974, 38.552330, 50.107548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969780, 38.454342, 50.110050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030879, -0.096791, 0.994826,
		-0.243099, -0.964687, -0.101405,
		0.969510, -0.244972, 0.006258,
		33.260632, 38.380852, 50.111927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687405, 37.954201, 50.487316>,  <32.581974, 38.552330, 50.107548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687405, 37.954201, 50.487316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048923, 38.125385, 50.487423>,  <33.265835, 38.228096, 50.487488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048923, 38.125385, 50.487423>,  <32.687405, 37.954201, 50.487316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048923, 38.125385, 50.487423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032151, -0.068516, 0.997132,
		0.426753, -0.901196, -0.075684,
		0.903797, 0.427962, 0.000265,
		33.320061, 38.253773, 50.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060261, 37.594048, 51.040298>,  <32.687405, 37.954201, 50.487316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060261, 37.594048, 51.040298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266506, 37.930428, 50.974625>,  <33.390251, 38.132256, 50.935223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266506, 37.930428, 50.974625>,  <33.060261, 37.594048, 51.040298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266506, 37.930428, 50.974625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022421, 0.204794, 0.978548,
		0.856530, -0.500867, 0.124448,
		0.515609, 0.840947, -0.164182,
		33.421188, 38.182713, 50.925369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577351, 37.554821, 51.460018>,  <33.060261, 37.594048, 51.040298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577351, 37.554821, 51.460018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496750, 37.940731, 51.392368>,  <33.448391, 38.172276, 51.351776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496750, 37.940731, 51.392368>,  <33.577351, 37.554821, 51.460018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496750, 37.940731, 51.392368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075342, 0.187424, 0.979385,
		0.976587, 0.184604, -0.110454,
		-0.201500, 0.964777, -0.169127,
		33.436298, 38.230164, 51.341629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033035, 37.936230, 52.026260>,  <33.577351, 37.554821, 51.460018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033035, 37.936230, 52.026260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782921, 38.224903, 51.907475>,  <33.632851, 38.398106, 51.836201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782921, 38.224903, 51.907475>,  <34.033035, 37.936230, 52.026260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782921, 38.224903, 51.907475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139918, 0.270696, 0.952443,
		0.767747, 0.637104, -0.068288,
		-0.625290, 0.721680, -0.296968,
		33.595333, 38.441406, 51.818382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266232, 38.551552, 52.341217>,  <34.033035, 37.936230, 52.026260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266232, 38.551552, 52.341217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877209, 38.625233, 52.284370>,  <33.643795, 38.669441, 52.250263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877209, 38.625233, 52.284370>,  <34.266232, 38.551552, 52.341217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877209, 38.625233, 52.284370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081853, 0.300900, 0.950136,
		0.217777, 0.935698, -0.277566,
		-0.972560, 0.184199, -0.142119,
		33.585442, 38.680492, 52.241734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187328, 39.269550, 52.489956>,  <34.266232, 38.551552, 52.341217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187328, 39.269550, 52.489956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832687, 39.089767, 52.533646>,  <33.619904, 38.981899, 52.559860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832687, 39.089767, 52.533646>,  <34.187328, 39.269550, 52.489956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832687, 39.089767, 52.533646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082605, 0.386198, 0.918710,
		-0.455100, 0.805506, -0.379530,
		-0.886600, -0.449456, 0.109220,
		33.566708, 38.954929, 52.566410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774876, 39.869263, 52.789684>,  <34.187328, 39.269550, 52.489956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774876, 39.869263, 52.789684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583611, 39.525860, 52.863796>,  <33.468853, 39.319817, 52.908264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583611, 39.525860, 52.863796>,  <33.774876, 39.869263, 52.789684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583611, 39.525860, 52.863796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151716, 0.288523, 0.945376,
		-0.865070, 0.423932, -0.268209,
		-0.478160, -0.858508, 0.185275,
		33.440163, 39.268307, 52.919380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114143, 40.119209, 53.171188>,  <33.774876, 39.869263, 52.789684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114143, 40.119209, 53.171188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228809, 39.740082, 53.226974>,  <33.297611, 39.512604, 53.260448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228809, 39.740082, 53.226974>,  <33.114143, 40.119209, 53.171188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228809, 39.740082, 53.226974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223396, 0.075431, 0.971804,
		-0.931619, -0.309743, -0.190117,
		0.286669, -0.947823, 0.139468,
		33.314812, 39.455734, 53.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670300, 39.713825, 53.569187>,  <33.114143, 40.119209, 53.171188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670300, 39.713825, 53.569187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015053, 39.515930, 53.613720>,  <33.221905, 39.397194, 53.640442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015053, 39.515930, 53.613720>,  <32.670300, 39.713825, 53.569187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015053, 39.515930, 53.613720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159635, -0.056311, 0.985569,
		-0.481328, -0.867216, -0.127511,
		0.861882, -0.494737, 0.111334,
		33.273617, 39.367508, 53.647121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532070, 39.079678, 53.845718>,  <32.670300, 39.713825, 53.569187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532070, 39.079678, 53.845718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879852, 39.254452, 53.937927>,  <33.088520, 39.359318, 53.993252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879852, 39.254452, 53.937927>,  <32.532070, 39.079678, 53.845718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879852, 39.254452, 53.937927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206657, -0.102146, 0.973067,
		0.448714, -0.893674, 0.001485,
		0.869453, 0.436936, 0.230518,
		33.140690, 39.385532, 54.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966057, 38.607395, 54.239723>,  <32.532070, 39.079678, 53.845718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966057, 38.607395, 54.239723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046299, 38.987381, 54.335499>,  <33.094444, 39.215370, 54.392963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046299, 38.987381, 54.335499>,  <32.966057, 38.607395, 54.239723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046299, 38.987381, 54.335499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154933, -0.210568, 0.965224,
		0.967343, -0.230727, 0.104939,
		0.200607, 0.949961, 0.239439,
		33.106480, 39.272369, 54.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250805, 38.706715, 54.882668>,  <32.966057, 38.607395, 54.239723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250805, 38.706715, 54.882668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055050, 39.049358, 54.817287>,  <32.937595, 39.254944, 54.778061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055050, 39.049358, 54.817287>,  <33.250805, 38.706715, 54.882668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055050, 39.049358, 54.817287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273678, 0.027096, 0.961440,
		0.828009, 0.515251, 0.221175,
		-0.489389, 0.856611, -0.163448,
		32.908234, 39.306343, 54.768253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389988, 39.213570, 55.403198>,  <33.250805, 38.706715, 54.882668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389988, 39.213570, 55.403198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043701, 39.354778, 55.261269>,  <32.835930, 39.439503, 55.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043701, 39.354778, 55.261269>,  <33.389988, 39.213570, 55.403198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043701, 39.354778, 55.261269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278815, 0.248599, 0.927610,
		0.415679, 0.901982, -0.116788,
		-0.865721, 0.353026, -0.354824,
		32.783985, 39.460686, 55.154823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141857, 38.465954, 55.588440>,  <33.389988, 39.213570, 55.403198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141857, 38.465954, 55.588440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513439, 38.568420, 55.695335>,  <33.736389, 38.629898, 55.759472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513439, 38.568420, 55.695335>,  <33.141857, 38.465954, 55.588440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513439, 38.568420, 55.695335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079881, 0.843615, -0.530974,
		-0.361461, 0.471906, 0.804146,
		0.928959, 0.256162, 0.267238,
		33.792126, 38.645267, 55.775505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804749, 37.897789, 55.162987>,  <33.141857, 38.465954, 55.588440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804749, 37.897789, 55.162987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629852, 38.085613, 55.469799>,  <32.524914, 38.198307, 55.653885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629852, 38.085613, 55.469799>,  <32.804749, 37.897789, 55.162987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629852, 38.085613, 55.469799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333997, -0.707100, 0.623261,
		0.835027, 0.528699, 0.152339,
		-0.437237, 0.469559, 0.767032,
		32.498680, 38.226482, 55.699909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660839, 37.310993, 54.541214>,  <32.804749, 37.897789, 55.162987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660839, 37.310993, 54.541214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333260, 37.091949, 54.472580>,  <32.136711, 36.960522, 54.431400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333260, 37.091949, 54.472580>,  <32.660839, 37.310993, 54.541214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333260, 37.091949, 54.472580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350416, -0.240413, -0.905213,
		0.454453, -0.801451, 0.388778,
		-0.818951, -0.547610, -0.171585,
		32.087574, 36.927666, 54.421104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731510, 36.506306, 54.439728>,  <32.660839, 37.310993, 54.541214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731510, 36.506306, 54.439728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426819, 36.636551, 54.215675>,  <32.244003, 36.714699, 54.081245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426819, 36.636551, 54.215675>,  <32.731510, 36.506306, 54.439728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426819, 36.636551, 54.215675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252602, -0.646866, -0.719553,
		-0.596623, -0.689594, 0.410487,
		-0.761730, 0.325612, -0.560128,
		32.198299, 36.734234, 54.047638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233131, 35.868317, 54.250565>,  <32.731510, 36.506306, 54.439728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233131, 35.868317, 54.250565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274559, 36.177963, 54.000759>,  <32.299416, 36.363750, 53.850876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274559, 36.177963, 54.000759>,  <32.233131, 35.868317, 54.250565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274559, 36.177963, 54.000759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342285, -0.617278, -0.708384,
		-0.933871, -0.140398, -0.328897,
		0.103565, 0.774116, -0.624515,
		32.305630, 36.410198, 53.813404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865671, 35.714451, 53.629040>,  <32.233131, 35.868317, 54.250565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865671, 35.714451, 53.629040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137745, 35.992264, 53.535252>,  <32.300991, 36.158951, 53.478977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137745, 35.992264, 53.535252>,  <31.865671, 35.714451, 53.629040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137745, 35.992264, 53.535252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225499, -0.502601, -0.834591,
		-0.697495, 0.514803, -0.498477,
		0.680185, 0.694529, -0.234474,
		32.341801, 36.200623, 53.464909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743874, 35.796524, 52.923767>,  <31.865671, 35.714451, 53.629040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743874, 35.796524, 52.923767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115334, 35.941559, 52.955112>,  <32.338211, 36.028580, 52.973919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115334, 35.941559, 52.955112>,  <31.743874, 35.796524, 52.923767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115334, 35.941559, 52.955112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261647, -0.490464, -0.831256,
		-0.262968, 0.792449, -0.550339,
		0.928649, 0.362588, 0.078366,
		32.393929, 36.050335, 52.978622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788139, 35.976494, 52.314686>,  <31.743874, 35.796524, 52.923767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788139, 35.976494, 52.314686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166016, 35.999702, 52.443802>,  <32.392742, 36.013626, 52.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166016, 35.999702, 52.443802>,  <31.788139, 35.976494, 52.314686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166016, 35.999702, 52.443802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313393, -0.449778, -0.836352,
		0.096657, 0.891254, -0.443085,
		0.944692, 0.058020, 0.322787,
		32.449425, 36.017109, 52.540638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164539, 36.368107, 51.778111>,  <31.788139, 35.976494, 52.314686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164539, 36.368107, 51.778111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420368, 36.127407, 51.969463>,  <32.573864, 35.982986, 52.084274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.420368, 36.127407, 51.969463>,  <32.164539, 36.368107, 51.778111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420368, 36.127407, 51.969463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280920, -0.396303, -0.874086,
		0.715564, 0.693427, -0.084421,
		0.639572, -0.601749, 0.478378,
		32.612240, 35.946884, 52.112976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699482, 36.312969, 51.451706>,  <32.164539, 36.368107, 51.778111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699482, 36.312969, 51.451706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778015, 35.984447, 51.665962>,  <32.825134, 35.787334, 51.794518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.778015, 35.984447, 51.665962>,  <32.699482, 36.312969, 51.451706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778015, 35.984447, 51.665962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340454, -0.455190, -0.822735,
		0.919535, 0.343891, 0.190248,
		0.196332, -0.821305, 0.535642,
		32.836914, 35.738056, 51.826656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381149, 36.068596, 51.213936>,  <32.699482, 36.312969, 51.451706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381149, 36.068596, 51.213936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218613, 35.755783, 51.402958>,  <33.121090, 35.568096, 51.516369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218613, 35.755783, 51.402958>,  <33.381149, 36.068596, 51.213936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218613, 35.755783, 51.402958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140548, -0.564513, -0.813370,
		0.902846, -0.264092, 0.339300,
		-0.406343, -0.782036, 0.472551,
		33.096710, 35.521172, 51.544724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888039, 35.459122, 51.128025>,  <33.381149, 36.068596, 51.213936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888039, 35.459122, 51.128025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525539, 35.313347, 51.213715>,  <33.308041, 35.225880, 51.265129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525539, 35.313347, 51.213715>,  <33.888039, 35.459122, 51.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525539, 35.313347, 51.213715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098484, -0.674821, -0.731381,
		0.411108, -0.641717, 0.647448,
		-0.906251, -0.364440, 0.214226,
		33.253666, 35.204014, 51.277981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894176, 34.719097, 51.286823>,  <33.888039, 35.459122, 51.128025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894176, 34.719097, 51.286823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512699, 34.781403, 51.183907>,  <33.283813, 34.818787, 51.122158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512699, 34.781403, 51.183907>,  <33.894176, 34.719097, 51.286823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512699, 34.781403, 51.183907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040228, -0.781696, -0.622361,
		-0.298068, -0.603894, 0.739235,
		-0.953697, 0.155768, -0.257292,
		33.226589, 34.828133, 51.106720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629490, 34.071701, 51.126202>,  <33.894176, 34.719097, 51.286823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629490, 34.071701, 51.126202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377041, 34.325321, 50.947464>,  <33.225571, 34.477493, 50.840221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377041, 34.325321, 50.947464>,  <33.629490, 34.071701, 51.126202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377041, 34.325321, 50.947464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101695, -0.638719, -0.762690,
		-0.768992, -0.435905, 0.467587,
		-0.631117, 0.634054, -0.446841,
		33.187706, 34.515537, 50.813412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243122, 33.651810, 50.780575>,  <33.629490, 34.071701, 51.126202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243122, 33.651810, 50.780575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119843, 33.985386, 50.597466>,  <33.045876, 34.185532, 50.487602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119843, 33.985386, 50.597466>,  <33.243122, 33.651810, 50.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119843, 33.985386, 50.597466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012250, -0.484632, -0.874632,
		-0.951242, -0.263955, 0.159580,
		-0.308201, 0.833942, -0.457769,
		33.027382, 34.235569, 50.460136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661228, 33.480270, 50.305840>,  <33.243122, 33.651810, 50.780575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661228, 33.480270, 50.305840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815891, 33.811001, 50.142445>,  <32.908688, 34.009438, 50.044407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815891, 33.811001, 50.142445>,  <32.661228, 33.480270, 50.305840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815891, 33.811001, 50.142445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135307, -0.387280, -0.911979,
		-0.912243, 0.407894, -0.037870,
		0.386657, 0.826823, -0.408485,
		32.931889, 34.059048, 50.019897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216572, 33.645298, 49.740108>,  <32.661228, 33.480270, 50.305840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216572, 33.645298, 49.740108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561577, 33.821831, 49.641075>,  <32.768581, 33.927750, 49.581657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561577, 33.821831, 49.641075>,  <32.216572, 33.645298, 49.740108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561577, 33.821831, 49.641075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175977, -0.197122, -0.964456,
		-0.474452, 0.875423, -0.092356,
		0.862512, 0.441336, -0.247579,
		32.820332, 33.954231, 49.566803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997608, 34.114849, 49.256565>,  <32.216572, 33.645298, 49.740108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997608, 34.114849, 49.256565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389332, 34.074459, 49.186417>,  <32.624367, 34.050224, 49.144329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389332, 34.074459, 49.186417>,  <31.997608, 34.114849, 49.256565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389332, 34.074459, 49.186417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158903, 0.152900, -0.975383,
		0.125304, 0.983069, 0.133691,
		0.979310, -0.100975, -0.175372,
		32.683125, 34.044167, 49.133804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146877, 34.685326, 48.854404>,  <31.997608, 34.114849, 49.256565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146877, 34.685326, 48.854404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435978, 34.419228, 48.779476>,  <32.609436, 34.259571, 48.734520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.435978, 34.419228, 48.779476>,  <32.146877, 34.685326, 48.854404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435978, 34.419228, 48.779476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106193, 0.160926, -0.981237,
		0.682903, 0.729080, 0.045665,
		0.722749, -0.665241, -0.187320,
		32.652802, 34.219654, 48.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460209, 35.025909, 48.297054>,  <32.146877, 34.685326, 48.854404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460209, 35.025909, 48.297054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596451, 34.650112, 48.311649>,  <32.678196, 34.424633, 48.320408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596451, 34.650112, 48.311649>,  <32.460209, 35.025909, 48.297054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596451, 34.650112, 48.311649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005111, -0.040657, -0.999160,
		0.940191, 0.340137, -0.018649,
		0.340609, -0.939497, 0.036487,
		32.698635, 34.368263, 48.322594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932549, 35.015236, 47.721748>,  <32.460209, 35.025909, 48.297054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932549, 35.015236, 47.721748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847355, 34.630936, 47.792854>,  <32.796238, 34.400356, 47.835518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847355, 34.630936, 47.792854>,  <32.932549, 35.015236, 47.721748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847355, 34.630936, 47.792854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129159, -0.152663, -0.979802,
		0.968482, -0.231639, -0.091575,
		-0.212980, -0.960749, 0.177770,
		32.783463, 34.342712, 47.846184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233246, 34.620583, 47.159317>,  <32.932549, 35.015236, 47.721748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233246, 34.620583, 47.159317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960907, 34.376373, 47.321156>,  <32.797504, 34.229847, 47.418259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960907, 34.376373, 47.321156>,  <33.233246, 34.620583, 47.159317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960907, 34.376373, 47.321156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385096, -0.171492, -0.906803,
		0.623012, -0.773207, -0.118351,
		-0.680850, -0.610526, 0.404600,
		32.756653, 34.193214, 47.442535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258713, 34.055187, 46.701313>,  <33.233246, 34.620583, 47.159317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258713, 34.055187, 46.701313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908363, 33.992283, 46.883793>,  <32.698154, 33.954540, 46.993282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908363, 33.992283, 46.883793>,  <33.258713, 34.055187, 46.701313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908363, 33.992283, 46.883793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379770, -0.358603, -0.852748,
		0.297697, -0.920149, 0.254368,
		-0.875872, -0.157259, 0.456200,
		32.645603, 33.945107, 47.020653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060726, 33.348114, 46.423122>,  <33.258713, 34.055187, 46.701313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060726, 33.348114, 46.423122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745308, 33.547230, 46.567574>,  <32.556057, 33.666698, 46.654243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745308, 33.547230, 46.567574>,  <33.060726, 33.348114, 46.423122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745308, 33.547230, 46.567574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515966, -0.215975, -0.828936,
		-0.334638, -0.839978, 0.427145,
		-0.788540, 0.497786, 0.361127,
		32.508747, 33.696564, 46.675911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488613, 32.914207, 46.295609>,  <33.060726, 33.348114, 46.423122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488613, 32.914207, 46.295609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341270, 33.280582, 46.359318>,  <32.252865, 33.500408, 46.397545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341270, 33.280582, 46.359318>,  <32.488613, 32.914207, 46.295609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341270, 33.280582, 46.359318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631549, -0.120810, -0.765866,
		-0.682245, -0.382700, 0.622962,
		-0.368357, 0.915939, 0.159272,
		32.230762, 33.555363, 46.407101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741743, 32.821629, 46.261131>,  <32.488613, 32.914207, 46.295609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741743, 32.821629, 46.261131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805893, 33.214611, 46.223053>,  <31.844383, 33.450401, 46.200207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805893, 33.214611, 46.223053>,  <31.741743, 32.821629, 46.261131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805893, 33.214611, 46.223053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637273, 0.029412, -0.770076,
		-0.753766, 0.184165, 0.630809,
		0.160374, 0.982455, -0.095194,
		31.854006, 33.509346, 46.194496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992729, 33.201279, 46.278484>,  <31.741743, 32.821629, 46.261131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992729, 33.201279, 46.278484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277107, 33.421932, 46.104012>,  <31.447733, 33.554325, 45.999329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277107, 33.421932, 46.104012>,  <30.992729, 33.201279, 46.278484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277107, 33.421932, 46.104012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464695, -0.097038, -0.880138,
		-0.527842, 0.828421, 0.187354,
		0.710944, 0.551636, -0.436184,
		31.490391, 33.587421, 45.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677633, 33.834000, 45.925358>,  <30.992729, 33.201279, 46.278484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677633, 33.834000, 45.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034595, 33.793484, 45.749470>,  <31.248774, 33.769173, 45.643936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034595, 33.793484, 45.749470>,  <30.677633, 33.834000, 45.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034595, 33.793484, 45.749470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432275, 0.087573, -0.897479,
		0.129413, 0.990995, 0.034366,
		0.892407, -0.101289, -0.439716,
		31.302319, 33.763096, 45.617554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635447, 34.368397, 45.453579>,  <30.677633, 33.834000, 45.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635447, 34.368397, 45.453579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913277, 34.110683, 45.325535>,  <31.079975, 33.956055, 45.248711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913277, 34.110683, 45.325535>,  <30.635447, 34.368397, 45.453579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913277, 34.110683, 45.325535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336041, 0.102878, -0.936212,
		0.636116, 0.757837, -0.145049,
		0.694574, -0.644282, -0.320107,
		31.121649, 33.917400, 45.229504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803375, 34.552448, 44.797981>,  <30.635447, 34.368397, 45.453579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803375, 34.552448, 44.797981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962721, 34.185577, 44.801926>,  <31.058329, 33.965454, 44.804291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962721, 34.185577, 44.801926>,  <30.803375, 34.552448, 44.797981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962721, 34.185577, 44.801926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031352, -0.024360, -0.999211,
		0.916691, 0.397742, -0.038459,
		0.398365, -0.917174, 0.009861,
		31.082230, 33.910423, 44.804882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469667, 34.555458, 44.343445>,  <30.803375, 34.552448, 44.797981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469667, 34.555458, 44.343445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308338, 34.190327, 44.368969>,  <31.211540, 33.971249, 44.384285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.308338, 34.190327, 44.368969>,  <31.469667, 34.555458, 44.343445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308338, 34.190327, 44.368969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024289, -0.059030, -0.997961,
		0.914735, -0.404051, 0.001636,
		-0.403323, -0.912830, 0.063811,
		31.187342, 33.916477, 44.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797192, 34.175743, 43.861298>,  <31.469667, 34.555458, 44.343445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797192, 34.175743, 43.861298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492399, 33.929859, 43.942799>,  <31.309525, 33.782330, 43.991699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492399, 33.929859, 43.942799>,  <31.797192, 34.175743, 43.861298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492399, 33.929859, 43.942799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095917, -0.204032, -0.974254,
		0.640458, -0.761906, 0.096508,
		-0.761980, -0.614712, 0.203754,
		31.263805, 33.745445, 44.003925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916460, 33.769024, 43.359009>,  <31.797192, 34.175743, 43.861298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916460, 33.769024, 43.359009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539694, 33.731258, 43.487934>,  <31.313635, 33.708599, 43.565289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539694, 33.731258, 43.487934>,  <31.916460, 33.769024, 43.359009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539694, 33.731258, 43.487934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309707, -0.127054, -0.942305,
		0.129922, -0.987391, 0.090432,
		-0.941914, -0.094419, 0.322309,
		31.257120, 33.702934, 43.584625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644186, 33.258949, 42.873173>,  <31.916460, 33.769024, 43.359009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644186, 33.258949, 42.873173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323685, 33.424549, 43.045959>,  <31.131384, 33.523911, 43.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323685, 33.424549, 43.045959>,  <31.644186, 33.258949, 42.873173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323685, 33.424549, 43.045959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493595, -0.049336, -0.868291,
		-0.338163, -0.908938, 0.243880,
		-0.801255, 0.414002, 0.431964,
		31.083307, 33.548748, 43.175549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040585, 32.846760, 42.710800>,  <31.644186, 33.258949, 42.873173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040585, 32.846760, 42.710800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933697, 33.224560, 42.787231>,  <30.869564, 33.451241, 42.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933697, 33.224560, 42.787231>,  <31.040585, 32.846760, 42.710800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933697, 33.224560, 42.787231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392798, 0.074310, -0.916618,
		-0.879945, -0.319994, 0.351141,
		-0.267218, 0.944501, 0.191082,
		30.853531, 33.507912, 42.844555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227238, 32.967834, 42.563381>,  <31.040585, 32.846760, 42.710800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227238, 32.967834, 42.563381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405258, 33.324459, 42.529797>,  <30.512072, 33.538433, 42.509647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405258, 33.324459, 42.529797>,  <30.227238, 32.967834, 42.563381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405258, 33.324459, 42.529797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359695, 0.092113, -0.928512,
		-0.820090, 0.443438, 0.361685,
		0.445053, 0.891559, -0.083961,
		30.538774, 33.591927, 42.504608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740309, 33.330975, 42.249878>,  <30.227238, 32.967834, 42.563381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740309, 33.330975, 42.249878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068829, 33.549606, 42.184498>,  <30.265940, 33.680786, 42.145267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068829, 33.549606, 42.184498>,  <29.740309, 33.330975, 42.249878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068829, 33.549606, 42.184498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284482, 0.144031, -0.947800,
		-0.494507, 0.824927, 0.273785,
		0.821299, 0.546581, -0.163452,
		30.315218, 33.713581, 42.135464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558741, 33.809845, 41.785290>,  <29.740309, 33.330975, 42.249878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558741, 33.809845, 41.785290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949909, 33.862778, 41.720589>,  <30.184610, 33.894535, 41.681770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949909, 33.862778, 41.720589>,  <29.558741, 33.809845, 41.785290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949909, 33.862778, 41.720589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185423, 0.192414, -0.963637,
		-0.096394, 0.972351, 0.212702,
		0.977920, 0.132329, -0.161748,
		30.243284, 33.902477, 41.672066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651653, 34.429359, 41.317734>,  <29.558741, 33.809845, 41.785290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651653, 34.429359, 41.317734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976475, 34.198662, 41.282097>,  <30.171368, 34.060246, 41.260715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976475, 34.198662, 41.282097>,  <29.651653, 34.429359, 41.317734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976475, 34.198662, 41.282097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031621, 0.108948, -0.993544,
		0.582723, 0.809630, 0.070235,
		0.812055, -0.576741, -0.089088,
		30.220091, 34.025639, 41.255371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095970, 34.758251, 40.770691>,  <29.651653, 34.429359, 41.317734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095970, 34.758251, 40.770691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222685, 34.380219, 40.802856>,  <30.298714, 34.153400, 40.822155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222685, 34.380219, 40.802856>,  <30.095970, 34.758251, 40.770691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222685, 34.380219, 40.802856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211146, -0.012383, -0.977376,
		0.924697, 0.326596, 0.195628,
		0.316785, -0.945083, 0.080410,
		30.317720, 34.096695, 40.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749258, 34.742065, 40.388313>,  <30.095970, 34.758251, 40.770691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749258, 34.742065, 40.388313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616901, 34.364834, 40.401646>,  <30.537487, 34.138496, 40.409645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.616901, 34.364834, 40.401646>,  <30.749258, 34.742065, 40.388313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616901, 34.364834, 40.401646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169707, -0.094211, -0.980981,
		0.928284, -0.318942, 0.191221,
		-0.330891, -0.943080, 0.033328,
		30.517633, 34.081909, 40.411644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219320, 34.364578, 40.076241>,  <30.749258, 34.742065, 40.388313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219320, 34.364578, 40.076241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886087, 34.145622, 40.044399>,  <30.686148, 34.014248, 40.025295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886087, 34.145622, 40.044399>,  <31.219320, 34.364578, 40.076241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886087, 34.145622, 40.044399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101351, -0.009577, -0.994805,
		0.543782, -0.836824, 0.063457,
		-0.833084, -0.547388, -0.079605,
		30.636162, 33.981407, 40.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351984, 33.592480, 39.805462>,  <31.219320, 34.364578, 40.076241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351984, 33.592480, 39.805462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021498, 33.797211, 39.711319>,  <30.823206, 33.920052, 39.654831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.021498, 33.797211, 39.711319>,  <31.351984, 33.592480, 39.805462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021498, 33.797211, 39.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277362, 0.005937, -0.960747,
		-0.490341, -0.859067, -0.146867,
		-0.826218, 0.511829, -0.235361,
		30.773632, 33.950760, 39.640709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098812, 33.506737, 39.693378>,  <31.351984, 33.592480, 39.805462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098812, 33.506737, 39.693378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418465, 33.441154, 39.462032>,  <32.610256, 33.401806, 39.323223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418465, 33.441154, 39.462032>,  <32.098812, 33.506737, 39.693378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418465, 33.441154, 39.462032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534269, 0.634741, 0.558265,
		0.275584, -0.755131, 0.594837,
		0.799131, -0.163954, -0.578368,
		32.658203, 33.391968, 39.288521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876179, 33.639923, 39.927059>,  <32.098812, 33.506737, 39.693378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876179, 33.639923, 39.927059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147709, 33.474335, 39.684464>,  <33.310627, 33.374981, 39.538906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147709, 33.474335, 39.684464>,  <32.876179, 33.639923, 39.927059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147709, 33.474335, 39.684464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404071, -0.479052, 0.779253,
		-0.613126, -0.774040, -0.157919,
		0.678824, -0.413970, -0.606486,
		33.351357, 33.350143, 39.502518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878708, 32.909950, 40.082497>,  <32.876179, 33.639923, 39.927059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878708, 32.909950, 40.082497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236992, 32.994144, 39.925827>,  <33.451962, 33.044662, 39.831825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236992, 32.994144, 39.925827>,  <32.878708, 32.909950, 40.082497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236992, 32.994144, 39.925827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443845, -0.476113, 0.759156,
		-0.026686, -0.853822, -0.519881,
		0.895706, 0.210488, -0.391670,
		33.505703, 33.057289, 39.808327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313995, 32.403099, 40.173943>,  <32.878708, 32.909950, 40.082497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313995, 32.403099, 40.173943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550495, 32.723705, 40.138168>,  <33.692394, 32.916069, 40.116703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550495, 32.723705, 40.138168>,  <33.313995, 32.403099, 40.173943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550495, 32.723705, 40.138168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571632, -0.338266, 0.747538,
		0.568910, -0.493105, -0.658171,
		0.591252, 0.801513, -0.089432,
		33.727871, 32.964161, 40.111340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944504, 32.092304, 40.207203>,  <33.313995, 32.403099, 40.173943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944504, 32.092304, 40.207203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018070, 32.480049, 40.272339>,  <34.062210, 32.712696, 40.311420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018070, 32.480049, 40.272339>,  <33.944504, 32.092304, 40.207203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018070, 32.480049, 40.272339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613948, -0.242662, 0.751121,
		0.767622, -0.038166, -0.639765,
		0.183914, 0.969360, 0.162841,
		34.073246, 32.770859, 40.321190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671974, 32.215557, 40.140930>,  <33.944504, 32.092304, 40.207203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671974, 32.215557, 40.140930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521923, 32.511833, 40.363873>,  <34.431892, 32.689598, 40.497639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521923, 32.511833, 40.363873>,  <34.671974, 32.215557, 40.140930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521923, 32.511833, 40.363873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768042, -0.088303, 0.634282,
		0.519026, 0.666014, -0.535759,
		-0.375131, 0.740694, 0.557358,
		34.409382, 32.734043, 40.531078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292198, 32.506126, 40.517689>,  <34.671974, 32.215557, 40.140930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292198, 32.506126, 40.517689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981335, 32.663467, 40.714172>,  <34.794815, 32.757874, 40.832062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981335, 32.663467, 40.714172>,  <35.292198, 32.506126, 40.517689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981335, 32.663467, 40.714172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565301, 0.093411, 0.819579,
		0.276500, 0.914629, -0.294959,
		-0.777163, 0.393354, 0.491213,
		34.748184, 32.781475, 40.861538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607662, 33.026661, 40.918884>,  <35.292198, 32.506126, 40.517689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607662, 33.026661, 40.918884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247723, 32.955078, 41.078007>,  <35.031757, 32.912128, 41.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247723, 32.955078, 41.078007>,  <35.607662, 33.026661, 40.918884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247723, 32.955078, 41.078007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383927, 0.107971, 0.917029,
		-0.207057, 0.977915, -0.028452,
		-0.899848, -0.178953, 0.397804,
		34.977768, 32.901394, 41.197350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524330, 33.505642, 41.393341>,  <35.607662, 33.026661, 40.918884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524330, 33.505642, 41.393341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266129, 33.229366, 41.523735>,  <35.111206, 33.063599, 41.601971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266129, 33.229366, 41.523735>,  <35.524330, 33.505642, 41.393341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266129, 33.229366, 41.523735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383506, 0.075990, 0.920407,
		-0.660491, 0.719144, 0.215833,
		-0.645503, -0.690694, 0.325987,
		35.072479, 33.022160, 41.621532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498234, 33.673222, 42.054783>,  <35.524330, 33.505642, 41.393341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498234, 33.673222, 42.054783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350208, 33.301735, 42.045513>,  <35.261395, 33.078842, 42.039951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350208, 33.301735, 42.045513>,  <35.498234, 33.673222, 42.054783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350208, 33.301735, 42.045513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420065, -0.189528, 0.887482,
		-0.828613, 0.318689, 0.460259,
		-0.370063, -0.928718, -0.023175,
		35.239189, 33.023121, 42.038559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087502, 33.504059, 42.745323>,  <35.498234, 33.673222, 42.054783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087502, 33.504059, 42.745323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179333, 33.141941, 42.602364>,  <35.234432, 32.924671, 42.516586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179333, 33.141941, 42.602364>,  <35.087502, 33.504059, 42.745323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179333, 33.141941, 42.602364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109515, -0.340852, 0.933716,
		-0.967109, -0.253502, 0.020892,
		0.229578, -0.905294, -0.357403,
		35.248207, 32.870354, 42.495144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800213, 33.030811, 43.209396>,  <35.087502, 33.504059, 42.745323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800213, 33.030811, 43.209396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064850, 32.824001, 42.992149>,  <35.223633, 32.699917, 42.861801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064850, 32.824001, 42.992149>,  <34.800213, 33.030811, 43.209396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064850, 32.824001, 42.992149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347963, -0.429910, 0.833126,
		-0.664237, -0.740178, -0.104522,
		0.661597, -0.517023, -0.543117,
		35.263329, 32.668896, 42.829216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605446, 32.327690, 43.246231>,  <34.800213, 33.030811, 43.209396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605446, 32.327690, 43.246231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997955, 32.351986, 43.173119>,  <35.233463, 32.366562, 43.129253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997955, 32.351986, 43.173119>,  <34.605446, 32.327690, 43.246231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997955, 32.351986, 43.173119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186957, -0.528502, 0.828090,
		-0.046300, -0.846756, -0.529962,
		0.981276, 0.060740, -0.182777,
		35.292339, 32.370209, 43.118286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801701, 31.697746, 43.471706>,  <34.605446, 32.327690, 43.246231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801701, 31.697746, 43.471706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110245, 31.951605, 43.452820>,  <35.295372, 32.103920, 43.441490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110245, 31.951605, 43.452820>,  <34.801701, 31.697746, 43.471706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110245, 31.951605, 43.452820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330691, -0.336330, 0.881774,
		0.543737, -0.695776, -0.469303,
		0.771358, 0.634648, -0.047212,
		35.341652, 32.141998, 43.438656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360668, 31.318460, 43.790291>,  <34.801701, 31.697746, 43.471706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360668, 31.318460, 43.790291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451958, 31.707258, 43.812714>,  <35.506729, 31.940536, 43.826168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451958, 31.707258, 43.812714>,  <35.360668, 31.318460, 43.790291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451958, 31.707258, 43.812714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222732, -0.108173, 0.968860,
		0.947790, -0.208626, -0.241181,
		0.228219, 0.971995, 0.056057,
		35.520424, 31.998857, 43.829533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050068, 31.394669, 44.205200>,  <35.360668, 31.318460, 43.790291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050068, 31.394669, 44.205200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869194, 31.749441, 44.242897>,  <35.760670, 31.962305, 44.265514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869194, 31.749441, 44.242897>,  <36.050068, 31.394669, 44.205200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869194, 31.749441, 44.242897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044769, -0.082957, 0.995547,
		0.890799, 0.454392, -0.002195,
		-0.452187, 0.886930, 0.094241,
		35.733540, 32.015522, 44.271168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385777, 31.656485, 44.815273>,  <36.050068, 31.394669, 44.205200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385777, 31.656485, 44.815273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068977, 31.895767, 44.766460>,  <35.878899, 32.039337, 44.737175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068977, 31.895767, 44.766460>,  <36.385777, 31.656485, 44.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068977, 31.895767, 44.766460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072566, 0.106223, 0.991691,
		0.606197, 0.794272, -0.040718,
		-0.791997, 0.598205, -0.122029,
		35.831379, 32.075230, 44.729851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524952, 32.148766, 45.179623>,  <36.385777, 31.656485, 44.815273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524952, 32.148766, 45.179623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126427, 32.177498, 45.160851>,  <35.887310, 32.194736, 45.149590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126427, 32.177498, 45.160851>,  <36.524952, 32.148766, 45.179623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126427, 32.177498, 45.160851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030778, 0.211328, 0.976930,
		0.080092, 0.974772, -0.208338,
		-0.996312, 0.071832, -0.046928,
		35.827534, 32.199047, 45.146770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351170, 32.820000, 45.554726>,  <36.524952, 32.148766, 45.179623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351170, 32.820000, 45.554726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011135, 32.609360, 45.551731>,  <35.807114, 32.482975, 45.549934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011135, 32.609360, 45.551731>,  <36.351170, 32.820000, 45.554726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011135, 32.609360, 45.551731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246357, 0.385047, 0.889408,
		-0.465478, 0.757914, -0.457053,
		-0.850081, -0.526598, -0.007487,
		35.756111, 32.451382, 45.549484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980598, 33.273243, 45.886379>,  <36.351170, 32.820000, 45.554726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980598, 33.273243, 45.886379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786247, 32.923889, 45.872993>,  <35.669636, 32.714275, 45.864964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786247, 32.923889, 45.872993>,  <35.980598, 33.273243, 45.886379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786247, 32.923889, 45.872993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379273, 0.176195, 0.908354,
		-0.787446, 0.454043, -0.416861,
		-0.485881, -0.873384, -0.033462,
		35.640484, 32.661873, 45.862953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326275, 33.403088, 46.219692>,  <35.980598, 33.273243, 45.886379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326275, 33.403088, 46.219692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360123, 33.004536, 46.216434>,  <35.380432, 32.765404, 46.214481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360123, 33.004536, 46.216434>,  <35.326275, 33.403088, 46.219692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360123, 33.004536, 46.216434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353508, -0.037661, 0.934673,
		-0.931596, -0.076216, -0.355415,
		0.084623, -0.996380, -0.008142,
		35.385509, 32.705620, 46.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642822, 33.173519, 46.520058>,  <35.326275, 33.403088, 46.219692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642822, 33.173519, 46.520058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889137, 32.866894, 46.592915>,  <35.036926, 32.682919, 46.636631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889137, 32.866894, 46.592915>,  <34.642822, 33.173519, 46.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889137, 32.866894, 46.592915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296847, -0.011576, 0.954855,
		-0.729851, -0.642061, -0.234681,
		0.615792, -0.766566, 0.182145,
		35.073875, 32.636925, 46.647556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250980, 32.565018, 46.871788>,  <34.642822, 33.173519, 46.520058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250980, 32.565018, 46.871788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639088, 32.564255, 46.968601>,  <34.871952, 32.563797, 47.026688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639088, 32.564255, 46.968601>,  <34.250980, 32.565018, 46.871788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639088, 32.564255, 46.968601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241228, 0.074255, 0.967624,
		-0.019821, -0.997238, 0.071587,
		0.970266, -0.001911, 0.242033,
		34.930168, 32.563683, 47.041210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176968, 32.265991, 47.546581>,  <34.250980, 32.565018, 46.871788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176968, 32.265991, 47.546581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551487, 32.404331, 47.522129>,  <34.776199, 32.487335, 47.507458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551487, 32.404331, 47.522129>,  <34.176968, 32.265991, 47.546581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551487, 32.404331, 47.522129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032971, 0.086741, 0.995685,
		0.349662, -0.934271, 0.069813,
		0.936295, 0.345852, -0.061134,
		34.832375, 32.508087, 47.503788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531540, 31.877638, 48.028015>,  <34.176968, 32.265991, 47.546581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531540, 31.877638, 48.028015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749905, 32.207375, 47.968098>,  <34.880924, 32.405216, 47.932148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749905, 32.207375, 47.968098>,  <34.531540, 31.877638, 48.028015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749905, 32.207375, 47.968098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001845, 0.177607, 0.984100,
		0.837838, -0.537512, 0.095438,
		0.545916, 0.824340, -0.149797,
		34.913681, 32.454678, 47.923157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146347, 31.770056, 48.446793>,  <34.531540, 31.877638, 48.028015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146347, 31.770056, 48.446793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072880, 32.160149, 48.397491>,  <35.028801, 32.394203, 48.367912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072880, 32.160149, 48.397491>,  <35.146347, 31.770056, 48.446793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072880, 32.160149, 48.397491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262320, 0.169465, 0.949984,
		0.947341, 0.142148, -0.286948,
		-0.183666, 0.975231, -0.123253,
		35.017780, 32.452717, 48.360516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650276, 32.135551, 48.874889>,  <35.146347, 31.770056, 48.446793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650276, 32.135551, 48.874889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419659, 32.454868, 48.805229>,  <35.281288, 32.646458, 48.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.419659, 32.454868, 48.805229>,  <35.650276, 32.135551, 48.874889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.419659, 32.454868, 48.805229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243306, 0.371208, 0.896106,
		0.779996, 0.474278, -0.408248,
		-0.576548, 0.798289, -0.174146,
		35.246693, 32.694355, 48.752987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039375, 32.771229, 48.873360>,  <35.650276, 32.135551, 48.874889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039375, 32.771229, 48.873360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 32.879074, 48.949852>,  <35.435349, 32.943779, 48.995747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661858, 32.879074, 48.949852>,  <36.039375, 32.771229, 48.873360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661858, 32.879074, 48.949852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307510, 0.503971, 0.807125,
		0.121232, 0.820563, -0.558551,
		-0.943790, 0.269609, 0.191234,
		35.378719, 32.959957, 49.007221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001816, 33.503174, 48.937618>,  <36.039375, 32.771229, 48.873360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001816, 33.503174, 48.937618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670696, 33.379356, 49.124775>,  <35.472023, 33.305065, 49.237068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670696, 33.379356, 49.124775>,  <36.001816, 33.503174, 48.937618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670696, 33.379356, 49.124775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266611, 0.516755, 0.813562,
		-0.493621, 0.798214, -0.345242,
		-0.827803, -0.309545, 0.467894,
		35.422356, 33.286491, 49.265144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716259, 34.163609, 49.326252>,  <36.001816, 33.503174, 48.937618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716259, 34.163609, 49.326252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567810, 33.836632, 49.502464>,  <35.478741, 33.640446, 49.608192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.567810, 33.836632, 49.502464>,  <35.716259, 34.163609, 49.326252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567810, 33.836632, 49.502464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297837, 0.344556, 0.890266,
		-0.879525, 0.461599, 0.115592,
		-0.371118, -0.817439, 0.440527,
		35.456474, 33.591400, 49.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365158, 34.426777, 49.885929>,  <35.716259, 34.163609, 49.326252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365158, 34.426777, 49.885929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396961, 34.041573, 49.988922>,  <35.416042, 33.810452, 50.050716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396961, 34.041573, 49.988922>,  <35.365158, 34.426777, 49.885929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396961, 34.041573, 49.988922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299190, 0.269440, 0.915362,
		-0.950876, 0.004261, 0.309544,
		0.079503, -0.963008, 0.257478,
		35.420811, 33.752670, 50.066166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123886, 34.416317, 50.611469>,  <35.365158, 34.426777, 49.885929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123886, 34.416317, 50.611469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313599, 34.072914, 50.533474>,  <35.427425, 33.866875, 50.486675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313599, 34.072914, 50.533474>,  <35.123886, 34.416317, 50.611469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313599, 34.072914, 50.533474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420724, 0.026470, 0.906802,
		-0.773333, -0.512121, 0.373749,
		0.474286, -0.858505, -0.194991,
		35.455883, 33.815361, 50.474976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009399, 33.944519, 51.120274>,  <35.123886, 34.416317, 50.611469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009399, 33.944519, 51.120274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361183, 33.863857, 50.947815>,  <35.572254, 33.815460, 50.844337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361183, 33.863857, 50.947815>,  <35.009399, 33.944519, 51.120274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361183, 33.863857, 50.947815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453009, 0.076618, 0.888207,
		-0.146081, -0.976455, 0.158735,
		0.879456, -0.201659, -0.431151,
		35.625019, 33.803360, 50.818470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351543, 33.720966, 51.688801>,  <35.009399, 33.944519, 51.120274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351543, 33.720966, 51.688801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657959, 33.717083, 51.431713>,  <35.841808, 33.714752, 51.277462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657959, 33.717083, 51.431713>,  <35.351543, 33.720966, 51.688801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657959, 33.717083, 51.431713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642595, 0.036144, 0.765353,
		0.015801, -0.999299, 0.033926,
		0.766043, -0.009707, -0.642716,
		35.887772, 33.714169, 51.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803844, 33.192120, 52.006634>,  <35.351543, 33.720966, 51.688801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803844, 33.192120, 52.006634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982510, 33.440655, 51.749126>,  <36.089706, 33.589775, 51.594624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982510, 33.440655, 51.749126>,  <35.803844, 33.192120, 52.006634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982510, 33.440655, 51.749126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774589, 0.091563, 0.625802,
		0.447781, -0.778172, -0.440387,
		0.446658, 0.621341, -0.643764,
		36.116508, 33.627056, 51.555996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569546, 33.007015, 52.075409>,  <35.803844, 33.192120, 52.006634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569546, 33.007015, 52.075409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559803, 33.371105, 51.910053>,  <36.553959, 33.589561, 51.810841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559803, 33.371105, 51.910053>,  <36.569546, 33.007015, 52.075409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559803, 33.371105, 51.910053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701360, 0.310228, 0.641757,
		0.712390, -0.274308, -0.645953,
		-0.024353, 0.910227, -0.413392,
		36.552498, 33.644173, 51.786034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336452, 33.186840, 51.946823>,  <36.569546, 33.007015, 52.075409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336452, 33.186840, 51.946823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105511, 33.508339, 52.004311>,  <36.966946, 33.701237, 52.038803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105511, 33.508339, 52.004311>,  <37.336452, 33.186840, 51.946823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105511, 33.508339, 52.004311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700743, 0.397426, 0.592463,
		0.419075, 0.442767, -0.792675,
		-0.577352, 0.803748, 0.143715,
		36.932304, 33.749462, 52.047424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874218, 33.777245, 52.011948>,  <37.336452, 33.186840, 51.946823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874218, 33.777245, 52.011948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528240, 33.928627, 52.143787>,  <37.320652, 34.019459, 52.222889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528240, 33.928627, 52.143787>,  <37.874218, 33.777245, 52.011948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528240, 33.928627, 52.143787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490594, 0.499227, 0.714206,
		0.105754, 0.779449, -0.617475,
		-0.864947, 0.378460, 0.329598,
		37.268757, 34.042164, 52.242668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952389, 34.601105, 52.070023>,  <37.874218, 33.777245, 52.011948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952389, 34.601105, 52.070023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673317, 34.455494, 52.316833>,  <37.505875, 34.368126, 52.464920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673317, 34.455494, 52.316833>,  <37.952389, 34.601105, 52.070023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673317, 34.455494, 52.316833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494301, 0.378826, 0.782405,
		-0.518563, 0.850868, -0.084361,
		-0.697681, -0.364027, 0.617029,
		37.464012, 34.346287, 52.501942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081692, 34.843163, 52.824223>,  <37.952389, 34.601105, 52.070023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081692, 34.843163, 52.824223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203945, 35.214500, 52.908859>,  <38.277298, 35.437302, 52.959641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203945, 35.214500, 52.908859>,  <38.081692, 34.843163, 52.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203945, 35.214500, 52.908859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103203, 0.188619, -0.976613,
		-0.946539, 0.320324, -0.038159,
		0.305635, 0.928340, 0.211594,
		38.295635, 35.493004, 52.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612034, 35.345646, 52.573452>,  <38.081692, 34.843163, 52.824223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612034, 35.345646, 52.573452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979630, 35.501518, 52.597481>,  <38.200188, 35.595039, 52.611897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979630, 35.501518, 52.597481>,  <37.612034, 35.345646, 52.573452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979630, 35.501518, 52.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068237, 0.307248, -0.949180,
		-0.388330, 0.868188, 0.308949,
		0.918990, 0.389677, 0.060071,
		38.255325, 35.618420, 52.615501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585861, 35.933628, 52.201054>,  <37.612034, 35.345646, 52.573452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585861, 35.933628, 52.201054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979408, 35.862740, 52.210823>,  <38.215538, 35.820206, 52.216682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979408, 35.862740, 52.210823>,  <37.585861, 35.933628, 52.201054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979408, 35.862740, 52.210823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075742, 0.289001, -0.954328,
		0.162065, 0.940783, 0.297762,
		0.983869, -0.177217, 0.024420,
		38.274570, 35.809574, 52.218147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869255, 36.537369, 51.846214>,  <37.585861, 35.933628, 52.201054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869255, 36.537369, 51.846214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170403, 36.274395, 51.833767>,  <38.351089, 36.116611, 51.826298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170403, 36.274395, 51.833767>,  <37.869255, 36.537369, 51.846214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170403, 36.274395, 51.833767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144055, 0.210736, -0.966871,
		0.642211, 0.723445, 0.253363,
		0.752870, -0.657433, -0.031121,
		38.396263, 36.077164, 51.824432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342037, 36.898518, 51.351398>,  <37.869255, 36.537369, 51.846214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342037, 36.898518, 51.351398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447247, 36.512627, 51.355774>,  <38.510372, 36.281094, 51.358398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447247, 36.512627, 51.355774>,  <38.342037, 36.898518, 51.351398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447247, 36.512627, 51.355774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017781, -0.006487, -0.999821,
		0.964626, 0.263170, 0.015447,
		0.263023, -0.964728, 0.010937,
		38.526154, 36.223209, 51.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919415, 36.796326, 50.870911>,  <38.342037, 36.898518, 51.351398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919415, 36.796326, 50.870911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786869, 36.419376, 50.889412>,  <38.707340, 36.193207, 50.900513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786869, 36.419376, 50.889412>,  <38.919415, 36.796326, 50.870911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786869, 36.419376, 50.889412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280044, -0.145043, -0.948967,
		0.900985, -0.301500, 0.311966,
		-0.331362, -0.942369, 0.046249,
		38.687462, 36.136665, 50.903286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421879, 36.389851, 50.476551>,  <38.919415, 36.796326, 50.870911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421879, 36.389851, 50.476551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094208, 36.165455, 50.524284>,  <38.897606, 36.030819, 50.552925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094208, 36.165455, 50.524284>,  <39.421879, 36.389851, 50.476551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094208, 36.165455, 50.524284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087661, -0.328087, -0.940571,
		0.566802, -0.760033, 0.317938,
		-0.819177, -0.560988, 0.119335,
		38.848454, 35.997158, 50.560085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623959, 35.702858, 50.202957>,  <39.421879, 36.389851, 50.476551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623959, 35.702858, 50.202957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224823, 35.702541, 50.176682>,  <38.985340, 35.702351, 50.160915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224823, 35.702541, 50.176682>,  <39.623959, 35.702858, 50.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224823, 35.702541, 50.176682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063189, -0.284861, -0.956484,
		-0.017957, -0.958569, 0.284296,
		-0.997840, -0.000789, -0.065686,
		38.925472, 35.702305, 50.156975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321671, 34.999893, 49.887081>,  <39.623959, 35.702858, 50.202957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321671, 34.999893, 49.887081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039192, 35.271954, 49.808411>,  <38.869705, 35.435188, 49.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039192, 35.271954, 49.808411>,  <39.321671, 34.999893, 49.887081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039192, 35.271954, 49.808411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062037, -0.336156, -0.939761,
		-0.705294, -0.651454, 0.279587,
		-0.706195, 0.680152, -0.196674,
		38.827332, 35.475998, 49.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820797, 34.585510, 49.463039>,  <39.321671, 34.999893, 49.887081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820797, 34.585510, 49.463039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727612, 34.969635, 49.401688>,  <38.671700, 35.200111, 49.364876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727612, 34.969635, 49.401688>,  <38.820797, 34.585510, 49.463039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727612, 34.969635, 49.401688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049887, -0.169311, -0.984299,
		-0.971205, -0.221655, 0.087351,
		-0.232964, 0.960314, -0.153378,
		38.657722, 35.257729, 49.355675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181141, 34.562008, 49.168587>,  <38.820797, 34.585510, 49.463039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181141, 34.562008, 49.168587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284077, 34.936787, 49.074013>,  <38.345840, 35.161655, 49.017269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284077, 34.936787, 49.074013>,  <38.181141, 34.562008, 49.168587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284077, 34.936787, 49.074013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033697, -0.235825, -0.971211,
		-0.965732, 0.257902, -0.029116,
		0.257344, 0.936949, -0.236434,
		38.361279, 35.217873, 49.003082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740704, 34.789906, 48.753784>,  <38.181141, 34.562008, 49.168587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740704, 34.789906, 48.753784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077106, 34.993828, 48.681343>,  <38.278950, 35.116180, 48.637878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077106, 34.993828, 48.681343>,  <37.740704, 34.789906, 48.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077106, 34.993828, 48.681343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028423, -0.292654, -0.955796,
		-0.540271, 0.808982, -0.231635,
		0.841011, 0.509805, -0.181106,
		38.329411, 35.146770, 48.627010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562393, 35.119770, 48.121265>,  <37.740704, 34.789906, 48.753784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562393, 35.119770, 48.121265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960087, 35.127064, 48.163528>,  <38.198704, 35.131439, 48.188885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960087, 35.127064, 48.163528>,  <37.562393, 35.119770, 48.121265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960087, 35.127064, 48.163528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106792, -0.256010, -0.960757,
		0.009532, 0.966502, -0.256481,
		0.994236, 0.018232, 0.105655,
		38.258358, 35.132534, 48.195225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901745, 35.424500, 47.449650>,  <37.562393, 35.119770, 48.121265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901745, 35.424500, 47.449650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189873, 35.207317, 47.622314>,  <38.362751, 35.077007, 47.725914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189873, 35.207317, 47.622314>,  <37.901745, 35.424500, 47.449650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189873, 35.207317, 47.622314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356517, -0.244024, -0.901858,
		0.595007, 0.803523, 0.017798,
		0.720321, -0.542958, 0.431666,
		38.405968, 35.044430, 47.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497906, 35.573318, 47.008751>,  <37.901745, 35.424500, 47.449650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497906, 35.573318, 47.008751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554371, 35.243217, 47.227482>,  <38.588249, 35.045155, 47.358723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554371, 35.243217, 47.227482>,  <38.497906, 35.573318, 47.008751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554371, 35.243217, 47.227482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233727, -0.508966, -0.828447,
		0.962001, 0.244753, 0.121039,
		0.141160, -0.825257, 0.546831,
		38.596718, 34.995640, 47.391533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156311, 35.349030, 46.787296>,  <38.497906, 35.573318, 47.008751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156311, 35.349030, 46.787296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967598, 35.032612, 46.943077>,  <38.854370, 34.842762, 47.036545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967598, 35.032612, 46.943077>,  <39.156311, 35.349030, 46.787296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967598, 35.032612, 46.943077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213595, -0.531079, -0.819959,
		0.855453, -0.303655, 0.419516,
		-0.471781, -0.791043, 0.389454,
		38.826065, 34.795300, 47.059914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509266, 34.810246, 46.545567>,  <39.156311, 35.349030, 46.787296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509266, 34.810246, 46.545567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159641, 34.646782, 46.650646>,  <38.949867, 34.548702, 46.713696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159641, 34.646782, 46.650646>,  <39.509266, 34.810246, 46.545567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159641, 34.646782, 46.650646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085515, -0.402877, -0.911250,
		0.478230, -0.818954, 0.317192,
		-0.874061, -0.408662, 0.262701,
		38.897423, 34.524185, 46.729458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466221, 34.214546, 46.198734>,  <39.509266, 34.810246, 46.545567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466221, 34.214546, 46.198734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082523, 34.285553, 46.286674>,  <38.852303, 34.328159, 46.339439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082523, 34.285553, 46.286674>,  <39.466221, 34.214546, 46.198734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082523, 34.285553, 46.286674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265566, -0.300544, -0.916050,
		-0.096545, -0.937102, 0.335440,
		-0.959247, 0.177522, 0.219846,
		38.794750, 34.338810, 46.352627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085323, 33.573978, 45.961216>,  <39.466221, 34.214546, 46.198734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085323, 33.573978, 45.961216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793724, 33.844856, 46.001144>,  <38.618763, 34.007385, 46.025101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793724, 33.844856, 46.001144>,  <39.085323, 33.573978, 45.961216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793724, 33.844856, 46.001144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308139, -0.194439, -0.931259,
		-0.611238, -0.709645, 0.350417,
		-0.728998, 0.677198, 0.099821,
		38.575024, 34.048016, 46.031090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441166, 33.307487, 45.833347>,  <39.085323, 33.573978, 45.961216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441166, 33.307487, 45.833347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317303, 33.685265, 45.789265>,  <38.242985, 33.911930, 45.762817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317303, 33.685265, 45.789265>,  <38.441166, 33.307487, 45.833347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317303, 33.685265, 45.789265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404648, -0.235772, -0.883556,
		-0.860449, -0.229006, 0.455174,
		-0.309657, 0.944441, -0.110203,
		38.224407, 33.968597, 45.756203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616589, 33.356651, 45.630913>,  <38.441166, 33.307487, 45.833347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616589, 33.356651, 45.630913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795525, 33.690098, 45.501312>,  <37.902885, 33.890163, 45.423553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795525, 33.690098, 45.501312>,  <37.616589, 33.356651, 45.630913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795525, 33.690098, 45.501312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515855, -0.055444, -0.854880,
		-0.730602, 0.549560, 0.405221,
		0.447341, 0.833612, -0.324001,
		37.929726, 33.940182, 45.404114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072010, 33.737087, 45.250023>,  <37.616589, 33.356651, 45.630913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072010, 33.737087, 45.250023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427094, 33.890350, 45.147923>,  <37.640144, 33.982307, 45.086662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427094, 33.890350, 45.147923>,  <37.072010, 33.737087, 45.250023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427094, 33.890350, 45.147923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272692, -0.009119, -0.962058,
		-0.370952, 0.923636, 0.096390,
		0.887712, 0.383162, -0.255251,
		37.693409, 34.005299, 45.071346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941425, 34.269894, 44.767254>,  <37.072010, 33.737087, 45.250023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941425, 34.269894, 44.767254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321487, 34.156666, 44.714970>,  <37.549522, 34.088730, 44.683598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321487, 34.156666, 44.714970>,  <36.941425, 34.269894, 44.767254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321487, 34.156666, 44.714970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148175, -0.041090, -0.988107,
		0.274328, 0.958220, -0.080985,
		0.950152, -0.283066, -0.130712,
		37.606533, 34.071747, 44.675755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097481, 34.630535, 44.047092>,  <36.941425, 34.269894, 44.767254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097481, 34.630535, 44.047092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380634, 34.352486, 44.097221>,  <37.550526, 34.185658, 44.127300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380634, 34.352486, 44.097221>,  <37.097481, 34.630535, 44.047092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380634, 34.352486, 44.097221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054818, -0.230963, -0.971417,
		0.704197, 0.680781, -0.201600,
		0.707885, -0.695121, 0.125325,
		37.592999, 34.143948, 44.134819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528706, 34.734898, 43.501389>,  <37.097481, 34.630535, 44.047092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528706, 34.734898, 43.501389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588379, 34.356991, 43.618122>,  <37.624184, 34.130249, 43.688160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588379, 34.356991, 43.618122>,  <37.528706, 34.734898, 43.501389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588379, 34.356991, 43.618122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032023, -0.299596, -0.953529,
		0.988291, 0.132905, -0.074949,
		0.149183, -0.944764, 0.291832,
		37.633133, 34.073563, 43.705673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158474, 34.494965, 43.174622>,  <37.528706, 34.734898, 43.501389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158474, 34.494965, 43.174622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990036, 34.148148, 43.281139>,  <37.888973, 33.940056, 43.345051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.990036, 34.148148, 43.281139>,  <38.158474, 34.494965, 43.174622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990036, 34.148148, 43.281139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221891, -0.383151, -0.896638,
		0.879458, -0.318478, 0.353731,
		-0.421092, -0.867045, 0.266298,
		37.863708, 33.888035, 43.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586094, 34.010777, 43.080982>,  <38.158474, 34.494965, 43.174622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586094, 34.010777, 43.080982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249790, 33.794437, 43.071106>,  <38.048008, 33.664635, 43.065178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249790, 33.794437, 43.071106>,  <38.586094, 34.010777, 43.080982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249790, 33.794437, 43.071106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218679, -0.297505, -0.929339,
		0.495286, -0.786748, 0.368402,
		-0.840757, -0.540850, -0.024695,
		37.997562, 33.632183, 43.063698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798367, 33.429272, 42.817184>,  <38.586094, 34.010777, 43.080982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798367, 33.429272, 42.817184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408932, 33.420635, 42.726273>,  <38.175270, 33.415455, 42.671726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.408932, 33.420635, 42.726273>,  <38.798367, 33.429272, 42.817184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408932, 33.420635, 42.726273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227492, -0.175769, -0.957785,
		-0.019271, -0.984195, 0.176038,
		-0.973589, -0.021589, -0.227284,
		38.116856, 33.414158, 42.658089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688206, 32.926296, 42.357365>,  <38.798367, 33.429272, 42.817184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688206, 32.926296, 42.357365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351849, 33.134106, 42.296719>,  <38.150032, 33.258793, 42.260330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351849, 33.134106, 42.296719>,  <38.688206, 32.926296, 42.357365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351849, 33.134106, 42.296719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168281, -0.015265, -0.985621,
		-0.514367, -0.854320, -0.074590,
		-0.840897, 0.519523, -0.151618,
		38.099579, 33.289963, 42.251232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378445, 32.655033, 41.714287>,  <38.688206, 32.926296, 42.357365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378445, 32.655033, 41.714287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209282, 33.016102, 41.746143>,  <38.107784, 33.232742, 41.765259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.209282, 33.016102, 41.746143>,  <38.378445, 32.655033, 41.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209282, 33.016102, 41.746143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160237, 0.160995, -0.973861,
		-0.891894, -0.399089, -0.212727,
		-0.422905, 0.902667, 0.079641,
		38.082409, 33.286903, 41.770035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921745, 32.819504, 41.067841>,  <38.378445, 32.655033, 41.714287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921745, 32.819504, 41.067841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004211, 33.190578, 41.192348>,  <38.053692, 33.413223, 41.267052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004211, 33.190578, 41.192348>,  <37.921745, 32.819504, 41.067841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004211, 33.190578, 41.192348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131446, 0.288960, -0.948274,
		-0.969648, 0.236418, -0.062367,
		0.206167, 0.927690, 0.311266,
		38.066063, 33.468887, 41.285728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449219, 33.317665, 40.769775>,  <37.921745, 32.819504, 41.067841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449219, 33.317665, 40.769775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758080, 33.537922, 40.896633>,  <37.943394, 33.670074, 40.972748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758080, 33.537922, 40.896633>,  <37.449219, 33.317665, 40.769775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758080, 33.537922, 40.896633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159311, 0.315403, -0.935490,
		-0.615148, 0.772861, 0.155815,
		0.772148, 0.550642, 0.317145,
		37.989723, 33.703114, 40.991776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380714, 34.081791, 40.453102>,  <37.449219, 33.317665, 40.769775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380714, 34.081791, 40.453102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762478, 34.067448, 40.571640>,  <37.991535, 34.058842, 40.642761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762478, 34.067448, 40.571640>,  <37.380714, 34.081791, 40.453102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762478, 34.067448, 40.571640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284023, 0.414589, -0.864550,
		-0.091856, 0.909302, 0.405872,
		0.954407, -0.035863, 0.296346,
		38.048801, 34.056690, 40.660545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722675, 34.644764, 40.145061>,  <37.380714, 34.081791, 40.453102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722675, 34.644764, 40.145061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056553, 34.440968, 40.228683>,  <38.256878, 34.318691, 40.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056553, 34.440968, 40.228683>,  <37.722675, 34.644764, 40.145061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056553, 34.440968, 40.228683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432067, 0.370466, -0.822237,
		0.341474, 0.776643, 0.529360,
		0.834694, -0.509491, 0.209057,
		38.306961, 34.288120, 40.291401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224319, 35.117878, 40.067612>,  <37.722675, 34.644764, 40.145061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224319, 35.117878, 40.067612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397556, 34.760010, 40.023811>,  <38.501499, 34.545288, 39.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397556, 34.760010, 40.023811>,  <38.224319, 35.117878, 40.067612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397556, 34.760010, 40.023811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528146, 0.350337, -0.773515,
		0.730403, 0.277176, 0.624247,
		0.433096, -0.894672, -0.109498,
		38.527485, 34.491608, 39.990963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952351, 35.240841, 40.050438>,  <38.224319, 35.117878, 40.067612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952351, 35.240841, 40.050438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903141, 34.881828, 39.881058>,  <38.873615, 34.666420, 39.779430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903141, 34.881828, 39.881058>,  <38.952351, 35.240841, 40.050438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903141, 34.881828, 39.881058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600724, 0.272286, -0.751658,
		0.789934, -0.346848, 0.505669,
		-0.123024, -0.897528, -0.423448,
		38.866234, 34.612572, 39.754025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614960, 35.113304, 39.779057>,  <38.952351, 35.240841, 40.050438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614960, 35.113304, 39.779057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407223, 34.830246, 39.587421>,  <39.282581, 34.660412, 39.472439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407223, 34.830246, 39.587421>,  <39.614960, 35.113304, 39.779057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407223, 34.830246, 39.587421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610078, 0.085561, -0.787708,
		0.598407, -0.701372, 0.387281,
		-0.519340, -0.707642, -0.479092,
		39.251419, 34.617954, 39.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097855, 34.814583, 39.587002>,  <39.614960, 35.113304, 39.779057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097855, 34.814583, 39.587002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802223, 34.711563, 39.338028>,  <39.624844, 34.649750, 39.188644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802223, 34.711563, 39.338028>,  <40.097855, 34.814583, 39.587002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802223, 34.711563, 39.338028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638314, 0.027452, -0.769287,
		0.215219, -0.965874, 0.144110,
		-0.739079, -0.257553, -0.622439,
		39.580502, 34.634296, 39.151295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396904, 34.346039, 39.130444>,  <40.097855, 34.814583, 39.587002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396904, 34.346039, 39.130444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086834, 34.485657, 38.919819>,  <39.900791, 34.569427, 38.793446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086834, 34.485657, 38.919819>,  <40.396904, 34.346039, 39.130444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086834, 34.485657, 38.919819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608738, 0.189817, -0.770330,
		-0.168927, -0.917681, -0.359617,
		-0.775179, 0.349042, -0.526562,
		39.854279, 34.590370, 38.761848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387505, 33.931389, 38.424946>,  <40.396904, 34.346039, 39.130444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387505, 33.931389, 38.424946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192822, 34.276855, 38.372498>,  <40.076012, 34.484135, 38.341030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192822, 34.276855, 38.372498>,  <40.387505, 33.931389, 38.424946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192822, 34.276855, 38.372498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465169, 0.129186, -0.875744,
		-0.739412, -0.487227, -0.464628,
		-0.486710, 0.863667, -0.131121,
		40.046810, 34.535957, 38.333160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144745, 33.949242, 37.712841>,  <40.387505, 33.931389, 38.424946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144745, 33.949242, 37.712841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229748, 34.300339, 37.884613>,  <40.280750, 34.510998, 37.987675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229748, 34.300339, 37.884613>,  <40.144745, 33.949242, 37.712841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229748, 34.300339, 37.884613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685732, 0.179122, -0.705469,
		-0.696140, 0.444390, -0.563832,
		0.212509, 0.877743, 0.429427,
		40.293499, 34.563663, 38.013439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015579, 34.531410, 37.250435>,  <40.144745, 33.949242, 37.712841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015579, 34.531410, 37.250435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286331, 34.648750, 37.520481>,  <40.448780, 34.719154, 37.682510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286331, 34.648750, 37.520481>,  <40.015579, 34.531410, 37.250435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286331, 34.648750, 37.520481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658456, 0.168693, -0.733470,
		-0.329052, 0.941003, -0.078975,
		0.676876, 0.293351, 0.675118,
		40.489395, 34.736755, 37.723015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466751, 35.050392, 36.923733>,  <40.015579, 34.531410, 37.250435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466751, 35.050392, 36.923733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665848, 34.928562, 37.248569>,  <40.785305, 34.855465, 37.443470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665848, 34.928562, 37.248569>,  <40.466751, 35.050392, 36.923733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665848, 34.928562, 37.248569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864549, 0.249107, -0.436464,
		-0.069361, 0.919336, 0.387311,
		0.497740, -0.304576, 0.812089,
		40.815170, 34.837189, 37.492195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918278, 35.564121, 37.419861>,  <40.466751, 35.050392, 36.923733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918278, 35.564121, 37.419861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025124, 35.183556, 37.358597>,  <41.089230, 34.955215, 37.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025124, 35.183556, 37.358597>,  <40.918278, 35.564121, 37.419861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025124, 35.183556, 37.358597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759855, 0.305692, -0.573735,
		0.592680, 0.036876, 0.804594,
		0.267115, -0.951416, -0.153157,
		41.105259, 34.898132, 37.312649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630432, 35.488647, 37.493698>,  <40.918278, 35.564121, 37.419861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630432, 35.488647, 37.493698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546047, 35.155125, 37.289635>,  <41.495419, 34.955013, 37.167194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546047, 35.155125, 37.289635>,  <41.630432, 35.488647, 37.493698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546047, 35.155125, 37.289635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721469, 0.219321, -0.656796,
		0.659529, -0.506624, 0.555297,
		-0.210960, -0.833805, -0.510161,
		41.482758, 34.904984, 37.136585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126232, 34.934914, 37.456123>,  <41.630432, 35.488647, 37.493698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126232, 34.934914, 37.456123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908627, 34.961826, 37.121574>,  <41.778065, 34.977974, 36.920845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908627, 34.961826, 37.121574>,  <42.126232, 34.934914, 37.456123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908627, 34.961826, 37.121574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834893, 0.142815, -0.531562,
		0.083681, -0.987460, -0.133869,
		-0.544014, 0.067284, -0.836374,
		41.745422, 34.982010, 36.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800014, 34.815128, 37.011009>,  <42.126232, 34.934914, 37.456123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800014, 34.815128, 37.011009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818798, 34.948387, 36.634327>,  <42.830067, 35.028343, 36.408318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818798, 34.948387, 36.634327>,  <42.800014, 34.815128, 37.011009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818798, 34.948387, 36.634327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441764, -0.852464, -0.279552,
		-0.895901, -0.402883, -0.187205,
		0.046959, 0.333152, -0.941703,
		42.832886, 35.048332, 36.351814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361618, 34.442272, 36.501007>,  <42.800014, 34.815128, 37.011009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361618, 34.442272, 36.501007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678440, 34.578999, 36.298695>,  <42.868534, 34.661034, 36.177307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678440, 34.578999, 36.298695>,  <42.361618, 34.442272, 36.501007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678440, 34.578999, 36.298695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297801, -0.939614, -0.168643,
		-0.532880, -0.017046, -0.846019,
		0.792057, 0.341812, -0.505778,
		42.916058, 34.681541, 36.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421806, 34.125973, 35.787846>,  <42.361618, 34.442272, 36.501007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421806, 34.125973, 35.787846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788559, 34.257401, 35.878502>,  <43.008610, 34.336258, 35.932896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788559, 34.257401, 35.878502>,  <42.421806, 34.125973, 35.787846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788559, 34.257401, 35.878502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368515, -0.914977, -0.164360,
		0.153365, 0.234219, -0.960011,
		0.916884, 0.328571, 0.226639,
		43.063625, 34.355972, 35.946495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932102, 34.002663, 35.185394>,  <42.421806, 34.125973, 35.787846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932102, 34.002663, 35.185394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122498, 34.010925, 35.537079>,  <43.236736, 34.015881, 35.748089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122498, 34.010925, 35.537079>,  <42.932102, 34.002663, 35.185394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122498, 34.010925, 35.537079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222370, -0.970065, -0.097602,
		0.850873, 0.241967, -0.466334,
		0.475991, 0.020652, 0.879208,
		43.265293, 34.017120, 35.800842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440842, 33.635246, 35.066067>,  <42.932102, 34.002663, 35.185394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440842, 33.635246, 35.066067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446125, 33.610771, 35.465282>,  <43.449295, 33.596088, 35.704811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446125, 33.610771, 35.465282>,  <43.440842, 33.635246, 35.066067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446125, 33.610771, 35.465282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446635, -0.892659, -0.060634,
		0.894619, 0.446560, 0.015537,
		0.013207, -0.061184, 0.998039,
		43.450089, 33.592415, 35.764694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100243, 33.382782, 35.173218>,  <43.440842, 33.635246, 35.066067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100243, 33.382782, 35.173218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888954, 33.337440, 35.509819>,  <43.762180, 33.310234, 35.711781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888954, 33.337440, 35.509819>,  <44.100243, 33.382782, 35.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888954, 33.337440, 35.509819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239593, -0.970675, 0.019640,
		0.814600, 0.211993, 0.539894,
		-0.528225, -0.113356, 0.841504,
		43.730488, 33.303432, 35.762272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462044, 32.855782, 35.574291>,  <44.100243, 33.382782, 35.173218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462044, 32.855782, 35.574291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107574, 32.863281, 35.759483>,  <43.894894, 32.867779, 35.870598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107574, 32.863281, 35.759483>,  <44.462044, 32.855782, 35.574291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107574, 32.863281, 35.759483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043620, -0.991368, 0.123636,
		0.461297, 0.129758, 0.877706,
		-0.886173, 0.018748, 0.462976,
		43.841724, 32.868904, 35.898376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.503365, 32.482021, 36.182163>,  <44.462044, 32.855782, 35.574291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.503365, 32.482021, 36.182163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110191, 32.456024, 36.113319>,  <43.874287, 32.440426, 36.072014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110191, 32.456024, 36.113319>,  <44.503365, 32.482021, 36.182163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110191, 32.456024, 36.113319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076066, -0.995382, -0.058555,
		-0.167512, -0.070647, 0.983336,
		-0.982931, -0.064989, -0.172113,
		43.815311, 32.436527, 36.061684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349571, 31.806585, 36.391239>,  <44.503365, 32.482021, 36.182163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349571, 31.806585, 36.391239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025082, 31.909645, 36.181271>,  <43.830387, 31.971481, 36.055290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025082, 31.909645, 36.181271>,  <44.349571, 31.806585, 36.391239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025082, 31.909645, 36.181271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206426, -0.966079, -0.155173,
		-0.547092, -0.017523, 0.836889,
		-0.811220, 0.257650, -0.524917,
		43.781715, 31.986940, 36.023796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721031, 31.243036, 36.553963>,  <44.349571, 31.806585, 36.391239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721031, 31.243036, 36.553963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624104, 31.433138, 36.215633>,  <43.565948, 31.547199, 36.012634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.624104, 31.433138, 36.215633>,  <43.721031, 31.243036, 36.553963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624104, 31.433138, 36.215633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327973, -0.860608, -0.389599,
		-0.913080, 0.183000, 0.364411,
		-0.242319, 0.475252, -0.845823,
		43.551407, 31.575714, 35.961887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.125736, 30.882332, 36.312866>,  <43.721031, 31.243036, 36.553963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.125736, 30.882332, 36.312866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286549, 31.076103, 36.002071>,  <43.383034, 31.192366, 35.815594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286549, 31.076103, 36.002071>,  <43.125736, 30.882332, 36.312866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286549, 31.076103, 36.002071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290047, -0.737502, -0.609888,
		-0.868474, 0.470553, -0.155989,
		0.402027, 0.484428, -0.776984,
		43.407158, 31.221432, 35.768978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560188, 30.959143, 35.808964>,  <43.125736, 30.882332, 36.312866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560188, 30.959143, 35.808964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912098, 30.985023, 35.620575>,  <43.123245, 31.000551, 35.507542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.912098, 30.985023, 35.620575>,  <42.560188, 30.959143, 35.808964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.912098, 30.985023, 35.620575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249701, -0.780135, -0.573619,
		-0.404534, 0.622257, -0.670186,
		0.879774, 0.064702, -0.470969,
		43.176029, 31.004435, 35.479282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392956, 30.848536, 35.105961>,  <42.560188, 30.959143, 35.808964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392956, 30.848536, 35.105961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786427, 30.778490, 35.122559>,  <43.022507, 30.736464, 35.132515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786427, 30.778490, 35.122559>,  <42.392956, 30.848536, 35.105961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786427, 30.778490, 35.122559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082539, -0.643882, -0.760660,
		0.159919, 0.744816, -0.647823,
		0.983674, -0.175114, 0.041492,
		43.081528, 30.725956, 35.135006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614605, 30.819056, 34.366528>,  <42.392956, 30.848536, 35.105961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614605, 30.819056, 34.366528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887218, 30.617920, 34.579193>,  <43.050785, 30.497238, 34.706795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.887218, 30.617920, 34.579193>,  <42.614605, 30.819056, 34.366528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887218, 30.617920, 34.579193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089831, -0.778521, -0.621156,
		0.726256, 0.375576, -0.575756,
		0.681529, -0.502839, 0.531668,
		43.091679, 30.467068, 34.738693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990955, 30.576513, 33.840050>,  <42.614605, 30.819056, 34.366528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990955, 30.576513, 33.840050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079685, 30.347557, 34.155815>,  <43.132923, 30.210184, 34.345272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.079685, 30.347557, 34.155815>,  <42.990955, 30.576513, 33.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079685, 30.347557, 34.155815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086856, -0.817958, -0.568684,
		0.971212, 0.057581, -0.231155,
		0.221820, -0.572389, 0.789409,
		43.146233, 30.175840, 34.392639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593616, 30.344381, 33.600964>,  <42.990955, 30.576513, 33.840050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593616, 30.344381, 33.600964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467274, 30.086618, 33.879524>,  <43.391468, 29.931961, 34.046661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467274, 30.086618, 33.879524>,  <43.593616, 30.344381, 33.600964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467274, 30.086618, 33.879524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087100, -0.750571, -0.655025,
		0.944801, -0.146236, 0.293199,
		-0.315855, -0.644406, 0.696403,
		43.372517, 29.893297, 34.088444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029640, 29.907385, 33.627254>,  <43.593616, 30.344381, 33.600964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029640, 29.907385, 33.627254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729496, 29.701305, 33.792915>,  <43.549408, 29.577658, 33.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729496, 29.701305, 33.792915>,  <44.029640, 29.907385, 33.627254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729496, 29.701305, 33.792915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163034, -0.751418, -0.639368,
		0.640605, -0.412238, 0.647832,
		-0.750364, -0.515200, 0.414153,
		43.504387, 29.546745, 33.917160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249722, 29.189299, 33.799126>,  <44.029640, 29.907385, 33.627254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249722, 29.189299, 33.799126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850670, 29.198126, 33.773041>,  <43.611240, 29.203423, 33.757389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850670, 29.198126, 33.773041>,  <44.249722, 29.189299, 33.799126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850670, 29.198126, 33.773041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015573, -0.850352, -0.525984,
		-0.067063, -0.525751, 0.847991,
		-0.997627, 0.022068, -0.065214,
		43.551380, 29.204746, 33.753475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133961, 28.484947, 33.756695>,  <44.249722, 29.189299, 33.799126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133961, 28.484947, 33.756695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787392, 28.656984, 33.655235>,  <43.579453, 28.760206, 33.594360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.787392, 28.656984, 33.655235>,  <44.133961, 28.484947, 33.756695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787392, 28.656984, 33.655235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173168, -0.735284, -0.655264,
		-0.468328, -0.523809, 0.711543,
		-0.866419, 0.430095, -0.253647,
		43.527466, 28.786013, 33.579140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637329, 27.904236, 33.894211>,  <44.133961, 28.484947, 33.756695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637329, 27.904236, 33.894211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510399, 28.181681, 33.635536>,  <43.434238, 28.348148, 33.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.510399, 28.181681, 33.635536>,  <43.637329, 27.904236, 33.894211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510399, 28.181681, 33.635536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223557, -0.717427, -0.659788,
		-0.921588, -0.064799, 0.382722,
		-0.317329, 0.693613, -0.646686,
		43.415199, 28.389765, 33.441532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013462, 27.660194, 33.688114>,  <43.637329, 27.904236, 33.894211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013462, 27.660194, 33.688114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156532, 27.907129, 33.407841>,  <43.242374, 28.055290, 33.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156532, 27.907129, 33.407841>,  <43.013462, 27.660194, 33.688114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156532, 27.907129, 33.407841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308118, -0.630288, -0.712601,
		-0.881550, 0.470775, -0.035228,
		0.357679, 0.617339, -0.700684,
		43.263836, 28.092331, 33.197636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.561901, 27.601343, 33.190876>,  <43.013462, 27.660194, 33.688114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.561901, 27.601343, 33.190876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871033, 27.770945, 33.002003>,  <43.056511, 27.872705, 32.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.871033, 27.770945, 33.002003>,  <42.561901, 27.601343, 33.190876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.871033, 27.770945, 33.002003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022659, -0.762010, -0.647169,
		-0.634208, 0.489452, -0.598512,
		0.772830, 0.424001, -0.472182,
		43.102882, 27.898146, 32.860348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427402, 27.520521, 32.518242>,  <42.561901, 27.601343, 33.190876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427402, 27.520521, 32.518242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820339, 27.555254, 32.584541>,  <43.056099, 27.576094, 32.624321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820339, 27.555254, 32.584541>,  <42.427402, 27.520521, 32.518242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820339, 27.555254, 32.584541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159126, -0.853717, -0.495829,
		0.098450, 0.513447, -0.852455,
		0.982337, 0.086833, 0.165751,
		43.115040, 27.581305, 32.634266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714325, 27.350470, 31.826197>,  <42.427402, 27.520521, 32.518242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714325, 27.350470, 31.826197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990627, 27.328991, 32.114632>,  <43.156410, 27.316105, 32.287693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990627, 27.328991, 32.114632>,  <42.714325, 27.350470, 31.826197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990627, 27.328991, 32.114632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310664, -0.878471, -0.363011,
		0.652946, 0.474770, -0.590131,
		0.690760, -0.053694, 0.721088,
		43.197857, 27.312883, 32.330959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866562, 27.441845, 31.074837>,  <42.714325, 27.350470, 31.826197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866562, 27.441845, 31.074837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923923, 27.153038, 31.345577>,  <42.958340, 26.979753, 31.508022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923923, 27.153038, 31.345577>,  <42.866562, 27.441845, 31.074837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923923, 27.153038, 31.345577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413120, -0.577812, -0.703893,
		0.899316, 0.380559, 0.215421,
		0.143399, -0.722017, 0.676852,
		42.966942, 26.936434, 31.548634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559723, 27.413685, 30.685144>,  <42.866562, 27.441845, 31.074837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559723, 27.413685, 30.685144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823120, 27.714443, 30.698036>,  <43.981159, 27.894897, 30.705770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823120, 27.714443, 30.698036>,  <43.559723, 27.413685, 30.685144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823120, 27.714443, 30.698036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555122, 0.514190, -0.653795,
		-0.508157, 0.412629, 0.755985,
		0.658495, 0.751895, 0.032230,
		44.020668, 27.940012, 30.707705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199062, 28.118795, 30.808084>,  <43.559723, 27.413685, 30.685144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199062, 28.118795, 30.808084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536301, 28.148090, 30.594986>,  <43.738644, 28.165667, 30.467127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536301, 28.148090, 30.594986>,  <43.199062, 28.118795, 30.808084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536301, 28.148090, 30.594986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494146, 0.496322, -0.713781,
		0.212139, 0.865044, 0.454639,
		0.843099, 0.073237, -0.532748,
		43.789230, 28.170061, 30.435162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008739, 28.808601, 30.509813>,  <43.199062, 28.118795, 30.808084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008739, 28.808601, 30.509813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298145, 28.613035, 30.314884>,  <43.471790, 28.495695, 30.197927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298145, 28.613035, 30.314884>,  <43.008739, 28.808601, 30.509813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298145, 28.613035, 30.314884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238096, 0.485884, -0.840968,
		0.647944, 0.724485, 0.235138,
		0.723518, -0.488915, -0.487323,
		43.515202, 28.466360, 30.168688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.427341, 29.300646, 30.232533>,  <43.008739, 28.808601, 30.509813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.427341, 29.300646, 30.232533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410137, 28.951403, 30.038282>,  <43.399815, 28.741856, 29.921732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.410137, 28.951403, 30.038282>,  <43.427341, 29.300646, 30.232533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410137, 28.951403, 30.038282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155380, 0.486004, -0.860033,
		0.986918, 0.038465, -0.156567,
		-0.043011, -0.873109, -0.485623,
		43.397232, 28.689470, 29.892595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826221, 29.264469, 29.609528>,  <43.427341, 29.300646, 30.232533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826221, 29.264469, 29.609528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543434, 28.985491, 29.562607>,  <43.373760, 28.818104, 29.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543434, 28.985491, 29.562607>,  <43.826221, 29.264469, 29.609528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543434, 28.985491, 29.562607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242963, 0.395273, -0.885849,
		0.664199, -0.597770, -0.448900,
		-0.706972, -0.697445, -0.117304,
		43.331341, 28.776257, 29.527416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981026, 30.032797, 29.628736>,  <43.826221, 29.264469, 29.609528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981026, 30.032797, 29.628736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120350, 30.404139, 29.576838>,  <44.203945, 30.626944, 29.545698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.120350, 30.404139, 29.576838>,  <43.981026, 30.032797, 29.628736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120350, 30.404139, 29.576838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177535, 0.070574, 0.981580,
		0.920412, -0.364933, -0.140234,
		0.348314, 0.928355, -0.129745,
		44.224846, 30.682646, 29.537914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545513, 30.024282, 29.978052>,  <43.981026, 30.032797, 29.628736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545513, 30.024282, 29.978052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383327, 30.389896, 29.973282>,  <44.286015, 30.609264, 29.970419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383327, 30.389896, 29.973282>,  <44.545513, 30.024282, 29.978052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383327, 30.389896, 29.973282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197739, 0.100440, 0.975095,
		0.892467, 0.393009, -0.221465,
		-0.405466, 0.914032, -0.011926,
		44.261688, 30.664106, 29.969704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.995922, 30.504196, 30.234571>,  <44.545513, 30.024282, 29.978052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.995922, 30.504196, 30.234571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627796, 30.646492, 30.299648>,  <44.406921, 30.731869, 30.338694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627796, 30.646492, 30.299648>,  <44.995922, 30.504196, 30.234571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627796, 30.646492, 30.299648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285886, 0.327796, 0.900455,
		0.266996, 0.875215, -0.403377,
		-0.920316, 0.355737, 0.162692,
		44.351700, 30.753214, 30.348455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116642, 31.188635, 30.398943>,  <44.995922, 30.504196, 30.234571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116642, 31.188635, 30.398943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758812, 31.078075, 30.539419>,  <44.544113, 31.011740, 30.623705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.758812, 31.078075, 30.539419>,  <45.116642, 31.188635, 30.398943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758812, 31.078075, 30.539419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153688, 0.547623, 0.822490,
		-0.419654, 0.789755, -0.447412,
		-0.894578, -0.276399, 0.351189,
		44.490440, 30.995155, 30.644775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.923691, 31.775013, 30.614866>,  <45.116642, 31.188635, 30.398943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.923691, 31.775013, 30.614866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697323, 31.499615, 30.796284>,  <44.561501, 31.334375, 30.905134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.697323, 31.499615, 30.796284>,  <44.923691, 31.775013, 30.614866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697323, 31.499615, 30.796284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050489, 0.520140, 0.852587,
		-0.822910, 0.505399, -0.259598,
		-0.565924, -0.688496, 0.453546,
		44.527546, 31.293066, 30.932348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444118, 32.154179, 30.971056>,  <44.923691, 31.775013, 30.614866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444118, 32.154179, 30.971056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475189, 31.797819, 31.150059>,  <44.493832, 31.584003, 31.257460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475189, 31.797819, 31.150059>,  <44.444118, 32.154179, 30.971056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475189, 31.797819, 31.150059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243598, 0.452217, 0.857998,
		-0.966761, 0.042367, 0.252148,
		0.077675, -0.890901, 0.447506,
		44.498493, 31.530548, 31.284311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.038002, 32.231262, 31.676910>,  <44.444118, 32.154179, 30.971056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.038002, 32.231262, 31.676910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287918, 31.921833, 31.719284>,  <44.437870, 31.736176, 31.744707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287918, 31.921833, 31.719284>,  <44.038002, 32.231262, 31.676910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287918, 31.921833, 31.719284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365865, 0.409916, 0.835531,
		-0.689766, -0.483276, 0.539135,
		0.624792, -0.773572, 0.105933,
		44.475357, 31.689762, 31.751064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839954, 31.915585, 32.350731>,  <44.038002, 32.231262, 31.676910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839954, 31.915585, 32.350731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208900, 31.802418, 32.245502>,  <44.430267, 31.734518, 32.182365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208900, 31.802418, 32.245502>,  <43.839954, 31.915585, 32.350731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208900, 31.802418, 32.245502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343607, 0.289530, 0.893368,
		-0.176584, -0.914401, 0.364264,
		0.922362, -0.282918, -0.263068,
		44.485611, 31.717543, 32.166580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120705, 31.577038, 32.936314>,  <43.839954, 31.915585, 32.350731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120705, 31.577038, 32.936314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430035, 31.682386, 32.705627>,  <44.615635, 31.745596, 32.567215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.430035, 31.682386, 32.705627>,  <44.120705, 31.577038, 32.936314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.430035, 31.682386, 32.705627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475797, 0.360106, 0.802459,
		0.419025, -0.894963, 0.153167,
		0.773328, 0.263375, -0.576714,
		44.662033, 31.761398, 32.532612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746758, 31.257395, 33.256714>,  <44.120705, 31.577038, 32.936314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746758, 31.257395, 33.256714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878956, 31.557129, 33.027187>,  <44.958275, 31.736969, 32.889473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.878956, 31.557129, 33.027187>,  <44.746758, 31.257395, 33.256714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878956, 31.557129, 33.027187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497367, 0.378430, 0.780652,
		0.802120, -0.543401, -0.247625,
		0.330498, 0.749337, -0.573816,
		44.978104, 31.781931, 32.855042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393723, 31.337778, 33.358639>,  <44.746758, 31.257395, 33.256714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393723, 31.337778, 33.358639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328205, 31.688534, 33.177872>,  <45.288895, 31.898987, 33.069412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.328205, 31.688534, 33.177872>,  <45.393723, 31.337778, 33.358639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.328205, 31.688534, 33.177872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468254, 0.472323, 0.746760,
		0.868279, -0.089296, -0.487973,
		-0.163798, 0.876891, -0.451921,
		45.279064, 31.951601, 33.042294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.012852, 31.756493, 33.419273>,  <45.393723, 31.337778, 33.358639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.012852, 31.756493, 33.419273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750504, 32.041962, 33.320889>,  <45.593094, 32.213242, 33.261856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.750504, 32.041962, 33.320889>,  <46.012852, 31.756493, 33.419273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750504, 32.041962, 33.320889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548135, 0.674293, 0.494850,
		0.519014, 0.189737, -0.833441,
		-0.655875, 0.713672, -0.245966,
		45.553741, 32.256062, 33.247097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.365082, 32.383106, 33.028481>,  <46.012852, 31.756493, 33.419273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.365082, 32.383106, 33.028481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030602, 32.507034, 33.209488>,  <45.829914, 32.581390, 33.318092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030602, 32.507034, 33.209488>,  <46.365082, 32.383106, 33.028481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030602, 32.507034, 33.209488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503098, 0.761816, 0.408079,
		-0.218307, 0.568899, -0.792903,
		-0.836202, 0.309822, 0.452522,
		45.779739, 32.599979, 33.345245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492214, 33.052258, 33.033520>,  <46.365082, 32.383106, 33.028481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492214, 33.052258, 33.033520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211739, 32.982567, 33.310062>,  <46.043453, 32.940750, 33.475986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211739, 32.982567, 33.310062>,  <46.492214, 33.052258, 33.033520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211739, 32.982567, 33.310062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373942, 0.735735, 0.564678,
		-0.607039, 0.654475, -0.450739,
		-0.701192, -0.174231, 0.691356,
		46.001381, 32.930298, 33.517467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254822, 33.641666, 33.247086>,  <46.492214, 33.052258, 33.033520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254822, 33.641666, 33.247086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091301, 33.437057, 33.549404>,  <45.993191, 33.314293, 33.730797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.091301, 33.437057, 33.549404>,  <46.254822, 33.641666, 33.247086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.091301, 33.437057, 33.549404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274970, 0.720640, 0.636451,
		-0.870215, 0.468002, -0.153945,
		-0.408799, -0.511519, 0.755799,
		45.968662, 33.283600, 33.776142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929207, 34.139614, 33.555550>,  <46.254822, 33.641666, 33.247086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929207, 34.139614, 33.555550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966625, 33.840290, 33.818241>,  <45.989075, 33.660698, 33.975857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966625, 33.840290, 33.818241>,  <45.929207, 34.139614, 33.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966625, 33.840290, 33.818241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078378, 0.663105, 0.744411,
		-0.992525, -0.018164, 0.120683,
		0.093547, -0.748306, 0.656725,
		45.994690, 33.615799, 34.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399437, 34.309250, 33.947887>,  <45.929207, 34.139614, 33.555550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399437, 34.309250, 33.947887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655136, 34.067944, 34.138649>,  <45.808556, 33.923161, 34.253105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655136, 34.067944, 34.138649>,  <45.399437, 34.309250, 33.947887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655136, 34.067944, 34.138649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160420, 0.501903, 0.849917,
		-0.752084, -0.619810, 0.224063,
		0.639245, -0.603265, 0.476903,
		45.846909, 33.886963, 34.281719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030769, 34.114582, 34.507004>,  <45.399437, 34.309250, 33.947887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030769, 34.114582, 34.507004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417763, 34.052574, 34.586941>,  <45.649960, 34.015369, 34.634903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417763, 34.052574, 34.586941>,  <45.030769, 34.114582, 34.507004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417763, 34.052574, 34.586941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117207, 0.425375, 0.897396,
		-0.224126, -0.891641, 0.393375,
		0.967487, -0.155024, 0.199844,
		45.708008, 34.006065, 34.646893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053543, 33.731171, 35.129211>,  <45.030769, 34.114582, 34.507004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053543, 33.731171, 35.129211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408527, 33.914070, 35.106121>,  <45.621517, 34.023811, 35.092266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408527, 33.914070, 35.106121>,  <45.053543, 33.731171, 35.129211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408527, 33.914070, 35.106121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143268, 0.392747, 0.908418,
		0.438044, -0.797918, 0.414058,
		0.887464, 0.457248, -0.057724,
		45.674767, 34.051247, 35.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.235596, 33.710739, 35.776306>,  <45.053543, 33.731171, 35.129211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.235596, 33.710739, 35.776306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491180, 33.978519, 35.624744>,  <45.644531, 34.139187, 35.533806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.491180, 33.978519, 35.624744>,  <45.235596, 33.710739, 35.776306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491180, 33.978519, 35.624744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061345, 0.535349, 0.842401,
		0.766793, -0.515014, 0.383132,
		0.638957, 0.669450, -0.378908,
		45.682869, 34.179356, 35.511074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.757347, 33.737743, 36.182224>,  <45.235596, 33.710739, 35.776306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.757347, 33.737743, 36.182224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759968, 34.088406, 35.989796>,  <45.761539, 34.298801, 35.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759968, 34.088406, 35.989796>,  <45.757347, 33.737743, 36.182224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759968, 34.088406, 35.989796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074302, 0.479326, 0.874486,
		0.997214, -0.041471, -0.061998,
		0.006548, 0.876657, -0.481072,
		45.761932, 34.351402, 35.845474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142693, 34.133568, 36.607559>,  <45.757347, 33.737743, 36.182224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142693, 34.133568, 36.607559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969284, 34.403698, 36.368900>,  <45.865238, 34.565777, 36.225704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.969284, 34.403698, 36.368900>,  <46.142693, 34.133568, 36.607559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969284, 34.403698, 36.368900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018309, 0.655366, 0.755089,
		0.900956, 0.338274, -0.271753,
		-0.433524, 0.675327, -0.596650,
		45.839226, 34.606297, 36.189907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608330, 34.766010, 36.590084>,  <46.142693, 34.133568, 36.607559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608330, 34.766010, 36.590084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230877, 34.871262, 36.509773>,  <46.004406, 34.934414, 36.461586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.230877, 34.871262, 36.509773>,  <46.608330, 34.766010, 36.590084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230877, 34.871262, 36.509773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044818, 0.702609, 0.710164,
		0.327935, 0.661138, -0.674800,
		-0.943637, 0.263131, -0.200779,
		45.947784, 34.950199, 36.449539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.994522, 35.228264, 36.072201>,  <46.608330, 34.766010, 36.590084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.994522, 35.228264, 36.072201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964928, 35.409733, 35.716965>,  <46.947170, 35.518616, 35.503822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964928, 35.409733, 35.716965>,  <46.994522, 35.228264, 36.072201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964928, 35.409733, 35.716965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643941, 0.701727, 0.304828,
		0.761490, -0.549324, -0.344058,
		-0.073985, 0.453676, -0.888090,
		46.942734, 35.545837, 35.450539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.672184, 35.425003, 35.848961>,  <46.994522, 35.228264, 36.072201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.672184, 35.425003, 35.848961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450726, 35.658558, 35.611458>,  <47.317848, 35.798691, 35.468956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450726, 35.658558, 35.611458>,  <47.672184, 35.425003, 35.848961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450726, 35.658558, 35.611458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782482, 0.608734, -0.131011,
		0.284945, -0.537140, -0.793906,
		-0.553649, 0.583887, -0.593758,
		47.284630, 35.833725, 35.433331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.929054, 35.580864, 35.093983>,  <47.672184, 35.425003, 35.848961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.929054, 35.580864, 35.093983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732502, 35.867603, 35.291840>,  <47.614571, 36.039646, 35.410553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.732502, 35.867603, 35.291840>,  <47.929054, 35.580864, 35.093983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.732502, 35.867603, 35.291840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814986, 0.578748, -0.029126,
		-0.307153, 0.388815, -0.868608,
		-0.491381, 0.716850, 0.494643,
		47.585087, 36.082657, 35.440231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.570801, 35.035278, 34.764378>,  <47.929054, 35.580864, 35.093983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.570801, 35.035278, 34.764378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826374, 34.985630, 35.068050>,  <47.979717, 34.955841, 35.250256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.826374, 34.985630, 35.068050>,  <47.570801, 35.035278, 34.764378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.826374, 34.985630, 35.068050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219942, -0.975175, 0.025674,
		0.737150, -0.183380, -0.650371,
		0.638933, -0.124118, 0.759183,
		48.018055, 34.948395, 35.295807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.685837, 38.214783, 45.367435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299160, 38.143848, 45.441246>,  <37.067154, 38.101288, 45.485531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.299160, 38.143848, 45.441246>,  <37.685837, 38.214783, 45.367435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299160, 38.143848, 45.441246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064235, -0.529810, -0.845680,
		0.247737, -0.829369, 0.500773,
		-0.966696, -0.177339, 0.184528,
		37.009151, 38.090645, 45.496605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585812, 37.542648, 45.087269>,  <37.685837, 38.214783, 45.367435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585812, 37.542648, 45.087269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224209, 37.713367, 45.097218>,  <37.007248, 37.815800, 45.103188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.224209, 37.713367, 45.097218>,  <37.585812, 37.542648, 45.087269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224209, 37.713367, 45.097218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187318, -0.343114, -0.920426,
		-0.384306, -0.836727, 0.390124,
		-0.904002, 0.426803, 0.024873,
		36.953007, 37.841408, 45.104679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077766, 37.054317, 44.731606>,  <37.585812, 37.542648, 45.087269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077766, 37.054317, 44.731606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883408, 37.403923, 44.730572>,  <36.766792, 37.613686, 44.729950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.883408, 37.403923, 44.730572>,  <37.077766, 37.054317, 44.731606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883408, 37.403923, 44.730572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153926, -0.088483, -0.984113,
		-0.860355, -0.477780, 0.177527,
		-0.485897, 0.874012, -0.002584,
		36.737637, 37.666126, 44.729797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387524, 36.900330, 44.462532>,  <37.077766, 37.054317, 44.731606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387524, 36.900330, 44.462532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471035, 37.286190, 44.398220>,  <36.521141, 37.517708, 44.359634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.471035, 37.286190, 44.398220>,  <36.387524, 36.900330, 44.462532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471035, 37.286190, 44.398220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332331, -0.084636, -0.939358,
		-0.919764, 0.249553, 0.302914,
		0.208782, 0.964655, -0.160779,
		36.533669, 37.575588, 44.349987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812187, 37.123451, 44.098728>,  <36.387524, 36.900330, 44.462532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812187, 37.123451, 44.098728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093903, 37.399052, 44.030319>,  <36.262932, 37.564415, 43.989273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.093903, 37.399052, 44.030319>,  <35.812187, 37.123451, 44.098728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093903, 37.399052, 44.030319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250324, 0.015596, -0.968037,
		-0.664316, 0.724588, 0.183459,
		0.704289, 0.689006, -0.171021,
		36.305191, 37.605755, 43.979012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377918, 37.411617, 43.683681>,  <35.812187, 37.123451, 44.098728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377918, 37.411617, 43.683681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736931, 37.570412, 43.606915>,  <35.952339, 37.665688, 43.560856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.736931, 37.570412, 43.606915>,  <35.377918, 37.411617, 43.683681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736931, 37.570412, 43.606915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207388, -0.004045, -0.978250,
		-0.389128, 0.917816, 0.078700,
		0.897535, 0.396986, -0.191918,
		36.006191, 37.689507, 43.549339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227051, 37.966167, 43.238121>,  <35.377918, 37.411617, 43.683681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227051, 37.966167, 43.238121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603546, 37.835735, 43.202938>,  <35.829445, 37.757477, 43.181828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603546, 37.835735, 43.202938>,  <35.227051, 37.966167, 43.238121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603546, 37.835735, 43.202938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104649, -0.033965, -0.993929,
		0.321112, 0.944732, -0.066093,
		0.941242, -0.326079, -0.087959,
		35.885918, 37.737911, 43.176552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456150, 38.220890, 42.619839>,  <35.227051, 37.966167, 43.238121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456150, 38.220890, 42.619839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724804, 37.934238, 42.695045>,  <35.885994, 37.762245, 42.740170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.724804, 37.934238, 42.695045>,  <35.456150, 38.220890, 42.619839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724804, 37.934238, 42.695045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056776, -0.203243, -0.977481,
		0.738706, 0.667182, -0.095817,
		0.671632, -0.716631, 0.188017,
		35.926292, 37.719250, 42.751450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953716, 38.355289, 42.202480>,  <35.456150, 38.220890, 42.619839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953716, 38.355289, 42.202480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993153, 37.966084, 42.285931>,  <36.016815, 37.732559, 42.336002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993153, 37.966084, 42.285931>,  <35.953716, 38.355289, 42.202480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993153, 37.966084, 42.285931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048366, -0.204714, -0.977626,
		0.993952, 0.106472, 0.026879,
		0.098587, -0.973014, 0.208625,
		36.022728, 37.674179, 42.348518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429604, 38.182030, 41.765720>,  <35.953716, 38.355289, 42.202480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429604, 38.182030, 41.765720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295200, 37.819778, 41.869202>,  <36.214558, 37.602428, 41.931290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.295200, 37.819778, 41.869202>,  <36.429604, 38.182030, 41.765720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295200, 37.819778, 41.869202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206029, -0.338699, -0.918060,
		0.919047, -0.255179, 0.300393,
		-0.336012, -0.905630, 0.258707,
		36.194397, 37.548088, 41.946815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934105, 37.684116, 41.594730>,  <36.429604, 38.182030, 41.765720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934105, 37.684116, 41.594730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594585, 37.472664, 41.590919>,  <36.390873, 37.345791, 41.588634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594585, 37.472664, 41.590919>,  <36.934105, 37.684116, 41.594730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594585, 37.472664, 41.590919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207988, -0.317279, -0.925243,
		0.486090, -0.787326, 0.379254,
		-0.848798, -0.528632, -0.009528,
		36.339947, 37.314075, 41.588062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136051, 37.073669, 41.490540>,  <36.934105, 37.684116, 41.594730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136051, 37.073669, 41.490540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754040, 37.056828, 41.373131>,  <36.524834, 37.046722, 41.302685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.754040, 37.056828, 41.373131>,  <37.136051, 37.073669, 41.490540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754040, 37.056828, 41.373131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281468, -0.440141, -0.852673,
		-0.093289, -0.896941, 0.432196,
		-0.955025, -0.042104, -0.293521,
		36.467533, 37.044197, 41.285076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159714, 36.559700, 41.065819>,  <37.136051, 37.073669, 41.490540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159714, 36.559700, 41.065819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792953, 36.685085, 40.966995>,  <36.572899, 36.760315, 40.907700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792953, 36.685085, 40.966995>,  <37.159714, 36.559700, 41.065819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792953, 36.685085, 40.966995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128006, -0.355358, -0.925924,
		-0.378043, -0.880601, 0.285701,
		-0.916895, 0.313467, -0.247063,
		36.517883, 36.779125, 40.892876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885544, 36.031658, 40.573940>,  <37.159714, 36.559700, 41.065819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885544, 36.031658, 40.573940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699055, 36.378319, 40.502884>,  <36.587162, 36.586315, 40.460251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699055, 36.378319, 40.502884>,  <36.885544, 36.031658, 40.573940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699055, 36.378319, 40.502884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058051, -0.170398, -0.983664,
		-0.882760, -0.468919, 0.029133,
		-0.466223, 0.866648, -0.177642,
		36.559189, 36.638313, 40.449593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368774, 35.859516, 40.019493>,  <36.885544, 36.031658, 40.573940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368774, 35.859516, 40.019493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416939, 36.256538, 40.012108>,  <36.445839, 36.494751, 40.007675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416939, 36.256538, 40.012108>,  <36.368774, 35.859516, 40.019493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416939, 36.256538, 40.012108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006777, -0.017778, -0.999819,
		-0.992701, 0.120518, 0.004586,
		0.120414, 0.992552, -0.018465,
		36.453064, 36.554302, 40.006569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921867, 36.116116, 39.474701>,  <36.368774, 35.859516, 40.019493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921867, 36.116116, 39.474701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183022, 36.414162, 39.529167>,  <36.339714, 36.592991, 39.561848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.183022, 36.414162, 39.529167>,  <35.921867, 36.116116, 39.474701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183022, 36.414162, 39.529167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186615, 0.015990, -0.982303,
		-0.734107, 0.666744, -0.128610,
		0.652888, 0.745116, 0.136163,
		36.378887, 36.637695, 39.570015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910858, 36.513275, 38.884060>,  <35.921867, 36.116116, 39.474701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910858, 36.513275, 38.884060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238239, 36.669579, 39.052559>,  <36.434669, 36.763359, 39.153656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238239, 36.669579, 39.052559>,  <35.910858, 36.513275, 38.884060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238239, 36.669579, 39.052559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429067, 0.071956, -0.900402,
		-0.382147, 0.917678, -0.108767,
		0.818453, 0.390754, 0.421244,
		36.483776, 36.786804, 39.178932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071934, 37.044785, 38.516079>,  <35.910858, 36.513275, 38.884060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071934, 37.044785, 38.516079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425743, 36.969730, 38.686920>,  <36.638027, 36.924698, 38.789425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425743, 36.969730, 38.686920>,  <36.071934, 37.044785, 38.516079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425743, 36.969730, 38.686920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420472, -0.075884, -0.904127,
		0.202056, 0.979303, 0.011774,
		0.884521, -0.187635, 0.427102,
		36.691101, 36.913441, 38.815052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607723, 37.495785, 38.166706>,  <36.071934, 37.044785, 38.516079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607723, 37.495785, 38.166706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770275, 37.171135, 38.334576>,  <36.867805, 36.976345, 38.435299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770275, 37.171135, 38.334576>,  <36.607723, 37.495785, 38.166706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770275, 37.171135, 38.334576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516999, -0.174466, -0.838017,
		0.753372, 0.557525, 0.348708,
		0.406378, -0.811620, 0.419678,
		36.892189, 36.927650, 38.460480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275223, 37.540249, 37.863853>,  <36.607723, 37.495785, 38.166706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275223, 37.540249, 37.863853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276295, 37.165466, 38.003624>,  <37.276939, 36.940598, 38.087486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276295, 37.165466, 38.003624>,  <37.275223, 37.540249, 37.863853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276295, 37.165466, 38.003624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479317, -0.305466, -0.822767,
		0.877638, 0.169691, 0.448282,
		0.002681, -0.936961, 0.349424,
		37.277100, 36.884377, 38.108452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990189, 37.254345, 37.955173>,  <37.275223, 37.540249, 37.863853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990189, 37.254345, 37.955173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728027, 36.963318, 37.874088>,  <37.570732, 36.788700, 37.825436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.728027, 36.963318, 37.874088>,  <37.990189, 37.254345, 37.955173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728027, 36.963318, 37.874088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561817, -0.290255, -0.774670,
		0.504787, -0.621608, 0.598994,
		-0.655403, -0.727568, -0.202713,
		37.531406, 36.745049, 37.813274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423172, 37.630032, 38.488731>,  <37.990189, 37.254345, 37.955173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423172, 37.630032, 38.488731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147202, 37.723846, 38.214798>,  <37.981621, 37.780136, 38.050438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.147202, 37.723846, 38.214798>,  <38.423172, 37.630032, 38.488731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147202, 37.723846, 38.214798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533300, 0.475043, 0.699946,
		0.489487, 0.848132, -0.202667,
		-0.689922, 0.234533, -0.684837,
		37.940224, 37.794205, 38.009346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110950, 37.207443, 38.559322>,  <38.423172, 37.630032, 38.488731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110950, 37.207443, 38.559322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500511, 37.182907, 38.471920>,  <39.734249, 37.168186, 38.419479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500511, 37.182907, 38.471920>,  <39.110950, 37.207443, 38.559322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500511, 37.182907, 38.471920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204094, -0.184399, 0.961427,
		-0.099261, -0.980936, -0.167070,
		0.973906, -0.061334, -0.218506,
		39.792683, 37.164505, 38.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374332, 36.544029, 38.868851>,  <39.110950, 37.207443, 38.559322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374332, 36.544029, 38.868851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722748, 36.729115, 38.802883>,  <39.931797, 36.840164, 38.763302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.722748, 36.729115, 38.802883>,  <39.374332, 36.544029, 38.868851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722748, 36.729115, 38.802883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296403, -0.227352, 0.927608,
		0.391722, -0.856859, -0.335181,
		0.871034, 0.462712, -0.164917,
		39.984058, 36.867928, 38.753407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995880, 36.136147, 38.959969>,  <39.374332, 36.544029, 38.868851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995880, 36.136147, 38.959969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112068, 36.510201, 39.041107>,  <40.181782, 36.734634, 39.089790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.112068, 36.510201, 39.041107>,  <39.995880, 36.136147, 38.959969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112068, 36.510201, 39.041107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368788, -0.305016, 0.878044,
		0.882963, -0.180235, -0.433465,
		0.290468, 0.935137, 0.202849,
		40.199207, 36.790741, 39.101963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527779, 35.982262, 39.294945>,  <39.995880, 36.136147, 38.959969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527779, 35.982262, 39.294945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457821, 36.367390, 39.377296>,  <40.415844, 36.598465, 39.426708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.457821, 36.367390, 39.377296>,  <40.527779, 35.982262, 39.294945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457821, 36.367390, 39.377296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421592, -0.115731, 0.899370,
		0.889759, 0.244094, -0.385677,
		-0.174896, 0.962821, 0.205881,
		40.405354, 36.656235, 39.439060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134853, 36.235165, 39.681126>,  <40.527779, 35.982262, 39.294945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134853, 36.235165, 39.681126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826454, 36.477390, 39.759968>,  <40.641415, 36.622726, 39.807274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.826454, 36.477390, 39.759968>,  <41.134853, 36.235165, 39.681126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826454, 36.477390, 39.759968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199334, -0.064480, 0.977808,
		0.604838, 0.793177, -0.070997,
		-0.770997, 0.605568, 0.197107,
		40.595154, 36.659061, 39.819099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477779, 36.656105, 40.102863>,  <41.134853, 36.235165, 39.681126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477779, 36.656105, 40.102863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087322, 36.705418, 40.174366>,  <40.853050, 36.735004, 40.217266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.087322, 36.705418, 40.174366>,  <41.477779, 36.656105, 40.102863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087322, 36.705418, 40.174366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181135, 0.008299, 0.983423,
		0.119753, 0.992337, -0.030432,
		-0.976140, 0.123280, 0.178753,
		40.794479, 36.742401, 40.227993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404499, 37.304802, 40.552082>,  <41.477779, 36.656105, 40.102863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404499, 37.304802, 40.552082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.066105, 37.093094, 40.577957>,  <40.863068, 36.966068, 40.593483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.066105, 37.093094, 40.577957>,  <41.404499, 37.304802, 40.552082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066105, 37.093094, 40.577957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056802, 0.210082, 0.976032,
		-0.530176, 0.822032, -0.207790,
		-0.845983, -0.529272, 0.064688,
		40.812309, 36.934311, 40.597363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973961, 37.729469, 40.962608>,  <41.404499, 37.304802, 40.552082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973961, 37.729469, 40.962608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805576, 37.366646, 40.965054>,  <40.704544, 37.148952, 40.966522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.805576, 37.366646, 40.965054>,  <40.973961, 37.729469, 40.962608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805576, 37.366646, 40.965054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150801, 0.076631, 0.985590,
		-0.894454, 0.413976, -0.169044,
		-0.420964, -0.907057, 0.006115,
		40.679287, 37.094528, 40.966888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366066, 37.857018, 41.299591>,  <40.973961, 37.729469, 40.962608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366066, 37.857018, 41.299591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447365, 37.465839, 41.318817>,  <40.496143, 37.231133, 41.330353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.447365, 37.465839, 41.318817>,  <40.366066, 37.857018, 41.299591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447365, 37.465839, 41.318817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188244, 0.009150, 0.982080,
		-0.960862, -0.208652, -0.182233,
		0.203246, -0.977947, 0.048069,
		40.508339, 37.172455, 41.333237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011162, 37.699448, 41.861305>,  <40.366066, 37.857018, 41.299591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011162, 37.699448, 41.861305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.238323, 37.373726, 41.813320>,  <40.374622, 37.178291, 41.784531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.238323, 37.373726, 41.813320>,  <40.011162, 37.699448, 41.861305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238323, 37.373726, 41.813320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111152, -0.220281, 0.969083,
		-0.815553, -0.537015, -0.215611,
		0.567907, -0.814304, -0.119961,
		40.408695, 37.129436, 41.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628983, 37.174679, 42.236954>,  <40.011162, 37.699448, 41.861305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628983, 37.174679, 42.236954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008297, 37.049362, 42.216549>,  <40.235886, 36.974171, 42.204304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.008297, 37.049362, 42.216549>,  <39.628983, 37.174679, 42.236954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008297, 37.049362, 42.216549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022818, -0.227578, 0.973493,
		-0.316602, -0.921983, -0.222957,
		0.948284, -0.313297, -0.051014,
		40.292782, 36.955372, 42.201244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668270, 36.676624, 42.783951>,  <39.628983, 37.174679, 42.236954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668270, 36.676624, 42.783951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052647, 36.737099, 42.691235>,  <40.283272, 36.773384, 42.635605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052647, 36.737099, 42.691235>,  <39.668270, 36.676624, 42.783951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052647, 36.737099, 42.691235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255153, -0.159715, 0.953619,
		0.107151, -0.975518, -0.192052,
		0.960945, 0.151184, -0.231792,
		40.340931, 36.782455, 42.621696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105808, 36.107643, 42.966179>,  <39.668270, 36.676624, 42.783951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105808, 36.107643, 42.966179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305092, 36.452785, 43.000259>,  <40.424664, 36.659870, 43.020706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.305092, 36.452785, 43.000259>,  <40.105808, 36.107643, 42.966179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305092, 36.452785, 43.000259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094875, -0.151926, 0.983828,
		0.861850, -0.482071, -0.157555,
		0.498211, 0.862860, 0.085201,
		40.454556, 36.711643, 43.025818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661114, 35.866592, 43.428005>,  <40.105808, 36.107643, 42.966179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661114, 35.866592, 43.428005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.627632, 36.264713, 43.447456>,  <40.607544, 36.503586, 43.459126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.627632, 36.264713, 43.447456>,  <40.661114, 35.866592, 43.428005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627632, 36.264713, 43.447456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030018, -0.046258, 0.998479,
		0.996039, 0.085033, -0.026005,
		-0.083701, 0.995304, 0.048627,
		40.602520, 36.563305, 43.462044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017471, 35.991882, 44.004150>,  <40.661114, 35.866592, 43.428005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017471, 35.991882, 44.004150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830757, 36.338531, 43.933640>,  <40.718731, 36.546520, 43.891331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.830757, 36.338531, 43.933640>,  <41.017471, 35.991882, 44.004150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830757, 36.338531, 43.933640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043612, 0.176528, 0.983329,
		0.883297, 0.466687, -0.044604,
		-0.466781, 0.866626, -0.176280,
		40.690723, 36.598518, 43.880756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231754, 36.389782, 44.515419>,  <41.017471, 35.991882, 44.004150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231754, 36.389782, 44.515419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897255, 36.581879, 44.409542>,  <40.696556, 36.697136, 44.346016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.897255, 36.581879, 44.409542>,  <41.231754, 36.389782, 44.515419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897255, 36.581879, 44.409542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171176, 0.229953, 0.958030,
		0.520955, 0.846455, -0.110091,
		-0.836244, 0.480246, -0.264688,
		40.646381, 36.725952, 44.330135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215492, 37.093666, 44.811211>,  <41.231754, 36.389782, 44.515419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215492, 37.093666, 44.811211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.836311, 36.986397, 44.742538>,  <40.608803, 36.922035, 44.701336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.836311, 36.986397, 44.742538>,  <41.215492, 37.093666, 44.811211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836311, 36.986397, 44.742538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243787, 0.264395, 0.933093,
		-0.204836, 0.926380, -0.316010,
		-0.947950, -0.268170, -0.171682,
		40.551926, 36.905945, 44.691032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794956, 37.765678, 44.975021>,  <41.215492, 37.093666, 44.811211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794956, 37.765678, 44.975021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565807, 37.438480, 44.995789>,  <40.428318, 37.242161, 45.008247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.565807, 37.438480, 44.995789>,  <40.794956, 37.765678, 44.975021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565807, 37.438480, 44.995789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264330, 0.244335, 0.932968,
		-0.775850, 0.520751, -0.356195,
		-0.572875, -0.817996, 0.051917,
		40.393944, 37.193081, 45.011364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.870895, 38.104404, 45.155773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848087, 37.706310, 45.187389>,  <39.834404, 37.467453, 45.206360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.848087, 37.706310, 45.187389>,  <39.870895, 38.104404, 45.155773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848087, 37.706310, 45.187389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555509, 0.097412, 0.825785,
		-0.829553, 0.003174, -0.558419,
		-0.057018, -0.995239, 0.079045,
		39.830982, 37.407738, 45.211102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215694, 37.880180, 45.141304>,  <39.870895, 38.104404, 45.155773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215694, 37.880180, 45.141304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419727, 37.595402, 45.334362>,  <39.542149, 37.424534, 45.450199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.419727, 37.595402, 45.334362>,  <39.215694, 37.880180, 45.141304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419727, 37.595402, 45.334362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600085, 0.107445, 0.792687,
		-0.616205, -0.693970, -0.372420,
		0.510087, -0.711942, 0.482649,
		39.572754, 37.381821, 45.479156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741276, 37.527351, 45.487545>,  <39.215694, 37.880180, 45.141304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741276, 37.527351, 45.487545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060165, 37.388336, 45.684986>,  <39.251499, 37.304928, 45.803452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060165, 37.388336, 45.684986>,  <38.741276, 37.527351, 45.487545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060165, 37.388336, 45.684986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441605, 0.221747, 0.869375,
		-0.411600, -0.911067, 0.023306,
		0.797227, -0.347542, 0.493603,
		39.299332, 37.284073, 45.833069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495388, 36.953224, 46.070126>,  <38.741276, 37.527351, 45.487545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495388, 36.953224, 46.070126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845932, 37.119488, 46.167469>,  <39.056259, 37.219246, 46.225876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845932, 37.119488, 46.167469>,  <38.495388, 36.953224, 46.070126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845932, 37.119488, 46.167469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284639, 0.039329, 0.957828,
		0.388557, -0.908671, 0.152779,
		0.876359, 0.415658, 0.243362,
		39.108841, 37.244186, 46.240479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684086, 36.630688, 46.720200>,  <38.495388, 36.953224, 46.070126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684086, 36.630688, 46.720200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910534, 36.960175, 46.707558>,  <39.046402, 37.157867, 46.699974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910534, 36.960175, 46.707558>,  <38.684086, 36.630688, 46.720200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910534, 36.960175, 46.707558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205265, 0.178000, 0.962384,
		0.798355, -0.538340, 0.269850,
		0.566123, 0.823715, -0.031605,
		39.080372, 37.207291, 46.698074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964939, 36.667927, 47.332169>,  <38.684086, 36.630688, 46.720200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964939, 36.667927, 47.332169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039261, 37.035542, 47.193123>,  <39.083855, 37.256111, 47.109695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.039261, 37.035542, 47.193123>,  <38.964939, 36.667927, 47.332169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039261, 37.035542, 47.193123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312322, 0.390672, 0.865927,
		0.931628, -0.052328, 0.359627,
		0.185808, 0.919041, -0.347618,
		39.095005, 37.311253, 47.088837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335831, 36.993832, 47.811947>,  <38.964939, 36.667927, 47.332169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335831, 36.993832, 47.811947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171051, 37.281319, 47.587894>,  <39.072182, 37.453812, 47.453465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.171051, 37.281319, 47.587894>,  <39.335831, 36.993832, 47.811947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171051, 37.281319, 47.587894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395960, 0.412449, 0.820427,
		0.820679, 0.559764, 0.114675,
		-0.411948, 0.718714, -0.560133,
		39.047466, 37.496933, 47.419853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715115, 37.581924, 48.052799>,  <39.335831, 36.993832, 47.811947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715115, 37.581924, 48.052799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349365, 37.663174, 47.912708>,  <39.129917, 37.711922, 47.828651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349365, 37.663174, 47.912708>,  <39.715115, 37.581924, 48.052799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349365, 37.663174, 47.912708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231910, 0.446303, 0.864310,
		0.331871, 0.871524, -0.360981,
		-0.914374, 0.203124, -0.350230,
		39.075054, 37.724110, 47.807640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626396, 38.294075, 48.155243>,  <39.715115, 37.581924, 48.052799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626396, 38.294075, 48.155243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.257603, 38.139755, 48.141975>,  <39.036327, 38.047165, 48.134014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.257603, 38.139755, 48.141975>,  <39.626396, 38.294075, 48.155243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257603, 38.139755, 48.141975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207175, 0.419099, 0.883988,
		-0.327139, 0.821897, -0.466332,
		-0.921986, -0.385799, -0.033173,
		38.981007, 38.024017, 48.132023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201801, 38.876286, 48.211502>,  <39.626396, 38.294075, 48.155243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201801, 38.876286, 48.211502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966869, 38.562286, 48.290318>,  <38.825909, 38.373886, 48.337605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.966869, 38.562286, 48.290318>,  <39.201801, 38.876286, 48.211502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966869, 38.562286, 48.290318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271225, 0.420274, 0.865914,
		-0.762548, 0.455137, -0.459750,
		-0.587330, -0.784997, 0.197035,
		38.790668, 38.326786, 48.349426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621326, 39.160454, 48.476868>,  <39.201801, 38.876286, 48.211502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621326, 39.160454, 48.476868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656761, 38.785431, 48.611416>,  <38.678020, 38.560417, 48.692142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.656761, 38.785431, 48.611416>,  <38.621326, 39.160454, 48.476868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656761, 38.785431, 48.611416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185529, 0.316254, 0.930356,
		-0.978638, -0.144819, -0.145929,
		0.088582, -0.937556, 0.336366,
		38.683334, 38.504166, 48.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119701, 39.239895, 48.909672>,  <38.621326, 39.160454, 48.476868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119701, 39.239895, 48.909672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305309, 38.900570, 49.011700>,  <38.416672, 38.696976, 49.072918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305309, 38.900570, 49.011700>,  <38.119701, 39.239895, 48.909672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305309, 38.900570, 49.011700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321471, 0.107053, 0.940849,
		-0.825437, -0.518566, -0.223033,
		0.464016, -0.848310, 0.255069,
		38.444515, 38.646076, 49.088219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647446, 38.731567, 49.260239>,  <38.119701, 39.239895, 48.909672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647446, 38.731567, 49.260239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019810, 38.648426, 49.380375>,  <38.243229, 38.598541, 49.452457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.019810, 38.648426, 49.380375>,  <37.647446, 38.731567, 49.260239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019810, 38.648426, 49.380375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323321, -0.086393, 0.942338,
		-0.169918, -0.974338, -0.147626,
		0.930909, -0.207851, 0.300344,
		38.299084, 38.586071, 49.470478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563194, 38.486660, 49.915424>,  <37.647446, 38.731567, 49.260239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563194, 38.486660, 49.915424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959171, 38.541393, 49.901085>,  <38.196758, 38.574234, 49.892479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959171, 38.541393, 49.901085>,  <37.563194, 38.486660, 49.915424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959171, 38.541393, 49.901085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022932, 0.094856, 0.995227,
		0.139590, -0.986041, 0.090764,
		0.989943, 0.136842, -0.035853,
		38.256153, 38.582443, 49.890327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834515, 37.994492, 50.354378>,  <37.563194, 38.486660, 49.915424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834515, 37.994492, 50.354378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114441, 38.277546, 50.315369>,  <38.282398, 38.447376, 50.291962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.114441, 38.277546, 50.315369>,  <37.834515, 37.994492, 50.354378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114441, 38.277546, 50.315369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073720, 0.064254, 0.995207,
		0.710506, -0.703655, -0.007201,
		0.699819, 0.707631, -0.097526,
		38.324387, 38.489834, 50.286110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365040, 37.721218, 50.795033>,  <37.834515, 37.994492, 50.354378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365040, 37.721218, 50.795033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429649, 38.110752, 50.731087>,  <38.468414, 38.344471, 50.692719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.429649, 38.110752, 50.731087>,  <38.365040, 37.721218, 50.795033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429649, 38.110752, 50.731087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094703, 0.145952, 0.984748,
		0.982314, -0.174200, -0.068650,
		0.161524, 0.973834, -0.159868,
		38.478107, 38.402901, 50.683125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921669, 37.760193, 51.184532>,  <38.365040, 37.721218, 50.795033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921669, 37.760193, 51.184532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760979, 38.123539, 51.138081>,  <38.664566, 38.341545, 51.110210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760979, 38.123539, 51.138081>,  <38.921669, 37.760193, 51.184532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760979, 38.123539, 51.138081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028635, 0.139213, 0.989848,
		0.915312, 0.394322, -0.081936,
		-0.401726, 0.908367, -0.116133,
		38.640461, 38.396049, 51.103241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289768, 38.223057, 51.684151>,  <38.921669, 37.760193, 51.184532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289768, 38.223057, 51.684151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962799, 38.432972, 51.589142>,  <38.766617, 38.558922, 51.532135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.962799, 38.432972, 51.589142>,  <39.289768, 38.223057, 51.684151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962799, 38.432972, 51.589142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088907, 0.292457, 0.952137,
		0.569135, 0.799416, -0.192404,
		-0.817423, 0.524788, -0.237522,
		38.717571, 38.590408, 51.517887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412537, 38.887051, 51.820438>,  <39.289768, 38.223057, 51.684151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412537, 38.887051, 51.820438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017075, 38.837261, 51.854084>,  <38.779797, 38.807388, 51.874271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.017075, 38.837261, 51.854084>,  <39.412537, 38.887051, 51.820438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017075, 38.837261, 51.854084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047452, 0.272510, 0.960982,
		-0.142537, 0.954068, -0.263511,
		-0.988651, -0.124471, 0.084116,
		38.720478, 38.799919, 51.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220463, 39.299232, 52.344082>,  <39.412537, 38.887051, 51.820438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220463, 39.299232, 52.344082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890823, 39.073631, 52.323086>,  <38.693039, 38.938271, 52.310490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.890823, 39.073631, 52.323086>,  <39.220463, 39.299232, 52.344082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890823, 39.073631, 52.323086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150244, 0.128305, 0.980288,
		-0.546152, 0.815743, -0.190475,
		-0.824102, -0.564004, -0.052487,
		38.643593, 38.904430, 52.307339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651592, 39.609665, 52.743805>,  <39.220463, 39.299232, 52.344082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651592, 39.609665, 52.743805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518490, 39.232704, 52.730293>,  <38.438629, 39.006527, 52.722187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518490, 39.232704, 52.730293>,  <38.651592, 39.609665, 52.743805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518490, 39.232704, 52.730293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186604, 0.030695, 0.981955,
		-0.924364, 0.333059, -0.186071,
		-0.332761, -0.942406, -0.033777,
		38.418663, 38.949982, 52.720161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018677, 39.693295, 53.039410>,  <38.651592, 39.609665, 52.743805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018677, 39.693295, 53.039410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132797, 39.311646, 53.075733>,  <38.201271, 39.082657, 53.097527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132797, 39.311646, 53.075733>,  <38.018677, 39.693295, 53.039410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132797, 39.311646, 53.075733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100551, 0.064425, 0.992844,
		-0.953148, -0.292394, -0.077558,
		0.285305, -0.954125, 0.090807,
		38.218388, 39.025410, 53.102974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570679, 39.384766, 53.401020>,  <38.018677, 39.693295, 53.039410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570679, 39.384766, 53.401020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895966, 39.155869, 53.443394>,  <38.091137, 39.018532, 53.468819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.895966, 39.155869, 53.443394>,  <37.570679, 39.384766, 53.401020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895966, 39.155869, 53.443394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014125, 0.201378, 0.979412,
		-0.581794, -0.794975, 0.171846,
		0.813214, -0.572243, 0.105931,
		38.139931, 38.984196, 53.475174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872482, 39.757854, 53.352867>,  <37.570679, 39.384766, 53.401020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872482, 39.757854, 53.352867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534836, 39.620827, 53.517845>,  <36.332249, 39.538609, 53.616833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534836, 39.620827, 53.517845>,  <36.872482, 39.757854, 53.352867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534836, 39.620827, 53.517845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281721, -0.371124, -0.884816,
		0.456184, -0.863082, 0.216762,
		-0.844115, -0.342572, 0.412449,
		36.281601, 39.518055, 53.641579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824093, 39.053616, 53.106773>,  <36.872482, 39.757854, 53.352867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824093, 39.053616, 53.106773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493698, 39.272678, 53.160164>,  <36.295460, 39.404114, 53.192200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493698, 39.272678, 53.160164>,  <36.824093, 39.053616, 53.106773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493698, 39.272678, 53.160164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273007, -0.181499, -0.944736,
		-0.493163, -0.816781, 0.299430,
		-0.825989, 0.547655, 0.133478,
		36.245903, 39.436974, 53.200207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226315, 38.651981, 52.887501>,  <36.824093, 39.053616, 53.106773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226315, 38.651981, 52.887501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112789, 39.032871, 52.842403>,  <36.044674, 39.261406, 52.815346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112789, 39.032871, 52.842403>,  <36.226315, 38.651981, 52.887501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112789, 39.032871, 52.842403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203940, -0.174834, -0.963245,
		-0.936940, -0.250393, 0.243818,
		-0.283818, 0.952227, -0.112744,
		36.027645, 39.318539, 52.808578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558159, 38.637188, 52.544197>,  <36.226315, 38.651981, 52.887501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558159, 38.637188, 52.544197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657516, 39.020031, 52.484528>,  <35.717133, 39.249737, 52.448727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657516, 39.020031, 52.484528>,  <35.558159, 38.637188, 52.544197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657516, 39.020031, 52.484528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203412, -0.099024, -0.974073,
		-0.947060, 0.272301, 0.170089,
		0.248398, 0.957103, -0.149171,
		35.732037, 39.307163, 52.439777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028206, 38.768368, 52.028999>,  <35.558159, 38.637188, 52.544197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028206, 38.768368, 52.028999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284359, 39.075439, 52.038567>,  <35.438053, 39.259682, 52.044308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284359, 39.075439, 52.038567>,  <35.028206, 38.768368, 52.028999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284359, 39.075439, 52.038567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216724, 0.210483, -0.953272,
		-0.736842, 0.605280, 0.301165,
		0.640387, 0.767680, 0.023914,
		35.476475, 39.305744, 52.045742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798599, 39.392776, 51.805019>,  <35.028206, 38.768368, 52.028999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798599, 39.392776, 51.805019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191235, 39.415764, 51.732162>,  <35.426815, 39.429558, 51.688446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191235, 39.415764, 51.732162>,  <34.798599, 39.392776, 51.805019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191235, 39.415764, 51.732162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181634, -0.014034, -0.983266,
		-0.059062, 0.998249, -0.003338,
		0.981591, 0.057468, -0.182145,
		35.485710, 39.433002, 51.677521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867264, 39.863140, 51.209225>,  <34.798599, 39.392776, 51.805019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867264, 39.863140, 51.209225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205528, 39.651260, 51.235367>,  <35.408485, 39.524132, 51.251053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205528, 39.651260, 51.235367>,  <34.867264, 39.863140, 51.209225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205528, 39.651260, 51.235367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024135, -0.160284, -0.986776,
		0.533172, 0.832902, -0.148331,
		0.845663, -0.529701, 0.065357,
		35.459229, 39.492352, 51.254974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275169, 40.001373, 50.587173>,  <34.867264, 39.863140, 51.209225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275169, 40.001373, 50.587173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486668, 39.676346, 50.685287>,  <35.613567, 39.481331, 50.744156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.486668, 39.676346, 50.685287>,  <35.275169, 40.001373, 50.587173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486668, 39.676346, 50.685287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157451, -0.190067, -0.969063,
		0.834051, 0.551005, 0.027444,
		0.528742, -0.812569, 0.245282,
		35.645290, 39.432575, 50.758873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898994, 40.052250, 50.241440>,  <35.275169, 40.001373, 50.587173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898994, 40.052250, 50.241440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826382, 39.665905, 50.315372>,  <35.782814, 39.434097, 50.359734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.826382, 39.665905, 50.315372>,  <35.898994, 40.052250, 50.241440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826382, 39.665905, 50.315372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175426, -0.216745, -0.960337,
		0.967612, -0.141904, 0.208782,
		-0.181528, -0.965860, 0.184831,
		35.771923, 39.376148, 50.370823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293327, 39.833012, 49.746841>,  <35.898994, 40.052250, 50.241440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293327, 39.833012, 49.746841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117085, 39.499847, 49.880783>,  <36.011337, 39.299950, 49.961147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.117085, 39.499847, 49.880783>,  <36.293327, 39.833012, 49.746841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117085, 39.499847, 49.880783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090903, -0.412487, -0.906417,
		0.893086, -0.368933, 0.257458,
		-0.440606, -0.832912, 0.334850,
		35.984901, 39.249973, 49.981239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748100, 39.314247, 49.755939>,  <36.293327, 39.833012, 49.746841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748100, 39.314247, 49.755939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385426, 39.146294, 49.739883>,  <36.167820, 39.045521, 49.730251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385426, 39.146294, 49.739883>,  <36.748100, 39.314247, 49.755939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385426, 39.146294, 49.739883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243256, -0.442781, -0.863001,
		0.344586, -0.792239, 0.503605,
		-0.906690, -0.419883, -0.040141,
		36.113419, 39.020329, 49.727840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853779, 38.609116, 49.788563>,  <36.748100, 39.314247, 49.755939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853779, 38.609116, 49.788563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503918, 38.663506, 49.602451>,  <36.293999, 38.696140, 49.490784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503918, 38.663506, 49.602451>,  <36.853779, 38.609116, 49.788563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503918, 38.663506, 49.602451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368265, -0.437761, -0.820211,
		-0.315213, -0.888750, 0.332814,
		-0.874655, 0.135977, -0.465283,
		36.241520, 38.704300, 49.462868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752018, 38.004704, 49.296482>,  <36.853779, 38.609116, 49.788563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752018, 38.004704, 49.296482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475861, 38.262756, 49.165539>,  <36.310165, 38.417587, 49.086975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.475861, 38.262756, 49.165539>,  <36.752018, 38.004704, 49.296482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475861, 38.262756, 49.165539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076592, -0.384775, -0.919827,
		-0.719372, -0.660111, 0.216232,
		-0.690389, 0.645137, -0.327356,
		36.268745, 38.456299, 49.067333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132980, 37.685604, 48.999752>,  <36.752018, 38.004704, 49.296482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132980, 37.685604, 48.999752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151443, 38.056301, 48.850613>,  <36.162521, 38.278721, 48.761127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151443, 38.056301, 48.850613>,  <36.132980, 37.685604, 48.999752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151443, 38.056301, 48.850613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042265, -0.374724, -0.926172,
		-0.998040, 0.026991, -0.056464,
		0.046157, 0.926743, -0.372849,
		36.165291, 38.334324, 48.738758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885071, 37.526455, 48.401176>,  <36.132980, 37.685604, 48.999752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885071, 37.526455, 48.401176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010208, 37.900196, 48.332928>,  <36.085289, 38.124443, 48.291977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.010208, 37.900196, 48.332928>,  <35.885071, 37.526455, 48.401176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010208, 37.900196, 48.332928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039430, -0.192258, -0.980552,
		-0.948986, 0.300030, -0.096988,
		0.312842, 0.934355, -0.170620,
		36.104061, 38.180504, 48.281742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478241, 37.738010, 47.789574>,  <35.885071, 37.526455, 48.401176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478241, 37.738010, 47.789574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809399, 37.959641, 47.824444>,  <36.008091, 38.092617, 47.845367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.809399, 37.959641, 47.824444>,  <35.478241, 37.738010, 47.789574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809399, 37.959641, 47.824444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229982, -0.193582, -0.953748,
		-0.511570, 0.809648, -0.287692,
		0.827892, 0.554072, 0.087174,
		36.057766, 38.125862, 47.850597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503696, 38.207989, 47.192894>,  <35.478241, 37.738010, 47.789574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503696, 38.207989, 47.192894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884567, 38.246891, 47.308762>,  <36.113091, 38.270233, 47.378284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.884567, 38.246891, 47.308762>,  <35.503696, 38.207989, 47.192894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884567, 38.246891, 47.308762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284256, 0.065861, -0.956484,
		-0.112099, 0.993078, 0.035066,
		0.952172, 0.097254, 0.289671,
		36.170219, 38.276066, 47.395664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718380, 38.848591, 46.901379>,  <35.503696, 38.207989, 47.192894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718380, 38.848591, 46.901379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021259, 38.592724, 46.954243>,  <36.202988, 38.439201, 46.985962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021259, 38.592724, 46.954243>,  <35.718380, 38.848591, 46.901379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021259, 38.592724, 46.954243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221155, 0.060688, -0.973348,
		0.614601, 0.766250, 0.187419,
		0.757203, -0.639670, 0.132161,
		36.248421, 38.400822, 46.993893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216301, 39.228203, 46.527775>,  <35.718380, 38.848591, 46.901379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216301, 39.228203, 46.527775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323170, 38.846851, 46.583908>,  <36.387291, 38.618042, 46.617588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323170, 38.846851, 46.583908>,  <36.216301, 39.228203, 46.527775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323170, 38.846851, 46.583908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339815, -0.043068, -0.939506,
		0.901746, 0.298696, 0.312465,
		0.267169, -0.953376, 0.140338,
		36.403320, 38.560837, 46.626011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851410, 39.186440, 46.230869>,  <36.216301, 39.228203, 46.527775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851410, 39.186440, 46.230869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713982, 38.810822, 46.235901>,  <36.631527, 38.585449, 46.238922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.713982, 38.810822, 46.235901>,  <36.851410, 39.186440, 46.230869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713982, 38.810822, 46.235901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383007, -0.152337, -0.911098,
		0.857478, -0.308203, 0.411998,
		-0.343566, -0.939044, 0.012582,
		36.610912, 38.529110, 46.239674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376934, 38.844707, 45.795612>,  <36.851410, 39.186440, 46.230869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376934, 38.844707, 45.795612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096512, 38.560295, 45.817383>,  <36.928261, 38.389648, 45.830444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.096512, 38.560295, 45.817383>,  <37.376934, 38.844707, 45.795612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096512, 38.560295, 45.817383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241700, -0.308726, -0.919929,
		0.670900, -0.631763, 0.388289,
		-0.701052, -0.711030, 0.054427,
		36.886196, 38.346985, 45.833710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.078701, 28.553408, 32.161320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785828, 28.347492, 32.339710>,  <43.610104, 28.223942, 32.446747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.785828, 28.347492, 32.339710>,  <44.078701, 28.553408, 32.161320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785828, 28.347492, 32.339710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105081, 0.732324, 0.672800,
		-0.672951, 0.445750, -0.590291,
		-0.732185, -0.514790, 0.445979,
		43.566174, 28.193056, 32.473503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613720, 29.045002, 32.306499>,  <44.078701, 28.553408, 32.161320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613720, 29.045002, 32.306499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498081, 28.752760, 32.553932>,  <43.428696, 28.577415, 32.702393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.498081, 28.752760, 32.553932>,  <43.613720, 29.045002, 32.306499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498081, 28.752760, 32.553932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229515, 0.680223, 0.696146,
		-0.929379, 0.059282, -0.364336,
		-0.289099, -0.730604, 0.618578,
		43.411350, 28.533579, 32.739506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090710, 29.366741, 32.573849>,  <43.613720, 29.045002, 32.306499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090710, 29.366741, 32.573849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188297, 29.071547, 32.825516>,  <43.246849, 28.894430, 32.976517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.188297, 29.071547, 32.825516>,  <43.090710, 29.366741, 32.573849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188297, 29.071547, 32.825516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030071, 0.642707, 0.765522,
		-0.969316, -0.205684, 0.134609,
		0.243970, -0.737985, 0.629172,
		43.261490, 28.850151, 33.014267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523537, 29.328005, 33.051395>,  <43.090710, 29.366741, 32.573849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523537, 29.328005, 33.051395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833313, 29.149446, 33.230713>,  <43.019180, 29.042311, 33.338303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833313, 29.149446, 33.230713>,  <42.523537, 29.328005, 33.051395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833313, 29.149446, 33.230713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146217, 0.563123, 0.813335,
		-0.615516, -0.695429, 0.370835,
		0.774442, -0.446398, 0.448294,
		43.065647, 29.015528, 33.365200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287159, 29.103897, 33.819042>,  <42.523537, 29.328005, 33.051395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287159, 29.103897, 33.819042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686161, 29.123207, 33.798470>,  <42.925564, 29.134792, 33.786125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686161, 29.123207, 33.798470>,  <42.287159, 29.103897, 33.819042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686161, 29.123207, 33.798470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004153, 0.687691, 0.725991,
		0.070419, -0.724397, 0.685778,
		0.997509, 0.048275, -0.051435,
		42.985413, 29.137690, 33.783039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.433239, 29.003059, 34.444717>,  <42.287159, 29.103897, 33.819042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.433239, 29.003059, 34.444717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757648, 29.167538, 34.278271>,  <42.952293, 29.266224, 34.178402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.757648, 29.167538, 34.278271>,  <42.433239, 29.003059, 34.444717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757648, 29.167538, 34.278271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094179, 0.610253, 0.786589,
		0.577376, -0.677135, 0.456207,
		0.811029, 0.411193, -0.416118,
		43.000957, 29.290895, 34.153435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886475, 28.975788, 34.980186>,  <42.433239, 29.003059, 34.444717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886475, 28.975788, 34.980186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003834, 29.253473, 34.717285>,  <43.074249, 29.420084, 34.559544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003834, 29.253473, 34.717285>,  <42.886475, 28.975788, 34.980186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003834, 29.253473, 34.717285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296815, 0.587386, 0.752913,
		0.908746, -0.415987, -0.033715,
		0.293398, 0.694214, -0.657256,
		43.091854, 29.461737, 34.520107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522652, 29.305767, 35.286503>,  <42.886475, 28.975788, 34.980186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522652, 29.305767, 35.286503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418701, 29.572285, 35.006927>,  <43.356331, 29.732195, 34.839184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.418701, 29.572285, 35.006927>,  <43.522652, 29.305767, 35.286503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418701, 29.572285, 35.006927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319812, 0.742348, 0.588762,
		0.911144, -0.070522, -0.406010,
		-0.259880, 0.666293, -0.698939,
		43.340736, 29.772173, 34.797245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953491, 29.796350, 35.401237>,  <43.522652, 29.305767, 35.286503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953491, 29.796350, 35.401237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683292, 30.013876, 35.202053>,  <43.521172, 30.144392, 35.082542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683292, 30.013876, 35.202053>,  <43.953491, 29.796350, 35.401237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683292, 30.013876, 35.202053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198954, 0.784704, 0.587074,
		0.710012, 0.297498, -0.638262,
		-0.675500, 0.543815, -0.497961,
		43.480644, 30.177021, 35.052666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297531, 30.312946, 35.097977>,  <43.953491, 29.796350, 35.401237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297531, 30.312946, 35.097977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921074, 30.441734, 35.139141>,  <43.695202, 30.519007, 35.163841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.921074, 30.441734, 35.139141>,  <44.297531, 30.312946, 35.097977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921074, 30.441734, 35.139141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336526, 0.863934, 0.374658,
		0.031717, 0.387239, -0.921434,
		-0.941140, 0.321970, 0.102914,
		43.638733, 30.538324, 35.170017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274216, 30.957693, 34.746925>,  <44.297531, 30.312946, 35.097977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274216, 30.957693, 34.746925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960571, 30.971336, 34.994797>,  <43.772385, 30.979523, 35.143520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960571, 30.971336, 34.994797>,  <44.274216, 30.957693, 34.746925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960571, 30.971336, 34.994797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193008, 0.962377, 0.191253,
		-0.589842, 0.269567, -0.761196,
		-0.784113, 0.034108, 0.619680,
		43.725338, 30.981569, 35.180702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049908, 31.624552, 34.744640>,  <44.274216, 30.957693, 34.746925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049908, 31.624552, 34.744640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857464, 31.488972, 35.068035>,  <43.741997, 31.407623, 35.262074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.857464, 31.488972, 35.068035>,  <44.049908, 31.624552, 34.744640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857464, 31.488972, 35.068035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026187, 0.916265, 0.399717,
		-0.876270, 0.213479, -0.431946,
		-0.481108, -0.338949, 0.808485,
		43.713131, 31.387287, 35.310581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311604, 32.029549, 34.785469>,  <44.049908, 31.624552, 34.744640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311604, 32.029549, 34.785469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409214, 31.897345, 35.150154>,  <43.467781, 31.818022, 35.368965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409214, 31.897345, 35.150154>,  <43.311604, 32.029549, 34.785469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409214, 31.897345, 35.150154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105608, 0.925482, 0.363772,
		-0.964001, -0.185054, 0.190938,
		0.244028, -0.330512, 0.911709,
		43.482422, 31.798191, 35.423668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831829, 32.340141, 35.193577>,  <43.311604, 32.029549, 34.785469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831829, 32.340141, 35.193577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121384, 32.230286, 35.446739>,  <43.295116, 32.164371, 35.598637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.121384, 32.230286, 35.446739>,  <42.831829, 32.340141, 35.193577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.121384, 32.230286, 35.446739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165384, 0.821533, 0.545648,
		-0.669805, -0.499658, 0.549275,
		0.723885, -0.274636, 0.632902,
		43.338551, 32.147896, 35.636608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563824, 32.536217, 35.831566>,  <42.831829, 32.340141, 35.193577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563824, 32.536217, 35.831566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956352, 32.503578, 35.901249>,  <43.191868, 32.483994, 35.943058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956352, 32.503578, 35.901249>,  <42.563824, 32.536217, 35.831566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956352, 32.503578, 35.901249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045925, 0.978769, 0.199756,
		-0.186810, -0.188024, 0.964235,
		0.981322, -0.081599, 0.174209,
		43.250748, 32.479099, 35.953510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646088, 32.905041, 36.386505>,  <42.563824, 32.536217, 35.831566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646088, 32.905041, 36.386505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018131, 32.889114, 36.240459>,  <43.241356, 32.879559, 36.152832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.018131, 32.889114, 36.240459>,  <42.646088, 32.905041, 36.386505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018131, 32.889114, 36.240459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197621, 0.892184, 0.406145,
		0.309582, -0.449914, 0.837697,
		0.930110, -0.039812, -0.365117,
		43.297165, 32.877171, 36.130924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015865, 33.230427, 36.843853>,  <42.646088, 32.905041, 36.386505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015865, 33.230427, 36.843853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246429, 33.251289, 36.517658>,  <43.384769, 33.263809, 36.321941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.246429, 33.251289, 36.517658>,  <43.015865, 33.230427, 36.843853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246429, 33.251289, 36.517658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153616, 0.973252, 0.170829,
		0.802588, -0.223741, 0.552985,
		0.576415, 0.052158, -0.815491,
		43.419353, 33.266937, 36.273010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592190, 33.684357, 37.023220>,  <43.015865, 33.230427, 36.843853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592190, 33.684357, 37.023220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551613, 33.668133, 36.625614>,  <43.527267, 33.658398, 36.387051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.551613, 33.668133, 36.625614>,  <43.592190, 33.684357, 37.023220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551613, 33.668133, 36.625614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100066, 0.993686, -0.050754,
		0.989796, -0.104616, -0.096746,
		-0.101445, -0.040556, -0.994014,
		43.521179, 33.655968, 36.327412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133289, 34.114311, 36.773880>,  <43.592190, 33.684357, 37.023220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133289, 34.114311, 36.773880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853786, 34.088112, 36.488941>,  <43.686085, 34.072392, 36.317978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853786, 34.088112, 36.488941>,  <44.133289, 34.114311, 36.773880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853786, 34.088112, 36.488941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035774, 0.997753, -0.056643,
		0.714459, -0.014097, -0.699535,
		-0.698762, -0.065494, -0.712350,
		43.644157, 34.068462, 36.275238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272091, 34.658115, 36.334866>,  <44.133289, 34.114311, 36.773880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272091, 34.658115, 36.334866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898113, 34.581955, 36.215111>,  <43.673729, 34.536259, 36.143257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.898113, 34.581955, 36.215111>,  <44.272091, 34.658115, 36.334866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898113, 34.581955, 36.215111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159164, 0.979217, -0.125706,
		0.317100, -0.069876, -0.945815,
		-0.934941, -0.190401, -0.299387,
		43.617630, 34.524834, 36.125294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142529, 35.037815, 35.653187>,  <44.272091, 34.658115, 36.334866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142529, 35.037815, 35.653187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787598, 34.937565, 35.808022>,  <43.574638, 34.877415, 35.900925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.787598, 34.937565, 35.808022>,  <44.142529, 35.037815, 35.653187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.787598, 34.937565, 35.808022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269792, 0.962906, 0.004999,
		-0.373983, -0.099998, -0.922029,
		-0.887327, -0.250625, 0.387089,
		43.521400, 34.862377, 35.924149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691685, 35.230167, 36.055157>,  <44.142529, 35.037815, 35.653187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691685, 35.230167, 36.055157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081306, 35.203861, 36.141785>,  <45.315079, 35.188080, 36.193760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.081306, 35.203861, 36.141785>,  <44.691685, 35.230167, 36.055157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081306, 35.203861, 36.141785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146902, -0.544221, -0.825980,
		0.172177, 0.836361, -0.520438,
		0.974051, -0.065761, 0.216565,
		45.373520, 35.184132, 36.206753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147743, 35.455650, 35.481956>,  <44.691685, 35.230167, 36.055157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147743, 35.455650, 35.481956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346481, 35.190514, 35.706024>,  <45.465725, 35.031433, 35.840466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.346481, 35.190514, 35.706024>,  <45.147743, 35.455650, 35.481956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346481, 35.190514, 35.706024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262585, -0.500402, -0.825013,
		0.827162, 0.556994, -0.074569,
		0.496842, -0.662839, 0.560172,
		45.495533, 34.991661, 35.874077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887615, 35.552074, 35.266705>,  <45.147743, 35.455650, 35.481956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887615, 35.552074, 35.266705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840042, 35.200462, 35.451378>,  <45.811497, 34.989494, 35.562183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.840042, 35.200462, 35.451378>,  <45.887615, 35.552074, 35.266705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840042, 35.200462, 35.451378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348621, -0.472351, -0.809536,
		0.929687, 0.064673, 0.362628,
		-0.118932, -0.879035, 0.461685,
		45.804363, 34.936752, 35.589882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463318, 35.163921, 35.099197>,  <45.887615, 35.552074, 35.266705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463318, 35.163921, 35.099197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.193939, 34.890007, 35.210583>,  <46.032314, 34.725658, 35.277416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.193939, 34.890007, 35.210583>,  <46.463318, 35.163921, 35.099197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.193939, 34.890007, 35.210583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298061, -0.596249, -0.745417,
		0.676486, -0.418996, 0.605647,
		-0.673443, -0.684784, 0.278468,
		45.991905, 34.684570, 35.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.867737, 34.581211, 35.065464>,  <46.463318, 35.163921, 35.099197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.867737, 34.581211, 35.065464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493519, 34.440491, 35.052906>,  <46.268986, 34.356060, 35.045372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.493519, 34.440491, 35.052906>,  <46.867737, 34.581211, 35.065464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493519, 34.440491, 35.052906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276145, -0.673141, -0.686021,
		0.220213, -0.650474, 0.726904,
		-0.935548, -0.351802, -0.031391,
		46.212856, 34.334949, 35.043488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992149, 33.894440, 35.010063>,  <46.867737, 34.581211, 35.065464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992149, 33.894440, 35.010063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.608459, 33.929996, 34.902744>,  <46.378246, 33.951328, 34.838352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.608459, 33.929996, 34.902744>,  <46.992149, 33.894440, 35.010063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608459, 33.929996, 34.902744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161620, -0.606252, -0.778677,
		-0.231873, -0.790289, 0.567166,
		-0.959225, 0.088889, -0.268300,
		46.320690, 33.956665, 34.822254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.763611, 33.185608, 34.938168>,  <46.992149, 33.894440, 35.010063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.763611, 33.185608, 34.938168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.480961, 33.398060, 34.751156>,  <46.311371, 33.525532, 34.638950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.480961, 33.398060, 34.751156>,  <46.763611, 33.185608, 34.938168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480961, 33.398060, 34.751156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170912, -0.769281, -0.615627,
		-0.686638, -0.355111, 0.634369,
		-0.706624, 0.531134, -0.467525,
		46.268974, 33.557400, 34.610897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.277512, 32.708702, 34.899055>,  <46.763611, 33.185608, 34.938168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.277512, 32.708702, 34.899055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.158047, 32.987942, 34.638763>,  <46.086369, 33.155487, 34.482590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.158047, 32.987942, 34.638763>,  <46.277512, 32.708702, 34.899055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158047, 32.987942, 34.638763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373319, -0.712981, -0.593541,
		-0.878312, 0.065660, 0.473558,
		-0.298666, 0.698103, -0.650732,
		46.068447, 33.197372, 34.443542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570065, 32.539818, 34.746418>,  <46.277512, 32.708702, 34.899055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570065, 32.539818, 34.746418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709507, 32.777588, 34.456554>,  <45.793171, 32.920250, 34.282635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709507, 32.777588, 34.456554>,  <45.570065, 32.539818, 34.746418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709507, 32.777588, 34.456554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326172, -0.647895, -0.688364,
		-0.878685, 0.476330, -0.031973,
		0.348603, 0.594426, -0.724661,
		45.814087, 32.955917, 34.239155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059811, 32.887062, 34.393463>,  <45.570065, 32.539818, 34.746418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059811, 32.887062, 34.393463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.362698, 32.879219, 34.132317>,  <45.544430, 32.874512, 33.975628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.362698, 32.879219, 34.132317>,  <45.059811, 32.887062, 34.393463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362698, 32.879219, 34.132317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572506, -0.501087, -0.648960,
		-0.314418, 0.865175, -0.390658,
		0.757217, -0.019609, -0.652869,
		45.589863, 32.873337, 33.936455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652645, 33.063801, 33.799679>,  <45.059811, 32.887062, 34.393463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652645, 33.063801, 33.799679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999115, 32.895355, 33.692039>,  <45.206997, 32.794289, 33.627457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.999115, 32.895355, 33.692039>,  <44.652645, 33.063801, 33.799679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999115, 32.895355, 33.692039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435192, -0.370895, -0.820393,
		0.245670, 0.827710, -0.504523,
		0.866172, -0.421111, -0.269095,
		45.258968, 32.769024, 33.611313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782536, 33.249813, 33.085278>,  <44.652645, 33.063801, 33.799679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782536, 33.249813, 33.085278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006565, 32.925083, 33.151325>,  <45.140984, 32.730247, 33.190952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006565, 32.925083, 33.151325>,  <44.782536, 33.249813, 33.085278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006565, 32.925083, 33.151325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115866, -0.274111, -0.954693,
		0.820299, 0.515568, -0.247585,
		0.560075, -0.811821, 0.165116,
		45.174587, 32.681538, 33.200859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205456, 33.142490, 32.473206>,  <44.782536, 33.249813, 33.085278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205456, 33.142490, 32.473206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205830, 32.781368, 32.645222>,  <45.206055, 32.564693, 32.748432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205830, 32.781368, 32.645222>,  <45.205456, 33.142490, 32.473206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205830, 32.781368, 32.645222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278548, -0.413258, -0.866965,
		0.960422, -0.118982, -0.251860,
		0.000930, -0.902807, 0.430044,
		45.206108, 32.510525, 32.774235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454781, 32.700378, 32.043385>,  <45.205456, 33.142490, 32.473206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454781, 32.700378, 32.043385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294464, 32.426914, 32.287342>,  <45.198277, 32.262836, 32.433716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.294464, 32.426914, 32.287342>,  <45.454781, 32.700378, 32.043385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294464, 32.426914, 32.287342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227014, -0.570832, -0.789060,
		0.887599, -0.454701, 0.073581,
		-0.400789, -0.683665, 0.609894,
		45.174229, 32.221813, 32.470310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703526, 32.064560, 31.770885>,  <45.454781, 32.700378, 32.043385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703526, 32.064560, 31.770885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385735, 31.981718, 31.999239>,  <45.195061, 31.932013, 32.136250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385735, 31.981718, 31.999239>,  <45.703526, 32.064560, 31.770885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385735, 31.981718, 31.999239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334044, -0.636023, -0.695622,
		0.507163, -0.743358, 0.436125,
		-0.794481, -0.207109, 0.570882,
		45.147388, 31.919586, 32.170502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745434, 31.378593, 31.733355>,  <45.703526, 32.064560, 31.770885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745434, 31.378593, 31.733355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381413, 31.489042, 31.857012>,  <45.163002, 31.555311, 31.931206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.381413, 31.489042, 31.857012>,  <45.745434, 31.378593, 31.733355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381413, 31.489042, 31.857012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411274, -0.508617, -0.756415,
		-0.051626, -0.815516, 0.576427,
		-0.910049, 0.276120, 0.309142,
		45.108398, 31.571878, 31.949755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279613, 30.677694, 31.829275>,  <45.745434, 31.378593, 31.733355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279613, 30.677694, 31.829275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026848, 30.987366, 31.814651>,  <44.875191, 31.173168, 31.805878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026848, 30.987366, 31.814651>,  <45.279613, 30.677694, 31.829275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026848, 30.987366, 31.814651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528119, -0.464632, -0.710779,
		-0.567258, -0.429839, 0.702464,
		-0.631909, 0.774180, -0.036560,
		44.837276, 31.219620, 31.803684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.524517, 30.430317, 31.996574>,  <45.279613, 30.677694, 31.829275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.524517, 30.430317, 31.996574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526875, 30.749586, 31.755615>,  <44.528290, 30.941149, 31.611040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.526875, 30.749586, 31.755615>,  <44.524517, 30.430317, 31.996574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526875, 30.749586, 31.755615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560237, -0.496355, -0.663149,
		-0.828311, 0.341393, 0.444242,
		0.005893, 0.798174, -0.602397,
		44.528641, 30.989038, 31.574896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948109, 30.372879, 31.648970>,  <44.524517, 30.430317, 31.996574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948109, 30.372879, 31.648970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.112495, 30.663954, 31.429306>,  <44.211128, 30.838598, 31.297508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.112495, 30.663954, 31.429306>,  <43.948109, 30.372879, 31.648970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112495, 30.663954, 31.429306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544101, -0.287543, -0.788209,
		-0.731477, 0.622726, 0.277765,
		0.410969, 0.727689, -0.549157,
		44.235786, 30.882261, 31.264559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.370026, 30.708883, 31.286036>,  <43.948109, 30.372879, 31.648970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.370026, 30.708883, 31.286036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687771, 30.820957, 31.070448>,  <43.878418, 30.888201, 30.941095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.687771, 30.820957, 31.070448>,  <43.370026, 30.708883, 31.286036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.687771, 30.820957, 31.070448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460138, -0.301697, -0.835016,
		-0.396563, 0.911305, -0.110733,
		0.794362, 0.280184, -0.538968,
		43.926079, 30.905012, 30.908758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130127, 31.020201, 30.682337>,  <43.370026, 30.708883, 31.286036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130127, 31.020201, 30.682337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502224, 30.948690, 30.554161>,  <43.725483, 30.905785, 30.477257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.502224, 30.948690, 30.554161>,  <43.130127, 31.020201, 30.682337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502224, 30.948690, 30.554161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347685, -0.150320, -0.925483,
		0.117286, 0.972339, -0.201992,
		0.930247, -0.178776, -0.320437,
		43.781300, 30.895058, 30.458031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.631264, 37.061089, 42.585281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239906, 36.978436, 42.588089>,  <41.005093, 36.928844, 42.589775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239906, 36.978436, 42.588089>,  <41.631264, 37.061089, 42.585281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239906, 36.978436, 42.588089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003883, -0.052314, -0.998623,
		0.206714, -0.977020, 0.051986,
		-0.978394, -0.206631, 0.007021,
		40.946388, 36.916447, 42.590195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583195, 36.657742, 42.117825>,  <41.631264, 37.061089, 42.585281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583195, 36.657742, 42.117825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194984, 36.749126, 42.148502>,  <40.962059, 36.803959, 42.166908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194984, 36.749126, 42.148502>,  <41.583195, 36.657742, 42.117825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194984, 36.749126, 42.148502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042558, 0.150748, -0.987656,
		-0.237207, -0.961810, -0.136581,
		-0.970527, 0.228466, 0.076692,
		40.903828, 36.817665, 42.171509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309414, 36.250080, 41.689011>,  <41.583195, 36.657742, 42.117825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309414, 36.250080, 41.689011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001316, 36.502888, 41.723114>,  <40.816456, 36.654572, 41.743576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001316, 36.502888, 41.723114>,  <41.309414, 36.250080, 41.689011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001316, 36.502888, 41.723114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046080, 0.078176, -0.995874,
		-0.636080, -0.770996, -0.031091,
		-0.770246, 0.632023, 0.085254,
		40.770241, 36.692493, 41.748692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786755, 35.912792, 41.212318>,  <41.309414, 36.250080, 41.689011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786755, 35.912792, 41.212318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706501, 36.300251, 41.270939>,  <40.658348, 36.532726, 41.306110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706501, 36.300251, 41.270939>,  <40.786755, 35.912792, 41.212318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706501, 36.300251, 41.270939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233586, 0.097977, -0.967387,
		-0.951412, -0.228322, 0.206604,
		-0.200634, 0.968643, 0.146550,
		40.646313, 36.590843, 41.314903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040577, 35.962929, 40.978970>,  <40.786755, 35.912792, 41.212318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040577, 35.962929, 40.978970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249359, 36.303814, 40.993366>,  <40.374630, 36.508347, 41.002003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249359, 36.303814, 40.993366>,  <40.040577, 35.962929, 40.978970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249359, 36.303814, 40.993366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308354, 0.227861, -0.923579,
		-0.795286, 0.470970, 0.381717,
		0.521956, 0.852213, 0.035989,
		40.405945, 36.559479, 41.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614719, 36.461033, 40.779762>,  <40.040577, 35.962929, 40.978970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614719, 36.461033, 40.779762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974453, 36.622837, 40.713356>,  <40.190292, 36.719921, 40.673512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974453, 36.622837, 40.713356>,  <39.614719, 36.461033, 40.779762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974453, 36.622837, 40.713356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293787, 0.277798, -0.914613,
		-0.323851, 0.871321, 0.368674,
		0.899338, 0.404510, -0.166018,
		40.244255, 36.744190, 40.663551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405445, 36.951385, 40.329517>,  <39.614719, 36.461033, 40.779762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405445, 36.951385, 40.329517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802654, 36.910694, 40.305649>,  <40.040977, 36.886280, 40.291328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802654, 36.910694, 40.305649>,  <39.405445, 36.951385, 40.329517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802654, 36.910694, 40.305649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036535, 0.215719, -0.975772,
		0.112134, 0.971142, 0.210497,
		0.993021, -0.101726, -0.059670,
		40.100559, 36.880177, 40.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626217, 37.485996, 40.002995>,  <39.405445, 36.951385, 40.329517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626217, 37.485996, 40.002995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930622, 37.232388, 39.948032>,  <40.113266, 37.080223, 39.915054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930622, 37.232388, 39.948032>,  <39.626217, 37.485996, 40.002995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930622, 37.232388, 39.948032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057262, 0.276626, -0.959270,
		0.646207, 0.722147, 0.246821,
		0.761011, -0.634021, -0.137406,
		40.158924, 37.042183, 39.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096256, 37.906479, 39.690876>,  <39.626217, 37.485996, 40.002995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096256, 37.906479, 39.690876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187359, 37.521458, 39.632061>,  <40.242020, 37.290443, 39.596771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187359, 37.521458, 39.632061>,  <40.096256, 37.906479, 39.690876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187359, 37.521458, 39.632061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103110, 0.173994, -0.979334,
		0.968243, 0.207893, 0.138877,
		0.227760, -0.962552, -0.147033,
		40.255688, 37.232693, 39.587952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694080, 37.948856, 39.210880>,  <40.096256, 37.906479, 39.690876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694080, 37.948856, 39.210880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 37.588280, 39.160873>,  <40.428829, 37.371933, 39.130871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528297, 37.588280, 39.160873>,  <40.694080, 37.948856, 39.210880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528297, 37.588280, 39.160873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154866, 0.065510, -0.985761,
		0.896796, -0.427915, 0.112452,
		-0.414455, -0.901442, -0.125019,
		40.403961, 37.317848, 39.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063061, 37.513916, 38.707054>,  <40.694080, 37.948856, 39.210880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063061, 37.513916, 38.707054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703270, 37.339211, 38.712345>,  <40.487396, 37.234386, 38.715519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703270, 37.339211, 38.712345>,  <41.063061, 37.513916, 38.707054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703270, 37.339211, 38.712345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058732, -0.150842, -0.986812,
		0.432996, -0.886841, 0.161331,
		-0.899480, -0.436761, 0.013229,
		40.433426, 37.208183, 38.716312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060905, 37.091396, 38.022968>,  <41.063061, 37.513916, 38.707054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060905, 37.091396, 38.022968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689720, 37.111580, 38.170662>,  <40.467010, 37.123692, 38.259277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689720, 37.111580, 38.170662>,  <41.060905, 37.091396, 38.022968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689720, 37.111580, 38.170662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372666, -0.129362, -0.918904,
		0.001401, -0.990313, 0.138847,
		-0.927964, 0.050457, 0.369237,
		40.411331, 37.126717, 38.281433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698662, 36.502254, 37.735077>,  <41.060905, 37.091396, 38.022968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698662, 36.502254, 37.735077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421555, 36.771881, 37.837612>,  <40.255291, 36.933655, 37.899132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421555, 36.771881, 37.837612>,  <40.698662, 36.502254, 37.735077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421555, 36.771881, 37.837612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464329, -0.144951, -0.873721,
		-0.551787, -0.724311, 0.413405,
		-0.692769, 0.674064, 0.256337,
		40.213722, 36.974098, 37.914513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028702, 36.210114, 37.960934>,  <40.698662, 36.502254, 37.735077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028702, 36.210114, 37.960934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996822, 36.578285, 37.807858>,  <39.977695, 36.799191, 37.716011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.996822, 36.578285, 37.807858>,  <40.028702, 36.210114, 37.960934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996822, 36.578285, 37.807858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575959, -0.355865, -0.735956,
		-0.813584, 0.161761, 0.558493,
		-0.079700, 0.920431, -0.382694,
		39.972912, 36.854416, 37.693050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567074, 35.719276, 38.228348>,  <40.028702, 36.210114, 37.960934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567074, 35.719276, 38.228348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696354, 35.341885, 38.257740>,  <39.773922, 35.115452, 38.275375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696354, 35.341885, 38.257740>,  <39.567074, 35.719276, 38.228348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696354, 35.341885, 38.257740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761709, -0.213285, 0.611807,
		-0.561554, -0.253701, -0.787587,
		0.323197, -0.943475, 0.073476,
		39.793312, 35.058842, 38.279781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918602, 35.301758, 38.193317>,  <39.567074, 35.719276, 38.228348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918602, 35.301758, 38.193317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 35.079189, 38.371223>,  <39.367779, 34.945648, 38.477966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 35.079189, 38.371223>,  <38.918602, 35.301758, 38.193317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199337, 35.079189, 38.371223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676744, -0.325936, 0.660139,
		-0.222347, -0.764307, -0.605308,
		0.701840, -0.556419, 0.444769,
		39.409889, 34.912262, 38.504654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652817, 34.558598, 38.278725>,  <38.918602, 35.301758, 38.193317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652817, 34.558598, 38.278725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939762, 34.584782, 38.556171>,  <39.111927, 34.600491, 38.722641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939762, 34.584782, 38.556171>,  <38.652817, 34.558598, 38.278725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939762, 34.584782, 38.556171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602252, -0.442261, 0.664603,
		0.350265, -0.894495, -0.277838,
		0.717361, 0.065458, 0.693620,
		39.154972, 34.604420, 38.764256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657841, 33.838959, 38.639027>,  <38.652817, 34.558598, 38.278725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657841, 33.838959, 38.639027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814598, 34.098698, 38.899723>,  <38.908653, 34.254539, 39.056141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814598, 34.098698, 38.899723>,  <38.657841, 33.838959, 38.639027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814598, 34.098698, 38.899723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654001, -0.301625, 0.693762,
		0.647073, -0.698122, 0.306468,
		0.391892, 0.649345, 0.651746,
		38.932167, 34.293503, 39.095245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713764, 33.412117, 39.266521>,  <38.657841, 33.838959, 38.639027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713764, 33.412117, 39.266521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764374, 33.780148, 39.414825>,  <38.794739, 34.000965, 39.503807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764374, 33.780148, 39.414825>,  <38.713764, 33.412117, 39.266521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764374, 33.780148, 39.414825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399757, -0.294772, 0.867931,
		0.907847, -0.258026, 0.330509,
		0.126524, 0.920072, 0.370756,
		38.802330, 34.056168, 39.526051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004543, 33.256310, 39.811844>,  <38.713764, 33.412117, 39.266521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004543, 33.256310, 39.811844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873295, 33.629074, 39.873650>,  <38.794544, 33.852734, 39.910732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873295, 33.629074, 39.873650>,  <39.004543, 33.256310, 39.811844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873295, 33.629074, 39.873650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194984, -0.226865, 0.954208,
		0.924293, 0.282967, 0.256147,
		-0.328120, 0.931913, 0.154516,
		38.774860, 33.908649, 39.920006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322365, 33.527157, 40.419189>,  <39.004543, 33.256310, 39.811844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322365, 33.527157, 40.419189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993271, 33.750118, 40.374649>,  <38.795815, 33.883896, 40.347923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993271, 33.750118, 40.374649>,  <39.322365, 33.527157, 40.419189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993271, 33.750118, 40.374649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204527, -0.107517, 0.972938,
		0.530351, 0.823247, 0.202463,
		-0.822737, 0.557408, -0.111355,
		38.746449, 33.917339, 40.341244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246506, 33.940731, 40.990673>,  <39.322365, 33.527157, 40.419189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246506, 33.940731, 40.990673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870041, 33.962730, 40.857292>,  <38.644161, 33.975929, 40.777264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870041, 33.962730, 40.857292>,  <39.246506, 33.940731, 40.990673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870041, 33.962730, 40.857292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333130, 0.015254, 0.942758,
		0.056941, 0.998370, 0.003967,
		-0.941160, 0.055003, -0.333455,
		38.587692, 33.979233, 40.757256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818714, 34.590420, 41.337139>,  <39.246506, 33.940731, 40.990673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818714, 34.590420, 41.337139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549953, 34.314724, 41.228695>,  <38.388699, 34.149307, 41.163628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549953, 34.314724, 41.228695>,  <38.818714, 34.590420, 41.337139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549953, 34.314724, 41.228695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293832, -0.087952, 0.951802,
		-0.679861, 0.719179, -0.143425,
		-0.671901, -0.689236, -0.271113,
		38.348385, 34.107952, 41.147362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231087, 34.746178, 41.683533>,  <38.818714, 34.590420, 41.337139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231087, 34.746178, 41.683533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193501, 34.361614, 41.580097>,  <38.170948, 34.130875, 41.518036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193501, 34.361614, 41.580097>,  <38.231087, 34.746178, 41.683533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193501, 34.361614, 41.580097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179629, -0.239102, 0.954235,
		-0.979237, 0.136113, -0.150230,
		-0.093963, -0.961407, -0.258587,
		38.165310, 34.073193, 41.502522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723026, 34.502655, 41.998135>,  <38.231087, 34.746178, 41.683533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723026, 34.502655, 41.998135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866295, 34.136414, 41.925041>,  <37.952255, 33.916668, 41.881187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866295, 34.136414, 41.925041>,  <37.723026, 34.502655, 41.998135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866295, 34.136414, 41.925041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311806, -0.301781, 0.900947,
		-0.880052, -0.265714, -0.393578,
		0.358169, -0.915600, -0.182732,
		37.973747, 33.861732, 41.870220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059059, 34.043964, 42.127640>,  <37.723026, 34.502655, 41.998135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059059, 34.043964, 42.127640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396221, 33.832111, 42.165596>,  <37.598518, 33.704998, 42.188370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396221, 33.832111, 42.165596>,  <37.059059, 34.043964, 42.127640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396221, 33.832111, 42.165596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256114, -0.239835, 0.936421,
		-0.473205, -0.813612, -0.337804,
		0.842901, -0.529636, 0.094887,
		37.649090, 33.673222, 42.194061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846512, 33.507557, 42.453972>,  <37.059059, 34.043964, 42.127640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846512, 33.507557, 42.453972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243916, 33.492622, 42.496952>,  <37.482357, 33.483662, 42.522739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243916, 33.492622, 42.496952>,  <36.846512, 33.507557, 42.453972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243916, 33.492622, 42.496952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112380, -0.176040, 0.977947,
		-0.017593, -0.983675, -0.179093,
		0.993510, -0.037332, 0.107448,
		37.541969, 33.481422, 42.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939117, 32.939526, 42.910557>,  <36.846512, 33.507557, 42.453972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939117, 32.939526, 42.910557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263939, 33.166725, 42.964149>,  <37.458832, 33.303043, 42.996304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263939, 33.166725, 42.964149>,  <36.939117, 32.939526, 42.910557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263939, 33.166725, 42.964149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093024, -0.100661, 0.990562,
		0.576122, -0.816852, -0.028905,
		0.812053, 0.567996, 0.133980,
		37.507553, 33.337124, 43.004345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582909, 32.336754, 42.800209>,  <36.939117, 32.939526, 42.910557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582909, 32.336754, 42.800209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190090, 32.347107, 42.874962>,  <35.954399, 32.353317, 42.919815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190090, 32.347107, 42.874962>,  <36.582909, 32.336754, 42.800209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190090, 32.347107, 42.874962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187863, -0.042940, -0.981256,
		-0.017356, -0.998743, 0.047028,
		-0.982042, 0.025866, 0.186882,
		35.895477, 32.354870, 42.931026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252407, 31.979570, 42.278774>,  <36.582909, 32.336754, 42.800209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252407, 31.979570, 42.278774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958992, 32.191875, 42.448582>,  <35.782944, 32.319260, 42.550468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958992, 32.191875, 42.448582>,  <36.252407, 31.979570, 42.278774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958992, 32.191875, 42.448582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360152, 0.226159, -0.905065,
		-0.576384, -0.816789, 0.025259,
		-0.733535, 0.530762, 0.424522,
		35.738934, 32.351105, 42.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686249, 31.760416, 41.941807>,  <36.252407, 31.979570, 42.278774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686249, 31.760416, 41.941807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577015, 32.104534, 42.114002>,  <35.511475, 32.311005, 42.217319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577015, 32.104534, 42.114002>,  <35.686249, 31.760416, 41.941807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577015, 32.104534, 42.114002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599136, 0.198012, -0.775775,
		-0.752637, -0.469770, 0.461360,
		-0.273082, 0.860295, 0.430487,
		35.495090, 32.362621, 42.243149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002834, 31.720938, 42.115665>,  <35.686249, 31.760416, 41.941807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002834, 31.720938, 42.115665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046589, 32.116863, 42.079208>,  <35.072842, 32.354420, 42.057335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046589, 32.116863, 42.079208>,  <35.002834, 31.720938, 42.115665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046589, 32.116863, 42.079208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729461, 0.017654, -0.683795,
		-0.675219, 0.141281, 0.723960,
		0.109388, 0.989812, -0.091139,
		35.079407, 32.413807, 42.051868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371780, 32.028076, 42.023350>,  <35.002834, 31.720938, 42.115665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371780, 32.028076, 42.023350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575771, 32.346397, 41.892742>,  <34.698166, 32.537392, 41.814377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575771, 32.346397, 41.892742>,  <34.371780, 32.028076, 42.023350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575771, 32.346397, 41.892742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639204, 0.096587, -0.762948,
		-0.575622, 0.597797, 0.557941,
		0.509978, 0.795808, -0.326516,
		34.728764, 32.585140, 41.794788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874386, 32.435696, 41.651718>,  <34.371780, 32.028076, 42.023350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874386, 32.435696, 41.651718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201370, 32.645950, 41.557514>,  <34.397560, 32.772102, 41.500992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201370, 32.645950, 41.557514>,  <33.874386, 32.435696, 41.651718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201370, 32.645950, 41.557514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423348, 0.271060, -0.864467,
		-0.390556, 0.806371, 0.444108,
		0.817461, 0.525635, -0.235511,
		34.446609, 32.803642, 41.486862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709938, 33.164017, 41.509556>,  <33.874386, 32.435696, 41.651718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709938, 33.164017, 41.509556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048012, 33.074379, 41.315468>,  <34.250858, 33.020596, 41.199013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048012, 33.074379, 41.315468>,  <33.709938, 33.164017, 41.509556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048012, 33.074379, 41.315468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423454, 0.273167, -0.863751,
		0.326107, 0.935501, 0.135984,
		0.845187, -0.224092, -0.485224,
		34.301567, 33.007153, 41.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036961, 33.814434, 41.160534>,  <33.709938, 33.164017, 41.509556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036961, 33.814434, 41.160534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139732, 33.479446, 40.967606>,  <34.201397, 33.278454, 40.851849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139732, 33.479446, 40.967606>,  <34.036961, 33.814434, 41.160534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139732, 33.479446, 40.967606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477757, 0.323763, -0.816655,
		0.840080, 0.440259, -0.316920,
		0.256933, -0.837466, -0.482324,
		34.216812, 33.228207, 40.822910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312462, 34.029644, 40.550571>,  <34.036961, 33.814434, 41.160534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312462, 34.029644, 40.550571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215225, 33.646263, 40.490860>,  <34.156883, 33.416237, 40.455032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215225, 33.646263, 40.490860>,  <34.312462, 34.029644, 40.550571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215225, 33.646263, 40.490860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497946, 0.255373, -0.828755,
		0.832441, -0.127127, -0.539334,
		-0.243088, -0.958448, -0.149280,
		34.142300, 33.358730, 40.446075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667149, 33.850174, 39.981113>,  <34.312462, 34.029644, 40.550571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667149, 33.850174, 39.981113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383789, 33.568363, 39.998131>,  <34.213772, 33.399277, 40.008343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383789, 33.568363, 39.998131>,  <34.667149, 33.850174, 39.981113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383789, 33.568363, 39.998131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373933, 0.323498, -0.869208,
		0.598616, -0.631658, -0.492612,
		-0.708401, -0.704526, 0.042547,
		34.171268, 33.357006, 40.010895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659756, 33.528900, 39.406815>,  <34.667149, 33.850174, 39.981113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659756, 33.528900, 39.406815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308449, 33.387451, 39.535557>,  <34.097664, 33.302582, 39.612804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308449, 33.387451, 39.535557>,  <34.659756, 33.528900, 39.406815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308449, 33.387451, 39.535557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443567, 0.351140, -0.824590,
		0.178574, -0.866979, -0.465250,
		-0.878271, -0.353620, 0.321858,
		34.044968, 33.281364, 39.632114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432789, 32.998432, 38.891964>,  <34.659756, 33.528900, 39.406815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432789, 32.998432, 38.891964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116901, 33.153702, 39.081985>,  <33.927368, 33.246864, 39.195999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116901, 33.153702, 39.081985>,  <34.432789, 32.998432, 38.891964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116901, 33.153702, 39.081985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413465, 0.235290, -0.879594,
		-0.453208, -0.891045, -0.025317,
		-0.789715, 0.388171, 0.475051,
		33.879986, 33.270153, 39.224503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.096966, 31.811020, 46.784412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781719, 32.052891, 46.738407>,  <35.592571, 32.198013, 46.710804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.781719, 32.052891, 46.738407>,  <36.096966, 31.811020, 46.784412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781719, 32.052891, 46.738407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084367, -0.078973, -0.993300,
		-0.609711, -0.792544, 0.011226,
		-0.788121, 0.604679, -0.115015,
		35.545284, 32.234295, 46.703903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644051, 31.451780, 46.248756>,  <36.096966, 31.811020, 46.784412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644051, 31.451780, 46.248756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539570, 31.837891, 46.247261>,  <35.476883, 32.069557, 46.246365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539570, 31.837891, 46.247261>,  <35.644051, 31.451780, 46.248756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539570, 31.837891, 46.247261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007921, -0.001727, -0.999967,
		-0.965253, -0.261220, -0.007195,
		-0.261199, 0.965278, -0.003736,
		35.461212, 32.127476, 46.246140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985100, 31.495058, 45.917152>,  <35.644051, 31.451780, 46.248756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985100, 31.495058, 45.917152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182930, 31.842319, 45.900654>,  <35.301628, 32.050678, 45.890755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.182930, 31.842319, 45.900654>,  <34.985100, 31.495058, 45.917152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182930, 31.842319, 45.900654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068263, -0.008514, -0.997631,
		-0.866450, 0.496220, 0.055052,
		0.494576, 0.868155, -0.041251,
		35.331303, 32.102764, 45.888279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678329, 31.761007, 45.415691>,  <34.985100, 31.495058, 45.917152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678329, 31.761007, 45.415691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004318, 31.988087, 45.462246>,  <35.199909, 32.124332, 45.490181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.004318, 31.988087, 45.462246>,  <34.678329, 31.761007, 45.415691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004318, 31.988087, 45.462246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085291, 0.081154, -0.993046,
		-0.573195, 0.819228, 0.017719,
		0.814968, 0.567697, 0.116390,
		35.248810, 32.158398, 45.497162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563107, 32.328831, 44.949181>,  <34.678329, 31.761007, 45.415691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563107, 32.328831, 44.949181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951153, 32.281624, 45.033985>,  <35.183979, 32.253300, 45.084866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951153, 32.281624, 45.033985>,  <34.563107, 32.328831, 44.949181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951153, 32.281624, 45.033985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239637, 0.328881, -0.913461,
		0.038076, 0.936969, 0.347333,
		0.970116, -0.118014, 0.212010,
		35.242188, 32.246220, 45.097588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882835, 32.910095, 44.813438>,  <34.563107, 32.328831, 44.949181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882835, 32.910095, 44.813438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165894, 32.630268, 44.773758>,  <35.335728, 32.462372, 44.749950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165894, 32.630268, 44.773758>,  <34.882835, 32.910095, 44.813438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165894, 32.630268, 44.773758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189246, 0.322932, -0.927308,
		0.680751, 0.637432, 0.360912,
		0.707646, -0.699568, -0.099205,
		35.378189, 32.420399, 44.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340862, 33.247536, 44.319248>,  <34.882835, 32.910095, 44.813438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340862, 33.247536, 44.319248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447903, 32.862324, 44.306847>,  <35.512127, 32.631195, 44.299404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.447903, 32.862324, 44.306847>,  <35.340862, 33.247536, 44.319248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447903, 32.862324, 44.306847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173824, 0.079902, -0.981530,
		0.947720, 0.257271, 0.188779,
		0.267603, -0.963030, -0.031005,
		35.528183, 32.573414, 44.297546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044983, 33.125454, 43.961685>,  <35.340862, 33.247536, 44.319248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044983, 33.125454, 43.961685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836788, 32.786289, 43.921402>,  <35.711872, 32.582790, 43.897232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.836788, 32.786289, 43.921402>,  <36.044983, 33.125454, 43.961685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836788, 32.786289, 43.921402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096609, 0.058710, -0.993589,
		0.848386, -0.526881, 0.051358,
		-0.520488, -0.847909, -0.100710,
		35.680641, 32.531918, 43.891190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522022, 32.756733, 43.452477>,  <36.044983, 33.125454, 43.961685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522022, 32.756733, 43.452477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155048, 32.597595, 43.450390>,  <35.934864, 32.502113, 43.449139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155048, 32.597595, 43.450390>,  <36.522022, 32.756733, 43.452477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155048, 32.597595, 43.450390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066795, 0.166915, -0.983706,
		0.392237, -0.902139, -0.179708,
		-0.917436, -0.397850, -0.005212,
		35.879818, 32.478241, 43.448826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237175, 32.746590, 43.615643>,  <36.522022, 32.756733, 43.452477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237175, 32.746590, 43.615643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404743, 33.104473, 43.553669>,  <37.505283, 33.319202, 43.516483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404743, 33.104473, 43.553669>,  <37.237175, 32.746590, 43.615643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404743, 33.104473, 43.553669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123345, 0.112977, 0.985912,
		0.899605, -0.432132, -0.063029,
		0.418923, 0.894706, -0.154936,
		37.530418, 33.372887, 43.507187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797672, 32.851257, 44.142216>,  <37.237175, 32.746590, 43.615643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797672, 32.851257, 44.142216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739361, 33.223320, 44.007423>,  <37.704372, 33.446556, 43.926548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.739361, 33.223320, 44.007423>,  <37.797672, 32.851257, 44.142216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739361, 33.223320, 44.007423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210604, 0.361989, 0.908080,
		0.966640, 0.061413, -0.248666,
		-0.145782, 0.930157, -0.336979,
		37.695625, 33.502369, 43.906330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460888, 33.201031, 44.143101>,  <37.797672, 32.851257, 44.142216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460888, 33.201031, 44.143101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168995, 33.474209, 44.156242>,  <37.993858, 33.638115, 44.164127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168995, 33.474209, 44.156242>,  <38.460888, 33.201031, 44.143101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168995, 33.474209, 44.156242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355856, 0.338329, 0.871149,
		0.583832, 0.647394, -0.489919,
		-0.729730, 0.682945, 0.032852,
		37.950077, 33.679092, 44.166100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847649, 33.746994, 44.471004>,  <38.460888, 33.201031, 44.143101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847649, 33.746994, 44.471004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464893, 33.856880, 44.508732>,  <38.235241, 33.922813, 44.531368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.464893, 33.856880, 44.508732>,  <38.847649, 33.746994, 44.471004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464893, 33.856880, 44.508732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220969, 0.477751, 0.850251,
		0.188514, 0.834438, -0.517857,
		-0.956888, 0.274715, 0.094322,
		38.177826, 33.939293, 44.537029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786003, 34.466278, 44.596069>,  <38.847649, 33.746994, 44.471004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786003, 34.466278, 44.596069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450439, 34.309387, 44.747002>,  <38.249100, 34.215252, 44.837563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.450439, 34.309387, 44.747002>,  <38.786003, 34.466278, 44.596069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450439, 34.309387, 44.747002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099778, 0.570702, 0.815073,
		-0.535041, 0.721425, -0.439633,
		-0.838913, -0.392232, 0.377331,
		38.198765, 34.191719, 44.860203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576756, 35.011196, 45.089207>,  <38.786003, 34.466278, 44.596069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576756, 35.011196, 45.089207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380714, 34.676567, 45.187149>,  <38.263092, 34.475792, 45.245914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380714, 34.676567, 45.187149>,  <38.576756, 35.011196, 45.089207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380714, 34.676567, 45.187149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019864, 0.270110, 0.962624,
		-0.871440, 0.476646, -0.115764,
		-0.490100, -0.836570, 0.244853,
		38.233685, 34.425594, 45.260605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121181, 35.233307, 45.601246>,  <38.576756, 35.011196, 45.089207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121181, 35.233307, 45.601246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149296, 34.835457, 45.631664>,  <38.166164, 34.596748, 45.649914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149296, 34.835457, 45.631664>,  <38.121181, 35.233307, 45.601246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149296, 34.835457, 45.631664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010547, 0.076972, 0.996977,
		-0.997471, -0.069269, 0.015900,
		0.070283, -0.994624, 0.076046,
		38.170380, 34.537071, 45.654480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587132, 34.988888, 46.109810>,  <38.121181, 35.233307, 45.601246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587132, 34.988888, 46.109810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888485, 34.726368, 46.093361>,  <38.069298, 34.568855, 46.083492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.888485, 34.726368, 46.093361>,  <37.587132, 34.988888, 46.109810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888485, 34.726368, 46.093361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037762, -0.019250, 0.999102,
		-0.656497, -0.754259, 0.010281,
		0.753383, -0.656295, -0.041119,
		38.114498, 34.529480, 46.081024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593510, 34.565430, 46.755352>,  <37.587132, 34.988888, 46.109810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593510, 34.565430, 46.755352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964542, 34.488468, 46.627247>,  <38.187164, 34.442291, 46.550385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964542, 34.488468, 46.627247>,  <37.593510, 34.565430, 46.755352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964542, 34.488468, 46.627247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307000, -0.096001, 0.946855,
		-0.212926, -0.976608, -0.029980,
		0.927585, -0.192406, -0.320260,
		38.242817, 34.430748, 46.531170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815418, 33.932755, 47.161949>,  <37.593510, 34.565430, 46.755352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815418, 33.932755, 47.161949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141621, 34.125271, 47.033382>,  <38.337341, 34.240780, 46.956242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141621, 34.125271, 47.033382>,  <37.815418, 33.932755, 47.161949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141621, 34.125271, 47.033382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289152, 0.142247, 0.946656,
		0.501339, -0.864941, -0.023164,
		0.815506, 0.481293, -0.321413,
		38.386272, 34.269657, 46.936958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286388, 33.712971, 47.605038>,  <37.815418, 33.932755, 47.161949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286388, 33.712971, 47.605038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420212, 34.058037, 47.453308>,  <38.500504, 34.265076, 47.362270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.420212, 34.058037, 47.453308>,  <38.286388, 33.712971, 47.605038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420212, 34.058037, 47.453308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189969, 0.332517, 0.923766,
		0.923030, -0.381111, -0.052634,
		0.334556, 0.862663, -0.379323,
		38.520580, 34.316837, 47.339512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858753, 33.851486, 47.988808>,  <38.286388, 33.712971, 47.605038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858753, 33.851486, 47.988808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761616, 34.201824, 47.821991>,  <38.703335, 34.412025, 47.721901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.761616, 34.201824, 47.821991>,  <38.858753, 33.851486, 47.988808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761616, 34.201824, 47.821991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108492, 0.451737, 0.885530,
		0.963980, 0.169797, -0.204722,
		-0.242841, 0.875844, -0.417044,
		38.688763, 34.464577, 47.696877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365421, 34.408146, 48.243420>,  <38.858753, 33.851486, 47.988808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365421, 34.408146, 48.243420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067036, 34.629406, 48.095062>,  <38.888004, 34.762161, 48.006046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.067036, 34.629406, 48.095062>,  <39.365421, 34.408146, 48.243420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067036, 34.629406, 48.095062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005181, 0.561713, 0.827316,
		0.665971, 0.615223, -0.421881,
		-0.745960, 0.553154, -0.370897,
		38.843246, 34.795353, 47.983791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498768, 35.066795, 48.406799>,  <39.365421, 34.408146, 48.243420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498768, 35.066795, 48.406799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100121, 35.056019, 48.375729>,  <38.860931, 35.049553, 48.357086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.100121, 35.056019, 48.375729>,  <39.498768, 35.066795, 48.406799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100121, 35.056019, 48.375729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080758, 0.497661, 0.863604,
		0.015393, 0.866953, -0.498152,
		-0.996615, -0.026937, -0.077674,
		38.801136, 35.047939, 48.352425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.823574, 38.967739, 46.963970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979359, 38.625278, 47.099808>,  <33.072830, 38.419804, 47.181313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979359, 38.625278, 47.099808>,  <32.823574, 38.967739, 46.963970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979359, 38.625278, 47.099808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160751, -0.299864, -0.940341,
		0.906906, 0.420817, 0.020841,
		0.389462, -0.856151, 0.339596,
		33.096199, 38.368435, 47.201687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422085, 38.893608, 46.661331>,  <32.823574, 38.967739, 46.963970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422085, 38.893608, 46.661331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331585, 38.517662, 46.763672>,  <33.277287, 38.292095, 46.825077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.331585, 38.517662, 46.763672>,  <33.422085, 38.893608, 46.661331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331585, 38.517662, 46.763672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160509, -0.295047, -0.941905,
		0.960754, -0.172039, 0.217611,
		-0.226250, -0.939867, 0.255853,
		33.263710, 38.235703, 46.840427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019970, 38.431980, 46.612873>,  <33.422085, 38.893608, 46.661331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019970, 38.431980, 46.612873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696934, 38.200115, 46.569447>,  <33.503113, 38.060997, 46.543388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696934, 38.200115, 46.569447>,  <34.019970, 38.431980, 46.612873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696934, 38.200115, 46.569447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417803, -0.432428, -0.799029,
		0.416219, -0.690649, 0.591410,
		-0.807591, -0.579663, -0.108570,
		33.454655, 38.026215, 46.536877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244644, 37.822254, 46.453514>,  <34.019970, 38.431980, 46.612873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244644, 37.822254, 46.453514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861904, 37.766964, 46.351280>,  <33.632259, 37.733791, 46.289940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.861904, 37.766964, 46.351280>,  <34.244644, 37.822254, 46.453514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861904, 37.766964, 46.351280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290562, -0.448358, -0.845310,
		0.002246, -0.883102, 0.469175,
		-0.956854, -0.138223, -0.255589,
		33.574848, 37.725498, 46.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278847, 37.157024, 46.196220>,  <34.244644, 37.822254, 46.453514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278847, 37.157024, 46.196220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933586, 37.287346, 46.041912>,  <33.726429, 37.365540, 45.949326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933586, 37.287346, 46.041912>,  <34.278847, 37.157024, 46.196220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933586, 37.287346, 46.041912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121163, -0.608037, -0.784608,
		-0.490191, -0.723978, 0.485354,
		-0.863153, 0.325801, -0.385774,
		33.674641, 37.385086, 45.926178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052769, 36.543678, 45.810112>,  <34.278847, 37.157024, 46.196220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052769, 36.543678, 45.810112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859406, 36.857803, 45.655396>,  <33.743389, 37.046276, 45.562565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859406, 36.857803, 45.655396>,  <34.052769, 36.543678, 45.810112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859406, 36.857803, 45.655396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157061, -0.356872, -0.920855,
		-0.861192, -0.505896, 0.049172,
		-0.483405, 0.785310, -0.386791,
		33.714382, 37.093395, 45.539356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518803, 36.229954, 45.354908>,  <34.052769, 36.543678, 45.810112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518803, 36.229954, 45.354908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636913, 36.587826, 45.220825>,  <33.707779, 36.802547, 45.140373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636913, 36.587826, 45.220825>,  <33.518803, 36.229954, 45.354908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636913, 36.587826, 45.220825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088937, -0.375070, -0.922720,
		-0.951262, 0.242648, -0.190321,
		0.295280, 0.894676, -0.335209,
		33.725498, 36.856228, 45.120262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377148, 36.003731, 44.691193>,  <33.518803, 36.229954, 45.354908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377148, 36.003731, 44.691193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533245, 36.370354, 44.656269>,  <33.626904, 36.590328, 44.635315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533245, 36.370354, 44.656269>,  <33.377148, 36.003731, 44.691193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533245, 36.370354, 44.656269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125574, -0.146930, -0.981144,
		-0.912107, 0.371925, -0.172435,
		0.390247, 0.916561, -0.087312,
		33.650318, 36.645321, 44.630074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923382, 36.529106, 44.319748>,  <33.377148, 36.003731, 44.691193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923382, 36.529106, 44.319748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303181, 36.640202, 44.261353>,  <33.531059, 36.706860, 44.226315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303181, 36.640202, 44.261353>,  <32.923382, 36.529106, 44.319748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303181, 36.640202, 44.261353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108800, -0.144968, -0.983436,
		-0.294305, 0.949655, -0.107429,
		0.949498, 0.277742, -0.145987,
		33.588032, 36.723522, 44.217556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934711, 36.881512, 43.601562>,  <32.923382, 36.529106, 44.319748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934711, 36.881512, 43.601562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316536, 36.791046, 43.679188>,  <33.545631, 36.736767, 43.725761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.316536, 36.791046, 43.679188>,  <32.934711, 36.881512, 43.601562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316536, 36.791046, 43.679188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230919, 0.149717, -0.961385,
		0.188373, 0.962515, 0.195140,
		0.954564, -0.226161, 0.194060,
		33.602905, 36.723198, 43.737408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428181, 37.428963, 43.261471>,  <32.934711, 36.881512, 43.601562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428181, 37.428963, 43.261471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664722, 37.117470, 43.345261>,  <33.806648, 36.930576, 43.395535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664722, 37.117470, 43.345261>,  <33.428181, 37.428963, 43.261471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664722, 37.117470, 43.345261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394772, 0.053050, -0.917247,
		0.703175, 0.625112, 0.338792,
		0.591354, -0.778731, 0.209473,
		33.842129, 36.883850, 43.408104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073112, 37.629604, 43.037750>,  <33.428181, 37.428963, 43.261471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073112, 37.629604, 43.037750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113636, 37.231892, 43.051262>,  <34.137951, 36.993263, 43.059368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113636, 37.231892, 43.051262>,  <34.073112, 37.629604, 43.037750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113636, 37.231892, 43.051262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370807, 0.006231, -0.928689,
		0.923168, 0.106605, 0.369318,
		0.101304, -0.994282, 0.033778,
		34.144028, 36.933605, 43.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713417, 37.504974, 42.659283>,  <34.073112, 37.629604, 43.037750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713417, 37.504974, 42.659283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512833, 37.159309, 42.676098>,  <34.392483, 36.951912, 42.686188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512833, 37.159309, 42.676098>,  <34.713417, 37.504974, 42.659283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512833, 37.159309, 42.676098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223218, -0.176168, -0.958717,
		0.835890, -0.471374, 0.281238,
		-0.501460, -0.864159, 0.042038,
		34.362396, 36.900063, 42.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068558, 36.912682, 42.242439>,  <34.713417, 37.504974, 42.659283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068558, 36.912682, 42.242439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.687481, 36.794476, 42.270870>,  <34.458836, 36.723553, 42.287930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.687481, 36.794476, 42.270870>,  <35.068558, 36.912682, 42.242439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687481, 36.794476, 42.270870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040748, -0.107574, -0.993362,
		0.301197, -0.949263, 0.090443,
		-0.952691, -0.295512, 0.071081,
		34.401672, 36.705822, 42.292194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649445, 36.416477, 42.243065>,  <35.068558, 36.912682, 42.242439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649445, 36.416477, 42.243065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811310, 36.772652, 42.159767>,  <35.908428, 36.986359, 42.109787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811310, 36.772652, 42.159767>,  <35.649445, 36.416477, 42.243065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811310, 36.772652, 42.159767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150540, 0.289484, 0.945271,
		0.901989, -0.351169, 0.251190,
		0.404665, 0.890438, -0.208246,
		35.932709, 37.039783, 42.097294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201328, 36.442890, 42.687683>,  <35.649445, 36.416477, 42.243065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201328, 36.442890, 42.687683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165985, 36.828194, 42.586227>,  <36.144779, 37.059376, 42.525356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165985, 36.828194, 42.586227>,  <36.201328, 36.442890, 42.687683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165985, 36.828194, 42.586227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136896, 0.263959, 0.954770,
		0.986637, 0.049640, -0.155188,
		-0.088358, 0.963256, -0.253636,
		36.139477, 37.117172, 42.510136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825115, 36.767941, 42.917797>,  <36.201328, 36.442890, 42.687683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825115, 36.767941, 42.917797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570572, 37.071537, 42.862694>,  <36.417847, 37.253696, 42.829632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570572, 37.071537, 42.862694>,  <36.825115, 36.767941, 42.917797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570572, 37.071537, 42.862694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027951, 0.155778, 0.987396,
		0.770885, 0.632191, -0.077917,
		-0.636361, 0.758991, -0.137757,
		36.379665, 37.299236, 42.821365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108212, 37.258965, 43.280186>,  <36.825115, 36.767941, 42.917797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108212, 37.258965, 43.280186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735947, 37.391254, 43.217575>,  <36.512589, 37.470627, 43.180008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.735947, 37.391254, 43.217575>,  <37.108212, 37.258965, 43.280186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735947, 37.391254, 43.217575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021958, 0.376536, 0.926142,
		0.365230, 0.865358, -0.343164,
		-0.930658, 0.330720, -0.156523,
		36.456749, 37.490471, 43.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270142, 38.013748, 43.343731>,  <37.108212, 37.258965, 43.280186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270142, 38.013748, 43.343731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885841, 37.920456, 43.403809>,  <36.655262, 37.864479, 43.439854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.885841, 37.920456, 43.403809>,  <37.270142, 38.013748, 43.343731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885841, 37.920456, 43.403809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074801, 0.303557, 0.949872,
		-0.267130, 0.923827, -0.274198,
		-0.960753, -0.233230, 0.150192,
		36.597614, 37.850487, 43.448868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038708, 38.614941, 43.706913>,  <37.270142, 38.013748, 43.343731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038708, 38.614941, 43.706913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788906, 38.313213, 43.787907>,  <36.639027, 38.132179, 43.836502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788906, 38.313213, 43.787907>,  <37.038708, 38.614941, 43.706913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788906, 38.313213, 43.787907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005037, 0.255366, 0.966831,
		-0.781005, 0.604811, -0.155678,
		-0.624505, -0.754316, 0.202489,
		36.601555, 38.086918, 43.848652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732544, 38.857361, 44.191433>,  <37.038708, 38.614941, 43.706913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732544, 38.857361, 44.191433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644325, 38.471138, 44.246662>,  <36.591396, 38.239403, 44.279800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.644325, 38.471138, 44.246662>,  <36.732544, 38.857361, 44.191433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644325, 38.471138, 44.246662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035212, 0.149344, 0.988158,
		-0.974741, 0.213070, -0.066936,
		-0.220544, -0.965556, 0.138069,
		36.578163, 38.181473, 44.288082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222286, 38.835629, 44.711235>,  <36.732544, 38.857361, 44.191433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222286, 38.835629, 44.711235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367008, 38.462742, 44.714741>,  <36.453842, 38.239010, 44.716846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.367008, 38.462742, 44.714741>,  <36.222286, 38.835629, 44.711235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367008, 38.462742, 44.714741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049063, -0.009649, 0.998749,
		-0.930963, -0.361780, -0.049228,
		0.361802, -0.932214, 0.008767,
		36.475548, 38.183079, 44.717369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771576, 38.446609, 45.051907>,  <36.222286, 38.835629, 44.711235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771576, 38.446609, 45.051907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133041, 38.277992, 45.082069>,  <36.349922, 38.176823, 45.100166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.133041, 38.277992, 45.082069>,  <35.771576, 38.446609, 45.051907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133041, 38.277992, 45.082069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120565, -0.081469, 0.989357,
		-0.410915, -0.903141, -0.124444,
		0.903667, -0.421545, 0.075410,
		36.404140, 38.151527, 45.104691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668125, 37.843491, 45.442280>,  <35.771576, 38.446609, 45.051907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668125, 37.843491, 45.442280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058308, 37.931561, 45.443523>,  <36.292416, 37.984402, 45.444267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.058308, 37.931561, 45.443523>,  <35.668125, 37.843491, 45.442280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058308, 37.931561, 45.443523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038678, -0.185221, 0.981936,
		0.216770, -0.957715, -0.189190,
		0.975456, 0.220172, 0.003107,
		36.350945, 37.997612, 45.444454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959850, 37.441677, 45.785671>,  <35.668125, 37.843491, 45.442280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959850, 37.441677, 45.785671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252663, 37.712467, 45.816200>,  <36.428352, 37.874943, 45.834518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252663, 37.712467, 45.816200>,  <35.959850, 37.441677, 45.785671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252663, 37.712467, 45.816200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049696, -0.058665, 0.997040,
		0.679452, -0.733661, -0.009302,
		0.732035, 0.676979, 0.076320,
		36.472275, 37.915562, 45.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337288, 37.217682, 46.335255>,  <35.959850, 37.441677, 45.785671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337288, 37.217682, 46.335255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415257, 37.608810, 46.304615>,  <36.462040, 37.843487, 46.286232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.415257, 37.608810, 46.304615>,  <36.337288, 37.217682, 46.335255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415257, 37.608810, 46.304615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109739, 0.099353, 0.988982,
		0.974660, -0.184372, 0.126672,
		0.194926, 0.977822, -0.076603,
		36.473736, 37.902157, 46.281635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796516, 37.309582, 46.809399>,  <36.337288, 37.217682, 46.335255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796516, 37.309582, 46.809399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670155, 37.683548, 46.744724>,  <36.594337, 37.907928, 46.705917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.670155, 37.683548, 46.744724>,  <36.796516, 37.309582, 46.809399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670155, 37.683548, 46.744724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016669, 0.175858, 0.984274,
		0.948645, 0.308239, -0.071138,
		-0.315902, 0.934913, -0.161689,
		36.575382, 37.964024, 46.696217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305717, 37.747784, 47.031193>,  <36.796516, 37.309582, 46.809399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305717, 37.747784, 47.031193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.967834, 37.961834, 47.027164>,  <36.765102, 38.090263, 47.024746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.967834, 37.961834, 47.027164>,  <37.305717, 37.747784, 47.031193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967834, 37.961834, 47.027164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042943, 0.086524, 0.995324,
		0.533497, 0.840329, -0.096067,
		-0.844711, 0.535128, -0.010074,
		36.714420, 38.122372, 47.024143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929344, 38.013943, 47.222778>,  <37.305717, 37.747784, 47.031193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929344, 38.013943, 47.222778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277512, 37.944695, 47.407127>,  <38.486412, 37.903145, 47.517738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277512, 37.944695, 47.407127>,  <37.929344, 38.013943, 47.222778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277512, 37.944695, 47.407127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425960, -0.204552, -0.881315,
		0.246844, 0.963425, -0.104304,
		0.870417, -0.173118, 0.460873,
		38.538635, 37.892757, 47.545391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443050, 38.464725, 46.868454>,  <37.929344, 38.013943, 47.222778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443050, 38.464725, 46.868454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635677, 38.162571, 47.046211>,  <38.751255, 37.981277, 47.152866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635677, 38.162571, 47.046211>,  <38.443050, 38.464725, 46.868454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635677, 38.162571, 47.046211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496352, -0.182826, -0.848652,
		0.722308, 0.629255, 0.286896,
		0.481566, -0.755389, 0.444389,
		38.780148, 37.935955, 47.179527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133205, 38.506794, 46.635578>,  <38.443050, 38.464725, 46.868454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133205, 38.506794, 46.635578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133045, 38.133766, 46.779972>,  <39.132950, 37.909950, 46.866608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.133045, 38.133766, 46.779972>,  <39.133205, 38.506794, 46.635578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133045, 38.133766, 46.779972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554780, -0.300549, -0.775815,
		0.831997, 0.199958, 0.517491,
		-0.000401, -0.932570, 0.360989,
		39.132923, 37.853996, 46.888268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833622, 38.272972, 46.578720>,  <39.133205, 38.506794, 46.635578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833622, 38.272972, 46.578720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.592667, 37.955170, 46.609413>,  <39.448093, 37.764488, 46.627831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.592667, 37.955170, 46.609413>,  <39.833622, 38.272972, 46.578720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592667, 37.955170, 46.609413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519517, -0.463235, -0.717994,
		0.605999, -0.392642, 0.691807,
		-0.602384, -0.794509, 0.076736,
		39.411953, 37.716816, 46.632435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243889, 37.633907, 46.708344>,  <39.833622, 38.272972, 46.578720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243889, 37.633907, 46.708344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.894154, 37.541908, 46.537399>,  <39.684311, 37.486710, 46.434834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.894154, 37.541908, 46.537399>,  <40.243889, 37.633907, 46.708344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894154, 37.541908, 46.537399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480888, -0.529300, -0.698991,
		-0.065439, -0.816667, 0.573388,
		-0.874337, -0.229994, -0.427362,
		39.631851, 37.472912, 46.409191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441109, 37.083046, 46.369820>,  <40.243889, 37.633907, 46.708344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441109, 37.083046, 46.369820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084126, 37.141792, 46.199196>,  <39.869938, 37.177040, 46.096821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.084126, 37.141792, 46.199196>,  <40.441109, 37.083046, 46.369820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084126, 37.141792, 46.199196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316948, -0.468745, -0.824513,
		-0.321045, -0.871038, 0.371784,
		-0.892454, 0.146869, -0.426562,
		39.816391, 37.185852, 46.071228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371681, 36.485573, 45.971535>,  <40.441109, 37.083046, 46.369820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371681, 36.485573, 45.971535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109413, 36.753197, 45.831558>,  <39.952053, 36.913773, 45.747570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.109413, 36.753197, 45.831558>,  <40.371681, 36.485573, 45.971535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109413, 36.753197, 45.831558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131048, -0.355597, -0.925406,
		-0.743592, -0.652617, 0.145474,
		-0.655666, 0.669060, -0.349943,
		39.912712, 36.953915, 45.726574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051048, 36.139584, 45.542213>,  <40.371681, 36.485573, 45.971535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051048, 36.139584, 45.542213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977459, 36.514832, 45.424858>,  <39.933304, 36.739983, 45.354443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.977459, 36.514832, 45.424858>,  <40.051048, 36.139584, 45.542213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977459, 36.514832, 45.424858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173402, -0.262828, -0.949133,
		-0.967515, -0.225488, -0.114320,
		-0.183972, 0.938124, -0.293390,
		39.922268, 36.796268, 45.336842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633209, 36.140560, 44.922039>,  <40.051048, 36.139584, 45.542213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633209, 36.140560, 44.922039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848454, 36.477139, 44.941666>,  <39.977600, 36.679085, 44.953442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.848454, 36.477139, 44.941666>,  <39.633209, 36.140560, 44.922039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848454, 36.477139, 44.941666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224704, -0.087106, -0.970526,
		-0.812372, 0.533272, -0.235949,
		0.538107, 0.841447, 0.049066,
		40.009884, 36.729572, 44.956387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352974, 36.652115, 44.433094>,  <39.633209, 36.140560, 44.922039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352974, 36.652115, 44.433094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736523, 36.724861, 44.520256>,  <39.966652, 36.768509, 44.572556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736523, 36.724861, 44.520256>,  <39.352974, 36.652115, 44.433094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736523, 36.724861, 44.520256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213463, 0.043921, -0.975963,
		-0.187066, 0.982342, 0.003293,
		0.958874, 0.181867, 0.217909,
		40.024185, 36.779423, 44.585629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490520, 37.320190, 44.042542>,  <39.352974, 36.652115, 44.433094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490520, 37.320190, 44.042542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831223, 37.123878, 44.115913>,  <40.035645, 37.006092, 44.159935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.831223, 37.123878, 44.115913>,  <39.490520, 37.320190, 44.042542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831223, 37.123878, 44.115913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242801, 0.059501, -0.968250,
		0.464283, 0.869249, 0.169842,
		0.851756, -0.490780, 0.183429,
		40.086750, 36.976643, 44.170940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962463, 37.654942, 43.618835>,  <39.490520, 37.320190, 44.042542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962463, 37.654942, 43.618835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.192421, 37.339848, 43.707355>,  <40.330395, 37.150791, 43.760468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.192421, 37.339848, 43.707355>,  <39.962463, 37.654942, 43.618835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192421, 37.339848, 43.707355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407586, 0.041182, -0.912238,
		0.709487, 0.614637, 0.344744,
		0.574893, -0.787734, 0.221299,
		40.364887, 37.103527, 43.773746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652279, 37.888615, 43.451401>,  <39.962463, 37.654942, 43.618835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652279, 37.888615, 43.451401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.613827, 37.490562, 43.442764>,  <40.590755, 37.251732, 43.437584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.613827, 37.490562, 43.442764>,  <40.652279, 37.888615, 43.451401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613827, 37.490562, 43.442764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348566, -0.013338, -0.937189,
		0.932342, -0.097613, 0.348152,
		-0.096126, -0.995135, -0.021589,
		40.584988, 37.192020, 43.436287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252018, 37.625301, 43.151562>,  <40.652279, 37.888615, 43.451401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252018, 37.625301, 43.151562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025215, 37.301575, 43.090225>,  <40.889133, 37.107338, 43.053425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.025215, 37.301575, 43.090225>,  <41.252018, 37.625301, 43.151562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025215, 37.301575, 43.090225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268442, -0.005561, -0.963280,
		0.778742, -0.587351, 0.220407,
		-0.567009, -0.809313, -0.153339,
		40.855114, 37.058781, 43.044224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.985098, 27.834600, 32.350338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.623657, 27.756027, 32.198067>,  <27.406794, 27.708883, 32.106705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.623657, 27.756027, 32.198067>,  <27.985098, 27.834600, 32.350338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623657, 27.756027, 32.198067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121938, 0.969848, -0.211014,
		0.410652, -0.144253, -0.900309,
		-0.903602, -0.196435, -0.380680,
		27.352577, 27.697098, 32.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981970, 28.197464, 31.813759>,  <27.985098, 27.834600, 32.350338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981970, 28.197464, 31.813759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602974, 28.123854, 31.918369>,  <27.375576, 28.079687, 31.981136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.602974, 28.123854, 31.918369>,  <27.981970, 28.197464, 31.813759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602974, 28.123854, 31.918369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216233, 0.971208, -0.099995,
		-0.235597, -0.151295, -0.960002,
		-0.947490, -0.184026, 0.261528,
		27.318727, 28.068645, 31.996828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548391, 28.734341, 31.473293>,  <27.981970, 28.197464, 31.813759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548391, 28.734341, 31.473293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336479, 28.609827, 31.788872>,  <27.209332, 28.535120, 31.978220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.336479, 28.609827, 31.788872>,  <27.548391, 28.734341, 31.473293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336479, 28.609827, 31.788872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243419, 0.946883, 0.210141,
		-0.812454, -0.080717, -0.577411,
		-0.529779, -0.311283, 0.788947,
		27.177546, 28.516441, 32.025555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213295, 29.354452, 31.485947>,  <27.548391, 28.734341, 31.473293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213295, 29.354452, 31.485947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118568, 29.166119, 31.825884>,  <27.061733, 29.053118, 32.029846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.118568, 29.166119, 31.825884>,  <27.213295, 29.354452, 31.485947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.118568, 29.166119, 31.825884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305175, 0.866501, 0.395024,
		-0.922381, -0.165804, -0.348887,
		-0.236815, -0.470834, 0.849844,
		27.047523, 29.024868, 32.080837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.517609, 29.365475, 31.654280>,  <27.213295, 29.354452, 31.485947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.517609, 29.365475, 31.654280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697847, 29.325863, 32.009167>,  <26.805990, 29.302095, 32.222099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697847, 29.325863, 32.009167>,  <26.517609, 29.365475, 31.654280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697847, 29.325863, 32.009167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217711, 0.951633, 0.216788,
		-0.865773, -0.290841, 0.407245,
		0.450598, -0.099027, 0.887217,
		26.833027, 29.296154, 32.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130356, 29.848167, 32.137035>,  <26.517609, 29.365475, 31.654280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130356, 29.848167, 32.137035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450815, 29.763916, 32.361107>,  <26.643091, 29.713366, 32.495548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.450815, 29.763916, 32.361107>,  <26.130356, 29.848167, 32.137035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450815, 29.763916, 32.361107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163684, 0.823212, 0.543627,
		-0.575646, -0.527218, 0.625038,
		0.801149, -0.210629, 0.560175,
		26.691160, 29.700727, 32.529160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895437, 30.012215, 32.814911>,  <26.130356, 29.848167, 32.137035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895437, 30.012215, 32.814911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294504, 30.039520, 32.814873>,  <26.533945, 30.055904, 32.814850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294504, 30.039520, 32.814873>,  <25.895437, 30.012215, 32.814911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294504, 30.039520, 32.814873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055895, 0.817647, 0.573001,
		0.039191, -0.571659, 0.819555,
		0.997667, 0.068266, -0.000091,
		26.593803, 30.059999, 32.814846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097532, 30.161783, 33.539074>,  <25.895437, 30.012215, 32.814911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097532, 30.161783, 33.539074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400356, 30.288868, 33.310715>,  <26.582050, 30.365120, 33.173698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.400356, 30.288868, 33.310715>,  <26.097532, 30.161783, 33.539074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400356, 30.288868, 33.310715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075730, 0.910582, 0.406331,
		0.648942, -0.264383, 0.713426,
		0.757060, 0.317713, -0.570893,
		26.627474, 30.384182, 33.139446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659246, 30.555721, 34.102364>,  <26.097532, 30.161783, 33.539074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659246, 30.555721, 34.102364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689310, 30.693197, 33.727936>,  <26.707348, 30.775682, 33.503281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.689310, 30.693197, 33.727936>,  <26.659246, 30.555721, 34.102364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689310, 30.693197, 33.727936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043604, 0.936695, 0.347420,
		0.996218, -0.066927, 0.055413,
		0.075157, 0.343690, -0.936071,
		26.711857, 30.796305, 33.447113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160324, 30.988743, 34.216228>,  <26.659246, 30.555721, 34.102364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160324, 30.988743, 34.216228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985506, 31.114168, 33.879025>,  <26.880615, 31.189425, 33.676701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.985506, 31.114168, 33.879025>,  <27.160324, 30.988743, 34.216228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985506, 31.114168, 33.879025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011714, 0.935200, 0.353927,
		0.899364, 0.164557, -0.405050,
		-0.437044, 0.313564, -0.843012,
		26.854393, 31.208237, 33.626122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441097, 31.541157, 34.072346>,  <27.160324, 30.988743, 34.216228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441097, 31.541157, 34.072346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131750, 31.599556, 33.825581>,  <26.946142, 31.634596, 33.677521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.131750, 31.599556, 33.825581>,  <27.441097, 31.541157, 34.072346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131750, 31.599556, 33.825581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033433, 0.981158, 0.190290,
		0.633074, 0.126539, -0.763679,
		-0.773369, 0.146000, -0.616915,
		26.899740, 31.643356, 33.640507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600931, 32.117577, 33.731079>,  <27.441097, 31.541157, 34.072346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600931, 32.117577, 33.731079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206739, 32.112274, 33.663368>,  <26.970224, 32.109093, 33.622742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.206739, 32.112274, 33.663368>,  <27.600931, 32.117577, 33.731079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206739, 32.112274, 33.663368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010807, 0.999823, -0.015405,
		0.169449, -0.013352, -0.985449,
		-0.985480, -0.013260, -0.169275,
		26.911095, 32.108295, 33.612587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512531, 32.546883, 33.194305>,  <27.600931, 32.117577, 33.731079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512531, 32.546883, 33.194305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160675, 32.529636, 33.383778>,  <26.949562, 32.519291, 33.497463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160675, 32.529636, 33.383778>,  <27.512531, 32.546883, 33.194305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160675, 32.529636, 33.383778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017233, 0.992341, 0.122318,
		-0.475331, 0.115758, -0.872159,
		-0.879639, -0.043111, 0.473685,
		26.896784, 32.516705, 33.525883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215281, 33.213921, 33.015072>,  <27.512531, 32.546883, 33.194305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215281, 33.213921, 33.015072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992308, 33.100746, 33.327282>,  <26.858524, 33.032841, 33.514606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.992308, 33.100746, 33.327282>,  <27.215281, 33.213921, 33.015072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.992308, 33.100746, 33.327282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054331, 0.950556, 0.305765,
		-0.828444, 0.128036, -0.545241,
		-0.557431, -0.282933, 0.780525,
		26.825079, 33.015865, 33.561440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737913, 33.771107, 33.088497>,  <27.215281, 33.213921, 33.015072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737913, 33.771107, 33.088497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.727528, 33.570366, 33.434322>,  <26.721296, 33.449921, 33.641815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.727528, 33.570366, 33.434322>,  <26.737913, 33.771107, 33.088497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727528, 33.570366, 33.434322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096554, 0.862068, 0.497510,
		-0.994989, -0.070560, -0.070837,
		-0.025962, -0.501856, 0.864561,
		26.719738, 33.419807, 33.693691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200634, 34.223892, 33.479351>,  <26.737913, 33.771107, 33.088497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200634, 34.223892, 33.479351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443388, 34.007736, 33.712475>,  <26.589041, 33.878040, 33.852348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.443388, 34.007736, 33.712475>,  <26.200634, 34.223892, 33.479351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443388, 34.007736, 33.712475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102003, 0.780179, 0.617184,
		-0.788217, -0.315112, 0.528601,
		0.606886, -0.540394, 0.582808,
		26.625454, 33.845619, 33.887318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876448, 34.274120, 34.075294>,  <26.200634, 34.223892, 33.479351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876448, 34.274120, 34.075294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262712, 34.194275, 34.141804>,  <26.494473, 34.146366, 34.181709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.262712, 34.194275, 34.141804>,  <25.876448, 34.274120, 34.075294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262712, 34.194275, 34.141804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047648, 0.493080, 0.868678,
		-0.255389, -0.846774, 0.466639,
		0.965664, -0.199616, 0.166274,
		26.552412, 34.134392, 34.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947567, 34.071861, 34.758488>,  <25.876448, 34.274120, 34.075294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947567, 34.071861, 34.758488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338213, 34.127838, 34.693207>,  <26.572601, 34.161427, 34.654037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338213, 34.127838, 34.693207>,  <25.947567, 34.071861, 34.758488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338213, 34.127838, 34.693207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075254, 0.488564, 0.869277,
		0.201385, -0.861232, 0.466609,
		0.976617, 0.139945, -0.163201,
		26.631199, 34.169823, 34.644245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382576, 33.858997, 35.373558>,  <25.947567, 34.071861, 34.758488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382576, 33.858997, 35.373558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585701, 34.153645, 35.194893>,  <26.707577, 34.330433, 35.087692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585701, 34.153645, 35.194893>,  <26.382576, 33.858997, 35.373558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585701, 34.153645, 35.194893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078346, 0.476858, 0.875482,
		0.857896, -0.479577, 0.184444,
		0.507815, 0.736622, -0.446667,
		26.738045, 34.374630, 35.060894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910355, 33.986572, 35.842110>,  <26.382576, 33.858997, 35.373558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910355, 33.986572, 35.842110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913256, 34.301163, 35.595078>,  <26.914995, 34.489918, 35.446857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.913256, 34.301163, 35.595078>,  <26.910355, 33.986572, 35.842110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913256, 34.301163, 35.595078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169559, 0.607685, 0.775866,
		0.985493, -0.110342, -0.128948,
		0.007251, 0.786475, -0.617579,
		26.915432, 34.537106, 35.409805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543306, 33.571220, 35.529171>,  <26.910355, 33.986572, 35.842110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543306, 33.571220, 35.529171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842440, 33.514614, 35.788624>,  <28.021919, 33.480652, 35.944294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842440, 33.514614, 35.788624>,  <27.543306, 33.571220, 35.529171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842440, 33.514614, 35.788624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535257, -0.449457, -0.715185,
		0.392740, 0.882022, -0.260372,
		0.747834, -0.141516, 0.648627,
		28.066790, 33.472160, 35.983212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241472, 33.756577, 35.230476>,  <27.543306, 33.571220, 35.529171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241472, 33.756577, 35.230476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300501, 33.478840, 35.512218>,  <28.335918, 33.312199, 35.681263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.300501, 33.478840, 35.512218>,  <28.241472, 33.756577, 35.230476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300501, 33.478840, 35.512218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595427, -0.506274, -0.623822,
		0.789741, 0.511449, 0.338717,
		0.147570, -0.694339, 0.704356,
		28.344772, 33.270538, 35.723526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964529, 33.523975, 35.132111>,  <28.241472, 33.756577, 35.230476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964529, 33.523975, 35.132111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821480, 33.226479, 35.358013>,  <28.735649, 33.047981, 35.493553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.821480, 33.226479, 35.358013>,  <28.964529, 33.523975, 35.132111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821480, 33.226479, 35.358013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544489, -0.657384, -0.520939,
		0.758707, 0.121202, 0.640058,
		-0.357625, -0.743745, 0.564755,
		28.714191, 33.003357, 35.527439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556459, 33.094524, 35.321846>,  <28.964529, 33.523975, 35.132111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556459, 33.094524, 35.321846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226648, 32.874226, 35.373730>,  <29.028761, 32.742046, 35.404861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.226648, 32.874226, 35.373730>,  <29.556459, 33.094524, 35.321846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226648, 32.874226, 35.373730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465961, -0.790977, -0.396531,
		0.320986, -0.266512, 0.908812,
		-0.824530, -0.550751, 0.129708,
		28.979290, 32.709000, 35.412643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779158, 32.531242, 35.706554>,  <29.556459, 33.094524, 35.321846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779158, 32.531242, 35.706554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444683, 32.384613, 35.543381>,  <29.243998, 32.296635, 35.445477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444683, 32.384613, 35.543381>,  <29.779158, 32.531242, 35.706554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444683, 32.384613, 35.543381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543451, -0.653952, -0.526315,
		-0.073836, -0.661792, 0.746043,
		-0.836187, -0.366577, -0.407937,
		29.193827, 32.274639, 35.421001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722666, 31.755465, 35.938568>,  <29.779158, 32.531242, 35.706554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722666, 31.755465, 35.938568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.535507, 31.835474, 35.594227>,  <29.423212, 31.883480, 35.387623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.535507, 31.835474, 35.594227>,  <29.722666, 31.755465, 35.938568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535507, 31.835474, 35.594227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526524, -0.719231, -0.453298,
		-0.709822, -0.665355, 0.231205,
		-0.467894, 0.200026, -0.860851,
		29.395138, 31.895481, 35.335972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576662, 31.085535, 35.660912>,  <29.722666, 31.755465, 35.938568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576662, 31.085535, 35.660912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511625, 31.324965, 35.347153>,  <29.472603, 31.468622, 35.158897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.511625, 31.324965, 35.347153>,  <29.576662, 31.085535, 35.660912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511625, 31.324965, 35.347153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434312, -0.670403, -0.601609,
		-0.885967, -0.438488, -0.150965,
		-0.162591, 0.598572, -0.784395,
		29.462849, 31.504536, 35.111835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123884, 30.661814, 35.239464>,  <29.576662, 31.085535, 35.660912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123884, 30.661814, 35.239464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299704, 30.932648, 35.003380>,  <29.405195, 31.095148, 34.861729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.299704, 30.932648, 35.003380>,  <29.123884, 30.661814, 35.239464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299704, 30.932648, 35.003380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483043, -0.732173, -0.480200,
		-0.757275, -0.074027, -0.648887,
		0.439550, 0.677084, -0.590215,
		29.431568, 31.135773, 34.826317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896870, 30.547964, 34.531155>,  <29.123884, 30.661814, 35.239464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896870, 30.547964, 34.531155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236553, 30.739641, 34.442417>,  <29.440363, 30.854649, 34.389175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.236553, 30.739641, 34.442417>,  <28.896870, 30.547964, 34.531155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236553, 30.739641, 34.442417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228663, -0.712391, -0.663485,
		-0.475979, 0.512710, -0.714544,
		0.849210, 0.479195, -0.221845,
		29.491316, 30.883400, 34.375862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974541, 30.491894, 33.774139>,  <28.896870, 30.547964, 34.531155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974541, 30.491894, 33.774139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330374, 30.569754, 33.939430>,  <29.543873, 30.616470, 34.038605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330374, 30.569754, 33.939430>,  <28.974541, 30.491894, 33.774139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330374, 30.569754, 33.939430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433178, -0.646511, -0.627997,
		0.144913, 0.737655, -0.659443,
		0.889582, 0.194651, 0.413224,
		29.597248, 30.628149, 34.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372875, 30.756060, 33.225407>,  <28.974541, 30.491894, 33.774139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372875, 30.756060, 33.225407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665552, 30.664511, 33.482231>,  <29.841158, 30.609581, 33.636326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.665552, 30.664511, 33.482231>,  <29.372875, 30.756060, 33.225407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.665552, 30.664511, 33.482231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391982, -0.629334, -0.671036,
		0.557655, 0.742668, -0.370763,
		0.731691, -0.228874, 0.642063,
		29.885059, 30.595848, 33.674850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942442, 30.698593, 32.811859>,  <29.372875, 30.756060, 33.225407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942442, 30.698593, 32.811859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.019360, 30.492088, 33.145683>,  <30.065510, 30.368185, 33.345978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.019360, 30.492088, 33.145683>,  <29.942442, 30.698593, 32.811859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019360, 30.492088, 33.145683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468373, -0.699037, -0.540346,
		0.862351, 0.494793, 0.107382,
		0.192296, -0.516262, 0.834563,
		30.077049, 30.337210, 33.396053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667381, 30.521479, 32.823811>,  <29.942442, 30.698593, 32.811859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667381, 30.521479, 32.823811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484564, 30.246975, 33.050144>,  <30.374874, 30.082273, 33.185944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.484564, 30.246975, 33.050144>,  <30.667381, 30.521479, 32.823811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484564, 30.246975, 33.050144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379895, -0.725830, -0.573455,
		0.804234, -0.047137, 0.592441,
		-0.457042, -0.686257, 0.565830,
		30.347450, 30.041098, 33.219894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.150314, 30.022402, 32.962032>,  <30.667381, 30.521479, 32.823811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.150314, 30.022402, 32.962032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799974, 29.835489, 33.010254>,  <30.589769, 29.723343, 33.039188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.799974, 29.835489, 33.010254>,  <31.150314, 30.022402, 32.962032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799974, 29.835489, 33.010254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308950, -0.734854, -0.603771,
		0.370722, -0.491568, 0.787989,
		-0.875851, -0.467281, 0.120556,
		30.537220, 29.695305, 33.046421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274677, 29.273115, 33.086643>,  <31.150314, 30.022402, 32.962032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274677, 29.273115, 33.086643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893585, 29.277048, 32.965179>,  <30.664930, 29.279408, 32.892303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893585, 29.277048, 32.965179>,  <31.274677, 29.273115, 33.086643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893585, 29.277048, 32.965179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167718, -0.816356, -0.552660,
		-0.253326, -0.577465, 0.776119,
		-0.952731, 0.009834, -0.303655,
		30.607765, 29.279999, 32.874084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113953, 28.602488, 33.078693>,  <31.274677, 29.273115, 33.086643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113953, 28.602488, 33.078693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824612, 28.757343, 32.849998>,  <30.651007, 28.850256, 32.712780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.824612, 28.757343, 32.849998>,  <31.113953, 28.602488, 33.078693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824612, 28.757343, 32.849998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076976, -0.777655, -0.623961,
		-0.686174, -0.495354, 0.532719,
		-0.723353, 0.387139, -0.571737,
		30.607605, 28.873486, 32.678478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762707, 27.976421, 32.900742>,  <31.113953, 28.602488, 33.078693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762707, 27.976421, 32.900742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655279, 28.262980, 32.643169>,  <30.590822, 28.434914, 32.488625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.655279, 28.262980, 32.643169>,  <30.762707, 27.976421, 32.900742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655279, 28.262980, 32.643169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167587, -0.693049, -0.701140,
		-0.948570, -0.080391, 0.306190,
		-0.268570, 0.716394, -0.643933,
		30.574707, 28.477898, 32.449989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153856, 27.638935, 32.621769>,  <30.762707, 27.976421, 32.900742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153856, 27.638935, 32.621769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300869, 27.923473, 32.382133>,  <30.389076, 28.094196, 32.238354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.300869, 27.923473, 32.382133>,  <30.153856, 27.638935, 32.621769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300869, 27.923473, 32.382133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151595, -0.589735, -0.793241,
		-0.917573, 0.382359, -0.108908,
		0.367530, 0.711347, -0.599089,
		30.411127, 28.136877, 32.202408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648777, 27.610540, 32.124485>,  <30.153856, 27.638935, 32.621769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648777, 27.610540, 32.124485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960253, 27.794294, 31.953558>,  <30.147139, 27.904547, 31.851002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.960253, 27.794294, 31.953558>,  <29.648777, 27.610540, 32.124485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960253, 27.794294, 31.953558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186169, -0.481234, -0.856595,
		-0.599150, 0.746577, -0.289210,
		0.778691, 0.459387, -0.427321,
		30.193861, 27.932110, 31.825361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424751, 27.860609, 31.328920>,  <29.648777, 27.610540, 32.124485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424751, 27.860609, 31.328920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822315, 27.833174, 31.363419>,  <30.060854, 27.816711, 31.384117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.822315, 27.833174, 31.363419>,  <29.424751, 27.860609, 31.328920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822315, 27.833174, 31.363419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030527, -0.580637, -0.813590,
		0.105881, 0.811268, -0.575007,
		0.993910, -0.068590, 0.086244,
		30.120489, 27.812597, 31.389292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608276, 28.015200, 30.707279>,  <29.424751, 27.860609, 31.328920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608276, 28.015200, 30.707279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933399, 27.850739, 30.872351>,  <30.128473, 27.752062, 30.971394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.933399, 27.850739, 30.872351>,  <29.608276, 28.015200, 30.707279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933399, 27.850739, 30.872351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044261, -0.662779, -0.747506,
		0.580851, 0.625842, -0.520513,
		0.812806, -0.411151, 0.412677,
		30.177240, 27.727394, 30.996153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135771, 28.028389, 30.198675>,  <29.608276, 28.015200, 30.707279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135771, 28.028389, 30.198675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194010, 27.697872, 30.416313>,  <30.228954, 27.499561, 30.546896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194010, 27.697872, 30.416313>,  <30.135771, 28.028389, 30.198675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194010, 27.697872, 30.416313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048751, -0.555280, -0.830234,
		0.988142, 0.094355, -0.121131,
		0.145598, -0.826294, 0.544095,
		30.237690, 27.449984, 30.579542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.358925, 35.960991, 48.420570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041809, 35.721142, 48.464275>,  <38.851540, 35.577232, 48.490498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041809, 35.721142, 48.464275>,  <39.358925, 35.960991, 48.420570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041809, 35.721142, 48.464275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188527, 0.411725, 0.891594,
		-0.579604, 0.686248, -0.439457,
		-0.792790, -0.599621, 0.109261,
		38.803970, 35.541256, 48.497055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888153, 36.338596, 48.717552>,  <39.358925, 35.960991, 48.420570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888153, 36.338596, 48.717552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741592, 35.986176, 48.837219>,  <38.653656, 35.774723, 48.909019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741592, 35.986176, 48.837219>,  <38.888153, 36.338596, 48.717552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741592, 35.986176, 48.837219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251690, 0.403393, 0.879731,
		-0.895770, 0.247034, -0.369554,
		-0.366400, -0.881049, 0.299172,
		38.631672, 35.721859, 48.926971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312695, 36.518127, 49.256470>,  <38.888153, 36.338596, 48.717552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312695, 36.518127, 49.256470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395374, 36.127312, 49.277176>,  <38.444981, 35.892822, 49.289600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.395374, 36.127312, 49.277176>,  <38.312695, 36.518127, 49.256470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395374, 36.127312, 49.277176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090811, 0.033517, 0.995304,
		-0.974181, -0.210427, -0.081798,
		0.206697, -0.977035, 0.051761,
		38.457382, 35.834202, 49.292706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838684, 36.273407, 49.674873>,  <38.312695, 36.518127, 49.256470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838684, 36.273407, 49.674873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158356, 36.033916, 49.696167>,  <38.350159, 35.890221, 49.708942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158356, 36.033916, 49.696167>,  <37.838684, 36.273407, 49.674873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158356, 36.033916, 49.696167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035320, 0.041628, 0.998509,
		-0.600053, -0.799869, 0.012121,
		0.799180, -0.598729, 0.053230,
		38.398109, 35.854298, 49.712135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568855, 35.734043, 50.090878>,  <37.838684, 36.273407, 49.674873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568855, 35.734043, 50.090878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968338, 35.750584, 50.102745>,  <38.208027, 35.760509, 50.109867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968338, 35.750584, 50.102745>,  <37.568855, 35.734043, 50.090878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968338, 35.750584, 50.102745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030310, 0.014863, 0.999430,
		0.040900, -0.999034, 0.016098,
		0.998704, 0.041364, 0.029673,
		38.267948, 35.762989, 50.111649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783520, 35.239014, 50.503452>,  <37.568855, 35.734043, 50.090878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783520, 35.239014, 50.503452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103596, 35.478363, 50.519669>,  <38.295643, 35.621971, 50.529400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103596, 35.478363, 50.519669>,  <37.783520, 35.239014, 50.503452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103596, 35.478363, 50.519669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064045, 0.018046, 0.997784,
		0.596312, -0.801017, 0.052763,
		0.800194, 0.598369, 0.040540,
		38.343655, 35.657875, 50.531830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094666, 34.976078, 51.008354>,  <37.783520, 35.239014, 50.503452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094666, 34.976078, 51.008354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272736, 35.333572, 50.986202>,  <38.379578, 35.548069, 50.972912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.272736, 35.333572, 50.986202>,  <38.094666, 34.976078, 51.008354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272736, 35.333572, 50.986202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077291, 0.023259, 0.996737,
		0.892103, -0.447999, -0.058724,
		0.445171, 0.893731, -0.055375,
		38.406288, 35.601692, 50.969589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776081, 34.913094, 51.331161>,  <38.094666, 34.976078, 51.008354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776081, 34.913094, 51.331161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668148, 35.297497, 51.355312>,  <38.603386, 35.528141, 51.369801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.668148, 35.297497, 51.355312>,  <38.776081, 34.913094, 51.331161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668148, 35.297497, 51.355312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239851, 0.006357, 0.970789,
		0.932556, 0.276433, -0.232215,
		-0.269835, 0.961012, 0.060374,
		38.587196, 35.585800, 51.373425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261833, 35.117428, 51.840485>,  <38.776081, 34.913094, 51.331161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261833, 35.117428, 51.840485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995201, 35.414070, 51.810303>,  <38.835224, 35.592056, 51.792194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.995201, 35.414070, 51.810303>,  <39.261833, 35.117428, 51.840485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995201, 35.414070, 51.810303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081881, 0.173449, 0.981433,
		0.740924, 0.648024, -0.176341,
		-0.666578, 0.741607, -0.075451,
		38.795227, 35.636551, 51.787666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541271, 35.624252, 52.256237>,  <39.261833, 35.117428, 51.840485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541271, 35.624252, 52.256237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148331, 35.694527, 52.230583>,  <38.912567, 35.736691, 52.215191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.148331, 35.694527, 52.230583>,  <39.541271, 35.624252, 52.256237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148331, 35.694527, 52.230583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006572, 0.310252, 0.950632,
		0.186913, 0.934279, -0.303623,
		-0.982355, 0.175689, -0.064130,
		38.853622, 35.747234, 52.211346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446072, 36.109943, 52.806309>,  <39.541271, 35.624252, 52.256237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446072, 36.109943, 52.806309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083290, 35.954960, 52.740200>,  <38.865623, 35.861969, 52.700535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.083290, 35.954960, 52.740200>,  <39.446072, 36.109943, 52.806309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083290, 35.954960, 52.740200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175603, -0.008852, 0.984421,
		-0.382890, 0.921843, -0.060011,
		-0.906950, -0.387463, -0.165268,
		38.811207, 35.838722, 52.690620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930824, 36.588848, 53.015282>,  <39.446072, 36.109943, 52.806309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930824, 36.588848, 53.015282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747871, 36.233204, 53.021965>,  <38.638100, 36.019817, 53.025974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747871, 36.233204, 53.021965>,  <38.930824, 36.588848, 53.015282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747871, 36.233204, 53.021965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042036, 0.040381, 0.998300,
		-0.888276, 0.455903, -0.055844,
		-0.457383, -0.889113, 0.016705,
		38.610657, 35.966469, 53.026978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339928, 36.291756, 53.273373>,  <38.930824, 36.588848, 53.015282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339928, 36.291756, 53.273373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327538, 36.322910, 52.874779>,  <38.320103, 36.341602, 52.635624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.327538, 36.322910, 52.874779>,  <38.339928, 36.291756, 53.273373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327538, 36.322910, 52.874779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836280, 0.544005, 0.068520,
		0.547427, 0.835459, 0.048286,
		-0.030978, 0.077890, -0.996481,
		38.318245, 36.346279, 52.575836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385315, 37.028645, 53.116287>,  <38.339928, 36.291756, 53.273373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385315, 37.028645, 53.116287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188496, 36.791969, 52.860855>,  <38.070404, 36.649963, 52.707596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.188496, 36.791969, 52.860855>,  <38.385315, 37.028645, 53.116287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188496, 36.791969, 52.860855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863710, 0.423679, 0.272949,
		0.109052, 0.685854, -0.719522,
		-0.492050, -0.591692, -0.638582,
		38.040882, 36.614460, 52.669281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408020, 37.701633, 53.118820>,  <38.385315, 37.028645, 53.116287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408020, 37.701633, 53.118820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306946, 38.088608, 53.124641>,  <38.246300, 38.320793, 53.128136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306946, 38.088608, 53.124641>,  <38.408020, 37.701633, 53.118820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306946, 38.088608, 53.124641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019422, 0.009969, -0.999762,
		-0.967353, -0.252909, 0.016271,
		-0.252686, 0.967439, 0.014556,
		38.231140, 38.378838, 53.129009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809624, 37.786373, 52.684841>,  <38.408020, 37.701633, 53.118820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809624, 37.786373, 52.684841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980701, 38.147003, 52.710888>,  <38.083347, 38.363380, 52.726517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.980701, 38.147003, 52.710888>,  <37.809624, 37.786373, 52.684841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980701, 38.147003, 52.710888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138439, 0.136518, -0.980917,
		-0.893260, 0.410516, 0.183201,
		0.427693, 0.901576, 0.065114,
		38.109009, 38.417477, 52.730423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544579, 38.148548, 52.172413>,  <37.809624, 37.786373, 52.684841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544579, 38.148548, 52.172413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879929, 38.358891, 52.229832>,  <38.081139, 38.485096, 52.264282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879929, 38.358891, 52.229832>,  <37.544579, 38.148548, 52.172413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879929, 38.358891, 52.229832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091433, 0.123948, -0.988067,
		-0.537372, 0.841495, 0.055834,
		0.838374, 0.525855, 0.143547,
		38.131439, 38.516647, 52.272896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414841, 38.802582, 51.815754>,  <37.544579, 38.148548, 52.172413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414841, 38.802582, 51.815754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812908, 38.799824, 51.854919>,  <38.051750, 38.798168, 51.878418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.812908, 38.799824, 51.854919>,  <37.414841, 38.802582, 51.815754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812908, 38.799824, 51.854919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096555, 0.248138, -0.963901,
		-0.017647, 0.968700, 0.247605,
		0.995171, -0.006898, 0.097912,
		38.111458, 38.797756, 51.884293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599796, 39.187920, 51.216335>,  <37.414841, 38.802582, 51.815754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599796, 39.187920, 51.216335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948933, 39.019051, 51.314247>,  <38.158413, 38.917728, 51.372993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948933, 39.019051, 51.314247>,  <37.599796, 39.187920, 51.216335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948933, 39.019051, 51.314247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282490, 0.028091, -0.958859,
		0.397927, 0.906081, 0.143778,
		0.872842, -0.422172, 0.244780,
		38.210785, 38.892399, 51.387680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077641, 39.625877, 50.941139>,  <37.599796, 39.187920, 51.216335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077641, 39.625877, 50.941139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266094, 39.275394, 50.981709>,  <38.379166, 39.065105, 51.006050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.266094, 39.275394, 50.981709>,  <38.077641, 39.625877, 50.941139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266094, 39.275394, 50.981709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259373, 0.027717, -0.965379,
		0.843064, 0.481132, 0.240324,
		0.471136, -0.876210, 0.101426,
		38.407436, 39.012531, 51.012135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758270, 39.658524, 50.612534>,  <38.077641, 39.625877, 50.941139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758270, 39.658524, 50.612534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664127, 39.270664, 50.639023>,  <38.607643, 39.037949, 50.654919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664127, 39.270664, 50.639023>,  <38.758270, 39.658524, 50.612534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664127, 39.270664, 50.639023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253876, -0.127112, -0.958848,
		0.938165, -0.208859, 0.276088,
		-0.235358, -0.969650, 0.066227,
		38.593521, 38.979771, 50.658890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298840, 39.375683, 50.225464>,  <38.758270, 39.658524, 50.612534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298840, 39.375683, 50.225464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982265, 39.132378, 50.249603>,  <38.792320, 38.986393, 50.264088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.982265, 39.132378, 50.249603>,  <39.298840, 39.375683, 50.225464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982265, 39.132378, 50.249603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088682, -0.211953, -0.973248,
		0.604783, -0.764913, 0.221689,
		-0.791438, -0.608263, 0.060352,
		38.744835, 38.949898, 50.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540844, 38.783848, 49.883438>,  <39.298840, 39.375683, 50.225464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540844, 38.783848, 49.883438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.146172, 38.720348, 49.869217>,  <38.909370, 38.682251, 49.860683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.146172, 38.720348, 49.869217>,  <39.540844, 38.783848, 49.883438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146172, 38.720348, 49.869217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102658, -0.438039, -0.893075,
		0.126197, -0.884829, 0.448500,
		-0.986679, -0.158746, -0.035555,
		38.850166, 38.672726, 49.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441559, 38.088184, 49.704674>,  <39.540844, 38.783848, 49.883438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441559, 38.088184, 49.704674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092754, 38.264786, 49.620129>,  <38.883472, 38.370747, 49.569401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.092754, 38.264786, 49.620129>,  <39.441559, 38.088184, 49.704674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092754, 38.264786, 49.620129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057389, -0.521034, -0.851604,
		-0.486113, -0.730477, 0.479684,
		-0.872009, 0.441504, -0.211360,
		38.831150, 38.397236, 49.556721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089504, 37.496735, 49.439877>,  <39.441559, 38.088184, 49.704674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089504, 37.496735, 49.439877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873352, 37.809200, 49.314800>,  <38.743660, 37.996681, 49.239754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.873352, 37.809200, 49.314800>,  <39.089504, 37.496735, 49.439877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873352, 37.809200, 49.314800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005484, -0.374885, -0.927055,
		-0.841406, -0.499244, 0.206862,
		-0.540376, 0.781164, -0.312693,
		38.711239, 38.043549, 49.220993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592010, 37.282673, 49.058456>,  <39.089504, 37.496735, 49.439877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592010, 37.282673, 49.058456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591476, 37.665966, 48.944061>,  <38.591156, 37.895943, 48.875423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.591476, 37.665966, 48.944061>,  <38.592010, 37.282673, 49.058456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591476, 37.665966, 48.944061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052486, -0.285660, -0.956893,
		-0.998621, 0.013737, 0.050674,
		-0.001331, 0.958233, -0.285987,
		38.591076, 37.953434, 48.858265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084389, 37.299274, 48.612843>,  <38.592010, 37.282673, 49.058456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084389, 37.299274, 48.612843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296371, 37.631294, 48.543362>,  <38.423561, 37.830505, 48.501675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.296371, 37.631294, 48.543362>,  <38.084389, 37.299274, 48.612843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296371, 37.631294, 48.543362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123609, -0.127030, -0.984167,
		-0.838969, 0.543035, 0.035281,
		0.529955, 0.830046, -0.173698,
		38.455357, 37.880306, 48.491253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775120, 37.494129, 48.039143>,  <38.084389, 37.299274, 48.612843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775120, 37.494129, 48.039143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128773, 37.681023, 48.039089>,  <38.340965, 37.793159, 48.039059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128773, 37.681023, 48.039089>,  <37.775120, 37.494129, 48.039143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128773, 37.681023, 48.039089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098650, -0.186951, -0.977403,
		-0.456704, 0.864141, -0.211382,
		0.884132, 0.467237, -0.000133,
		38.394012, 37.821194, 48.039051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362652, 38.110703, 47.774044>,  <37.775120, 37.494129, 48.039143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362652, 38.110703, 47.774044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997536, 38.192696, 47.632736>,  <36.778465, 38.241894, 47.547951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.997536, 38.192696, 47.632736>,  <37.362652, 38.110703, 47.774044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997536, 38.192696, 47.632736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244600, 0.418331, 0.874740,
		0.327094, 0.884861, -0.331708,
		-0.912787, 0.204987, -0.353271,
		36.723701, 38.254192, 47.526756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191933, 38.821621, 47.965904>,  <37.362652, 38.110703, 47.774044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191933, 38.821621, 47.965904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848072, 38.618519, 47.943321>,  <36.641758, 38.496658, 47.929771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.848072, 38.618519, 47.943321>,  <37.191933, 38.821621, 47.965904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848072, 38.618519, 47.943321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234307, 0.293640, 0.926755,
		-0.453986, 0.809914, -0.371398,
		-0.859649, -0.507755, -0.056460,
		36.590176, 38.466190, 47.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652866, 39.322365, 47.990604>,  <37.191933, 38.821621, 47.965904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652866, 39.322365, 47.990604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.465012, 38.981926, 48.084476>,  <36.352299, 38.777664, 48.140800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.465012, 38.981926, 48.084476>,  <36.652866, 39.322365, 47.990604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465012, 38.981926, 48.084476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445061, 0.457802, 0.769635,
		-0.762473, 0.256999, -0.593790,
		-0.469634, -0.851099, 0.234681,
		36.324120, 38.726597, 48.154881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980934, 39.486237, 48.241516>,  <36.652866, 39.322365, 47.990604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980934, 39.486237, 48.241516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079960, 39.126484, 48.385635>,  <36.139374, 38.910629, 48.472107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079960, 39.126484, 48.385635>,  <35.980934, 39.486237, 48.241516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079960, 39.126484, 48.385635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389997, 0.247915, 0.886815,
		-0.886913, -0.360059, -0.289384,
		0.247563, -0.899386, 0.360301,
		36.154228, 38.856667, 48.493725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426731, 39.331604, 48.553852>,  <35.980934, 39.486237, 48.241516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426731, 39.331604, 48.553852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692631, 39.073425, 48.704323>,  <35.852169, 38.918518, 48.794605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.692631, 39.073425, 48.704323>,  <35.426731, 39.331604, 48.553852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692631, 39.073425, 48.704323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355859, 0.169171, 0.919101,
		-0.656868, -0.744836, -0.117232,
		0.664747, -0.645446, 0.376179,
		35.892056, 38.879791, 48.817177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019070, 39.056316, 48.996799>,  <35.426731, 39.331604, 48.553852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019070, 39.056316, 48.996799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375656, 38.942490, 49.137829>,  <35.589607, 38.874195, 49.222446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375656, 38.942490, 49.137829>,  <35.019070, 39.056316, 48.996799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375656, 38.942490, 49.137829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303071, 0.203930, 0.930892,
		-0.336802, -0.936715, 0.095553,
		0.891466, -0.284567, 0.352576,
		35.643097, 38.857121, 49.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857353, 38.601810, 49.582409>,  <35.019070, 39.056316, 48.996799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857353, 38.601810, 49.582409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242352, 38.699017, 49.630657>,  <35.473351, 38.757339, 49.659607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.242352, 38.699017, 49.630657>,  <34.857353, 38.601810, 49.582409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242352, 38.699017, 49.630657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174312, 0.213243, 0.961323,
		0.207857, -0.946303, 0.247601,
		0.962503, 0.242977, 0.120628,
		35.531101, 38.771923, 49.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535992, 38.305534, 50.030483>,  <34.857353, 38.601810, 49.582409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535992, 38.305534, 50.030483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138386, 38.335224, 50.062557>,  <33.899822, 38.353039, 50.081802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138386, 38.335224, 50.062557>,  <34.535992, 38.305534, 50.030483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138386, 38.335224, 50.062557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099130, -0.304022, -0.947493,
		-0.045949, -0.949769, 0.309560,
		-0.994013, 0.074223, 0.080181,
		33.840183, 38.357491, 50.086613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129715, 37.659409, 49.771099>,  <34.535992, 38.305534, 50.030483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129715, 37.659409, 49.771099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912968, 37.992622, 49.726490>,  <33.782921, 38.192551, 49.699726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.912968, 37.992622, 49.726490>,  <34.129715, 37.659409, 49.771099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912968, 37.992622, 49.726490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057656, -0.169222, -0.983890,
		-0.838485, -0.526707, 0.139725,
		-0.541866, 0.833033, -0.111522,
		33.750408, 38.242531, 49.693035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723228, 37.472034, 49.307888>,  <34.129715, 37.659409, 49.771099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723228, 37.472034, 49.307888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653587, 37.864498, 49.274368>,  <33.611801, 38.099976, 49.254257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.653587, 37.864498, 49.274368>,  <33.723228, 37.472034, 49.307888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653587, 37.864498, 49.274368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274295, -0.130051, -0.952811,
		-0.945754, -0.142904, 0.291768,
		-0.174106, 0.981155, -0.083798,
		33.601357, 38.158844, 49.249229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087223, 37.519733, 48.985596>,  <33.723228, 37.472034, 49.307888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087223, 37.519733, 48.985596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273548, 37.865662, 48.910648>,  <33.385342, 38.073219, 48.865681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273548, 37.865662, 48.910648>,  <33.087223, 37.519733, 48.985596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273548, 37.865662, 48.910648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318592, -0.033642, -0.947295,
		-0.825542, 0.500956, 0.259854,
		0.465811, 0.864819, -0.187373,
		33.413292, 38.125107, 48.854435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562271, 37.847874, 48.609711>,  <33.087223, 37.519733, 48.985596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562271, 37.847874, 48.609711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908127, 38.034321, 48.534737>,  <33.115643, 38.146187, 48.489750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908127, 38.034321, 48.534737>,  <32.562271, 37.847874, 48.609711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908127, 38.034321, 48.534737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155201, -0.107023, -0.982069,
		-0.477817, 0.878227, -0.020195,
		0.864641, 0.466115, -0.187439,
		33.167519, 38.174156, 48.478504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334377, 38.230488, 48.099365>,  <32.562271, 37.847874, 48.609711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334377, 38.230488, 48.099365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732655, 38.263176, 48.081841>,  <32.971622, 38.282787, 48.071327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732655, 38.263176, 48.081841>,  <32.334377, 38.230488, 48.099365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732655, 38.263176, 48.081841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037795, -0.073772, -0.996559,
		-0.084666, 0.993922, -0.070366,
		0.995692, 0.081716, -0.043811,
		33.031361, 38.287689, 48.068699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405342, 38.569160, 47.471733>,  <32.334377, 38.230488, 48.099365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405342, 38.569160, 47.471733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756718, 38.399433, 47.559631>,  <32.967545, 38.297596, 47.612370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.756718, 38.399433, 47.559631>,  <32.405342, 38.569160, 47.471733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756718, 38.399433, 47.559631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216095, -0.057402, -0.974683,
		0.426192, 0.903691, 0.041269,
		0.878444, -0.424320, 0.219748,
		33.020252, 38.272137, 47.625557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.294582, 34.148979, 53.332478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.612869, 34.210503, 53.098152>,  <36.803841, 34.247417, 52.957558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.612869, 34.210503, 53.098152>,  <36.294582, 34.148979, 53.332478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612869, 34.210503, 53.098152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543278, -0.246294, -0.802614,
		-0.267730, 0.956913, -0.112421,
		0.795720, 0.153808, -0.585810,
		36.851585, 34.256645, 52.922409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152470, 34.575329, 52.692875>,  <36.294582, 34.148979, 53.332478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152470, 34.575329, 52.692875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.486237, 34.397522, 52.562550>,  <36.686497, 34.290836, 52.484352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.486237, 34.397522, 52.562550>,  <36.152470, 34.575329, 52.692875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486237, 34.397522, 52.562550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472718, -0.273294, -0.837763,
		0.283358, 0.853060, -0.438173,
		0.834413, -0.444519, -0.325817,
		36.736561, 34.264168, 52.464806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237301, 34.857765, 52.027817>,  <36.152470, 34.575329, 52.692875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237301, 34.857765, 52.027817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.454166, 34.521729, 52.034847>,  <36.584286, 34.320107, 52.039066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.454166, 34.521729, 52.034847>,  <36.237301, 34.857765, 52.027817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454166, 34.521729, 52.034847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338467, -0.237490, -0.910515,
		0.769087, 0.487701, -0.413101,
		0.542166, -0.840087, 0.017579,
		36.616817, 34.269703, 52.040123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445267, 34.881474, 51.352974>,  <36.237301, 34.857765, 52.027817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445267, 34.881474, 51.352974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488911, 34.514084, 51.505028>,  <36.515099, 34.293652, 51.596260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.488911, 34.514084, 51.505028>,  <36.445267, 34.881474, 51.352974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488911, 34.514084, 51.505028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457092, -0.385943, -0.801320,
		0.882701, -0.086322, -0.461938,
		0.109111, -0.918475, 0.380130,
		36.521645, 34.238541, 51.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775742, 34.518467, 50.814602>,  <36.445267, 34.881474, 51.352974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775742, 34.518467, 50.814602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571823, 34.230404, 51.002853>,  <36.449474, 34.057568, 51.115803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.571823, 34.230404, 51.002853>,  <36.775742, 34.518467, 50.814602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571823, 34.230404, 51.002853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359739, -0.318480, -0.877017,
		0.781472, -0.616400, -0.096708,
		-0.509794, -0.720153, 0.470626,
		36.418884, 34.014359, 51.144043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899918, 33.881874, 50.396870>,  <36.775742, 34.518467, 50.814602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899918, 33.881874, 50.396870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587402, 33.826813, 50.640392>,  <36.399895, 33.793774, 50.786507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.587402, 33.826813, 50.640392>,  <36.899918, 33.881874, 50.396870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587402, 33.826813, 50.640392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524290, -0.384535, -0.759772,
		0.338696, -0.912789, 0.228258,
		-0.781284, -0.137658, 0.608807,
		36.353016, 33.785515, 50.823032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632439, 33.272316, 50.219360>,  <36.899918, 33.881874, 50.396870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632439, 33.272316, 50.219360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319607, 33.438839, 50.404850>,  <36.131908, 33.538754, 50.516144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.319607, 33.438839, 50.404850>,  <36.632439, 33.272316, 50.219360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319607, 33.438839, 50.404850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589563, -0.253191, -0.767014,
		-0.201901, -0.873262, 0.443453,
		-0.782082, 0.416304, 0.463723,
		36.084984, 33.563732, 50.543964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116188, 32.682854, 50.166924>,  <36.632439, 33.272316, 50.219360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116188, 32.682854, 50.166924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.910954, 33.014259, 50.256645>,  <35.787815, 33.213104, 50.310478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.910954, 33.014259, 50.256645>,  <36.116188, 32.682854, 50.166924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910954, 33.014259, 50.256645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644361, -0.199155, -0.738333,
		-0.567048, -0.523358, 0.636045,
		-0.513084, 0.828513, 0.224301,
		35.757027, 33.262814, 50.323936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435379, 32.448059, 50.395275>,  <36.116188, 32.682854, 50.166924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435379, 32.448059, 50.395275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418995, 32.830746, 50.280022>,  <35.409164, 33.060356, 50.210869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418995, 32.830746, 50.280022>,  <35.435379, 32.448059, 50.395275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418995, 32.830746, 50.280022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633359, -0.247898, -0.733078,
		-0.772774, 0.152466, 0.616096,
		-0.040959, 0.956713, -0.288135,
		35.406708, 33.117760, 50.193581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851498, 32.563076, 50.073566>,  <35.435379, 32.448059, 50.395275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851498, 32.563076, 50.073566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.054592, 32.882603, 49.944511>,  <35.176449, 33.074318, 49.867081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.054592, 32.882603, 49.944511>,  <34.851498, 32.563076, 50.073566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054592, 32.882603, 49.944511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438412, -0.082802, -0.894952,
		-0.741619, 0.595845, 0.308171,
		0.507735, 0.798819, -0.322633,
		35.206913, 33.122250, 49.847721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318104, 32.997269, 49.820389>,  <34.851498, 32.563076, 50.073566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318104, 32.997269, 49.820389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668694, 33.099495, 49.657185>,  <34.879047, 33.160831, 49.559261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668694, 33.099495, 49.657185>,  <34.318104, 32.997269, 49.820389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668694, 33.099495, 49.657185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399504, -0.086848, -0.912608,
		-0.268668, 0.962882, 0.025980,
		0.876478, 0.255568, -0.408009,
		34.931637, 33.176167, 49.534782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177090, 33.305027, 49.126904>,  <34.318104, 32.997269, 49.820389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177090, 33.305027, 49.126904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555382, 33.175079, 49.123791>,  <34.782356, 33.097111, 49.121922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.555382, 33.175079, 49.123791>,  <34.177090, 33.305027, 49.126904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555382, 33.175079, 49.123791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062324, -0.157826, -0.985498,
		0.318928, 0.932498, -0.169508,
		0.945728, -0.324867, -0.007782,
		34.839100, 33.077618, 49.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964664, 34.089230, 48.839813>,  <34.177090, 33.305027, 49.126904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964664, 34.089230, 48.839813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577560, 34.056282, 48.935017>,  <33.345299, 34.036514, 48.992138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.577560, 34.056282, 48.935017>,  <33.964664, 34.089230, 48.839813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577560, 34.056282, 48.935017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215231, 0.220269, 0.951398,
		-0.130795, 0.971955, -0.195439,
		-0.967765, -0.082373, 0.238005,
		33.287231, 34.031570, 49.006416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878777, 34.613571, 49.315605>,  <33.964664, 34.089230, 48.839813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878777, 34.613571, 49.315605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.540367, 34.411465, 49.383663>,  <33.337322, 34.290199, 49.424500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.540367, 34.411465, 49.383663>,  <33.878777, 34.613571, 49.315605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540367, 34.411465, 49.383663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035173, 0.265546, 0.963457,
		-0.531983, 0.821092, -0.206887,
		-0.846024, -0.505265, 0.170146,
		33.286560, 34.259884, 49.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460274, 35.131218, 49.602402>,  <33.878777, 34.613571, 49.315605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460274, 35.131218, 49.602402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.279976, 34.790611, 49.709538>,  <33.171795, 34.586246, 49.773819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.279976, 34.790611, 49.709538>,  <33.460274, 35.131218, 49.602402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279976, 34.790611, 49.709538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275208, 0.417999, 0.865758,
		-0.849168, 0.316527, -0.422757,
		-0.450749, -0.851520, 0.267841,
		33.144753, 34.535156, 49.789890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872276, 35.356262, 49.889912>,  <33.460274, 35.131218, 49.602402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872276, 35.356262, 49.889912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897606, 34.995556, 50.060932>,  <32.912804, 34.779133, 50.163544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897606, 34.995556, 50.060932>,  <32.872276, 35.356262, 49.889912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897606, 34.995556, 50.060932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221962, 0.404957, 0.886985,
		-0.972997, -0.151065, -0.174517,
		0.063320, -0.901770, 0.427553,
		32.916603, 34.725025, 50.189198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234844, 35.296215, 50.305664>,  <32.872276, 35.356262, 49.889912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234844, 35.296215, 50.305664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515968, 35.059017, 50.462849>,  <32.684643, 34.916698, 50.557159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515968, 35.059017, 50.462849>,  <32.234844, 35.296215, 50.305664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515968, 35.059017, 50.462849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101713, 0.462947, 0.880531,
		-0.704071, -0.658813, 0.265047,
		0.702808, -0.592997, 0.392957,
		32.726810, 34.881119, 50.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961193, 35.083244, 51.006786>,  <32.234844, 35.296215, 50.305664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961193, 35.083244, 51.006786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350475, 34.991650, 51.015198>,  <32.584045, 34.936695, 51.020245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.350475, 34.991650, 51.015198>,  <31.961193, 35.083244, 51.006786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350475, 34.991650, 51.015198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062077, 0.349687, 0.934808,
		-0.221408, -0.908452, 0.354531,
		0.973204, -0.228982, 0.021030,
		32.642437, 34.922955, 51.021507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031796, 34.737736, 51.631832>,  <31.961193, 35.083244, 51.006786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031796, 34.737736, 51.631832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372025, 34.902046, 51.500504>,  <32.576160, 35.000633, 51.421707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.372025, 34.902046, 51.500504>,  <32.031796, 34.737736, 51.631832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372025, 34.902046, 51.500504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145581, 0.415999, 0.897636,
		0.505310, -0.811299, 0.294034,
		0.850569, 0.410779, -0.328318,
		32.627197, 35.025280, 51.402008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571400, 34.445374, 52.089748>,  <32.031796, 34.737736, 51.631832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571400, 34.445374, 52.089748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.733627, 34.776207, 51.934086>,  <32.830963, 34.974709, 51.840687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.733627, 34.776207, 51.934086>,  <32.571400, 34.445374, 52.089748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733627, 34.776207, 51.934086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122974, 0.372503, 0.919847,
		0.905756, -0.420915, 0.049364,
		0.405566, 0.827087, -0.389158,
		32.855297, 35.024334, 51.817337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016953, 34.699924, 52.575768>,  <32.571400, 34.445374, 52.089748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016953, 34.699924, 52.575768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978588, 35.029202, 52.351929>,  <32.955570, 35.226768, 52.217625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.978588, 35.029202, 52.351929>,  <33.016953, 34.699924, 52.575768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978588, 35.029202, 52.351929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085697, 0.553276, 0.828578,
		0.991694, 0.127426, 0.017480,
		-0.095912, 0.823194, -0.559601,
		32.949814, 35.276161, 52.184048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444866, 35.251808, 52.920223>,  <33.016953, 34.699924, 52.575768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444866, 35.251808, 52.920223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191692, 35.434883, 52.670448>,  <33.039787, 35.544727, 52.520584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.191692, 35.434883, 52.670448>,  <33.444866, 35.251808, 52.920223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191692, 35.434883, 52.670448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137728, 0.727121, 0.672552,
		0.761858, 0.511682, -0.397182,
		-0.632932, 0.457686, -0.624436,
		33.001812, 35.572189, 52.483116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686558, 35.831894, 52.858166>,  <33.444866, 35.251808, 52.920223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686558, 35.831894, 52.858166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295845, 35.875065, 52.784149>,  <33.061417, 35.900967, 52.739738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.295845, 35.875065, 52.784149>,  <33.686558, 35.831894, 52.858166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295845, 35.875065, 52.784149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069503, 0.657408, 0.750323,
		0.202629, 0.745766, -0.634646,
		-0.976786, 0.107928, -0.185043,
		33.002808, 35.907444, 52.728638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561790, 36.512726, 53.293476>,  <33.686558, 35.831894, 52.858166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561790, 36.512726, 53.293476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.201061, 36.415703, 53.150436>,  <32.984623, 36.357491, 53.064613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.201061, 36.415703, 53.150436>,  <33.561790, 36.512726, 53.293476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201061, 36.415703, 53.150436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415969, 0.711358, 0.566514,
		0.116972, 0.659648, -0.742416,
		-0.901824, -0.242556, -0.357603,
		32.930515, 36.342937, 53.043156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198742, 37.142498, 53.099529>,  <33.561790, 36.512726, 53.293476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198742, 37.142498, 53.099529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948021, 36.846233, 53.196316>,  <32.797588, 36.668476, 53.254387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.948021, 36.846233, 53.196316>,  <33.198742, 37.142498, 53.099529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948021, 36.846233, 53.196316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530347, 0.633041, 0.563907,
		-0.570834, 0.225134, -0.789597,
		-0.626802, -0.740658, 0.241962,
		32.759979, 36.624035, 53.268906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552578, 37.361839, 53.025612>,  <33.198742, 37.142498, 53.099529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552578, 37.361839, 53.025612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543331, 37.075485, 53.304749>,  <32.537785, 36.903675, 53.472229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.543331, 37.075485, 53.304749>,  <32.552578, 37.361839, 53.025612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543331, 37.075485, 53.304749> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569882, 0.582948, 0.579142,
		-0.821401, -0.384297, -0.421445,
		-0.023118, -0.715882, 0.697838,
		32.536396, 36.860722, 53.514099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789383, 38.120415, 53.104565>,  <32.552578, 37.361839, 53.025612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789383, 38.120415, 53.104565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964432, 38.474895, 53.043732>,  <33.069462, 38.687584, 53.007233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.964432, 38.474895, 53.043732>,  <32.789383, 38.120415, 53.104565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964432, 38.474895, 53.043732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001412, -0.169819, -0.985474,
		-0.899157, 0.431052, -0.075568,
		0.437624, 0.886203, -0.152085,
		33.095718, 38.740757, 52.998108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328503, 38.529068, 52.612610>,  <32.789383, 38.120415, 53.104565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328503, 38.529068, 52.612610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692001, 38.695992, 52.614754>,  <32.910099, 38.796146, 52.616039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.692001, 38.695992, 52.614754>,  <32.328503, 38.529068, 52.612610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692001, 38.695992, 52.614754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071713, 0.168797, -0.983039,
		-0.411138, 0.892950, 0.183321,
		0.908748, 0.417311, 0.005363,
		32.964626, 38.821186, 52.616364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360992, 38.947769, 51.958141>,  <32.328503, 38.529068, 52.612610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360992, 38.947769, 51.958141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746956, 38.880840, 52.039093>,  <32.978535, 38.840683, 52.087666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746956, 38.880840, 52.039093>,  <32.360992, 38.947769, 51.958141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746956, 38.880840, 52.039093> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221536, 0.104912, -0.969492,
		0.140984, 0.980305, 0.138298,
		0.964907, -0.167321, 0.202382,
		33.036427, 38.830643, 52.099808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703125, 39.287865, 51.384342>,  <32.360992, 38.947769, 51.958141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703125, 39.287865, 51.384342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996544, 39.061424, 51.534775>,  <33.172596, 38.925560, 51.625034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996544, 39.061424, 51.534775>,  <32.703125, 39.287865, 51.384342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996544, 39.061424, 51.534775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347200, -0.163563, -0.923417,
		0.584259, 0.807948, 0.076568,
		0.733549, -0.566099, 0.376082,
		33.216610, 38.891594, 51.647598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316658, 39.475403, 51.031479>,  <32.703125, 39.287865, 51.384342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316658, 39.475403, 51.031479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.377659, 39.095181, 51.139687>,  <33.414261, 38.867046, 51.204609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.377659, 39.095181, 51.139687>,  <33.316658, 39.475403, 51.031479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377659, 39.095181, 51.139687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628129, -0.118102, -0.769094,
		0.763018, 0.287207, 0.579064,
		0.152501, -0.950560, 0.270517,
		33.423409, 38.810013, 51.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012646, 39.339001, 50.818283>,  <33.316658, 39.475403, 51.031479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012646, 39.339001, 50.818283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867496, 38.968227, 50.856464>,  <33.780407, 38.745762, 50.879375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867496, 38.968227, 50.856464>,  <34.012646, 39.339001, 50.818283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867496, 38.968227, 50.856464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349724, -0.230422, -0.908074,
		0.863722, -0.296133, 0.407786,
		-0.362873, -0.926936, 0.095456,
		33.758633, 38.690147, 50.885101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523880, 38.797596, 50.535839>,  <34.012646, 39.339001, 50.818283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523880, 38.797596, 50.535839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169983, 38.611359, 50.527317>,  <33.957645, 38.499619, 50.522205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.169983, 38.611359, 50.527317>,  <34.523880, 38.797596, 50.535839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169983, 38.611359, 50.527317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251653, -0.438739, -0.862658,
		0.392301, -0.768591, 0.505339,
		-0.884743, -0.465592, -0.021301,
		33.904560, 38.471680, 50.520927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171223, 38.388855, 50.400494>,  <34.523880, 38.797596, 50.535839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171223, 38.388855, 50.400494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460854, 38.629612, 50.265774>,  <35.634632, 38.774067, 50.184944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460854, 38.629612, 50.265774>,  <35.171223, 38.388855, 50.400494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460854, 38.629612, 50.265774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170848, 0.316571, 0.933056,
		0.668224, -0.733146, 0.126389,
		0.724077, 0.601897, -0.336796,
		35.678078, 38.810181, 50.164734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788517, 38.121830, 50.616753>,  <35.171223, 38.388855, 50.400494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788517, 38.121830, 50.616753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771500, 38.516006, 50.550915>,  <35.761292, 38.752514, 50.511414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771500, 38.516006, 50.550915>,  <35.788517, 38.121830, 50.616753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771500, 38.516006, 50.550915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108171, 0.168319, 0.979779,
		0.993222, 0.023877, -0.113757,
		-0.042542, 0.985443, -0.164596,
		35.758736, 38.811638, 50.501537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185848, 38.313320, 51.142128>,  <35.788517, 38.121830, 50.616753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185848, 38.313320, 51.142128> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027004, 38.662891, 51.030018>,  <35.931698, 38.872635, 50.962749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.027004, 38.662891, 51.030018>,  <36.185848, 38.313320, 51.142128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027004, 38.662891, 51.030018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103231, 0.345986, 0.932543,
		0.911948, 0.341386, -0.227610,
		-0.397107, 0.873927, -0.280279,
		35.907871, 38.925068, 50.945934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570198, 38.873985, 51.297218>,  <36.185848, 38.313320, 51.142128>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570198, 38.873985, 51.297218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219719, 39.064751, 51.269390>,  <36.009434, 39.179211, 51.252693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219719, 39.064751, 51.269390>,  <36.570198, 38.873985, 51.297218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219719, 39.064751, 51.269390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165742, 0.433702, 0.885682,
		0.452562, 0.764500, -0.459051,
		-0.876195, 0.476910, -0.069567,
		35.956860, 39.207825, 51.248520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765942, 39.512066, 51.496788>,  <36.570198, 38.873985, 51.297218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765942, 39.512066, 51.496788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368843, 39.488739, 51.538857>,  <36.130585, 39.474743, 51.564098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.368843, 39.488739, 51.538857>,  <36.765942, 39.512066, 51.496788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368843, 39.488739, 51.538857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091803, 0.197410, 0.976013,
		-0.077683, 0.978585, -0.190624,
		-0.992742, -0.058320, 0.105173,
		36.071022, 39.471245, 51.570408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511520, 40.113110, 51.839287>,  <36.765942, 39.512066, 51.496788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511520, 40.113110, 51.839287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197350, 39.873142, 51.900223>,  <36.008846, 39.729160, 51.936787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.197350, 39.873142, 51.900223>,  <36.511520, 40.113110, 51.839287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197350, 39.873142, 51.900223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001285, 0.244546, 0.969637,
		-0.618957, 0.761772, -0.191302,
		-0.785424, -0.599918, 0.152342,
		35.961723, 39.693169, 51.945927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035118, 40.529537, 52.195404>,  <36.511520, 40.113110, 51.839287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035118, 40.529537, 52.195404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.932487, 40.150894, 52.273491>,  <35.870907, 39.923710, 52.320343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.932487, 40.150894, 52.273491>,  <36.035118, 40.529537, 52.195404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932487, 40.150894, 52.273491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013396, 0.205440, 0.978578,
		-0.966430, 0.248470, -0.065393,
		-0.256581, -0.946603, 0.195215,
		35.855515, 39.866913, 52.332054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591892, 40.548977, 52.740181>,  <36.035118, 40.529537, 52.195404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591892, 40.548977, 52.740181> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721760, 40.173176, 52.783875>,  <35.799679, 39.947697, 52.810089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.721760, 40.173176, 52.783875>,  <35.591892, 40.548977, 52.740181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721760, 40.173176, 52.783875> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050782, 0.098004, 0.993890,
		-0.944464, -0.328230, -0.015891,
		0.324667, -0.939500, 0.109229,
		35.819160, 39.891327, 52.816643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189854, 40.203888, 53.261444>,  <35.591892, 40.548977, 52.740181>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189854, 40.203888, 53.261444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506393, 39.959343, 53.261673>,  <35.696316, 39.812614, 53.261810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.506393, 39.959343, 53.261673>,  <35.189854, 40.203888, 53.261444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506393, 39.959343, 53.261673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003944, -0.004162, 0.999984,
		-0.611355, -0.791336, -0.005705,
		0.791347, -0.611367, 0.000577,
		35.743797, 39.775932, 53.261845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.644081, 36.216980, 37.223907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017410, 36.188828, 37.364738>,  <37.241409, 36.171936, 37.449238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017410, 36.188828, 37.364738>,  <36.644081, 36.216980, 37.223907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017410, 36.188828, 37.364738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287250, 0.441921, 0.849820,
		-0.215400, -0.894289, 0.392238,
		0.933322, -0.070381, 0.352074,
		37.297405, 36.167713, 37.470360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762707, 35.721088, 37.936424>,  <36.644081, 36.216980, 37.223907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762707, 35.721088, 37.936424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005211, 36.034126, 37.879852>,  <37.150711, 36.221947, 37.845909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005211, 36.034126, 37.879852>,  <36.762707, 35.721088, 37.936424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005211, 36.034126, 37.879852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282953, 0.378469, 0.881305,
		0.743230, -0.494278, 0.450886,
		0.606257, 0.782592, -0.141432,
		37.187088, 36.268906, 37.837421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039539, 35.721188, 38.526173>,  <36.762707, 35.721088, 37.936424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039539, 35.721188, 38.526173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108063, 36.088108, 38.382385>,  <37.149178, 36.308258, 38.296112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108063, 36.088108, 38.382385>,  <37.039539, 35.721188, 38.526173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108063, 36.088108, 38.382385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136067, 0.383398, 0.913505,
		0.975776, -0.107579, 0.190493,
		0.171309, 0.917296, -0.359472,
		37.159454, 36.363297, 38.274544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522396, 35.926414, 38.919945>,  <37.039539, 35.721188, 38.526173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522396, 35.926414, 38.919945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332905, 36.251598, 38.784485>,  <37.219212, 36.446709, 38.703209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332905, 36.251598, 38.784485>,  <37.522396, 35.926414, 38.919945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332905, 36.251598, 38.784485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261328, 0.237454, 0.935587,
		0.841006, 0.531711, 0.099960,
		-0.473726, 0.812957, -0.338651,
		37.190788, 36.495487, 38.682888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818527, 36.583649, 39.276134>,  <37.522396, 35.926414, 38.919945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818527, 36.583649, 39.276134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452995, 36.679642, 39.145088>,  <37.233677, 36.737236, 39.066460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452995, 36.679642, 39.145088>,  <37.818527, 36.583649, 39.276134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452995, 36.679642, 39.145088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262516, 0.266434, 0.927415,
		0.309849, 0.933499, -0.180476,
		-0.913826, 0.239981, -0.327613,
		37.178848, 36.751637, 39.046803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622353, 37.104816, 39.703693>,  <37.818527, 36.583649, 39.276134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622353, 37.104816, 39.703693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267323, 37.027943, 39.536232>,  <37.054302, 36.981819, 39.435757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267323, 37.027943, 39.536232>,  <37.622353, 37.104816, 39.703693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267323, 37.027943, 39.536232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452609, 0.194720, 0.870189,
		-0.085717, 0.961847, -0.259813,
		-0.887580, -0.192184, -0.418650,
		37.001049, 36.970287, 39.410637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169113, 37.743977, 39.733677>,  <37.622353, 37.104816, 39.703693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169113, 37.743977, 39.733677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966461, 37.399429, 39.718826>,  <36.844872, 37.192703, 39.709915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966461, 37.399429, 39.718826>,  <37.169113, 37.743977, 39.733677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966461, 37.399429, 39.718826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452022, 0.228701, 0.862190,
		-0.734168, 0.453594, -0.505222,
		-0.506630, -0.861364, -0.037129,
		36.814472, 37.141022, 39.707687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514538, 37.879086, 39.966576>,  <37.169113, 37.743977, 39.733677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514538, 37.879086, 39.966576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494991, 37.479717, 39.977661>,  <36.483261, 37.240097, 39.984314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494991, 37.479717, 39.977661>,  <36.514538, 37.879086, 39.966576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494991, 37.479717, 39.977661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408434, 0.045300, 0.911663,
		-0.911479, 0.033231, -0.410003,
		-0.048869, -0.998420, 0.027717,
		36.480331, 37.180191, 39.985977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787125, 37.686043, 40.207767>,  <36.514538, 37.879086, 39.966576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787125, 37.686043, 40.207767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017540, 37.372051, 40.298973>,  <36.155788, 37.183655, 40.353695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017540, 37.372051, 40.298973>,  <35.787125, 37.686043, 40.207767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017540, 37.372051, 40.298973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341966, 0.021938, 0.939456,
		-0.742455, -0.619135, -0.255799,
		0.576038, -0.784979, 0.228010,
		36.190350, 37.136559, 40.367374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374222, 37.322094, 40.528599>,  <35.787125, 37.686043, 40.207767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374222, 37.322094, 40.528599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726498, 37.173832, 40.646576>,  <35.937862, 37.084873, 40.717361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726498, 37.173832, 40.646576>,  <35.374222, 37.322094, 40.528599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726498, 37.173832, 40.646576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340988, -0.063885, 0.937894,
		-0.328795, -0.926570, -0.182653,
		0.880693, -0.370658, 0.294944,
		35.990707, 37.062634, 40.735058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184799, 37.115593, 41.125980>,  <35.374222, 37.322094, 40.528599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184799, 37.115593, 41.125980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582481, 37.083469, 41.154583>,  <35.821091, 37.064194, 41.171745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582481, 37.083469, 41.154583>,  <35.184799, 37.115593, 41.125980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582481, 37.083469, 41.154583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057360, 0.166403, 0.984388,
		-0.090957, -0.982782, 0.160832,
		0.994201, -0.080311, 0.071508,
		35.880741, 37.059376, 41.176037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266846, 36.578304, 41.606251>,  <35.184799, 37.115593, 41.125980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266846, 36.578304, 41.606251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604362, 36.792484, 41.620758>,  <35.806873, 36.920990, 41.629463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604362, 36.792484, 41.620758>,  <35.266846, 36.578304, 41.606251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604362, 36.792484, 41.620758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227167, 0.295127, 0.928060,
		0.486225, -0.791325, 0.370662,
		0.843790, 0.535448, 0.036265,
		35.857498, 36.953117, 41.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924828, 35.963940, 41.951939>,  <35.266846, 36.578304, 41.606251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924828, 35.963940, 41.951939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561958, 36.132080, 41.944481>,  <34.344238, 36.232964, 41.940006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561958, 36.132080, 41.944481>,  <34.924828, 35.963940, 41.951939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561958, 36.132080, 41.944481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169449, -0.405533, -0.898237,
		-0.385128, -0.811698, 0.439115,
		-0.907173, 0.420344, -0.018641,
		34.289806, 36.258186, 41.938889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443638, 35.408825, 41.647846>,  <34.924828, 35.963940, 41.951939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443638, 35.408825, 41.647846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243275, 35.751282, 41.597076>,  <34.123058, 35.956757, 41.566616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243275, 35.751282, 41.597076>,  <34.443638, 35.408825, 41.647846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243275, 35.751282, 41.597076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421670, -0.369466, -0.828063,
		-0.755836, -0.361261, 0.546079,
		-0.500905, 0.856145, -0.126923,
		34.093002, 36.008125, 41.558998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859657, 35.149078, 41.472595>,  <34.443638, 35.408825, 41.647846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859657, 35.149078, 41.472595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846985, 35.528648, 41.347027>,  <33.839382, 35.756390, 41.271687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846985, 35.528648, 41.347027>,  <33.859657, 35.149078, 41.472595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846985, 35.528648, 41.347027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444351, -0.294706, -0.845991,
		-0.895292, 0.112687, 0.430991,
		-0.031684, 0.948921, -0.313921,
		33.837479, 35.813324, 41.252850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179192, 35.265160, 41.106945>,  <33.859657, 35.149078, 41.472595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179192, 35.265160, 41.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411324, 35.553589, 40.955536>,  <33.550602, 35.726646, 40.864689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411324, 35.553589, 40.955536>,  <33.179192, 35.265160, 41.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411324, 35.553589, 40.955536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532746, -0.015416, -0.846135,
		-0.615958, 0.692691, 0.375200,
		0.580326, 0.721069, -0.378524,
		33.585423, 35.769909, 40.841980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686836, 35.733746, 40.693428>,  <33.179192, 35.265160, 41.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686836, 35.733746, 40.693428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063194, 35.786846, 40.568790>,  <33.289009, 35.818707, 40.494007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.063194, 35.786846, 40.568790>,  <32.686836, 35.733746, 40.693428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063194, 35.786846, 40.568790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320885, 0.054959, -0.945522,
		-0.108390, 0.989625, 0.094307,
		0.940895, 0.132747, -0.311599,
		33.345463, 35.826672, 40.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573177, 36.196148, 40.114849>,  <32.686836, 35.733746, 40.693428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573177, 36.196148, 40.114849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925640, 36.011963, 40.071903>,  <33.137119, 35.901451, 40.046135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925640, 36.011963, 40.071903>,  <32.573177, 36.196148, 40.114849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925640, 36.011963, 40.071903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275557, -0.315603, -0.907999,
		0.384218, 0.829679, -0.404981,
		0.881161, -0.460465, -0.107363,
		33.189987, 35.873825, 40.039696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553009, 36.329311, 39.500481>,  <32.573177, 36.196148, 40.114849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553009, 36.329311, 39.500481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808689, 36.031326, 39.576851>,  <32.962097, 35.852535, 39.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808689, 36.031326, 39.576851>,  <32.553009, 36.329311, 39.500481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808689, 36.031326, 39.576851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364636, -0.512171, -0.777638,
		0.677099, 0.427448, -0.599020,
		0.639201, -0.744962, 0.190927,
		33.000450, 35.807838, 39.634129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793385, 36.180035, 38.920036>,  <32.553009, 36.329311, 39.500481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793385, 36.180035, 38.920036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882103, 35.829697, 39.091476>,  <32.935333, 35.619492, 39.194340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882103, 35.829697, 39.091476>,  <32.793385, 36.180035, 38.920036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882103, 35.829697, 39.091476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296252, -0.479297, -0.826141,
		0.929000, 0.056260, -0.365778,
		0.221795, -0.875848, 0.428600,
		32.948643, 35.566944, 39.220055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011509, 35.867321, 38.317898>,  <32.793385, 36.180035, 38.920036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011509, 35.867321, 38.317898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928009, 35.593807, 38.597572>,  <32.877907, 35.429699, 38.765377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928009, 35.593807, 38.597572>,  <33.011509, 35.867321, 38.317898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928009, 35.593807, 38.597572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476389, -0.553278, -0.683327,
		0.854093, -0.475730, -0.210250,
		-0.208752, -0.683786, 0.699184,
		32.865383, 35.388672, 38.807327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099529, 35.254818, 37.907776>,  <33.011509, 35.867321, 38.317898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099529, 35.254818, 37.907776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879387, 35.194321, 38.236225>,  <32.747303, 35.158020, 38.433292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879387, 35.194321, 38.236225>,  <33.099529, 35.254818, 37.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879387, 35.194321, 38.236225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666981, -0.511944, -0.541340,
		0.502243, -0.845599, 0.180870,
		-0.550352, -0.151248, 0.821119,
		32.714283, 35.148945, 38.482559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025265, 34.425816, 37.936188>,  <33.099529, 35.254818, 37.907776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025265, 34.425816, 37.936188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734928, 34.590839, 38.156349>,  <32.560726, 34.689854, 38.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734928, 34.590839, 38.156349>,  <33.025265, 34.425816, 37.936188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734928, 34.590839, 38.156349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687589, -0.457766, -0.563623,
		0.019427, -0.787554, 0.615939,
		-0.725840, 0.412564, 0.550407,
		32.517178, 34.714607, 38.321472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416618, 33.873596, 37.864716>,  <33.025265, 34.425816, 37.936188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416618, 33.873596, 37.864716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241379, 34.207188, 37.998909>,  <32.136234, 34.407341, 38.079426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.241379, 34.207188, 37.998909>,  <32.416618, 33.873596, 37.864716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241379, 34.207188, 37.998909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884822, -0.334224, -0.324628,
		-0.158604, -0.439067, 0.884344,
		-0.438103, 0.833975, 0.335487,
		32.109947, 34.457382, 38.099556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837362, 33.727493, 38.262890>,  <32.416618, 33.873596, 37.864716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837362, 33.727493, 38.262890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742552, 34.104500, 38.168671>,  <31.685665, 34.330704, 38.112137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742552, 34.104500, 38.168671>,  <31.837362, 33.727493, 38.262890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742552, 34.104500, 38.168671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924919, -0.293111, -0.242097,
		-0.297227, 0.160499, 0.941220,
		-0.237025, 0.942511, -0.235569,
		31.671444, 34.387253, 38.098007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071598, 33.952305, 38.563347>,  <31.837362, 33.727493, 38.262890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071598, 33.952305, 38.563347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160244, 34.207615, 38.268459>,  <31.213432, 34.360802, 38.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.160244, 34.207615, 38.268459>,  <31.071598, 33.952305, 38.563347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.160244, 34.207615, 38.268459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974401, 0.115642, -0.192795,
		-0.037804, 0.761070, 0.647567,
		0.221616, 0.638278, -0.737216,
		31.226728, 34.399097, 38.047295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788378, 34.614635, 38.612148>,  <31.071598, 33.952305, 38.563347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788378, 34.614635, 38.612148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843271, 34.505276, 38.231323>,  <30.876207, 34.439659, 38.002831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843271, 34.505276, 38.231323>,  <30.788378, 34.614635, 38.612148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843271, 34.505276, 38.231323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980780, -0.172092, -0.091952,
		-0.138702, 0.946380, -0.291763,
		0.137232, -0.273401, -0.952060,
		30.884441, 34.423256, 37.945705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401484, 34.525421, 39.168999>,  <30.788378, 34.614635, 38.612148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401484, 34.525421, 39.168999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253157, 34.187416, 39.014885>,  <30.164160, 33.984612, 38.922417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253157, 34.187416, 39.014885>,  <30.401484, 34.525421, 39.168999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253157, 34.187416, 39.014885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201084, -0.478078, 0.854989,
		-0.906674, 0.239571, 0.347199,
		-0.370818, -0.845013, -0.385287,
		30.141911, 33.933910, 38.899300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710550, 34.246948, 39.578537>,  <30.401484, 34.525421, 39.168999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710550, 34.246948, 39.578537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966740, 33.999882, 39.395985>,  <30.120453, 33.851643, 39.286453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966740, 33.999882, 39.395985>,  <29.710550, 34.246948, 39.578537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966740, 33.999882, 39.395985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325302, -0.320129, 0.889773,
		-0.695681, -0.718339, -0.004107,
		0.640473, -0.617662, -0.456385,
		30.158882, 33.814583, 39.259068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505369, 33.628963, 39.712193>,  <29.710550, 34.246948, 39.578537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505369, 33.628963, 39.712193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899439, 33.607037, 39.647163>,  <30.135880, 33.593880, 39.608147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899439, 33.607037, 39.647163>,  <29.505369, 33.628963, 39.712193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899439, 33.607037, 39.647163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138594, -0.304224, 0.942464,
		-0.101123, -0.951022, -0.292116,
		0.985173, -0.054820, -0.162570,
		30.194990, 33.590591, 39.598392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744360, 33.083401, 40.080368>,  <29.505369, 33.628963, 39.712193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744360, 33.083401, 40.080368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047583, 33.339485, 40.030594>,  <30.229515, 33.493137, 40.000729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047583, 33.339485, 40.030594>,  <29.744360, 33.083401, 40.080368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047583, 33.339485, 40.030594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273345, -0.138652, 0.951871,
		0.592144, -0.755584, -0.280104,
		0.758055, 0.640210, -0.124433,
		30.275000, 33.531548, 39.993263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305193, 32.801056, 40.495220>,  <29.744360, 33.083401, 40.080368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305193, 32.801056, 40.495220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386576, 33.191692, 40.467270>,  <30.435406, 33.426075, 40.450500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386576, 33.191692, 40.467270>,  <30.305193, 32.801056, 40.495220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386576, 33.191692, 40.467270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230681, 0.021541, 0.972791,
		0.951521, -0.214038, -0.220898,
		0.203455, 0.976588, -0.069871,
		30.447613, 33.484669, 40.446308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921862, 32.983200, 40.827805>,  <30.305193, 32.801056, 40.495220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921862, 32.983200, 40.827805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716654, 33.325859, 40.849625>,  <30.593529, 33.531452, 40.862717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716654, 33.325859, 40.849625>,  <30.921862, 32.983200, 40.827805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716654, 33.325859, 40.849625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377020, 0.167782, 0.910882,
		0.771148, 0.487864, -0.409047,
		-0.513017, 0.856643, 0.054550,
		30.562748, 33.582851, 40.865990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367727, 33.451778, 41.101604>,  <30.921862, 32.983200, 40.827805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367727, 33.451778, 41.101604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004513, 33.605160, 41.169052>,  <30.786585, 33.697189, 41.209522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004513, 33.605160, 41.169052>,  <31.367727, 33.451778, 41.101604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004513, 33.605160, 41.169052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331965, 0.413210, 0.847972,
		0.255485, 0.825965, -0.502503,
		-0.908034, 0.383458, 0.168622,
		30.732103, 33.720196, 41.219639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511906, 34.043461, 41.550301>,  <31.367727, 33.451778, 41.101604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511906, 34.043461, 41.550301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118176, 33.980770, 41.582649>,  <30.881937, 33.943157, 41.602058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118176, 33.980770, 41.582649>,  <31.511906, 34.043461, 41.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118176, 33.980770, 41.582649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060841, 0.128618, 0.989826,
		-0.165530, 0.979232, -0.117067,
		-0.984326, -0.156723, 0.080868,
		30.822878, 33.933754, 41.606911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309982, 34.510967, 41.999432>,  <31.511906, 34.043461, 41.550301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309982, 34.510967, 41.999432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997631, 34.264565, 42.040928>,  <30.810221, 34.116722, 42.065826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997631, 34.264565, 42.040928>,  <31.309982, 34.510967, 41.999432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997631, 34.264565, 42.040928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130971, 0.000937, 0.991386,
		-0.610802, 0.787737, 0.079948,
		-0.780876, -0.616011, 0.103743,
		30.763369, 34.079762, 42.072052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.055748, 34.760708, 42.616241>,  <31.309982, 34.510967, 41.999432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.055748, 34.760708, 42.616241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872278, 34.407440, 42.577003>,  <30.762196, 34.195480, 42.553459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.872278, 34.407440, 42.577003>,  <31.055748, 34.760708, 42.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872278, 34.407440, 42.577003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050039, -0.084548, 0.995162,
		-0.887195, 0.461364, -0.005413,
		-0.458674, -0.883173, -0.098097,
		30.734676, 34.142487, 42.547573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440863, 34.674416, 43.154282>,  <31.055748, 34.760708, 42.616241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440863, 34.674416, 43.154282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570412, 34.311832, 43.045883>,  <30.648142, 34.094284, 42.980843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.570412, 34.311832, 43.045883>,  <30.440863, 34.674416, 43.154282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.570412, 34.311832, 43.045883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065404, -0.264300, 0.962220,
		-0.943837, -0.329362, -0.026314,
		0.323873, -0.906458, -0.270998,
		30.667574, 34.039894, 42.964584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023329, 34.241177, 43.515270>,  <30.440863, 34.674416, 43.154282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023329, 34.241177, 43.515270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356010, 34.033691, 43.436069>,  <30.555618, 33.909199, 43.388550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356010, 34.033691, 43.436069>,  <30.023329, 34.241177, 43.515270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356010, 34.033691, 43.436069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099694, -0.211305, 0.972323,
		-0.546197, -0.828423, -0.124030,
		0.831703, -0.518715, -0.198003,
		30.605522, 33.878078, 43.376667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974766, 33.597580, 43.890240>,  <30.023329, 34.241177, 43.515270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974766, 33.597580, 43.890240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366507, 33.629684, 43.816017>,  <30.601551, 33.648949, 43.771484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366507, 33.629684, 43.816017>,  <29.974766, 33.597580, 43.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366507, 33.629684, 43.816017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201930, -0.343228, 0.917289,
		0.009936, -0.935817, -0.352347,
		0.979350, 0.080263, -0.185559,
		30.660311, 33.653763, 43.760349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292860, 32.979630, 44.131374>,  <29.974766, 33.597580, 43.890240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292860, 32.979630, 44.131374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589537, 33.247223, 44.111973>,  <30.767544, 33.407780, 44.100330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589537, 33.247223, 44.111973>,  <30.292860, 32.979630, 44.131374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589537, 33.247223, 44.111973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398194, -0.380969, 0.834449,
		0.539752, -0.638220, -0.548947,
		0.741693, 0.668983, -0.048507,
		30.812044, 33.447918, 44.097420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852726, 32.708488, 44.527409>,  <30.292860, 32.979630, 44.131374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852726, 32.708488, 44.527409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946018, 33.095772, 44.491234>,  <31.001993, 33.328140, 44.469528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946018, 33.095772, 44.491234>,  <30.852726, 32.708488, 44.527409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946018, 33.095772, 44.491234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493507, -0.037717, 0.868924,
		0.837887, -0.247290, -0.486613,
		0.233230, 0.968207, -0.090437,
		31.015987, 33.386234, 44.464104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561489, 32.701214, 44.744083>,  <30.852726, 32.708488, 44.527409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561489, 32.701214, 44.744083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421204, 33.075607, 44.756290>,  <31.337032, 33.300243, 44.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421204, 33.075607, 44.756290>,  <31.561489, 32.701214, 44.744083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421204, 33.075607, 44.756290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423867, 0.129596, 0.896405,
		0.835067, 0.327316, -0.442185,
		-0.350713, 0.935986, 0.030517,
		31.315990, 33.356403, 44.765446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129894, 33.127617, 44.814854>,  <31.561489, 32.701214, 44.744083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129894, 33.127617, 44.814854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831577, 33.356323, 44.951603>,  <31.652586, 33.493546, 45.033653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831577, 33.356323, 44.951603>,  <32.129894, 33.127617, 44.814854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831577, 33.356323, 44.951603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560549, 0.261307, 0.785814,
		0.359964, 0.777694, -0.515382,
		-0.745795, 0.571762, 0.341874,
		31.607840, 33.527851, 45.054165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489079, 33.713184, 45.069218>,  <32.129894, 33.127617, 44.814854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489079, 33.713184, 45.069218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122547, 33.714546, 45.229382>,  <31.902628, 33.715363, 45.325478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122547, 33.714546, 45.229382>,  <32.489079, 33.713184, 45.069218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122547, 33.714546, 45.229382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368442, 0.398759, 0.839787,
		-0.156806, 0.917049, -0.366650,
		-0.916331, 0.003405, 0.400407,
		31.847649, 33.715569, 45.349503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306988, 34.370071, 45.335224>,  <32.489079, 33.713184, 45.069218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306988, 34.370071, 45.335224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079407, 34.110729, 45.537582>,  <31.942858, 33.955124, 45.658997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079407, 34.110729, 45.537582>,  <32.306988, 34.370071, 45.335224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079407, 34.110729, 45.537582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266794, 0.436367, 0.859305,
		-0.777891, 0.623872, -0.075294,
		-0.568952, -0.648358, 0.505891,
		31.908722, 33.916222, 45.689350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114349, 34.767990, 46.030724>,  <32.306988, 34.370071, 45.335224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114349, 34.767990, 46.030724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031685, 34.378632, 46.070312>,  <31.982086, 34.145016, 46.094067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031685, 34.378632, 46.070312>,  <32.114349, 34.767990, 46.030724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031685, 34.378632, 46.070312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418789, 0.003421, 0.908077,
		-0.884254, 0.229116, 0.406940,
		-0.206663, -0.973393, 0.098977,
		31.969687, 34.086613, 46.100006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872240, 34.770241, 46.670135>,  <32.114349, 34.767990, 46.030724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872240, 34.770241, 46.670135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944788, 34.384621, 46.592461>,  <31.988317, 34.153248, 46.545856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944788, 34.384621, 46.592461>,  <31.872240, 34.770241, 46.670135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944788, 34.384621, 46.592461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118984, -0.174504, 0.977441,
		-0.976191, -0.200384, 0.083057,
		0.181369, -0.964051, -0.194192,
		31.999199, 34.095406, 46.534203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428385, 34.362762, 47.113266>,  <31.872240, 34.770241, 46.670135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428385, 34.362762, 47.113266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733971, 34.135517, 46.990883>,  <31.917322, 33.999172, 46.917454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733971, 34.135517, 46.990883>,  <31.428385, 34.362762, 47.113266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733971, 34.135517, 46.990883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302004, -0.104218, 0.947593,
		-0.570223, -0.816327, 0.091953,
		0.763963, -0.568109, -0.305961,
		31.963160, 33.965084, 46.899094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488670, 33.858818, 47.544552>,  <31.428385, 34.362762, 47.113266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488670, 33.858818, 47.544552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849562, 33.894581, 47.375797>,  <32.066097, 33.916039, 47.274544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849562, 33.894581, 47.375797>,  <31.488670, 33.858818, 47.544552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849562, 33.894581, 47.375797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431248, -0.180440, 0.884006,
		0.002912, -0.979514, -0.201355,
		0.902229, 0.089408, -0.421888,
		32.120232, 33.921402, 47.249229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850567, 33.327000, 47.876244>,  <31.488670, 33.858818, 47.544552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850567, 33.327000, 47.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126614, 33.582748, 47.740631>,  <32.292240, 33.736198, 47.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126614, 33.582748, 47.740631>,  <31.850567, 33.327000, 47.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126614, 33.582748, 47.740631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484624, -0.060365, 0.872637,
		0.537477, -0.766522, -0.351515,
		0.690115, 0.639375, -0.339030,
		32.333649, 33.774559, 47.638924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503551, 33.049641, 47.991058>,  <31.850567, 33.327000, 47.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503551, 33.049641, 47.991058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602718, 33.435322, 47.953445>,  <32.662220, 33.666733, 47.930878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602718, 33.435322, 47.953445>,  <32.503551, 33.049641, 47.991058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602718, 33.435322, 47.953445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450148, -0.028705, 0.892492,
		0.857849, -0.263590, -0.441152,
		0.247916, 0.964208, -0.094030,
		32.677094, 33.724583, 47.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183979, 33.077831, 48.372086>,  <32.503551, 33.049641, 47.991058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183979, 33.077831, 48.372086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036369, 33.448227, 48.340191>,  <32.947803, 33.670464, 48.321053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036369, 33.448227, 48.340191>,  <33.183979, 33.077831, 48.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036369, 33.448227, 48.340191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452970, 0.254103, 0.854547,
		0.811567, 0.279226, -0.513217,
		-0.369022, 0.925994, -0.079740,
		32.925663, 33.726025, 48.316269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683411, 33.580647, 48.338284>,  <33.183979, 33.077831, 48.372086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683411, 33.580647, 48.338284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355076, 33.753368, 48.487827>,  <33.158073, 33.857002, 48.577553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355076, 33.753368, 48.487827>,  <33.683411, 33.580647, 48.338284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355076, 33.753368, 48.487827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429448, 0.035038, 0.902412,
		0.376562, 0.901289, -0.214196,
		-0.820839, 0.431800, 0.373862,
		33.108826, 33.882908, 48.599987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448505, 33.651920, 48.526852>,  <33.683411, 33.580647, 48.338284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448505, 33.651920, 48.526852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724770, 33.368195, 48.583214>,  <34.890530, 33.197960, 48.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724770, 33.368195, 48.583214>,  <34.448505, 33.651920, 48.526852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724770, 33.368195, 48.583214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007267, -0.188025, -0.982137,
		0.723141, 0.679349, -0.124707,
		0.690662, -0.709317, 0.140905,
		34.931969, 33.155399, 48.625484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992188, 33.761360, 48.070824>,  <34.448505, 33.651920, 48.526852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992188, 33.761360, 48.070824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016289, 33.371563, 48.157299>,  <35.030750, 33.137684, 48.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016289, 33.371563, 48.157299>,  <34.992188, 33.761360, 48.070824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016289, 33.371563, 48.157299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137284, -0.206433, -0.968782,
		0.988697, 0.088055, 0.121343,
		0.060257, -0.974490, 0.216188,
		35.034367, 33.079216, 48.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650848, 33.531044, 47.835411>,  <34.992188, 33.761360, 48.070824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650848, 33.531044, 47.835411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432095, 33.196781, 47.855816>,  <35.300842, 32.996223, 47.868057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432095, 33.196781, 47.855816>,  <35.650848, 33.531044, 47.835411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432095, 33.196781, 47.855816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251875, -0.222332, -0.941875,
		0.798422, -0.502247, 0.332069,
		-0.546883, -0.835653, 0.051011,
		35.268028, 32.946087, 47.871120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029331, 33.089615, 47.483444>,  <35.650848, 33.531044, 47.835411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029331, 33.089615, 47.483444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660297, 32.935352, 47.479141>,  <35.438877, 32.842796, 47.476559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660297, 32.935352, 47.479141>,  <36.029331, 33.089615, 47.483444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660297, 32.935352, 47.479141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169922, -0.381137, -0.908769,
		0.346368, -0.840242, 0.417161,
		-0.922581, -0.385653, -0.010762,
		35.383522, 32.819656, 47.475914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135353, 32.388779, 47.392921>,  <36.029331, 33.089615, 47.483444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135353, 32.388779, 47.392921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765533, 32.470955, 47.264545>,  <35.543640, 32.520260, 47.187519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765533, 32.470955, 47.264545>,  <36.135353, 32.388779, 47.392921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765533, 32.470955, 47.264545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267411, -0.250234, -0.930524,
		-0.271480, -0.946137, 0.176416,
		-0.924549, 0.205443, -0.320941,
		35.488167, 32.532585, 47.168262>
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
