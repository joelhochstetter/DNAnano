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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.876225, 32.977440, 23.530882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877289, 32.934647, 23.133179>,  <42.877926, 32.908970, 22.894556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.877289, 32.934647, 23.133179>,  <42.876225, 32.977440, 23.530882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877289, 32.934647, 23.133179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697825, 0.711956, -0.078474,
		0.716263, 0.694027, -0.072759,
		0.002662, -0.106981, -0.994258,
		42.878086, 32.902554, 22.834902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066227, 33.529594, 23.099596>,  <42.876225, 32.977440, 23.530882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066227, 33.529594, 23.099596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765163, 33.344242, 22.912502>,  <42.584526, 33.233028, 22.800245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765163, 33.344242, 22.912502>,  <43.066227, 33.529594, 23.099596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765163, 33.344242, 22.912502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570224, 0.813925, 0.111229,
		0.329158, 0.350430, -0.876843,
		-0.752662, -0.463385, -0.467733,
		42.539364, 33.205227, 22.772182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.762749, 34.029991, 22.786699>,  <43.066227, 33.529594, 23.099596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.762749, 34.029991, 22.786699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511749, 33.718979, 22.803165>,  <42.361149, 33.532372, 22.813046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.511749, 33.718979, 22.803165>,  <42.762749, 34.029991, 22.786699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511749, 33.718979, 22.803165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765720, 0.625826, 0.148377,
		-0.141129, 0.061586, -0.988074,
		-0.627500, -0.777528, 0.041165,
		42.323498, 33.485722, 22.815516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130974, 33.946705, 22.249994>,  <42.762749, 34.029991, 22.786699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130974, 33.946705, 22.249994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083237, 33.821514, 22.626888>,  <42.054596, 33.746399, 22.853024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083237, 33.821514, 22.626888>,  <42.130974, 33.946705, 22.249994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083237, 33.821514, 22.626888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647000, 0.744356, 0.165303,
		-0.753093, -0.589898, -0.291327,
		-0.119339, -0.312977, 0.942233,
		42.047436, 33.727619, 22.909557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414799, 33.622417, 22.352993>,  <42.130974, 33.946705, 22.249994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414799, 33.622417, 22.352993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579910, 33.794521, 22.674114>,  <41.678978, 33.897781, 22.866787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.579910, 33.794521, 22.674114>,  <41.414799, 33.622417, 22.352993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.579910, 33.794521, 22.674114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790250, 0.607438, 0.080774,
		-0.452900, -0.667757, 0.590748,
		0.412780, 0.430255, 0.802803,
		41.703743, 33.923599, 22.914955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018738, 33.491081, 22.917316>,  <41.414799, 33.622417, 22.352993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018738, 33.491081, 22.917316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196808, 33.848278, 22.943817>,  <41.303650, 34.062595, 22.959717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196808, 33.848278, 22.943817>,  <41.018738, 33.491081, 22.917316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196808, 33.848278, 22.943817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894289, 0.447140, -0.017697,
		-0.045427, -0.051370, 0.997646,
		0.445178, 0.892988, 0.066252,
		41.330360, 34.116173, 22.963694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313652, 33.712418, 22.862875>,  <41.018738, 33.491081, 22.917316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313652, 33.712418, 22.862875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374371, 34.092731, 22.754822>,  <40.410801, 34.320919, 22.689991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374371, 34.092731, 22.754822>,  <40.313652, 33.712418, 22.862875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374371, 34.092731, 22.754822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089118, -0.285350, -0.954271,
		-0.984387, 0.120777, -0.128045,
		0.151792, 0.950783, -0.270132,
		40.419907, 34.377968, 22.673782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795891, 33.894318, 22.364969>,  <40.313652, 33.712418, 22.862875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795891, 33.894318, 22.364969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098667, 34.148129, 22.302467>,  <40.280334, 34.300415, 22.264967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.098667, 34.148129, 22.302467>,  <39.795891, 33.894318, 22.364969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098667, 34.148129, 22.302467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054204, -0.177325, -0.982659,
		-0.651227, 0.752288, -0.099831,
		0.756944, 0.634523, -0.156255,
		40.325752, 34.338486, 22.255590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514946, 34.314232, 21.889551>,  <39.795891, 33.894318, 22.364969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514946, 34.314232, 21.889551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908268, 34.378307, 21.855045>,  <40.144260, 34.416752, 21.834341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.908268, 34.378307, 21.855045>,  <39.514946, 34.314232, 21.889551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908268, 34.378307, 21.855045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091420, 0.025071, -0.995497,
		-0.157306, 0.986768, 0.039297,
		0.983309, 0.160191, -0.086266,
		40.203262, 34.426365, 21.829166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603752, 34.624100, 21.214615>,  <39.514946, 34.314232, 21.889551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603752, 34.624100, 21.214615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978737, 34.519951, 21.307026>,  <40.203728, 34.457462, 21.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978737, 34.519951, 21.307026>,  <39.603752, 34.624100, 21.214615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978737, 34.519951, 21.307026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201367, -0.135729, -0.970066,
		0.283939, 0.955919, -0.074810,
		0.937459, -0.260376, 0.231030,
		40.259975, 34.441837, 21.376335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007042, 35.101540, 20.826479>,  <39.603752, 34.624100, 21.214615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007042, 35.101540, 20.826479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179218, 34.747173, 20.895607>,  <40.282524, 34.534554, 20.937084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.179218, 34.747173, 20.895607>,  <40.007042, 35.101540, 20.826479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179218, 34.747173, 20.895607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120275, -0.133460, -0.983729,
		0.894569, 0.444224, 0.049108,
		0.430442, -0.885920, 0.172818,
		40.308350, 34.481396, 20.947453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719707, 35.155930, 20.531414>,  <40.007042, 35.101540, 20.826479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719707, 35.155930, 20.531414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673237, 34.761333, 20.577618>,  <40.645355, 34.524574, 20.605339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673237, 34.761333, 20.577618>,  <40.719707, 35.155930, 20.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673237, 34.761333, 20.577618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382812, -0.151786, -0.911272,
		0.916492, -0.061650, 0.395274,
		-0.116177, -0.986489, 0.115510,
		40.638382, 34.465385, 20.612270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305729, 34.838215, 20.315262>,  <40.719707, 35.155930, 20.531414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305729, 34.838215, 20.315262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050449, 34.531055, 20.293194>,  <40.897282, 34.346760, 20.279953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050449, 34.531055, 20.293194>,  <41.305729, 34.838215, 20.315262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050449, 34.531055, 20.293194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317582, -0.197309, -0.927475,
		0.701318, -0.609433, 0.369791,
		-0.638197, -0.767894, -0.055168,
		40.858990, 34.300686, 20.276644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.688713, 34.354294, 20.017931>,  <41.305729, 34.838215, 20.315262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.688713, 34.354294, 20.017931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317104, 34.225159, 19.945595>,  <41.094139, 34.147678, 19.902193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317104, 34.225159, 19.945595>,  <41.688713, 34.354294, 20.017931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317104, 34.225159, 19.945595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277972, -0.286288, -0.916936,
		0.244246, -0.902118, 0.355705,
		-0.929019, -0.322834, -0.180839,
		41.038399, 34.128307, 19.891342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691536, 33.648197, 19.743645>,  <41.688713, 34.354294, 20.017931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691536, 33.648197, 19.743645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357975, 33.832100, 19.621513>,  <41.157837, 33.942444, 19.548235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.357975, 33.832100, 19.621513>,  <41.691536, 33.648197, 19.743645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.357975, 33.832100, 19.621513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274060, -0.135242, -0.952156,
		-0.479055, -0.877685, -0.013223,
		-0.833905, 0.459759, -0.305327,
		41.107803, 33.970028, 19.529915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516434, 33.194653, 19.167549>,  <41.691536, 33.648197, 19.743645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516434, 33.194653, 19.167549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272484, 33.509823, 19.133553>,  <41.126114, 33.698925, 19.113153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272484, 33.509823, 19.133553>,  <41.516434, 33.194653, 19.167549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272484, 33.509823, 19.133553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198777, -0.255908, -0.946044,
		-0.767162, -0.560075, 0.312694,
		-0.609877, 0.787925, -0.084992,
		41.089520, 33.746201, 19.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928173, 33.004379, 18.868084>,  <41.516434, 33.194653, 19.167549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928173, 33.004379, 18.868084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926189, 33.399765, 18.807529>,  <40.924999, 33.636997, 18.771196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926189, 33.399765, 18.807529>,  <40.928173, 33.004379, 18.868084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926189, 33.399765, 18.807529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217493, -0.148827, -0.964649,
		-0.976049, 0.028145, 0.215721,
		-0.004956, 0.988463, -0.151384,
		40.924702, 33.696304, 18.762114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343781, 33.187244, 18.555855>,  <40.928173, 33.004379, 18.868084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343781, 33.187244, 18.555855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611938, 33.459152, 18.436871>,  <40.772835, 33.622295, 18.365480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.611938, 33.459152, 18.436871>,  <40.343781, 33.187244, 18.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611938, 33.459152, 18.436871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261861, -0.158350, -0.952027,
		-0.694259, 0.716130, 0.071847,
		0.670398, 0.679767, -0.297462,
		40.813057, 33.663082, 18.347631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981670, 33.485950, 18.055429>,  <40.343781, 33.187244, 18.555855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981670, 33.485950, 18.055429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363297, 33.587509, 17.991798>,  <40.592270, 33.648445, 17.953619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363297, 33.587509, 17.991798>,  <39.981670, 33.485950, 18.055429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363297, 33.587509, 17.991798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108129, -0.203391, -0.973109,
		-0.279421, 0.945606, -0.166595,
		0.954061, 0.253893, -0.159079,
		40.649513, 33.663677, 17.944075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906147, 33.981133, 17.491995>,  <39.981670, 33.485950, 18.055429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906147, 33.981133, 17.491995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290443, 33.871056, 17.506069>,  <40.521023, 33.805008, 17.514513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290443, 33.871056, 17.506069>,  <39.906147, 33.981133, 17.491995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290443, 33.871056, 17.506069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050902, 0.050178, -0.997442,
		0.272727, 0.960078, 0.062217,
		0.960744, -0.275196, 0.035184,
		40.578667, 33.788498, 17.516624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202766, 34.388191, 17.101717>,  <39.906147, 33.981133, 17.491995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202766, 34.388191, 17.101717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459885, 34.081799, 17.098125>,  <40.614155, 33.897961, 17.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.459885, 34.081799, 17.098125>,  <40.202766, 34.388191, 17.101717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459885, 34.081799, 17.098125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120460, -0.089500, -0.988675,
		0.756506, 0.636599, -0.149800,
		0.642797, -0.765984, -0.008977,
		40.652725, 33.852005, 17.095432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617657, 34.445160, 16.524273>,  <40.202766, 34.388191, 17.101717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617657, 34.445160, 16.524273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682438, 34.057671, 16.599487>,  <40.721306, 33.825176, 16.644615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682438, 34.057671, 16.599487>,  <40.617657, 34.445160, 16.524273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682438, 34.057671, 16.599487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009461, -0.189017, -0.981928,
		0.986754, 0.160801, -0.021446,
		0.161949, -0.968718, 0.188035,
		40.731022, 33.767056, 16.655897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.994564, 34.202942, 15.990995>,  <40.617657, 34.445160, 16.524273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.994564, 34.202942, 15.990995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859035, 33.851723, 16.126186>,  <40.777718, 33.640991, 16.207300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859035, 33.851723, 16.126186>,  <40.994564, 34.202942, 15.990995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859035, 33.851723, 16.126186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144977, -0.306210, -0.940860,
		0.929614, -0.367782, -0.023547,
		-0.338821, -0.878050, 0.337977,
		40.757389, 33.588306, 16.227579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330669, 33.628738, 15.715055>,  <40.994564, 34.202942, 15.990995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330669, 33.628738, 15.715055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989052, 33.452251, 15.825278>,  <40.784081, 33.346359, 15.891413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989052, 33.452251, 15.825278>,  <41.330669, 33.628738, 15.715055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989052, 33.452251, 15.825278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103927, -0.374321, -0.921457,
		0.509715, -0.815602, 0.273831,
		-0.854043, -0.441222, 0.275560,
		40.732838, 33.319885, 15.907947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382866, 32.831951, 15.631927>,  <41.330669, 33.628738, 15.715055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382866, 32.831951, 15.631927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989502, 32.904312, 15.626676>,  <40.753483, 32.947727, 15.623526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989502, 32.904312, 15.626676>,  <41.382866, 32.831951, 15.631927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989502, 32.904312, 15.626676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089559, -0.547237, -0.832172,
		-0.157726, -0.817193, 0.554362,
		-0.983413, 0.180903, -0.013127,
		40.694477, 32.958584, 15.622738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081833, 32.280701, 15.176325>,  <41.382866, 32.831951, 15.631927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081833, 32.280701, 15.176325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778664, 32.539162, 15.212192>,  <40.596764, 32.694241, 15.233711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778664, 32.539162, 15.212192>,  <41.081833, 32.280701, 15.176325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778664, 32.539162, 15.212192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221994, -0.126222, -0.966844,
		-0.613415, -0.752694, 0.239109,
		-0.757919, 0.646157, 0.089667,
		40.551289, 32.733009, 15.239092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336109, 32.047260, 14.841300>,  <41.081833, 32.280701, 15.176325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336109, 32.047260, 14.841300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331272, 32.446121, 14.811542>,  <40.328369, 32.685440, 14.793687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331272, 32.446121, 14.811542>,  <40.336109, 32.047260, 14.841300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331272, 32.446121, 14.811542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331440, -0.074194, -0.940554,
		-0.943399, 0.013282, 0.331395,
		-0.012095, 0.997155, -0.074396,
		40.327644, 32.745270, 14.789223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645157, 32.336033, 14.870215>,  <40.336109, 32.047260, 14.841300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645157, 32.336033, 14.870215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937172, 32.499924, 14.651427>,  <40.112381, 32.598259, 14.520155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.937172, 32.499924, 14.651427>,  <39.645157, 32.336033, 14.870215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937172, 32.499924, 14.651427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476825, -0.267981, -0.837153,
		-0.489581, 0.871958, -0.000268,
		0.730034, 0.409726, -0.546969,
		40.156181, 32.622841, 14.487336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421024, 32.851215, 14.394078>,  <39.645157, 32.336033, 14.870215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421024, 32.851215, 14.394078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731865, 32.648151, 14.245271>,  <39.918369, 32.526314, 14.155987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.731865, 32.648151, 14.245271>,  <39.421024, 32.851215, 14.394078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731865, 32.648151, 14.245271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488672, -0.114185, -0.864963,
		0.396625, 0.853959, -0.336811,
		0.777102, -0.507656, -0.372018,
		39.964996, 32.495853, 14.133665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269398, 32.129456, 14.058868>,  <39.421024, 32.851215, 14.394078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269398, 32.129456, 14.058868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918743, 32.268452, 14.191987>,  <38.708351, 32.351849, 14.271858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918743, 32.268452, 14.191987>,  <39.269398, 32.129456, 14.058868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918743, 32.268452, 14.191987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274432, 0.207021, -0.939058,
		-0.395213, -0.914544, -0.086119,
		-0.876637, 0.347494, 0.332798,
		38.655750, 32.372700, 14.291826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664280, 31.795557, 13.785649>,  <39.269398, 32.129456, 14.058868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664280, 31.795557, 13.785649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634541, 32.188923, 13.851821>,  <38.616695, 32.424942, 13.891524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634541, 32.188923, 13.851821>,  <38.664280, 31.795557, 13.785649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634541, 32.188923, 13.851821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480499, 0.110032, -0.870065,
		-0.873838, -0.144181, 0.464349,
		-0.074353, 0.983415, 0.165429,
		38.612236, 32.483948, 13.901449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083523, 31.684996, 13.400458>,  <38.664280, 31.795557, 13.785649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083523, 31.684996, 13.400458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767246, 31.776325, 13.627677>,  <37.577480, 31.831123, 13.764009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767246, 31.776325, 13.627677>,  <38.083523, 31.684996, 13.400458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767246, 31.776325, 13.627677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311853, 0.948664, 0.052768,
		-0.526837, 0.218870, -0.821303,
		-0.790690, 0.228326, 0.568046,
		37.530041, 31.844824, 13.798091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268936, 32.376472, 13.414538>,  <38.083523, 31.684996, 13.400458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268936, 32.376472, 13.414538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998241, 32.335880, 13.706218>,  <37.835823, 32.311527, 13.881226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.998241, 32.335880, 13.706218>,  <38.268936, 32.376472, 13.414538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998241, 32.335880, 13.706218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267150, 0.889100, 0.371660,
		-0.686045, 0.446322, -0.574578,
		-0.676737, -0.101477, 0.729198,
		37.795219, 32.305439, 13.924977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288910, 33.040337, 13.611212>,  <38.268936, 32.376472, 13.414538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288910, 33.040337, 13.611212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051407, 32.866924, 13.882360>,  <37.908905, 32.762878, 14.045048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051407, 32.866924, 13.882360>,  <38.288910, 33.040337, 13.611212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051407, 32.866924, 13.882360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087647, 0.802585, 0.590063,
		-0.799857, 0.409767, -0.438543,
		-0.593757, -0.433529, 0.677868,
		37.873280, 32.736866, 14.085720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807304, 33.554131, 13.925434>,  <38.288910, 33.040337, 13.611212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807304, 33.554131, 13.925434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815174, 33.254475, 14.190284>,  <37.819897, 33.074680, 14.349194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815174, 33.254475, 14.190284>,  <37.807304, 33.554131, 13.925434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815174, 33.254475, 14.190284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025279, 0.661669, 0.749370,
		-0.999487, -0.031484, -0.005917,
		0.019678, -0.749135, 0.662125,
		37.821079, 33.029736, 14.388922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294811, 33.763992, 14.393870>,  <37.807304, 33.554131, 13.925434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294811, 33.763992, 14.393870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543594, 33.502033, 14.565579>,  <37.692863, 33.344856, 14.668605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543594, 33.502033, 14.565579>,  <37.294811, 33.763992, 14.393870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543594, 33.502033, 14.565579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087801, 0.486423, 0.869301,
		-0.778111, -0.578360, 0.245035,
		0.621959, -0.654899, 0.429272,
		37.730183, 33.305565, 14.694361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976677, 33.533295, 15.001285>,  <37.294811, 33.763992, 14.393870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976677, 33.533295, 15.001285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375561, 33.517090, 15.026383>,  <37.614891, 33.507366, 15.041443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375561, 33.517090, 15.026383>,  <36.976677, 33.533295, 15.001285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375561, 33.517090, 15.026383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040104, 0.418296, 0.907425,
		-0.063011, -0.907406, 0.415503,
		0.997207, -0.040514, 0.062748,
		37.674725, 33.504936, 15.045208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061352, 33.265148, 15.670941>,  <36.976677, 33.533295, 15.001285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061352, 33.265148, 15.670941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416397, 33.419144, 15.569804>,  <37.629425, 33.511543, 15.509122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416397, 33.419144, 15.569804>,  <37.061352, 33.265148, 15.670941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416397, 33.419144, 15.569804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155556, 0.266129, 0.951303,
		0.433535, -0.883717, 0.176330,
		0.887609, 0.384994, -0.252844,
		37.682678, 33.534641, 15.493951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511551, 33.026600, 16.209627>,  <37.061352, 33.265148, 15.670941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511551, 33.026600, 16.209627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729763, 33.322262, 16.051617>,  <37.860691, 33.499660, 15.956810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729763, 33.322262, 16.051617>,  <37.511551, 33.026600, 16.209627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729763, 33.322262, 16.051617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155374, 0.373975, 0.914331,
		0.823562, -0.560174, 0.089170,
		0.545532, 0.739154, -0.395028,
		37.893421, 33.544006, 15.933108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143044, 33.106674, 16.629889>,  <37.511551, 33.026600, 16.209627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143044, 33.106674, 16.629889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116493, 33.463211, 16.450512>,  <38.100563, 33.677135, 16.342886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116493, 33.463211, 16.450512>,  <38.143044, 33.106674, 16.629889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116493, 33.463211, 16.450512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023827, 0.450719, 0.892348,
		0.997510, 0.048545, -0.051155,
		-0.066375, 0.891345, -0.448440,
		38.096581, 33.730614, 16.315979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715401, 33.680126, 16.883913>,  <38.143044, 33.106674, 16.629889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715401, 33.680126, 16.883913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427380, 33.901466, 16.716423>,  <38.254566, 34.034271, 16.615929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427380, 33.901466, 16.716423>,  <38.715401, 33.680126, 16.883913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427380, 33.901466, 16.716423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202822, 0.744893, 0.635608,
		0.663620, 0.372743, -0.648592,
		-0.720050, 0.553351, -0.418725,
		38.211365, 34.067471, 16.590805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916241, 34.356152, 16.776047>,  <38.715401, 33.680126, 16.883913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916241, 34.356152, 16.776047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518276, 34.395962, 16.769848>,  <38.279495, 34.419849, 16.766129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518276, 34.395962, 16.769848>,  <38.916241, 34.356152, 16.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518276, 34.395962, 16.769848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074595, 0.831424, 0.550609,
		0.067685, 0.546652, -0.834620,
		-0.994914, 0.099527, -0.015497,
		38.219803, 34.425819, 16.765200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853600, 35.062252, 16.767719>,  <38.916241, 34.356152, 16.776047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853600, 35.062252, 16.767719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523853, 34.901878, 16.927555>,  <38.326004, 34.805653, 17.023457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523853, 34.901878, 16.927555>,  <38.853600, 35.062252, 16.767719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523853, 34.901878, 16.927555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011897, 0.718032, 0.695908,
		-0.565934, 0.568928, -0.596691,
		-0.824365, -0.400936, 0.399590,
		38.276543, 34.781597, 17.047432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532433, 35.629234, 17.102695>,  <38.853600, 35.062252, 16.767719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532433, 35.629234, 17.102695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284233, 35.344986, 17.235363>,  <38.135315, 35.174438, 17.314962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284233, 35.344986, 17.235363>,  <38.532433, 35.629234, 17.102695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284233, 35.344986, 17.235363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293672, 0.602718, 0.741948,
		-0.727145, 0.362975, -0.582674,
		-0.620497, -0.710620, 0.331668,
		38.098083, 35.131802, 17.334864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802639, 35.929562, 17.400761>,  <38.532433, 35.629234, 17.102695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802639, 35.929562, 17.400761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865658, 35.581516, 17.587555>,  <37.903469, 35.372688, 17.699631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.865658, 35.581516, 17.587555>,  <37.802639, 35.929562, 17.400761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865658, 35.581516, 17.587555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110901, 0.454310, 0.883914,
		-0.981264, -0.191051, -0.024920,
		0.157551, -0.870116, 0.466985,
		37.912922, 35.320480, 17.727650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252258, 35.908760, 17.896008>,  <37.802639, 35.929562, 17.400761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252258, 35.908760, 17.896008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536209, 35.663616, 18.034843>,  <37.706581, 35.516529, 18.118145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536209, 35.663616, 18.034843>,  <37.252258, 35.908760, 17.896008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536209, 35.663616, 18.034843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161656, 0.337872, 0.927205,
		-0.685522, -0.714312, 0.140776,
		0.709878, -0.612862, 0.347091,
		37.749172, 35.479759, 18.138971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922573, 35.686481, 18.588032>,  <37.252258, 35.908760, 17.896008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922573, 35.686481, 18.588032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310886, 35.590729, 18.594669>,  <37.543873, 35.533279, 18.598652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310886, 35.590729, 18.594669>,  <36.922573, 35.686481, 18.588032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310886, 35.590729, 18.594669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069581, 0.347014, 0.935275,
		-0.229644, -0.906796, 0.353532,
		0.970784, -0.239379, 0.016594,
		37.602123, 35.518913, 18.599648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078087, 35.466297, 19.203501>,  <36.922573, 35.686481, 18.588032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078087, 35.466297, 19.203501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462578, 35.496456, 19.097404>,  <37.693272, 35.514553, 19.033747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462578, 35.496456, 19.097404>,  <37.078087, 35.466297, 19.203501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462578, 35.496456, 19.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229259, 0.315985, 0.920648,
		0.153226, -0.945763, 0.286449,
		0.961229, 0.075397, -0.265242,
		37.750946, 35.519077, 19.017832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456707, 35.099251, 19.649065>,  <37.078087, 35.466297, 19.203501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456707, 35.099251, 19.649065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706947, 35.380760, 19.514408>,  <37.857090, 35.549664, 19.433615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706947, 35.380760, 19.514408>,  <37.456707, 35.099251, 19.649065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706947, 35.380760, 19.514408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296432, 0.184708, 0.937022,
		0.721630, -0.685995, -0.093066,
		0.625602, 0.703772, -0.336642,
		37.894627, 35.591892, 19.413416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181210, 35.007809, 19.998753>,  <37.456707, 35.099251, 19.649065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181210, 35.007809, 19.998753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185596, 35.386372, 19.869640>,  <38.188229, 35.613510, 19.792173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185596, 35.386372, 19.869640>,  <38.181210, 35.007809, 19.998753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185596, 35.386372, 19.869640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436481, 0.285890, 0.853083,
		0.899647, -0.150247, -0.409953,
		0.010972, 0.946410, -0.322780,
		38.188889, 35.670296, 19.772806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706604, 35.205437, 20.238361>,  <38.181210, 35.007809, 19.998753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706604, 35.205437, 20.238361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525524, 35.550568, 20.148392>,  <38.416874, 35.757645, 20.094410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525524, 35.550568, 20.148392>,  <38.706604, 35.205437, 20.238361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525524, 35.550568, 20.148392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225610, 0.354882, 0.907281,
		0.862647, 0.359985, -0.355319,
		-0.452703, 0.862827, -0.224922,
		38.389713, 35.809414, 20.080915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185459, 35.717510, 20.383074>,  <38.706604, 35.205437, 20.238361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185459, 35.717510, 20.383074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822933, 35.886364, 20.391098>,  <38.605419, 35.987675, 20.395912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.822933, 35.886364, 20.391098>,  <39.185459, 35.717510, 20.383074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822933, 35.886364, 20.391098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190947, 0.366694, 0.910535,
		0.377010, 0.829060, -0.412944,
		-0.906313, 0.422132, 0.020059,
		38.551041, 36.013004, 20.397116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356464, 36.411736, 20.627701>,  <39.185459, 35.717510, 20.383074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356464, 36.411736, 20.627701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964066, 36.362606, 20.687775>,  <38.728626, 36.333126, 20.723818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964066, 36.362606, 20.687775>,  <39.356464, 36.411736, 20.627701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964066, 36.362606, 20.687775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104638, 0.316893, 0.942672,
		-0.163379, 0.940475, -0.298019,
		-0.980999, -0.122828, 0.150183,
		38.669765, 36.325756, 20.732830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068378, 37.068478, 20.905851>,  <39.356464, 36.411736, 20.627701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068378, 37.068478, 20.905851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807327, 36.784016, 21.010418>,  <38.650696, 36.613338, 21.073158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807327, 36.784016, 21.010418>,  <39.068378, 37.068478, 20.905851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807327, 36.784016, 21.010418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054830, 0.299788, 0.952429,
		-0.755695, 0.635912, -0.156656,
		-0.652625, -0.711156, 0.261415,
		38.611542, 36.570667, 21.088842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620750, 37.393730, 21.356007>,  <39.068378, 37.068478, 20.905851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620750, 37.393730, 21.356007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568668, 37.005032, 21.434750>,  <38.537418, 36.771812, 21.481995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568668, 37.005032, 21.434750>,  <38.620750, 37.393730, 21.356007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568668, 37.005032, 21.434750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043590, 0.192744, 0.980281,
		-0.990529, 0.136219, 0.017262,
		-0.130205, -0.971748, 0.196856,
		38.529606, 36.713509, 21.493807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024998, 37.278957, 21.808117>,  <38.620750, 37.393730, 21.356007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024998, 37.278957, 21.808117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272121, 36.967754, 21.853748>,  <38.420395, 36.781033, 21.881126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272121, 36.967754, 21.853748>,  <38.024998, 37.278957, 21.808117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272121, 36.967754, 21.853748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032124, 0.169927, 0.984933,
		-0.785671, -0.604837, 0.129975,
		0.617810, -0.778009, 0.114076,
		38.457466, 36.734352, 21.887972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878479, 37.023956, 22.544973>,  <38.024998, 37.278957, 21.808117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878479, 37.023956, 22.544973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235474, 36.862514, 22.464397>,  <38.449669, 36.765648, 22.416052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235474, 36.862514, 22.464397>,  <37.878479, 37.023956, 22.544973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235474, 36.862514, 22.464397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284358, 0.156742, 0.945818,
		-0.350163, -0.901407, 0.254658,
		0.892483, -0.403605, -0.201438,
		38.503220, 36.741432, 22.403967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549141, 37.391296, 23.027052>,  <37.878479, 37.023956, 22.544973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549141, 37.391296, 23.027052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388714, 37.050659, 22.892033>,  <37.292458, 36.846279, 22.811022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388714, 37.050659, 22.892033>,  <37.549141, 37.391296, 23.027052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388714, 37.050659, 22.892033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916011, 0.369540, 0.156089,
		-0.008187, 0.371799, -0.928277,
		-0.401070, -0.851590, -0.337547,
		37.268394, 36.795181, 22.790770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841740, 37.458382, 22.695244>,  <37.549141, 37.391296, 23.027052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841740, 37.458382, 22.695244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851627, 37.063835, 22.760326>,  <36.857559, 36.827106, 22.799376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851627, 37.063835, 22.760326>,  <36.841740, 37.458382, 22.695244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851627, 37.063835, 22.760326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986046, 0.002745, 0.166450,
		-0.164627, -0.164551, -0.972533,
		0.024720, -0.986365, 0.162707,
		36.859043, 36.767925, 22.809139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422291, 37.133629, 22.244553>,  <36.841740, 37.458382, 22.695244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422291, 37.133629, 22.244553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443981, 36.876213, 22.549950>,  <36.456993, 36.721764, 22.733189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443981, 36.876213, 22.549950>,  <36.422291, 37.133629, 22.244553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443981, 36.876213, 22.549950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995722, -0.092135, -0.006941,
		0.074811, -0.759851, -0.645779,
		0.054224, -0.643536, 0.763493,
		36.460247, 36.683151, 22.778997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986675, 36.583778, 22.115549>,  <36.422291, 37.133629, 22.244553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986675, 36.583778, 22.115549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022831, 36.572796, 22.513760>,  <36.044525, 36.566208, 22.752686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022831, 36.572796, 22.513760>,  <35.986675, 36.583778, 22.115549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022831, 36.572796, 22.513760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978160, 0.185418, 0.093929,
		-0.187168, -0.982276, -0.010098,
		0.090392, -0.027458, 0.995528,
		36.049950, 36.564560, 22.812418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471313, 36.203674, 22.343660>,  <35.986675, 36.583778, 22.115549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471313, 36.203674, 22.343660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548618, 36.399498, 22.683773>,  <35.595001, 36.516991, 22.887840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548618, 36.399498, 22.683773>,  <35.471313, 36.203674, 22.343660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548618, 36.399498, 22.683773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980630, 0.124510, 0.151203,
		-0.031846, -0.863035, 0.504139,
		0.193264, 0.489559, 0.850283,
		35.606598, 36.546368, 22.938858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108501, 35.908268, 23.002913>,  <35.471313, 36.203674, 22.343660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108501, 35.908268, 23.002913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195896, 36.297550, 23.031582>,  <35.248333, 36.531120, 23.048784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195896, 36.297550, 23.031582>,  <35.108501, 35.908268, 23.002913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195896, 36.297550, 23.031582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941024, 0.190683, 0.279489,
		0.258332, -0.128511, 0.957470,
		0.218490, 0.973204, 0.071673,
		35.261444, 36.589512, 23.053083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947830, 35.941792, 23.727318>,  <35.108501, 35.908268, 23.002913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947830, 35.941792, 23.727318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883583, 36.279621, 23.931629>,  <34.845036, 36.482319, 24.054216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883583, 36.279621, 23.931629>,  <34.947830, 35.941792, 23.727318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883583, 36.279621, 23.931629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338763, -0.533233, 0.775178,
		0.927061, -0.048526, 0.371757,
		-0.160617, 0.844575, 0.510779,
		34.835400, 36.532993, 24.084864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217358, 35.927433, 24.324045>,  <34.947830, 35.941792, 23.727318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217358, 35.927433, 24.324045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911129, 36.176300, 24.389534>,  <34.727390, 36.325619, 24.428827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911129, 36.176300, 24.389534>,  <35.217358, 35.927433, 24.324045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911129, 36.176300, 24.389534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227245, -0.499598, 0.835920,
		0.601875, 0.602754, 0.523864,
		-0.765575, 0.622165, 0.163722,
		34.681458, 36.362949, 24.438650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399899, 36.287960, 24.955030>,  <35.217358, 35.927433, 24.324045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399899, 36.287960, 24.955030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005424, 36.334373, 24.907757>,  <34.768738, 36.362221, 24.879393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005424, 36.334373, 24.907757>,  <35.399899, 36.287960, 24.955030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005424, 36.334373, 24.907757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157743, -0.440543, 0.883764,
		0.050485, 0.890201, 0.452763,
		-0.986189, 0.116037, -0.118182,
		34.709568, 36.369186, 24.872303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126934, 36.615086, 25.585432>,  <35.399899, 36.287960, 24.955030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126934, 36.615086, 25.585432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801521, 36.453026, 25.418568>,  <34.606274, 36.355789, 25.318449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801521, 36.453026, 25.418568>,  <35.126934, 36.615086, 25.585432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801521, 36.453026, 25.418568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305047, -0.313420, 0.899285,
		-0.495092, 0.858849, 0.131386,
		-0.813529, -0.405150, -0.417161,
		34.557461, 36.331482, 25.293419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596626, 36.692051, 26.038435>,  <35.126934, 36.615086, 25.585432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596626, 36.692051, 26.038435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488491, 36.379532, 25.813404>,  <34.423611, 36.192020, 25.678385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488491, 36.379532, 25.813404>,  <34.596626, 36.692051, 26.038435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488491, 36.379532, 25.813404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308846, -0.483079, 0.819298,
		-0.911882, 0.395241, -0.110703,
		-0.270342, -0.781294, -0.562580,
		34.407387, 36.145145, 25.644630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048489, 36.445141, 26.525173>,  <34.596626, 36.692051, 26.038435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048489, 36.445141, 26.525173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065327, 36.184258, 26.222424>,  <34.075428, 36.027729, 26.040773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065327, 36.184258, 26.222424>,  <34.048489, 36.445141, 26.525173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065327, 36.184258, 26.222424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459053, -0.685473, 0.565152,
		-0.887411, 0.323657, -0.328249,
		0.042091, -0.652206, -0.756872,
		34.077953, 35.988594, 25.995361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341469, 36.247643, 26.235170>,  <34.048489, 36.445141, 26.525173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341469, 36.247643, 26.235170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593670, 35.947731, 26.154877>,  <33.744991, 35.767784, 26.106701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593670, 35.947731, 26.154877>,  <33.341469, 36.247643, 26.235170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593670, 35.947731, 26.154877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567772, -0.621857, 0.539379,
		-0.529242, -0.226111, -0.817788,
		0.630506, -0.749779, -0.200734,
		33.782822, 35.722797, 26.094656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923119, 35.734859, 25.980904>,  <33.341469, 36.247643, 26.235170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923119, 35.734859, 25.980904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255856, 35.568913, 26.128376>,  <33.455498, 35.469345, 26.216860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255856, 35.568913, 26.128376>,  <32.923119, 35.734859, 25.980904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255856, 35.568913, 26.128376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554976, -0.629394, 0.543935,
		0.006384, -0.657076, -0.753797,
		0.831842, -0.414867, 0.368679,
		33.505409, 35.444454, 26.238979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869083, 35.003250, 25.944696>,  <32.923119, 35.734859, 25.980904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869083, 35.003250, 25.944696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142021, 35.045113, 26.234097>,  <33.305786, 35.070229, 26.407736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142021, 35.045113, 26.234097>,  <32.869083, 35.003250, 25.944696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142021, 35.045113, 26.234097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450709, -0.718986, 0.529074,
		0.575556, -0.687100, -0.443429,
		0.682346, 0.104654, 0.723499,
		33.346725, 35.076508, 26.451147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001217, 34.295021, 26.320858>,  <32.869083, 35.003250, 25.944696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001217, 34.295021, 26.320858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160534, 34.568470, 26.565487>,  <33.256123, 34.732540, 26.712265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160534, 34.568470, 26.565487>,  <33.001217, 34.295021, 26.320858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160534, 34.568470, 26.565487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437469, -0.444453, 0.781717,
		0.806218, -0.578893, 0.122045,
		0.398288, 0.683626, 0.611574,
		33.280022, 34.773556, 26.748959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203342, 33.920994, 26.927496>,  <33.001217, 34.295021, 26.320858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203342, 33.920994, 26.927496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218819, 34.290443, 27.080032>,  <33.228104, 34.512112, 27.171555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218819, 34.290443, 27.080032>,  <33.203342, 33.920994, 26.927496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218819, 34.290443, 27.080032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571437, -0.292613, 0.766705,
		0.819733, -0.247577, 0.516472,
		0.038693, 0.923625, 0.381340,
		33.230427, 34.567532, 27.194435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468220, 33.885757, 27.591679>,  <33.203342, 33.920994, 26.927496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468220, 33.885757, 27.591679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267197, 34.231564, 27.594452>,  <33.146584, 34.439049, 27.596117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267197, 34.231564, 27.594452>,  <33.468220, 33.885757, 27.591679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267197, 34.231564, 27.594452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385454, -0.231235, 0.893284,
		0.773863, 0.446251, 0.449440,
		-0.502555, 0.864517, 0.006935,
		33.116428, 34.490917, 27.596533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616188, 34.069977, 28.169201>,  <33.468220, 33.885757, 27.591679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616188, 34.069977, 28.169201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302094, 34.303288, 28.086071>,  <33.113636, 34.443272, 28.036194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302094, 34.303288, 28.086071>,  <33.616188, 34.069977, 28.169201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302094, 34.303288, 28.086071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346952, -0.136473, 0.927900,
		0.512857, 0.800729, 0.309532,
		-0.785240, 0.583273, -0.207824,
		33.066521, 34.478268, 28.023724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581135, 34.635715, 28.610538>,  <33.616188, 34.069977, 28.169201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581135, 34.635715, 28.610538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208851, 34.547268, 28.493992>,  <32.985481, 34.494202, 28.424063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208851, 34.547268, 28.493992>,  <33.581135, 34.635715, 28.610538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208851, 34.547268, 28.493992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318884, 0.100315, 0.942470,
		-0.179165, 0.970075, -0.163873,
		-0.930705, -0.221115, -0.291369,
		32.929638, 34.480934, 28.406582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246567, 34.907978, 29.183954>,  <33.581135, 34.635715, 28.610538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246567, 34.907978, 29.183954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942429, 34.739330, 28.986324>,  <32.759945, 34.638142, 28.867746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942429, 34.739330, 28.986324>,  <33.246567, 34.907978, 29.183954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942429, 34.739330, 28.986324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522604, -0.054583, 0.850827,
		-0.385697, 0.905127, -0.178841,
		-0.760344, -0.421624, -0.494075,
		32.714325, 34.612843, 28.838102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720284, 35.446449, 29.163742>,  <33.246567, 34.907978, 29.183954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720284, 35.446449, 29.163742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555775, 35.082325, 29.145031>,  <32.457069, 34.863850, 29.133804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555775, 35.082325, 29.145031>,  <32.720284, 35.446449, 29.163742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555775, 35.082325, 29.145031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494433, 0.179683, 0.850441,
		-0.765761, 0.372892, -0.523987,
		-0.411274, -0.910311, -0.046776,
		32.432392, 34.809231, 29.130999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016174, 35.538197, 29.401066>,  <32.720284, 35.446449, 29.163742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016174, 35.538197, 29.401066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105782, 35.150967, 29.446060>,  <32.159546, 34.918629, 29.473057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105782, 35.150967, 29.446060>,  <32.016174, 35.538197, 29.401066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105782, 35.150967, 29.446060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432980, 0.004545, 0.901392,
		-0.873123, -0.250633, -0.418137,
		0.224018, -0.968072, 0.112487,
		32.172989, 34.860546, 29.479807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385866, 35.220364, 29.619638>,  <32.016174, 35.538197, 29.401066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385866, 35.220364, 29.619638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708956, 35.002411, 29.709698>,  <31.902809, 34.871639, 29.763733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708956, 35.002411, 29.709698>,  <31.385866, 35.220364, 29.619638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708956, 35.002411, 29.709698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223824, 0.069890, 0.972121,
		-0.545424, -0.835597, -0.065505,
		0.807723, -0.544880, 0.225146,
		31.951273, 34.838947, 29.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192984, 35.095089, 30.330788>,  <31.385866, 35.220364, 29.619638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192984, 35.095089, 30.330788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557003, 34.932758, 30.297043>,  <31.775415, 34.835361, 30.276796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557003, 34.932758, 30.297043>,  <31.192984, 35.095089, 30.330788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557003, 34.932758, 30.297043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067228, -0.056324, 0.996147,
		-0.409012, -0.912214, -0.023974,
		0.910049, -0.405824, -0.084364,
		31.830017, 34.811012, 30.271734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262556, 34.443691, 30.806604>,  <31.192984, 35.095089, 30.330788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262556, 34.443691, 30.806604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617523, 34.607662, 30.722267>,  <31.830503, 34.706043, 30.671665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617523, 34.607662, 30.722267>,  <31.262556, 34.443691, 30.806604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617523, 34.607662, 30.722267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245284, -0.032648, 0.968901,
		0.390293, -0.911535, -0.129521,
		0.887416, 0.409925, -0.210842,
		31.883747, 34.730640, 30.659014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718174, 34.036053, 31.181345>,  <31.262556, 34.443691, 30.806604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718174, 34.036053, 31.181345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956015, 34.344402, 31.089954>,  <32.098721, 34.529411, 31.035120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956015, 34.344402, 31.089954>,  <31.718174, 34.036053, 31.181345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956015, 34.344402, 31.089954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376532, -0.015902, 0.926267,
		0.710402, -0.636789, -0.299714,
		0.594603, 0.770874, -0.228475,
		32.134396, 34.575665, 31.021412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421062, 33.877819, 31.327515>,  <31.718174, 34.036053, 31.181345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421062, 33.877819, 31.327515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354183, 34.272030, 31.338688>,  <32.314056, 34.508556, 31.345392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354183, 34.272030, 31.338688>,  <32.421062, 33.877819, 31.327515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354183, 34.272030, 31.338688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270392, 0.018589, 0.962571,
		0.948120, 0.168496, -0.269586,
		-0.167201, 0.985527, 0.027935,
		32.304024, 34.567688, 31.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053699, 34.174114, 31.542913>,  <32.421062, 33.877819, 31.327515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053699, 34.174114, 31.542913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769192, 34.447948, 31.606712>,  <32.598488, 34.612247, 31.644991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769192, 34.447948, 31.606712>,  <33.053699, 34.174114, 31.542913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769192, 34.447948, 31.606712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286458, 0.075091, 0.955146,
		0.641899, 0.725058, -0.249514,
		-0.711272, 0.684582, 0.159497,
		32.555809, 34.653324, 31.654562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314743, 34.508446, 32.067162>,  <33.053699, 34.174114, 31.542913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314743, 34.508446, 32.067162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926388, 34.604252, 32.067398>,  <32.693375, 34.661736, 32.067539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926388, 34.604252, 32.067398>,  <33.314743, 34.508446, 32.067162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926388, 34.604252, 32.067398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002544, 0.007830, 0.999966,
		0.239501, 0.970861, -0.008212,
		-0.970893, 0.239514, 0.000594,
		32.635120, 34.676105, 32.067577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219807, 35.032528, 32.589111>,  <33.314743, 34.508446, 32.067162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219807, 35.032528, 32.589111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840851, 34.910915, 32.549053>,  <32.613480, 34.837948, 32.525017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840851, 34.910915, 32.549053>,  <33.219807, 35.032528, 32.589111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840851, 34.910915, 32.549053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094797, -0.032343, 0.994971,
		-0.305737, 0.952114, 0.001821,
		-0.947385, -0.304027, -0.100146,
		32.556637, 34.819706, 32.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870609, 35.370640, 33.152962>,  <33.219807, 35.032528, 32.589111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870609, 35.370640, 33.152962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626293, 35.065281, 33.068905>,  <32.479702, 34.882065, 33.018471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626293, 35.065281, 33.068905>,  <32.870609, 35.370640, 33.152962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626293, 35.065281, 33.068905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273565, -0.045597, 0.960772,
		-0.743032, 0.644319, -0.180988,
		-0.610791, -0.763396, -0.210143,
		32.443054, 34.836262, 33.005863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354111, 35.464275, 33.706978>,  <32.870609, 35.370640, 33.152962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354111, 35.464275, 33.706978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311890, 35.093914, 33.561890>,  <32.286556, 34.871696, 33.474838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311890, 35.093914, 33.561890>,  <32.354111, 35.464275, 33.706978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311890, 35.093914, 33.561890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281186, -0.322081, 0.903990,
		-0.953831, 0.197410, -0.226354,
		-0.105552, -0.925901, -0.362719,
		32.280224, 34.816143, 33.453075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665508, 35.213474, 33.809856>,  <32.354111, 35.464275, 33.706978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665508, 35.213474, 33.809856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883837, 34.880890, 33.768375>,  <32.014835, 34.681339, 33.743488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883837, 34.880890, 33.768375>,  <31.665508, 35.213474, 33.809856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883837, 34.880890, 33.768375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374867, -0.353004, 0.857241,
		-0.749370, -0.429025, -0.504364,
		0.545820, -0.831460, -0.103703,
		32.047585, 34.631451, 33.737263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141197, 34.841351, 34.060863>,  <31.665508, 35.213474, 33.809856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141197, 34.841351, 34.060863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493374, 34.651863, 34.068966>,  <31.704679, 34.538170, 34.073826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493374, 34.651863, 34.068966>,  <31.141197, 34.841351, 34.060863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493374, 34.651863, 34.068966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249888, -0.427283, 0.868899,
		-0.402949, -0.770083, -0.494575,
		0.880448, -0.473710, 0.020261,
		31.757507, 34.509747, 34.075043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964733, 34.182484, 34.306953>,  <31.141197, 34.841351, 34.060863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964733, 34.182484, 34.306953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358381, 34.201073, 34.375477>,  <31.594570, 34.212227, 34.416592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358381, 34.201073, 34.375477>,  <30.964733, 34.182484, 34.306953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358381, 34.201073, 34.375477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170091, -0.028987, 0.985002,
		0.050741, -0.998499, -0.020623,
		0.984121, 0.046472, 0.171307,
		31.653618, 34.215012, 34.426868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228514, 33.549561, 34.733143>,  <30.964733, 34.182484, 34.306953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228514, 33.549561, 34.733143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467966, 33.861351, 34.806961>,  <31.611637, 34.048428, 34.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467966, 33.861351, 34.806961>,  <31.228514, 33.549561, 34.733143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467966, 33.861351, 34.806961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309656, 0.012714, 0.950763,
		0.738753, -0.626301, 0.248982,
		0.598630, 0.779478, 0.184545,
		31.647554, 34.095196, 34.862324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548832, 33.384007, 35.292885>,  <31.228514, 33.549561, 34.733143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548832, 33.384007, 35.292885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591501, 33.781418, 35.308506>,  <31.617102, 34.019863, 35.317879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591501, 33.781418, 35.308506>,  <31.548832, 33.384007, 35.292885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591501, 33.781418, 35.308506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153170, -0.022389, 0.987946,
		0.982426, -0.111368, 0.149790,
		0.106672, 0.993527, 0.039053,
		31.623503, 34.079475, 35.320221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876604, 33.513954, 35.970676>,  <31.548832, 33.384007, 35.292885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876604, 33.513954, 35.970676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744795, 33.870701, 35.846752>,  <31.665709, 34.084751, 35.772396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744795, 33.870701, 35.846752>,  <31.876604, 33.513954, 35.970676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744795, 33.870701, 35.846752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325635, 0.200646, 0.923960,
		0.886214, 0.405354, 0.224306,
		-0.329525, 0.891868, -0.309813,
		31.645937, 34.138260, 35.753807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085609, 34.027264, 36.539799>,  <31.876604, 33.513954, 35.970676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085609, 34.027264, 36.539799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793657, 34.167927, 36.305321>,  <31.618486, 34.252323, 36.164635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793657, 34.167927, 36.305321>,  <32.085609, 34.027264, 36.539799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793657, 34.167927, 36.305321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504274, 0.301964, 0.809028,
		0.461508, 0.886090, -0.043066,
		-0.729876, 0.351656, -0.586191,
		31.574694, 34.273422, 36.129463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003780, 34.748684, 36.768818>,  <32.085609, 34.027264, 36.539799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003780, 34.748684, 36.768818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662783, 34.673313, 36.573780>,  <31.458183, 34.628090, 36.456757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662783, 34.673313, 36.573780>,  <32.003780, 34.748684, 36.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662783, 34.673313, 36.573780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522489, 0.335771, 0.783749,
		0.016036, 0.922903, -0.384697,
		-0.852495, -0.188432, -0.487591,
		31.407034, 34.616783, 36.427502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509821, 35.305420, 36.826519>,  <32.003780, 34.748684, 36.768818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509821, 35.305420, 36.826519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267105, 34.992008, 36.773006>,  <31.121475, 34.803963, 36.740898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267105, 34.992008, 36.773006>,  <31.509821, 35.305420, 36.826519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267105, 34.992008, 36.773006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636452, 0.378103, 0.672285,
		-0.476170, 0.493079, -0.728104,
		-0.606787, -0.783525, -0.133780,
		31.085070, 34.756950, 36.732872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928631, 35.589581, 37.123917>,  <31.509821, 35.305420, 36.826519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928631, 35.589581, 37.123917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831198, 35.202583, 37.096695>,  <30.772738, 34.970387, 37.080360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.831198, 35.202583, 37.096695>,  <30.928631, 35.589581, 37.123917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831198, 35.202583, 37.096695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613202, 0.099260, 0.783665,
		-0.751433, 0.232619, -0.617444,
		-0.243583, -0.967489, -0.068055,
		30.758123, 34.912338, 37.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170502, 35.494251, 37.307907>,  <30.928631, 35.589581, 37.123917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170502, 35.494251, 37.307907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325165, 35.134285, 37.388550>,  <30.417963, 34.918304, 37.436935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.325165, 35.134285, 37.388550>,  <30.170502, 35.494251, 37.307907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325165, 35.134285, 37.388550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459216, 0.001705, 0.888323,
		-0.799760, -0.436061, -0.412596,
		0.386659, -0.899916, 0.201610,
		30.441162, 34.864311, 37.449032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588242, 35.058872, 37.643711>,  <30.170502, 35.494251, 37.307907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588242, 35.058872, 37.643711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940517, 34.889122, 37.727898>,  <30.151882, 34.787273, 37.778408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940517, 34.889122, 37.727898>,  <29.588242, 35.058872, 37.643711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940517, 34.889122, 37.727898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271065, -0.087120, 0.958610,
		-0.388472, -0.901287, -0.191758,
		0.880690, -0.424372, 0.210463,
		30.204725, 34.761810, 37.791039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362818, 34.473488, 38.019096>,  <29.588242, 35.058872, 37.643711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362818, 34.473488, 38.019096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741037, 34.533970, 38.134388>,  <29.967968, 34.570259, 38.203564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741037, 34.533970, 38.134388>,  <29.362818, 34.473488, 38.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741037, 34.533970, 38.134388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272247, -0.117920, 0.954974,
		0.178386, -0.981444, -0.070334,
		0.945547, 0.151205, 0.288231,
		30.024702, 34.579330, 38.220856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379686, 34.114059, 38.661800>,  <29.362818, 34.473488, 38.019096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379686, 34.114059, 38.661800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701286, 34.351662, 38.672733>,  <29.894247, 34.494221, 38.679295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701286, 34.351662, 38.672733>,  <29.379686, 34.114059, 38.661800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701286, 34.351662, 38.672733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064048, 0.040805, 0.997112,
		0.591170, -0.803429, 0.070852,
		0.804000, 0.594001, 0.027335,
		29.942486, 34.529861, 38.680935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846645, 33.900314, 39.227047>,  <29.379686, 34.114059, 38.661800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846645, 33.900314, 39.227047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980244, 34.271492, 39.160877>,  <30.060402, 34.494198, 39.121174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980244, 34.271492, 39.160877>,  <29.846645, 33.900314, 39.227047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980244, 34.271492, 39.160877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078360, 0.202231, 0.976198,
		0.939312, -0.313082, 0.140258,
		0.333994, 0.927946, -0.165425,
		30.080442, 34.549877, 39.111248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440865, 33.867870, 39.589352>,  <29.846645, 33.900314, 39.227047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440865, 33.867870, 39.589352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286089, 34.235821, 39.563732>,  <30.193224, 34.456593, 39.548363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286089, 34.235821, 39.563732>,  <30.440865, 33.867870, 39.589352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286089, 34.235821, 39.563732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010349, 0.073784, 0.997220,
		0.922048, 0.385200, -0.038070,
		-0.386938, 0.919879, -0.064046,
		30.170008, 34.511784, 39.544518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822567, 34.251415, 39.943607>,  <30.440865, 33.867870, 39.589352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822567, 34.251415, 39.943607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473225, 34.445560, 39.927265>,  <30.263618, 34.562046, 39.917458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473225, 34.445560, 39.927265>,  <30.822567, 34.251415, 39.943607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473225, 34.445560, 39.927265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127566, 0.308883, 0.942506,
		0.470079, 0.817933, -0.331681,
		-0.873357, 0.485364, -0.040858,
		30.211218, 34.591171, 39.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956064, 34.903461, 40.240471>,  <30.822567, 34.251415, 39.943607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956064, 34.903461, 40.240471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568861, 34.828197, 40.306866>,  <30.336538, 34.783039, 40.346703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568861, 34.828197, 40.306866>,  <30.956064, 34.903461, 40.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568861, 34.828197, 40.306866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098378, 0.323956, 0.940943,
		-0.230821, 0.927172, -0.295082,
		-0.968010, -0.188160, 0.165989,
		30.278458, 34.771751, 40.356663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671457, 35.517517, 40.547462>,  <30.956064, 34.903461, 40.240471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671457, 35.517517, 40.547462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488373, 35.171265, 40.628635>,  <30.378523, 34.963512, 40.677338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488373, 35.171265, 40.628635>,  <30.671457, 35.517517, 40.547462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488373, 35.171265, 40.628635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072399, 0.191198, 0.978878,
		-0.886149, 0.462735, -0.024842,
		-0.457711, -0.865632, 0.202932,
		30.351059, 34.911575, 40.689514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043407, 35.569351, 41.141609>,  <30.671457, 35.517517, 40.547462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043407, 35.569351, 41.141609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200199, 35.201363, 41.141777>,  <30.294273, 34.980568, 41.141876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200199, 35.201363, 41.141777>,  <30.043407, 35.569351, 41.141609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200199, 35.201363, 41.141777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238970, 0.102256, 0.965628,
		-0.888396, -0.378405, 0.259928,
		0.391978, -0.919975, 0.000416,
		30.317793, 34.925369, 41.141903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643013, 34.938522, 41.314163>,  <30.043407, 35.569351, 41.141609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643013, 34.938522, 41.314163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261957, 34.839973, 41.385464>,  <29.033323, 34.780842, 41.428246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261957, 34.839973, 41.385464>,  <29.643013, 34.938522, 41.314163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261957, 34.839973, 41.385464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278964, 0.474701, -0.834768,
		0.121048, -0.844961, -0.520950,
		-0.952642, -0.246373, 0.178252,
		28.976164, 34.766060, 41.438938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315184, 34.546909, 40.664768>,  <29.643013, 34.938522, 41.314163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315184, 34.546909, 40.664768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081121, 34.771126, 40.899166>,  <28.940683, 34.905655, 41.039806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.081121, 34.771126, 40.899166>,  <29.315184, 34.546909, 40.664768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081121, 34.771126, 40.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305859, 0.516696, -0.799672,
		-0.751028, -0.647164, -0.130902,
		-0.585156, 0.560539, 0.585994,
		28.905575, 34.939289, 41.074963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.551668, 34.548832, 40.712421>,  <29.315184, 34.546909, 40.664768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.551668, 34.548832, 40.712421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694616, 34.917912, 40.770252>,  <28.780386, 35.139359, 40.804951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694616, 34.917912, 40.770252>,  <28.551668, 34.548832, 40.712421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694616, 34.917912, 40.770252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562585, 0.336240, -0.755275,
		-0.745508, 0.188576, 0.639262,
		0.357372, 0.922703, 0.144579,
		28.801828, 35.194721, 40.813625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931486, 35.047150, 40.865120>,  <28.551668, 34.548832, 40.712421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931486, 35.047150, 40.865120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250160, 35.182129, 40.664551>,  <28.441364, 35.263115, 40.544209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.250160, 35.182129, 40.664551>,  <27.931486, 35.047150, 40.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250160, 35.182129, 40.664551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600996, 0.354456, -0.716355,
		-0.064001, 0.872060, 0.485195,
		0.796685, 0.337448, -0.501420,
		28.489166, 35.283363, 40.514126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755602, 35.650948, 40.638424>,  <27.931486, 35.047150, 40.865120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755602, 35.650948, 40.638424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024096, 35.485275, 40.392529>,  <28.185192, 35.385872, 40.244991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024096, 35.485275, 40.392529>,  <27.755602, 35.650948, 40.638424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024096, 35.485275, 40.392529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584567, 0.214151, -0.782573,
		0.455773, 0.884643, -0.098371,
		0.671232, -0.414181, -0.614737,
		28.225466, 35.361023, 40.208107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773325, 36.403580, 40.598351>,  <27.755602, 35.650948, 40.638424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773325, 36.403580, 40.598351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155411, 36.370678, 40.484646>,  <28.384663, 36.350937, 40.416424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.155411, 36.370678, 40.484646>,  <27.773325, 36.403580, 40.598351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155411, 36.370678, 40.484646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157687, 0.671377, -0.724146,
		0.250407, 0.736537, 0.628338,
		0.955213, -0.082251, -0.284260,
		28.441975, 36.346004, 40.399368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918222, 36.986500, 40.180897>,  <27.773325, 36.403580, 40.598351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918222, 36.986500, 40.180897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231462, 36.746437, 40.115700>,  <28.419407, 36.602402, 40.076584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231462, 36.746437, 40.115700>,  <27.918222, 36.986500, 40.180897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231462, 36.746437, 40.115700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156180, 0.443477, -0.882573,
		0.601962, 0.665689, 0.441020,
		0.783102, -0.600155, -0.162989,
		28.466393, 36.566391, 40.066803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521828, 37.458054, 39.937103>,  <27.918222, 36.986500, 40.180897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521828, 37.458054, 39.937103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558756, 37.077690, 39.818947>,  <28.580914, 36.849472, 39.748051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558756, 37.077690, 39.818947>,  <28.521828, 37.458054, 39.937103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558756, 37.077690, 39.818947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349848, 0.308723, -0.884475,
		0.932246, -0.021687, 0.361174,
		0.092322, -0.950905, -0.295393,
		28.586452, 36.792419, 39.730328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143286, 37.461304, 39.598522>,  <28.521828, 37.458054, 39.937103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143286, 37.461304, 39.598522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978710, 37.123905, 39.460403>,  <28.879965, 36.921467, 39.377533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978710, 37.123905, 39.460403>,  <29.143286, 37.461304, 39.598522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978710, 37.123905, 39.460403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198659, 0.286743, -0.937184,
		0.889525, -0.454188, 0.049592,
		-0.411437, -0.843500, -0.345294,
		28.855278, 36.870853, 39.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631060, 37.155373, 39.134266>,  <29.143286, 37.461304, 39.598522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631060, 37.155373, 39.134266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278944, 36.999176, 39.026485>,  <29.067675, 36.905457, 38.961815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278944, 36.999176, 39.026485>,  <29.631060, 37.155373, 39.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278944, 36.999176, 39.026485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208399, 0.191963, -0.959020,
		0.426215, -0.900370, -0.087605,
		-0.880290, -0.390492, -0.269454,
		29.014856, 36.882027, 38.945648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.704988, 36.899879, 38.443279>,  <29.631060, 37.155373, 39.134266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.704988, 36.899879, 38.443279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305206, 36.894878, 38.455467>,  <29.065336, 36.891876, 38.462780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305206, 36.894878, 38.455467>,  <29.704988, 36.899879, 38.443279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305206, 36.894878, 38.455467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031715, 0.115788, -0.992768,
		0.008885, -0.993195, -0.116121,
		-0.999457, -0.012504, 0.030470,
		29.005369, 36.891125, 38.464607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374266, 36.338982, 37.965317>,  <29.704988, 36.899879, 38.443279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374266, 36.338982, 37.965317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100536, 36.624992, 38.022499>,  <28.936298, 36.796600, 38.056808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100536, 36.624992, 38.022499>,  <29.374266, 36.338982, 37.965317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100536, 36.624992, 38.022499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099761, 0.102401, -0.989728,
		-0.722321, -0.691557, 0.001257,
		-0.684325, 0.715027, 0.142957,
		28.895239, 36.839500, 38.065388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848543, 36.233936, 37.501427>,  <29.374266, 36.338982, 37.965317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848543, 36.233936, 37.501427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776346, 36.618908, 37.582577>,  <28.733028, 36.849892, 37.631268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776346, 36.618908, 37.582577>,  <28.848543, 36.233936, 37.501427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776346, 36.618908, 37.582577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146148, 0.177732, -0.973166,
		-0.972658, -0.205299, 0.108577,
		-0.180492, 0.962426, 0.202877,
		28.722198, 36.907635, 37.643440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310659, 36.343651, 37.105133>,  <28.848543, 36.233936, 37.501427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310659, 36.343651, 37.105133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466206, 36.705647, 37.174156>,  <28.559534, 36.922844, 37.215569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466206, 36.705647, 37.174156>,  <28.310659, 36.343651, 37.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466206, 36.705647, 37.174156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143286, 0.244424, -0.959023,
		-0.910083, 0.348208, 0.224721,
		0.388867, 0.904990, 0.172553,
		28.582865, 36.977142, 37.225922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957253, 36.882835, 36.603394>,  <28.310659, 36.343651, 37.105133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957253, 36.882835, 36.603394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309780, 37.033901, 36.716988>,  <28.521296, 37.124542, 36.785145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309780, 37.033901, 36.716988>,  <27.957253, 36.882835, 36.603394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309780, 37.033901, 36.716988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149337, 0.347572, -0.925685,
		-0.448305, 0.858232, 0.249922,
		0.881318, 0.377667, 0.283984,
		28.574175, 37.147202, 36.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018070, 37.345978, 36.065807>,  <27.957253, 36.882835, 36.603394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018070, 37.345978, 36.065807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379587, 37.340763, 36.236916>,  <28.596498, 37.337635, 36.339581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379587, 37.340763, 36.236916>,  <28.018070, 37.345978, 36.065807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379587, 37.340763, 36.236916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395520, 0.407223, -0.823246,
		-0.163463, 0.913236, 0.373203,
		0.903794, -0.013039, 0.427769,
		28.650726, 37.336853, 36.365246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352407, 38.003662, 35.903061>,  <28.018070, 37.345978, 36.065807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352407, 38.003662, 35.903061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655830, 37.762905, 36.002918>,  <28.837883, 37.618450, 36.062832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655830, 37.762905, 36.002918>,  <28.352407, 38.003662, 35.903061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655830, 37.762905, 36.002918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539543, 0.365359, -0.758555,
		0.365359, 0.710098, 0.601891,
		0.758555, -0.601891, 0.249641,
		28.883396, 37.582336, 36.077812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882246, 38.450439, 35.803421>,  <28.352407, 38.003662, 35.903061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882246, 38.450439, 35.803421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026466, 38.077583, 35.790005>,  <29.112999, 37.853870, 35.781956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026466, 38.077583, 35.790005>,  <28.882246, 38.450439, 35.803421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026466, 38.077583, 35.790005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406635, 0.189445, -0.893733,
		0.839435, 0.308597, 0.447344,
		0.360550, -0.932137, -0.033540,
		29.134632, 37.797943, 35.779942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547546, 38.531963, 35.539906>,  <28.882246, 38.450439, 35.803421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547546, 38.531963, 35.539906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456446, 38.149292, 35.467350>,  <29.401785, 37.919689, 35.423817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456446, 38.149292, 35.467350>,  <29.547546, 38.531963, 35.539906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456446, 38.149292, 35.467350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521049, 0.037634, -0.852697,
		0.822580, -0.288718, 0.489903,
		-0.227752, -0.956674, -0.181393,
		29.388121, 37.862289, 35.412933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039555, 38.312237, 35.044422>,  <29.547546, 38.531963, 35.539906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039555, 38.312237, 35.044422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807404, 37.987934, 35.013851>,  <29.668114, 37.793354, 34.995506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.807404, 37.987934, 35.013851>,  <30.039555, 38.312237, 35.044422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807404, 37.987934, 35.013851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417980, -0.216026, -0.882398,
		0.698896, -0.544069, 0.464255,
		-0.580376, -0.810754, -0.076430,
		29.633291, 37.744709, 34.990921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473854, 37.690819, 34.777519>,  <30.039555, 38.312237, 35.044422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473854, 37.690819, 34.777519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080097, 37.674042, 34.709152>,  <29.843843, 37.663975, 34.668133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080097, 37.674042, 34.709152>,  <30.473854, 37.690819, 34.777519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080097, 37.674042, 34.709152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175970, -0.219855, -0.959530,
		0.002671, -0.974630, 0.223805,
		-0.984392, -0.041946, -0.170919,
		29.784781, 37.661457, 34.657875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314575, 37.038750, 34.400620>,  <30.473854, 37.690819, 34.777519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314575, 37.038750, 34.400620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991850, 37.250919, 34.296543>,  <29.798214, 37.378220, 34.234097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991850, 37.250919, 34.296543>,  <30.314575, 37.038750, 34.400620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991850, 37.250919, 34.296543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226061, -0.129725, -0.965437,
		-0.545845, -0.837747, -0.015245,
		-0.806814, 0.530425, -0.260192,
		29.749805, 37.410046, 34.218487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.970951, 36.743641, 33.782532>,  <30.314575, 37.038750, 34.400620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.970951, 36.743641, 33.782532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816929, 37.112766, 33.787468>,  <29.724516, 37.334240, 33.790428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816929, 37.112766, 33.787468>,  <29.970951, 36.743641, 33.782532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816929, 37.112766, 33.787468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183966, 0.089848, -0.978818,
		-0.904371, -0.374631, -0.204363,
		-0.385057, 0.922810, 0.012337,
		29.701412, 37.389610, 33.791168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526110, 36.695290, 33.207890>,  <29.970951, 36.743641, 33.782532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526110, 36.695290, 33.207890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622234, 37.077862, 33.274208>,  <29.679909, 37.307407, 33.313999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622234, 37.077862, 33.274208>,  <29.526110, 36.695290, 33.207890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622234, 37.077862, 33.274208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385270, 0.062790, -0.920665,
		-0.890964, 0.285122, -0.353396,
		0.240312, 0.956432, 0.165793,
		29.694328, 37.364792, 33.323944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216469, 37.038116, 32.667034>,  <29.526110, 36.695290, 33.207890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216469, 37.038116, 32.667034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516287, 37.265240, 32.803139>,  <29.696178, 37.401512, 32.884800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516287, 37.265240, 32.803139>,  <29.216469, 37.038116, 32.667034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516287, 37.265240, 32.803139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295590, 0.172830, -0.939551,
		-0.592290, 0.804814, -0.038294,
		0.749546, 0.567806, 0.340261,
		29.741150, 37.435581, 32.905216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133137, 37.663834, 32.345676>,  <29.216469, 37.038116, 32.667034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133137, 37.663834, 32.345676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516756, 37.689365, 32.456059>,  <29.746927, 37.704685, 32.522289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516756, 37.689365, 32.456059>,  <29.133137, 37.663834, 32.345676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516756, 37.689365, 32.456059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227743, 0.405479, -0.885279,
		-0.168406, 0.911873, 0.374337,
		0.959048, 0.063834, 0.275957,
		29.804470, 37.708515, 32.538845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312214, 38.294918, 32.058708>,  <29.133137, 37.663834, 32.345676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312214, 38.294918, 32.058708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660080, 38.113041, 32.135586>,  <29.868799, 38.003914, 32.181713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660080, 38.113041, 32.135586>,  <29.312214, 38.294918, 32.058708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660080, 38.113041, 32.135586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361794, 0.322211, -0.874806,
		0.335844, 0.830321, 0.444721,
		0.869663, -0.454696, 0.192193,
		29.920979, 37.976631, 32.193245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664770, 38.782272, 31.693193>,  <29.312214, 38.294918, 32.058708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664770, 38.782272, 31.693193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881641, 38.450691, 31.748154>,  <30.011765, 38.251743, 31.781130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881641, 38.450691, 31.748154>,  <29.664770, 38.782272, 31.693193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881641, 38.450691, 31.748154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458519, 0.154848, -0.875090,
		0.704134, 0.537454, 0.464046,
		0.542177, -0.828954, 0.137399,
		30.044294, 38.202003, 31.789373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341208, 39.032639, 31.580559>,  <29.664770, 38.782272, 31.693193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341208, 39.032639, 31.580559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347141, 38.635693, 31.531597>,  <30.350700, 38.397526, 31.502220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347141, 38.635693, 31.531597>,  <30.341208, 39.032639, 31.580559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347141, 38.635693, 31.531597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454767, 0.115720, -0.883060,
		0.890487, -0.042568, 0.453014,
		0.014833, -0.992369, -0.122406,
		30.351591, 38.337982, 31.494875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047106, 38.869980, 31.369310>,  <30.341208, 39.032639, 31.580559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047106, 38.869980, 31.369310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809023, 38.579926, 31.230801>,  <30.666174, 38.405891, 31.147696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809023, 38.579926, 31.230801>,  <31.047106, 38.869980, 31.369310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809023, 38.579926, 31.230801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553121, -0.057118, -0.831141,
		0.582914, -0.686230, 0.435086,
		-0.595205, -0.725139, -0.346273,
		30.630461, 38.362385, 31.126919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510433, 38.576195, 30.899395>,  <31.047106, 38.869980, 31.369310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510433, 38.576195, 30.899395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167273, 38.405464, 30.784973>,  <30.961376, 38.303028, 30.716320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167273, 38.405464, 30.784973>,  <31.510433, 38.576195, 30.899395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167273, 38.405464, 30.784973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436859, -0.312855, -0.843372,
		0.270477, -0.848495, 0.454860,
		-0.857902, -0.426822, -0.286053,
		30.909903, 38.277416, 30.699158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713423, 37.971012, 30.615246>,  <31.510433, 38.576195, 30.899395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713423, 37.971012, 30.615246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355429, 38.071426, 30.467743>,  <31.140633, 38.131676, 30.379242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355429, 38.071426, 30.467743>,  <31.713423, 37.971012, 30.615246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355429, 38.071426, 30.467743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312223, -0.237911, -0.919737,
		-0.318620, -0.938285, 0.134547,
		-0.894985, 0.251037, -0.368757,
		31.086933, 38.146736, 30.357117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545424, 37.516018, 30.149158>,  <31.713423, 37.971012, 30.615246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545424, 37.516018, 30.149158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280796, 37.797562, 30.045689>,  <31.122021, 37.966488, 29.983606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280796, 37.797562, 30.045689>,  <31.545424, 37.516018, 30.149158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280796, 37.797562, 30.045689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236221, -0.131782, -0.962722,
		-0.711709, -0.698009, -0.079084,
		-0.661566, 0.703859, -0.258675,
		31.082327, 38.008720, 29.968086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078930, 37.192402, 29.608257>,  <31.545424, 37.516018, 30.149158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078930, 37.192402, 29.608257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085649, 37.589703, 29.562347>,  <31.089682, 37.828083, 29.534801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085649, 37.589703, 29.562347>,  <31.078930, 37.192402, 29.608257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085649, 37.589703, 29.562347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187325, -0.115885, -0.975439,
		-0.982154, -0.005114, -0.188007,
		0.016798, 0.993250, -0.114775,
		31.090689, 37.887676, 29.527914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670353, 37.336933, 28.970070>,  <31.078930, 37.192402, 29.608257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670353, 37.336933, 28.970070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861189, 37.680367, 29.045132>,  <30.975691, 37.886429, 29.090168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861189, 37.680367, 29.045132>,  <30.670353, 37.336933, 28.970070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861189, 37.680367, 29.045132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192745, 0.106102, -0.975495,
		-0.857457, 0.501570, -0.114868,
		0.477091, 0.858586, 0.187654,
		31.004316, 37.937943, 29.101427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530996, 37.730141, 28.330225>,  <30.670353, 37.336933, 28.970070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530996, 37.730141, 28.330225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836620, 37.941853, 28.477779>,  <31.019995, 38.068882, 28.566311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.836620, 37.941853, 28.477779>,  <30.530996, 37.730141, 28.330225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836620, 37.941853, 28.477779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290381, 0.228450, -0.929241,
		-0.576103, 0.817111, 0.020855,
		0.764058, 0.529282, 0.368885,
		31.065838, 38.100636, 28.588446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458349, 38.287003, 28.032452>,  <30.530996, 37.730141, 28.330225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458349, 38.287003, 28.032452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838490, 38.322994, 28.151608>,  <31.066574, 38.344589, 28.223101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.838490, 38.322994, 28.151608>,  <30.458349, 38.287003, 28.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838490, 38.322994, 28.151608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257858, 0.308166, -0.915720,
		-0.174197, 0.947068, 0.269663,
		0.950350, 0.089981, 0.297891,
		31.123594, 38.349987, 28.240974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748903, 38.964096, 27.803375>,  <30.458349, 38.287003, 28.032452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748903, 38.964096, 27.803375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070305, 38.731083, 27.852421>,  <31.263145, 38.591274, 27.881849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070305, 38.731083, 27.852421>,  <30.748903, 38.964096, 27.803375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070305, 38.731083, 27.852421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337919, 0.276756, -0.899565,
		0.490090, 0.764240, 0.419224,
		0.803506, -0.582532, 0.122615,
		31.311357, 38.556324, 27.889206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282236, 39.343575, 27.399891>,  <30.748903, 38.964096, 27.803375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282236, 39.343575, 27.399891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388260, 38.961094, 27.449554>,  <31.451874, 38.731606, 27.479353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388260, 38.961094, 27.449554>,  <31.282236, 39.343575, 27.399891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388260, 38.961094, 27.449554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334249, -0.029664, -0.942018,
		0.904445, 0.291191, 0.311748,
		0.265059, -0.956205, 0.124160,
		31.467777, 38.674232, 27.486803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920727, 39.349430, 27.150122>,  <31.282236, 39.343575, 27.399891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920727, 39.349430, 27.150122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840544, 38.957706, 27.161255>,  <31.792435, 38.722672, 27.167934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840544, 38.957706, 27.161255>,  <31.920727, 39.349430, 27.150122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840544, 38.957706, 27.161255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567821, -0.139287, -0.811282,
		0.798371, -0.146824, 0.583992,
		-0.200458, -0.979307, 0.027833,
		31.780407, 38.663914, 27.169605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607185, 39.018055, 27.093088>,  <31.920727, 39.349430, 27.150122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607185, 39.018055, 27.093088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314240, 38.790062, 26.944088>,  <32.138470, 38.653267, 26.854687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314240, 38.790062, 26.944088>,  <32.607185, 39.018055, 27.093088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314240, 38.790062, 26.944088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474934, -0.035591, -0.879301,
		0.487929, -0.820886, 0.296770,
		-0.732368, -0.569983, -0.372501,
		32.094528, 38.619068, 26.832338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907291, 38.701153, 26.659313>,  <32.607185, 39.018055, 27.093088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907291, 38.701153, 26.659313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540836, 38.575821, 26.559299>,  <32.320965, 38.500622, 26.499290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540836, 38.575821, 26.559299>,  <32.907291, 38.701153, 26.659313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540836, 38.575821, 26.559299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308176, -0.151615, -0.939170,
		0.256358, -0.937464, 0.235460,
		-0.916137, -0.313327, -0.250036,
		32.265995, 38.481823, 26.484289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981972, 38.039337, 26.272974>,  <32.907291, 38.701153, 26.659313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981972, 38.039337, 26.272974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622669, 38.183212, 26.171978>,  <32.407085, 38.269539, 26.111380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622669, 38.183212, 26.171978>,  <32.981972, 38.039337, 26.272974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622669, 38.183212, 26.171978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174283, -0.235865, -0.956030,
		-0.403428, -0.902768, 0.149180,
		-0.898260, 0.359690, -0.252492,
		32.353191, 38.291119, 26.096230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842457, 37.632751, 25.762110>,  <32.981972, 38.039337, 26.272974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842457, 37.632751, 25.762110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590702, 37.939842, 25.713997>,  <32.439648, 38.124096, 25.685129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590702, 37.939842, 25.713997>,  <32.842457, 37.632751, 25.762110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590702, 37.939842, 25.713997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044978, -0.118538, -0.991930,
		-0.775788, -0.629719, 0.040076,
		-0.629388, 0.767725, -0.120284,
		32.401886, 38.170158, 25.677912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287289, 37.397995, 25.304752>,  <32.842457, 37.632751, 25.762110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287289, 37.397995, 25.304752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284645, 37.794586, 25.252712>,  <32.283058, 38.032539, 25.221487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284645, 37.794586, 25.252712>,  <32.287289, 37.397995, 25.304752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284645, 37.794586, 25.252712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106603, -0.128666, -0.985942,
		-0.994280, -0.020381, -0.104845,
		-0.006605, 0.991478, -0.130103,
		32.282665, 38.092030, 25.213682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762836, 37.556038, 24.910261>,  <32.287289, 37.397995, 25.304752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762836, 37.556038, 24.910261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051189, 37.827412, 24.853622>,  <32.224201, 37.990238, 24.819639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051189, 37.827412, 24.853622>,  <31.762836, 37.556038, 24.910261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051189, 37.827412, 24.853622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008978, -0.195146, -0.980733,
		-0.692999, 0.708264, -0.134587,
		0.720882, 0.678439, -0.141595,
		32.267452, 38.030945, 24.811144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334419, 37.944187, 25.439678>,  <31.762836, 37.556038, 24.910261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334419, 37.944187, 25.439678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138855, 37.633213, 25.281406>,  <31.021517, 37.446629, 25.186443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138855, 37.633213, 25.281406>,  <31.334419, 37.944187, 25.439678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138855, 37.633213, 25.281406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852035, 0.328302, 0.407742,
		-0.187091, 0.536481, -0.822913,
		-0.488910, -0.777436, -0.395678,
		30.992182, 37.399982, 25.162703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.693790, 38.201061, 25.159119>,  <31.334419, 37.944187, 25.439678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.693790, 38.201061, 25.159119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646299, 37.811447, 25.236233>,  <30.617805, 37.577679, 25.282501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646299, 37.811447, 25.236233>,  <30.693790, 38.201061, 25.159119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646299, 37.811447, 25.236233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848913, 0.200283, 0.489115,
		-0.515025, -0.105588, -0.850647,
		-0.118726, -0.974032, 0.192786,
		30.610682, 37.519238, 25.294069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009359, 37.988529, 24.854464>,  <30.693790, 38.201061, 25.159119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009359, 37.988529, 24.854464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098690, 37.709938, 25.127239>,  <30.152288, 37.542782, 25.290905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098690, 37.709938, 25.127239>,  <30.009359, 37.988529, 24.854464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098690, 37.709938, 25.127239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939190, 0.033475, 0.341763,
		-0.260859, -0.716794, -0.646652,
		0.223327, -0.696481, 0.681938,
		30.165688, 37.500996, 25.331821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421627, 37.464188, 24.884605>,  <30.009359, 37.988529, 24.854464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421627, 37.464188, 24.884605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610285, 37.390053, 25.229443>,  <29.723480, 37.345573, 25.436344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610285, 37.390053, 25.229443>,  <29.421627, 37.464188, 24.884605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610285, 37.390053, 25.229443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879137, -0.023061, 0.476012,
		-0.068344, -0.982403, -0.173818,
		0.471644, -0.185342, 0.862091,
		29.751778, 37.334450, 25.488070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114849, 36.846313, 25.170828>,  <29.421627, 37.464188, 24.884605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114849, 36.846313, 25.170828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290974, 37.029076, 25.479984>,  <29.396648, 37.138733, 25.665478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290974, 37.029076, 25.479984>,  <29.114849, 36.846313, 25.170828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290974, 37.029076, 25.479984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862830, -0.022724, 0.504983,
		0.248295, -0.889223, 0.384230,
		0.440311, 0.456910, 0.772890,
		29.423067, 37.166149, 25.711851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894360, 36.526749, 25.833300>,  <29.114849, 36.846313, 25.170828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894360, 36.526749, 25.833300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029055, 36.873642, 25.980003>,  <29.109871, 37.081779, 26.068026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029055, 36.873642, 25.980003>,  <28.894360, 36.526749, 25.833300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029055, 36.873642, 25.980003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808619, 0.066774, 0.584531,
		0.482435, -0.493402, 0.723748,
		0.336736, 0.867234, 0.366760,
		29.130075, 37.133812, 26.090031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880190, 36.468563, 26.688425>,  <28.894360, 36.526749, 25.833300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880190, 36.468563, 26.688425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893618, 36.855431, 26.587662>,  <28.901674, 37.087551, 26.527205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893618, 36.855431, 26.587662>,  <28.880190, 36.468563, 26.688425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893618, 36.855431, 26.587662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526692, 0.231329, 0.817975,
		0.849393, 0.105219, 0.517166,
		0.033569, 0.967169, -0.251908,
		28.903688, 37.145580, 26.512089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108559, 36.802929, 27.343781>,  <28.880190, 36.468563, 26.688425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108559, 36.802929, 27.343781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944166, 37.107544, 27.143322>,  <28.845530, 37.290314, 27.023046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944166, 37.107544, 27.143322>,  <29.108559, 36.802929, 27.343781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944166, 37.107544, 27.143322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550248, 0.231073, 0.802392,
		0.726856, 0.605524, 0.324070,
		-0.410984, 0.761542, -0.501145,
		28.820871, 37.336006, 26.992979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215141, 37.374130, 27.779404>,  <29.108559, 36.802929, 27.343781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215141, 37.374130, 27.779404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929564, 37.486519, 27.522861>,  <28.758217, 37.553951, 27.368937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929564, 37.486519, 27.522861>,  <29.215141, 37.374130, 27.779404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929564, 37.486519, 27.522861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551159, 0.339428, 0.762242,
		0.431865, 0.897687, -0.087471,
		-0.713945, 0.280975, -0.641355,
		28.715380, 37.570812, 27.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127768, 38.025795, 27.852377>,  <29.215141, 37.374130, 27.779404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127768, 38.025795, 27.852377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776274, 37.906273, 27.703491>,  <28.565378, 37.834560, 27.614161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776274, 37.906273, 27.703491>,  <29.127768, 38.025795, 27.852377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776274, 37.906273, 27.703491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467498, 0.381469, 0.797450,
		-0.096293, 0.874756, -0.474899,
		-0.878734, -0.298803, -0.372214,
		28.512653, 37.816631, 27.591827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713177, 38.394165, 28.046818>,  <29.127768, 38.025795, 27.852377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713177, 38.394165, 28.046818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431532, 38.131741, 27.938148>,  <28.262545, 37.974285, 27.872948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431532, 38.131741, 27.938148>,  <28.713177, 38.394165, 28.046818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431532, 38.131741, 27.938148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530871, 0.232263, 0.815003,
		-0.471592, 0.718079, -0.511824,
		-0.704114, -0.656061, -0.271674,
		28.220297, 37.934921, 27.856646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013659, 38.637581, 28.442270>,  <28.713177, 38.394165, 28.046818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013659, 38.637581, 28.442270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987707, 38.250732, 28.343903>,  <27.972137, 38.018623, 28.284882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987707, 38.250732, 28.343903>,  <28.013659, 38.637581, 28.442270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987707, 38.250732, 28.343903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478211, -0.186167, 0.858287,
		-0.875846, 0.173284, -0.450408,
		-0.064876, -0.967117, -0.245920,
		27.968245, 37.960598, 28.270126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291897, 38.452278, 28.461544>,  <28.013659, 38.637581, 28.442270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291897, 38.452278, 28.461544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492353, 38.111935, 28.524670>,  <27.612627, 37.907730, 28.562546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492353, 38.111935, 28.524670>,  <27.291897, 38.452278, 28.461544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492353, 38.111935, 28.524670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493351, -0.131084, 0.859896,
		-0.710960, -0.508786, -0.485462,
		0.501140, -0.850855, 0.157815,
		27.642694, 37.856678, 28.572014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727985, 38.032543, 28.784801>,  <27.291897, 38.452278, 28.461544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727985, 38.032543, 28.784801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085157, 37.863503, 28.846874>,  <27.299461, 37.762077, 28.884119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085157, 37.863503, 28.846874>,  <26.727985, 38.032543, 28.784801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085157, 37.863503, 28.846874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300179, -0.301999, 0.904814,
		-0.335516, -0.854517, -0.396521,
		0.892929, -0.422607, 0.155182,
		27.353037, 37.736721, 28.893429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491425, 37.455982, 29.083986>,  <26.727985, 38.032543, 28.784801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491425, 37.455982, 29.083986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876650, 37.525520, 29.166237>,  <27.107786, 37.567242, 29.215588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876650, 37.525520, 29.166237>,  <26.491425, 37.455982, 29.083986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876650, 37.525520, 29.166237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146581, -0.302105, 0.941938,
		0.225874, -0.937288, -0.265464,
		0.963065, 0.173847, 0.205626,
		27.165569, 37.577675, 29.227924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690178, 36.846062, 29.361221>,  <26.491425, 37.455982, 29.083986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690178, 36.846062, 29.361221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945711, 37.122242, 29.496971>,  <27.099031, 37.287949, 29.578421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.945711, 37.122242, 29.496971>,  <26.690178, 36.846062, 29.361221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.945711, 37.122242, 29.496971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022685, -0.424026, 0.905366,
		0.769011, -0.586077, -0.255219,
		0.638833, 0.690446, 0.339376,
		27.137362, 37.329376, 29.598783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208437, 36.499947, 29.733589>,  <26.690178, 36.846062, 29.361221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208437, 36.499947, 29.733589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178734, 36.877522, 29.862251>,  <27.160912, 37.104069, 29.939447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178734, 36.877522, 29.862251>,  <27.208437, 36.499947, 29.733589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178734, 36.877522, 29.862251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053663, -0.325859, 0.943894,
		0.995794, 0.052832, 0.074853,
		-0.074260, 0.943941, 0.321654,
		27.156456, 37.160706, 29.958748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698807, 36.561546, 30.166031>,  <27.208437, 36.499947, 29.733589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698807, 36.561546, 30.166031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504366, 36.874241, 30.322281>,  <27.387701, 37.061859, 30.416031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504366, 36.874241, 30.322281>,  <27.698807, 36.561546, 30.166031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504366, 36.874241, 30.322281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207667, -0.330855, 0.920549,
		0.848871, 0.528599, -0.001513,
		-0.486100, 0.781741, 0.390625,
		27.358536, 37.108765, 30.439468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134081, 36.763897, 30.702612>,  <27.698807, 36.561546, 30.166031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134081, 36.763897, 30.702612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787615, 36.933956, 30.807690>,  <27.579735, 37.035992, 30.870737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.787615, 36.933956, 30.807690>,  <28.134081, 36.763897, 30.702612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787615, 36.933956, 30.807690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144168, -0.290736, 0.945880,
		0.478509, 0.857161, 0.190534,
		-0.866166, 0.425143, 0.262695,
		27.527765, 37.061501, 30.886497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294851, 37.089706, 31.332096>,  <28.134081, 36.763897, 30.702612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294851, 37.089706, 31.332096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895664, 37.073132, 31.351467>,  <27.656153, 37.063187, 31.363091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895664, 37.073132, 31.351467>,  <28.294851, 37.089706, 31.332096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895664, 37.073132, 31.351467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048151, 0.007686, 0.998811,
		-0.041762, 0.999112, -0.005675,
		-0.997967, -0.041439, 0.048429,
		27.596273, 37.060699, 31.365995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072029, 37.615501, 31.840466>,  <28.294851, 37.089706, 31.332096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072029, 37.615501, 31.840466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761936, 37.363319, 31.824753>,  <27.575880, 37.212009, 31.815325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761936, 37.363319, 31.824753>,  <28.072029, 37.615501, 31.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761936, 37.363319, 31.824753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071883, -0.149836, 0.986094,
		-0.627570, 0.761631, 0.161476,
		-0.775234, -0.630451, -0.039284,
		27.529366, 37.174183, 31.812967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.637169, 37.758850, 32.448330>,  <28.072029, 37.615501, 31.840466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.637169, 37.758850, 32.448330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509510, 37.401093, 32.322983>,  <27.432915, 37.186436, 32.247776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509510, 37.401093, 32.322983>,  <27.637169, 37.758850, 32.448330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509510, 37.401093, 32.322983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023201, -0.337935, 0.940883,
		-0.947421, 0.293010, 0.128602,
		-0.319147, -0.894397, -0.313368,
		27.413767, 37.132774, 32.228973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150002, 37.648632, 32.968170>,  <27.637169, 37.758850, 32.448330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150002, 37.648632, 32.968170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287413, 37.296326, 32.837795>,  <27.369860, 37.084942, 32.759571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.287413, 37.296326, 32.837795>,  <27.150002, 37.648632, 32.968170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287413, 37.296326, 32.837795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023360, -0.338937, 0.940519,
		-0.938851, -0.330710, -0.095860,
		0.343530, -0.880768, -0.325937,
		27.390472, 37.032097, 32.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734207, 37.194370, 33.320526>,  <27.150002, 37.648632, 32.968170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734207, 37.194370, 33.320526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053719, 36.984505, 33.202759>,  <27.245426, 36.858585, 33.132099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053719, 36.984505, 33.202759>,  <26.734207, 37.194370, 33.320526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053719, 36.984505, 33.202759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060120, -0.417305, 0.906776,
		-0.598612, -0.742014, -0.301791,
		0.798780, -0.524663, -0.294414,
		27.293352, 36.827106, 33.114433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563931, 36.480202, 33.425835>,  <26.734207, 37.194370, 33.320526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563931, 36.480202, 33.425835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961527, 36.522568, 33.414753>,  <27.200085, 36.547985, 33.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961527, 36.522568, 33.414753>,  <26.563931, 36.480202, 33.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961527, 36.522568, 33.414753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078787, -0.516320, 0.852764,
		0.076013, -0.849821, -0.521562,
		0.993989, 0.105913, -0.027708,
		27.259724, 36.554340, 33.406441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787140, 35.826591, 33.394245>,  <26.563931, 36.480202, 33.425835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787140, 35.826591, 33.394245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097666, 36.031136, 33.541676>,  <27.283981, 36.153862, 33.630135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097666, 36.031136, 33.541676>,  <26.787140, 35.826591, 33.394245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097666, 36.031136, 33.541676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019776, -0.604191, 0.796594,
		0.630034, -0.611120, -0.479156,
		0.776316, 0.511357, 0.368575,
		27.330561, 36.184544, 33.652248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196684, 35.313175, 33.601826>,  <26.787140, 35.826591, 33.394245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196684, 35.313175, 33.601826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348112, 35.633121, 33.788116>,  <27.438969, 35.825089, 33.899891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348112, 35.633121, 33.788116>,  <27.196684, 35.313175, 33.601826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348112, 35.633121, 33.788116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271319, -0.576974, 0.770381,
		0.884913, -0.165281, -0.435443,
		0.378568, 0.799865, 0.465728,
		27.461683, 35.873081, 33.927834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853384, 35.114697, 33.847412>,  <27.196684, 35.313175, 33.601826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853384, 35.114697, 33.847412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738085, 35.428673, 34.066788>,  <27.668905, 35.617058, 34.198414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738085, 35.428673, 34.066788>,  <27.853384, 35.114697, 33.847412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738085, 35.428673, 34.066788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352525, -0.445532, 0.822938,
		0.890303, 0.430549, -0.148287,
		-0.288248, 0.784939, 0.548438,
		27.651609, 35.664154, 34.231319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291229, 35.125610, 34.300179>,  <27.853384, 35.114697, 33.847412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291229, 35.125610, 34.300179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002670, 35.344059, 34.470512>,  <27.829535, 35.475128, 34.572712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002670, 35.344059, 34.470512>,  <28.291229, 35.125610, 34.300179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002670, 35.344059, 34.470512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244334, -0.374650, 0.894393,
		0.647989, 0.749258, 0.136834,
		-0.721395, 0.546124, 0.425838,
		27.786251, 35.507896, 34.598263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628849, 35.484287, 34.884403>,  <28.291229, 35.125610, 34.300179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628849, 35.484287, 34.884403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235113, 35.458527, 34.950043>,  <27.998871, 35.443069, 34.989426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235113, 35.458527, 34.950043>,  <28.628849, 35.484287, 34.884403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235113, 35.458527, 34.950043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174484, -0.488428, 0.854982,
		0.025090, 0.870225, 0.492016,
		-0.984340, -0.064398, 0.164095,
		27.939812, 35.439209, 34.999271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647678, 35.652996, 35.531445>,  <28.628849, 35.484287, 34.884403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647678, 35.652996, 35.531445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280371, 35.519157, 35.446754>,  <28.059986, 35.438854, 35.395939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280371, 35.519157, 35.446754>,  <28.647678, 35.652996, 35.531445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280371, 35.519157, 35.446754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109775, -0.298629, 0.948035,
		-0.380440, 0.893792, 0.237490,
		-0.918267, -0.334600, -0.211726,
		28.004890, 35.418777, 35.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321814, 35.881554, 36.007748>,  <28.647678, 35.652996, 35.531445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321814, 35.881554, 36.007748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122524, 35.553234, 35.895985>,  <28.002951, 35.356243, 35.828926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.122524, 35.553234, 35.895985>,  <28.321814, 35.881554, 36.007748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122524, 35.553234, 35.895985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017482, -0.312679, 0.949698,
		-0.866873, 0.478045, 0.141435,
		-0.498222, -0.820795, -0.279410,
		27.973057, 35.306995, 35.812160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722071, 35.857731, 36.346169>,  <28.321814, 35.881554, 36.007748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722071, 35.857731, 36.346169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753817, 35.475586, 36.232334>,  <27.772863, 35.246300, 36.164032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753817, 35.475586, 36.232334>,  <27.722071, 35.857731, 36.346169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753817, 35.475586, 36.232334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114098, -0.292315, 0.949491,
		-0.990294, -0.042886, -0.132204,
		0.079365, -0.955360, -0.284585,
		27.777626, 35.188976, 36.146957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341574, 35.370255, 36.899380>,  <27.722071, 35.857731, 36.346169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341574, 35.370255, 36.899380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561741, 35.102272, 36.700100>,  <27.693840, 34.941483, 36.580532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561741, 35.102272, 36.700100>,  <27.341574, 35.370255, 36.899380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561741, 35.102272, 36.700100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080899, -0.551122, 0.830493,
		-0.830962, -0.497420, -0.249148,
		0.550415, -0.669953, -0.498203,
		27.726866, 34.901287, 36.550640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126726, 34.714161, 37.192638>,  <27.341574, 35.370255, 36.899380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126726, 34.714161, 37.192638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477785, 34.653034, 37.010921>,  <27.688419, 34.616356, 36.901890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477785, 34.653034, 37.010921>,  <27.126726, 34.714161, 37.192638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477785, 34.653034, 37.010921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322217, -0.513573, 0.795247,
		-0.354841, -0.844328, -0.401496,
		0.877647, -0.152817, -0.454294,
		27.741079, 34.607189, 36.874634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260395, 34.082787, 37.220409>,  <27.126726, 34.714161, 37.192638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260395, 34.082787, 37.220409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627645, 34.238827, 37.192505>,  <27.847996, 34.332451, 37.175762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627645, 34.238827, 37.192505>,  <27.260395, 34.082787, 37.220409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627645, 34.238827, 37.192505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316465, -0.615791, 0.721561,
		0.238526, -0.684560, -0.688827,
		0.918126, 0.390101, -0.069757,
		27.903084, 34.355858, 37.171577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749859, 33.500233, 37.093487>,  <27.260395, 34.082787, 37.220409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749859, 33.500233, 37.093487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981762, 33.798328, 37.225239>,  <28.120905, 33.977188, 37.304291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981762, 33.798328, 37.225239>,  <27.749859, 33.500233, 37.093487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981762, 33.798328, 37.225239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417013, -0.618693, 0.665821,
		0.699985, -0.248660, -0.669469,
		0.579759, 0.745243, 0.329382,
		28.155689, 34.021900, 37.324055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408707, 33.280632, 37.305828>,  <27.749859, 33.500233, 37.093487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408707, 33.280632, 37.305828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349010, 33.577641, 37.567024>,  <28.313192, 33.755844, 37.723743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349010, 33.577641, 37.567024>,  <28.408707, 33.280632, 37.305828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349010, 33.577641, 37.567024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375597, -0.568319, 0.732080,
		0.914688, 0.354516, -0.194071,
		-0.149240, 0.742517, 0.652990,
		28.304239, 33.800396, 37.762920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869596, 33.061272, 37.654083>,  <28.408707, 33.280632, 37.305828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869596, 33.061272, 37.654083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804186, 32.679337, 37.753315>,  <27.764938, 32.450176, 37.812855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804186, 32.679337, 37.753315>,  <27.869596, 33.061272, 37.654083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804186, 32.679337, 37.753315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195854, -0.215039, -0.956765,
		0.966902, -0.205046, -0.151844,
		-0.163528, -0.954837, 0.248081,
		27.755127, 32.392887, 37.827740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289616, 32.487392, 37.321346>,  <27.869596, 33.061272, 37.654083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289616, 32.487392, 37.321346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925896, 32.352211, 37.418468>,  <27.707663, 32.271103, 37.476742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.925896, 32.352211, 37.418468>,  <28.289616, 32.487392, 37.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.925896, 32.352211, 37.418468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209702, -0.131850, -0.968835,
		0.359439, -0.931880, 0.049021,
		-0.909301, -0.337958, 0.242809,
		27.653105, 32.250824, 37.491310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122810, 31.948460, 36.801975>,  <28.289616, 32.487392, 37.321346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122810, 31.948460, 36.801975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776587, 32.058189, 36.969570>,  <27.568851, 32.124027, 37.070129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776587, 32.058189, 36.969570>,  <28.122810, 31.948460, 36.801975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776587, 32.058189, 36.969570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444573, -0.035710, -0.895031,
		-0.230567, -0.960974, 0.152866,
		-0.865560, 0.274325, 0.418990,
		27.516918, 32.140488, 37.095268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657957, 31.493456, 36.424828>,  <28.122810, 31.948460, 36.801975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657957, 31.493456, 36.424828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441345, 31.787746, 36.587532>,  <27.311378, 31.964321, 36.685154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441345, 31.787746, 36.587532>,  <27.657957, 31.493456, 36.424828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441345, 31.787746, 36.587532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559459, 0.045761, -0.827594,
		-0.627497, -0.675730, 0.386829,
		-0.541528, 0.735728, 0.406758,
		27.278887, 32.008465, 36.709560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942110, 31.289686, 36.284920>,  <27.657957, 31.493456, 36.424828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942110, 31.289686, 36.284920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954107, 31.684616, 36.347263>,  <26.961306, 31.921574, 36.384670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954107, 31.684616, 36.347263>,  <26.942110, 31.289686, 36.284920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954107, 31.684616, 36.347263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277543, 0.158024, -0.947627,
		-0.960245, -0.014836, 0.278765,
		0.029992, 0.987324, 0.155860,
		26.963104, 31.980814, 36.394020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412012, 31.620483, 35.894245>,  <26.942110, 31.289686, 36.284920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412012, 31.620483, 35.894245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658804, 31.930149, 35.950825>,  <26.806879, 32.115948, 35.984772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658804, 31.930149, 35.950825>,  <26.412012, 31.620483, 35.894245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658804, 31.930149, 35.950825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109055, 0.262110, -0.958856,
		-0.779388, 0.576167, 0.246143,
		0.616978, 0.774164, 0.141452,
		26.843897, 32.162399, 35.993259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106091, 32.133343, 35.398441>,  <26.412012, 31.620483, 35.894245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106091, 32.133343, 35.398441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484682, 32.234680, 35.478436>,  <26.711838, 32.295483, 35.526432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484682, 32.234680, 35.478436>,  <26.106091, 32.133343, 35.398441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484682, 32.234680, 35.478436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075768, 0.427901, -0.900644,
		-0.313745, 0.867594, 0.385804,
		0.946479, 0.253341, 0.199988,
		26.768625, 32.310684, 35.538433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159111, 32.786583, 35.085537>,  <26.106091, 32.133343, 35.398441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159111, 32.786583, 35.085537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547531, 32.697884, 35.121067>,  <26.780582, 32.644665, 35.142384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547531, 32.697884, 35.121067>,  <26.159111, 32.786583, 35.085537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547531, 32.697884, 35.121067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177295, 0.419840, -0.890113,
		0.160086, 0.880093, 0.447000,
		0.971050, -0.221745, 0.088826,
		26.838846, 32.631359, 35.147717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578506, 33.382481, 34.814880>,  <26.159111, 32.786583, 35.085537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578506, 33.382481, 34.814880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826933, 33.068981, 34.813667>,  <26.975988, 32.880882, 34.812939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826933, 33.068981, 34.813667>,  <26.578506, 33.382481, 34.814880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826933, 33.068981, 34.813667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241991, 0.195439, -0.950392,
		0.745464, 0.589522, 0.311042,
		0.621067, -0.783752, -0.003034,
		27.013252, 32.833855, 34.812756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243130, 33.614235, 34.639267>,  <26.578506, 33.382481, 34.814880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243130, 33.614235, 34.639267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212347, 33.230156, 34.531868>,  <27.193878, 32.999706, 34.467426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.212347, 33.230156, 34.531868>,  <27.243130, 33.614235, 34.639267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.212347, 33.230156, 34.531868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287252, 0.236529, -0.928192,
		0.954759, -0.148557, 0.257617,
		-0.076956, -0.960201, -0.268501,
		27.189260, 32.942097, 34.451317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667841, 33.681751, 34.085880>,  <27.243130, 33.614235, 34.639267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667841, 33.681751, 34.085880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542994, 33.303993, 34.044521>,  <27.468084, 33.077339, 34.019707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.542994, 33.303993, 34.044521>,  <27.667841, 33.681751, 34.085880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542994, 33.303993, 34.044521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264705, 0.018074, -0.964160,
		0.912421, -0.328303, 0.244346,
		-0.312121, -0.944399, -0.103395,
		27.449358, 33.020672, 34.013504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075602, 33.370331, 33.616371>,  <27.667841, 33.681751, 34.085880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075602, 33.370331, 33.616371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721487, 33.192017, 33.563393>,  <27.509018, 33.085030, 33.531605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721487, 33.192017, 33.563393>,  <28.075602, 33.370331, 33.616371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721487, 33.192017, 33.563393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160156, -0.024884, -0.986778,
		0.436597, -0.894793, 0.093425,
		-0.885287, -0.445787, -0.132443,
		27.455900, 33.058281, 33.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118757, 32.816502, 33.065346>,  <28.075602, 33.370331, 33.616371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118757, 32.816502, 33.065346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735464, 32.929291, 33.084435>,  <27.505487, 32.996964, 33.095890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.735464, 32.929291, 33.084435>,  <28.118757, 32.816502, 33.065346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735464, 32.929291, 33.084435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021919, 0.093974, -0.995333,
		-0.285144, -0.954808, -0.083868,
		-0.958234, 0.281975, 0.047725,
		27.447994, 33.013882, 33.098751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913990, 32.515778, 32.564716>,  <28.118757, 32.816502, 33.065346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913990, 32.515778, 32.564716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630495, 32.791218, 32.626072>,  <27.460398, 32.956482, 32.662884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630495, 32.791218, 32.626072>,  <27.913990, 32.515778, 32.564716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630495, 32.791218, 32.626072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000296, 0.217136, -0.976141,
		-0.705474, -0.691871, -0.153688,
		-0.708735, 0.688597, 0.153388,
		27.417875, 32.997795, 32.672089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516273, 32.503098, 31.973030>,  <27.913990, 32.515778, 32.564716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516273, 32.503098, 31.973030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427204, 32.860668, 32.128624>,  <27.373762, 33.075211, 32.221981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427204, 32.860668, 32.128624>,  <27.516273, 32.503098, 31.973030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427204, 32.860668, 32.128624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156447, 0.361065, -0.919324,
		-0.962258, -0.265565, 0.059453,
		-0.222674, 0.893928, 0.388985,
		27.360401, 33.128845, 32.245319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941715, 32.603065, 31.652441>,  <27.516273, 32.503098, 31.973030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941715, 32.603065, 31.652441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128006, 32.940651, 31.758888>,  <27.239780, 33.143204, 31.822756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128006, 32.940651, 31.758888>,  <26.941715, 32.603065, 31.652441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128006, 32.940651, 31.758888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111856, 0.354452, -0.928360,
		-0.877830, 0.402597, 0.259481,
		0.465729, 0.843966, 0.266116,
		27.267725, 33.193840, 31.838722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686153, 33.119514, 31.226595>,  <26.941715, 32.603065, 31.652441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686153, 33.119514, 31.226595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997101, 33.318794, 31.380215>,  <27.183670, 33.438362, 31.472387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997101, 33.318794, 31.380215>,  <26.686153, 33.119514, 31.226595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997101, 33.318794, 31.380215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061233, 0.547700, -0.834431,
		-0.626058, 0.672177, 0.395259,
		0.777369, 0.498199, 0.384051,
		27.230312, 33.468254, 31.495430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631227, 33.719574, 31.014429>,  <26.686153, 33.119514, 31.226595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631227, 33.719574, 31.014429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023361, 33.732456, 31.092304>,  <27.258642, 33.740185, 31.139029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023361, 33.732456, 31.092304>,  <26.631227, 33.719574, 31.014429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023361, 33.732456, 31.092304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148223, 0.531141, -0.834217,
		-0.130270, 0.846671, 0.515924,
		0.980336, 0.032202, 0.194688,
		27.317463, 33.742115, 31.150711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655987, 34.370422, 30.906534>,  <26.631227, 33.719574, 31.014429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655987, 34.370422, 30.906534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025780, 34.221684, 30.872913>,  <27.247656, 34.132442, 30.852741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.025780, 34.221684, 30.872913>,  <26.655987, 34.370422, 30.906534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.025780, 34.221684, 30.872913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195614, 0.651933, -0.732610,
		0.327214, 0.660843, 0.675439,
		0.924482, -0.371845, -0.084052,
		27.303123, 34.110130, 30.847698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139200, 34.924152, 30.928608>,  <26.655987, 34.370422, 30.906534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139200, 34.924152, 30.928608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337524, 34.620312, 30.760235>,  <27.456518, 34.438007, 30.659210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337524, 34.620312, 30.760235>,  <27.139200, 34.924152, 30.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337524, 34.620312, 30.760235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277574, 0.597892, -0.751982,
		0.822876, 0.256000, 0.507286,
		0.495810, -0.759598, -0.420932,
		27.486267, 34.392433, 30.633955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827797, 35.139603, 30.720369>,  <27.139200, 34.924152, 30.928608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827797, 35.139603, 30.720369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800255, 34.805668, 30.501900>,  <27.783730, 34.605309, 30.370817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800255, 34.805668, 30.501900>,  <27.827797, 35.139603, 30.720369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800255, 34.805668, 30.501900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351928, 0.491952, -0.796323,
		0.933491, -0.247046, 0.259928,
		-0.068857, -0.834836, -0.546175,
		27.779598, 34.555218, 30.338047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352201, 35.147850, 30.288965>,  <27.827797, 35.139603, 30.720369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352201, 35.147850, 30.288965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096275, 34.900776, 30.106052>,  <27.942720, 34.752533, 29.996305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.096275, 34.900776, 30.106052>,  <28.352201, 35.147850, 30.288965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096275, 34.900776, 30.106052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182889, 0.455541, -0.871226,
		0.746450, -0.641055, -0.178495,
		-0.639816, -0.617682, -0.457281,
		27.904331, 34.715473, 29.968868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682577, 35.055592, 29.682333>,  <28.352201, 35.147850, 30.288965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682577, 35.055592, 29.682333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301250, 34.955750, 29.614349>,  <28.072454, 34.895844, 29.573559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301250, 34.955750, 29.614349>,  <28.682577, 35.055592, 29.682333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301250, 34.955750, 29.614349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098172, 0.276078, -0.956108,
		0.285585, -0.928155, -0.238682,
		-0.953312, -0.249618, -0.169963,
		28.015255, 34.880867, 29.563362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606724, 34.469177, 29.087549>,  <28.682577, 35.055592, 29.682333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606724, 34.469177, 29.087549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258469, 34.665939, 29.085594>,  <28.049515, 34.783997, 29.084421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.258469, 34.665939, 29.085594>,  <28.606724, 34.469177, 29.087549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258469, 34.665939, 29.085594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039359, 0.059752, -0.997437,
		-0.490348, -0.868598, -0.071383,
		-0.870637, 0.491901, -0.004888,
		27.997278, 34.813511, 29.084127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261839, 34.309155, 28.362846>,  <28.606724, 34.469177, 29.087549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261839, 34.309155, 28.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026701, 34.605576, 28.492638>,  <27.885618, 34.783428, 28.570513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.026701, 34.605576, 28.492638>,  <28.261839, 34.309155, 28.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026701, 34.605576, 28.492638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167063, 0.281248, -0.944981,
		-0.791536, -0.609710, -0.041528,
		-0.587844, 0.741049, 0.324478,
		27.850348, 34.827888, 28.589981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558762, 34.149670, 28.117189>,  <28.261839, 34.309155, 28.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558762, 34.149670, 28.117189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610689, 34.535713, 28.208157>,  <27.641846, 34.767338, 28.262737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610689, 34.535713, 28.208157>,  <27.558762, 34.149670, 28.117189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610689, 34.535713, 28.208157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440334, 0.261617, -0.858873,
		-0.888399, 0.011358, 0.458932,
		0.129819, 0.965105, 0.227419,
		27.649635, 34.825245, 28.276382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948828, 34.444271, 28.071840>,  <27.558762, 34.149670, 28.117189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948828, 34.444271, 28.071840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190708, 34.757805, 28.015362>,  <27.335836, 34.945927, 27.981474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.190708, 34.757805, 28.015362>,  <26.948828, 34.444271, 28.071840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190708, 34.757805, 28.015362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405389, 0.150315, -0.901701,
		-0.685562, 0.602500, 0.408654,
		0.604702, 0.783836, -0.141197,
		27.372118, 34.992954, 27.973003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502991, 35.064003, 27.854856>,  <26.948828, 34.444271, 28.071840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502991, 35.064003, 27.854856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872568, 35.154991, 27.731838>,  <27.094315, 35.209583, 27.658028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872568, 35.154991, 27.731838>,  <26.502991, 35.064003, 27.854856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872568, 35.154991, 27.731838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360133, 0.246202, -0.899827,
		-0.128970, 0.942146, 0.309398,
		0.923943, 0.227475, -0.307545,
		27.149752, 35.223232, 27.639574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474886, 35.739429, 27.569658>,  <26.502991, 35.064003, 27.854856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474886, 35.739429, 27.569658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804014, 35.563961, 27.425140>,  <27.001492, 35.458679, 27.338428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804014, 35.563961, 27.425140>,  <26.474886, 35.739429, 27.569658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804014, 35.563961, 27.425140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304583, 0.196328, -0.932033,
		0.479784, 0.876942, 0.027932,
		0.822822, -0.438667, -0.361296,
		27.050861, 35.432362, 27.316751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670151, 35.978085, 26.950586>,  <26.474886, 35.739429, 27.569658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670151, 35.978085, 26.950586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898142, 35.654301, 26.894157>,  <27.034937, 35.460030, 26.860300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.898142, 35.654301, 26.894157>,  <26.670151, 35.978085, 26.950586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898142, 35.654301, 26.894157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185966, 0.040153, -0.981735,
		0.800340, 0.585801, -0.127645,
		0.569977, -0.809460, -0.141074,
		27.069136, 35.411465, 26.851835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.166775, 36.112110, 26.375761>,  <26.670151, 35.978085, 26.950586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.166775, 36.112110, 26.375761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082212, 35.722862, 26.412308>,  <27.031475, 35.489315, 26.434235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082212, 35.722862, 26.412308>,  <27.166775, 36.112110, 26.375761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082212, 35.722862, 26.412308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146444, -0.060886, -0.987344,
		0.966366, -0.222108, -0.129636,
		-0.211404, -0.973119, 0.091364,
		27.018791, 35.430927, 26.439716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219133, 35.990551, 25.706629>,  <27.166775, 36.112110, 26.375761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219133, 35.990551, 25.706629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102133, 35.634865, 25.847336>,  <27.031933, 35.421452, 25.931761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102133, 35.634865, 25.847336>,  <27.219133, 35.990551, 25.706629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102133, 35.634865, 25.847336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167037, -0.314690, -0.934382,
		0.941564, -0.332066, -0.056485,
		-0.292501, -0.889215, 0.351768,
		27.014383, 35.368099, 25.952866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690166, 35.432480, 25.495375>,  <27.219133, 35.990551, 25.706629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690166, 35.432480, 25.495375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329561, 35.272804, 25.562218>,  <27.113197, 35.176998, 25.602324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329561, 35.272804, 25.562218>,  <27.690166, 35.432480, 25.495375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329561, 35.272804, 25.562218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003634, -0.393123, -0.919479,
		0.432736, -0.828315, 0.355857,
		-0.901513, -0.399184, 0.167108,
		27.059107, 35.153049, 25.612350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665321, 34.981224, 24.961109>,  <27.690166, 35.432480, 25.495375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665321, 34.981224, 24.961109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293613, 34.948654, 25.105236>,  <27.070589, 34.929111, 25.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293613, 34.948654, 25.105236>,  <27.665321, 34.981224, 24.961109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293613, 34.948654, 25.105236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313111, -0.343943, -0.885248,
		0.196012, -0.935453, 0.294120,
		-0.929269, -0.081426, 0.360318,
		27.014833, 34.924225, 25.213331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461832, 34.310280, 24.748486>,  <27.665321, 34.981224, 24.961109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461832, 34.310280, 24.748486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131554, 34.528717, 24.805065>,  <26.933386, 34.659779, 24.839012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.131554, 34.528717, 24.805065>,  <27.461832, 34.310280, 24.748486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131554, 34.528717, 24.805065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291491, -0.198352, -0.935783,
		-0.482968, -0.813903, 0.322960,
		-0.825696, 0.546093, 0.141447,
		26.883844, 34.692543, 24.847500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883528, 33.794373, 24.566868>,  <27.461832, 34.310280, 24.748486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883528, 33.794373, 24.566868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679625, 34.137852, 24.545757>,  <26.557283, 34.343941, 24.533091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679625, 34.137852, 24.545757>,  <26.883528, 33.794373, 24.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679625, 34.137852, 24.545757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360974, -0.269166, -0.892887,
		-0.780925, -0.436106, 0.447177,
		-0.509758, 0.858697, -0.052775,
		26.526697, 34.395462, 24.529924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.233524, 33.691677, 24.391827>,  <26.883528, 33.794373, 24.566868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.233524, 33.691677, 24.391827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262039, 34.073959, 24.277607>,  <26.279148, 34.303329, 24.209076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262039, 34.073959, 24.277607>,  <26.233524, 33.691677, 24.391827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262039, 34.073959, 24.277607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490460, -0.215692, -0.844350,
		-0.868543, 0.200243, 0.453360,
		0.071289, 0.955709, -0.285549,
		26.283426, 34.360672, 24.191942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492001, 33.988693, 24.224966>,  <26.233524, 33.691677, 24.391827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492001, 33.988693, 24.224966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779388, 34.191814, 24.034836>,  <25.951820, 34.313686, 23.920757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779388, 34.191814, 24.034836>,  <25.492001, 33.988693, 24.224966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779388, 34.191814, 24.034836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488824, -0.117526, -0.864429,
		-0.494824, 0.853418, 0.163788,
		0.718470, 0.507804, -0.475326,
		25.994930, 34.344154, 23.892239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133131, 34.353058, 23.812323>,  <25.492001, 33.988693, 24.224966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133131, 34.353058, 23.812323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496998, 34.367630, 23.646828>,  <25.715317, 34.376373, 23.547531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496998, 34.367630, 23.646828>,  <25.133131, 34.353058, 23.812323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496998, 34.367630, 23.646828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385149, -0.298855, -0.873124,
		-0.155459, 0.953603, -0.257826,
		0.909666, 0.036434, -0.413739,
		25.769897, 34.378559, 23.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065807, 34.714226, 23.161299>,  <25.133131, 34.353058, 23.812323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065807, 34.714226, 23.161299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420151, 34.529663, 23.141853>,  <25.632757, 34.418926, 23.130186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420151, 34.529663, 23.141853>,  <25.065807, 34.714226, 23.161299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420151, 34.529663, 23.141853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286832, -0.462293, -0.839055,
		0.364669, 0.757227, -0.541871,
		0.885858, -0.461403, -0.048613,
		25.685907, 34.391243, 23.127270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317249, 35.123730, 22.599178>,  <25.065807, 34.714226, 23.161299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317249, 35.123730, 22.599178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471247, 34.760197, 22.534924>,  <25.563646, 34.542076, 22.496370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471247, 34.760197, 22.534924>,  <25.317249, 35.123730, 22.599178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471247, 34.760197, 22.534924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271863, 0.054655, -0.960783,
		0.881969, 0.413567, -0.226036,
		0.384994, -0.908832, -0.160637,
		25.586744, 34.487549, 22.486732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.939917, 35.789879, 22.953362>,  <25.317249, 35.123730, 22.599178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.939917, 35.789879, 22.953362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651276, 35.883930, 23.213825>,  <24.478092, 35.940361, 23.370104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651276, 35.883930, 23.213825>,  <24.939917, 35.789879, 22.953362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651276, 35.883930, 23.213825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443155, 0.565740, -0.695379,
		-0.531888, -0.790350, -0.304042,
		-0.721602, 0.235126, 0.651158,
		24.434795, 35.954468, 23.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336504, 35.540005, 22.775951>,  <24.939917, 35.789879, 22.953362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336504, 35.540005, 22.775951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267139, 35.885960, 22.964378>,  <24.225521, 36.093533, 23.077435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.267139, 35.885960, 22.964378>,  <24.336504, 35.540005, 22.775951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267139, 35.885960, 22.964378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523183, 0.324343, -0.788087,
		-0.834391, -0.383117, 0.396248,
		-0.173409, 0.864883, 0.471069,
		24.215117, 36.145424, 23.105700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.762959, 35.668400, 22.416473>,  <24.336504, 35.540005, 22.775951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.762959, 35.668400, 22.416473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874414, 35.987255, 22.630737>,  <23.941288, 36.178570, 22.759295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.874414, 35.987255, 22.630737>,  <23.762959, 35.668400, 22.416473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874414, 35.987255, 22.630737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642124, 0.569382, -0.513303,
		-0.714169, -0.200933, 0.670514,
		0.278639, 0.797139, 0.535659,
		23.958006, 36.226398, 22.791435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.139332, 36.032009, 22.570951>,  <23.762959, 35.668400, 22.416473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.139332, 36.032009, 22.570951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432373, 36.295052, 22.641209>,  <23.608198, 36.452877, 22.683363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.432373, 36.295052, 22.641209>,  <23.139332, 36.032009, 22.570951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432373, 36.295052, 22.641209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553333, 0.725664, -0.408944,
		-0.396380, 0.202405, 0.895497,
		0.732602, 0.657605, 0.175641,
		23.652153, 36.492332, 22.693901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499195, 35.666729, 22.902372>,  <23.139332, 36.032009, 22.570951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499195, 35.666729, 22.902372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.606707, 35.928368, 23.185192>,  <22.671213, 36.085350, 23.354883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.606707, 35.928368, 23.185192>,  <22.499195, 35.666729, 22.902372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.606707, 35.928368, 23.185192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730272, 0.617033, -0.293212,
		-0.628061, -0.437529, 0.643512,
		0.268779, 0.654094, 0.707049,
		22.687340, 36.124596, 23.397306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846184, 36.005337, 23.229538>,  <22.499195, 35.666729, 22.902372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846184, 36.005337, 23.229538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.148588, 36.262421, 23.279140>,  <22.330030, 36.416672, 23.308901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.148588, 36.262421, 23.279140>,  <21.846184, 36.005337, 23.229538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.148588, 36.262421, 23.279140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600871, 0.756575, -0.257969,
		-0.259617, 0.120517, 0.958162,
		0.756011, 0.642705, 0.124005,
		22.375391, 36.455231, 23.316341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660400, 36.587109, 23.575691>,  <21.846184, 36.005337, 23.229538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660400, 36.587109, 23.575691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.317150, 36.772888, 23.488144>,  <21.111200, 36.884357, 23.435616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.317150, 36.772888, 23.488144>,  <21.660400, 36.587109, 23.575691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.317150, 36.772888, 23.488144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482552, 0.875176, -0.034798,
		0.175388, -0.135477, -0.975133,
		-0.858127, 0.464449, -0.218870,
		21.059711, 36.912224, 23.422483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920187, 37.119251, 23.331717>,  <21.660400, 36.587109, 23.575691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920187, 37.119251, 23.331717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540844, 37.236431, 23.380371>,  <21.313238, 37.306740, 23.409563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540844, 37.236431, 23.380371>,  <21.920187, 37.119251, 23.331717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540844, 37.236431, 23.380371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307163, 0.943850, 0.121651,
		-0.079168, 0.152731, -0.985092,
		-0.948358, 0.292953, 0.121636,
		21.256336, 37.324318, 23.416862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874512, 37.629005, 22.954966>,  <21.920187, 37.119251, 23.331717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874512, 37.629005, 22.954966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574116, 37.663246, 23.216862>,  <21.393879, 37.683792, 23.373999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574116, 37.663246, 23.216862>,  <21.874512, 37.629005, 22.954966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574116, 37.663246, 23.216862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234275, 0.961597, 0.142991,
		-0.617356, 0.260774, -0.742205,
		-0.750990, 0.085604, 0.654741,
		21.348818, 37.688927, 23.413284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535746, 38.253029, 22.696758>,  <21.874512, 37.629005, 22.954966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535746, 38.253029, 22.696758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.470604, 38.214512, 23.089535>,  <21.431519, 38.191402, 23.325201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.470604, 38.214512, 23.089535>,  <21.535746, 38.253029, 22.696758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.470604, 38.214512, 23.089535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209531, 0.969150, 0.129790,
		-0.964145, 0.226884, -0.137655,
		-0.162856, -0.096293, 0.981940,
		21.421747, 38.185623, 23.384117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.290216, 38.884056, 22.960472>,  <21.535746, 38.253029, 22.696758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.290216, 38.884056, 22.960472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394287, 38.720596, 23.310402>,  <21.456730, 38.622520, 23.520359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394287, 38.720596, 23.310402>,  <21.290216, 38.884056, 22.960472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394287, 38.720596, 23.310402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089155, 0.912323, 0.399648,
		-0.961436, -0.025985, 0.273799,
		0.260178, -0.408646, 0.874823,
		21.472340, 38.598003, 23.572849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.964661, 39.377148, 23.428740>,  <21.290216, 38.884056, 22.960472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.964661, 39.377148, 23.428740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277596, 39.162228, 23.554760>,  <21.465357, 39.033276, 23.630373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.277596, 39.162228, 23.554760>,  <20.964661, 39.377148, 23.428740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277596, 39.162228, 23.554760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510531, 0.842928, 0.169797,
		-0.356799, 0.028006, 0.933761,
		0.782338, -0.537297, 0.315053,
		21.512297, 39.001038, 23.649277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235584, 39.797966, 23.993395>,  <20.964661, 39.377148, 23.428740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235584, 39.797966, 23.993395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541861, 39.552372, 23.916725>,  <21.725626, 39.405018, 23.870724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541861, 39.552372, 23.916725>,  <21.235584, 39.797966, 23.993395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541861, 39.552372, 23.916725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641680, 0.749686, 0.161917,
		0.044282, -0.246973, 0.968010,
		0.765693, -0.613983, -0.191675,
		21.771568, 39.368176, 23.859222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792973, 40.030704, 24.474459>,  <21.235584, 39.797966, 23.993395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792973, 40.030704, 24.474459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991461, 39.825893, 24.194004>,  <22.110554, 39.703007, 24.025730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.991461, 39.825893, 24.194004>,  <21.792973, 40.030704, 24.474459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.991461, 39.825893, 24.194004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794281, 0.593808, 0.128493,
		0.350548, -0.620661, 0.701353,
		0.496219, -0.512028, -0.701137,
		22.140327, 39.672283, 23.983664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.389910, 39.963951, 24.760904>,  <21.792973, 40.030704, 24.474459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.389910, 39.963951, 24.760904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477621, 39.885082, 24.378693>,  <22.530249, 39.837761, 24.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.477621, 39.885082, 24.378693>,  <22.389910, 39.963951, 24.760904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.477621, 39.885082, 24.378693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794171, 0.604977, 0.057412,
		0.566754, -0.771444, 0.289247,
		0.219278, -0.197173, -0.955531,
		22.543404, 39.825932, 24.092033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117044, 39.946209, 24.771774>,  <22.389910, 39.963951, 24.760904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117044, 39.946209, 24.771774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961895, 40.034798, 24.413891>,  <22.868805, 40.087952, 24.199160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.961895, 40.034798, 24.413891>,  <23.117044, 39.946209, 24.771774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.961895, 40.034798, 24.413891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791777, 0.576991, -0.200424,
		0.471852, -0.786150, -0.399153,
		-0.387872, 0.221470, -0.894710,
		22.845533, 40.101238, 24.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.702677, 39.801868, 24.425262>,  <23.117044, 39.946209, 24.771774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.702677, 39.801868, 24.425262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454996, 40.023788, 24.202988>,  <23.306389, 40.156940, 24.069624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.454996, 40.023788, 24.202988>,  <23.702677, 39.801868, 24.425262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.454996, 40.023788, 24.202988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778153, 0.528365, -0.339571,
		0.105210, -0.642671, -0.758884,
		-0.619200, 0.554801, -0.555685,
		23.269236, 40.190228, 24.036282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.915663, 39.775162, 23.690704>,  <23.702677, 39.801868, 24.425262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.915663, 39.775162, 23.690704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.702295, 40.112415, 23.717808>,  <23.574276, 40.314766, 23.734070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.702295, 40.112415, 23.717808>,  <23.915663, 39.775162, 23.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.702295, 40.112415, 23.717808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790563, 0.525434, -0.314530,
		-0.300793, -0.114210, -0.946826,
		-0.533417, 0.843134, 0.067757,
		23.542271, 40.365356, 23.738134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.068466, 40.193806, 23.018009>,  <23.915663, 39.775162, 23.690704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.068466, 40.193806, 23.018009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.925676, 40.438133, 23.300701>,  <23.840002, 40.584728, 23.470316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.925676, 40.438133, 23.300701>,  <24.068466, 40.193806, 23.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.925676, 40.438133, 23.300701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566108, 0.743276, -0.356459,
		-0.743029, 0.272840, -0.611119,
		-0.356974, 0.610819, 0.706732,
		23.818584, 40.621380, 23.512720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.958229, 40.821980, 22.738598>,  <24.068466, 40.193806, 23.018009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.958229, 40.821980, 22.738598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966978, 40.904160, 23.129967>,  <23.972227, 40.953468, 23.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.966978, 40.904160, 23.129967>,  <23.958229, 40.821980, 22.738598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.966978, 40.904160, 23.129967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519539, 0.833802, -0.186693,
		-0.854167, 0.512413, -0.088499,
		0.021873, 0.205446, 0.978424,
		23.973539, 40.965794, 23.423494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.069626, 41.551685, 22.706213>,  <23.958229, 40.821980, 22.738598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.069626, 41.551685, 22.706213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164499, 41.464565, 23.084908>,  <24.221424, 41.412292, 23.312124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164499, 41.464565, 23.084908>,  <24.069626, 41.551685, 22.706213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164499, 41.464565, 23.084908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618417, 0.785427, 0.025761,
		-0.749202, 0.579367, 0.320982,
		0.237183, -0.217801, 0.946735,
		24.235655, 41.399223, 23.368929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182178, 42.171051, 23.052002>,  <24.069626, 41.551685, 22.706213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182178, 42.171051, 23.052002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306023, 41.924030, 23.341213>,  <24.380329, 41.775818, 23.514740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306023, 41.924030, 23.341213>,  <24.182178, 42.171051, 23.052002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306023, 41.924030, 23.341213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666903, 0.683039, 0.297821,
		-0.677778, 0.389983, 0.623322,
		0.309608, -0.617552, 0.723030,
		24.398905, 41.738766, 23.558123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.034456, 42.431759, 23.851530>,  <24.182178, 42.171051, 23.052002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.034456, 42.431759, 23.851530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343683, 42.184052, 23.796577>,  <24.529221, 42.035427, 23.763607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343683, 42.184052, 23.796577>,  <24.034456, 42.431759, 23.851530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343683, 42.184052, 23.796577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629558, 0.722559, 0.285596,
		-0.077595, -0.307274, 0.948452,
		0.773069, -0.619267, -0.137380,
		24.575603, 41.998272, 23.755363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460497, 42.662777, 24.388403>,  <24.034456, 42.431759, 23.851530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460497, 42.662777, 24.388403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686428, 42.455376, 24.131615>,  <24.821987, 42.330936, 23.977541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.686428, 42.455376, 24.131615>,  <24.460497, 42.662777, 24.388403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.686428, 42.455376, 24.131615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771930, 0.606984, 0.188927,
		0.291707, -0.602268, 0.743088,
		0.564828, -0.518501, -0.641971,
		24.855877, 42.299824, 23.939024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055824, 42.483208, 24.667809>,  <24.460497, 42.662777, 24.388403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055824, 42.483208, 24.667809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190733, 42.430885, 24.294899>,  <25.271679, 42.399490, 24.071154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.190733, 42.430885, 24.294899>,  <25.055824, 42.483208, 24.667809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190733, 42.430885, 24.294899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920623, 0.252769, 0.297590,
		0.196724, -0.958644, 0.205674,
		0.337271, -0.130805, -0.932275,
		25.291914, 42.391644, 24.015217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600008, 41.946342, 24.590170>,  <25.055824, 42.483208, 24.667809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600008, 41.946342, 24.590170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646170, 42.180473, 24.269154>,  <25.673866, 42.320953, 24.076544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646170, 42.180473, 24.269154>,  <25.600008, 41.946342, 24.590170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646170, 42.180473, 24.269154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930859, 0.218251, 0.293035,
		0.346677, -0.780871, -0.519669,
		0.115404, 0.585327, -0.802543,
		25.680790, 42.356071, 24.028391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280035, 41.764042, 24.306509>,  <25.600008, 41.946342, 24.590170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280035, 41.764042, 24.306509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169262, 42.114510, 24.148708>,  <26.102798, 42.324791, 24.054028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.169262, 42.114510, 24.148708>,  <26.280035, 41.764042, 24.306509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169262, 42.114510, 24.148708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923381, 0.356249, 0.143018,
		0.265849, -0.324669, -0.907698,
		-0.276933, 0.876172, -0.394501,
		26.086182, 42.377361, 24.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776308, 41.846718, 23.848711>,  <26.280035, 41.764042, 24.306509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776308, 41.846718, 23.848711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608109, 42.193230, 23.956596>,  <26.507189, 42.401134, 24.021328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608109, 42.193230, 23.956596>,  <26.776308, 41.846718, 23.848711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608109, 42.193230, 23.956596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870019, 0.469327, -0.150990,
		-0.257384, 0.171166, -0.951029,
		-0.420499, 0.866276, 0.269715,
		26.481958, 42.453114, 24.037512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519440, 41.783810, 23.177448>,  <26.776308, 41.846718, 23.848711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519440, 41.783810, 23.177448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519300, 41.620113, 22.812477>,  <26.519217, 41.521896, 22.593494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519300, 41.620113, 22.812477>,  <26.519440, 41.783810, 23.177448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519300, 41.620113, 22.812477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977579, -0.192269, 0.085863,
		-0.210570, -0.891938, 0.400133,
		-0.000349, -0.409242, -0.912426,
		26.519196, 41.497341, 22.538750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407318, 42.132561, 22.434715>,  <26.519440, 41.783810, 23.177448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.407318, 42.132561, 22.434715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147537, 41.982605, 22.170090>,  <25.991669, 41.892632, 22.011314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147537, 41.982605, 22.170090>,  <26.407318, 42.132561, 22.434715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147537, 41.982605, 22.170090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318944, 0.924090, -0.210552,
		0.690279, 0.074258, -0.719723,
		-0.649453, -0.374891, -0.661564,
		25.952702, 41.870136, 21.971621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157927, 42.623711, 22.062458>,  <26.407318, 42.132561, 22.434715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157927, 42.623711, 22.062458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890606, 42.392216, 21.875507>,  <25.730213, 42.253319, 21.763336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890606, 42.392216, 21.875507>,  <26.157927, 42.623711, 22.062458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890606, 42.392216, 21.875507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478216, 0.815497, -0.325996,
		0.569809, 0.005644, -0.821758,
		-0.668301, -0.578733, -0.467377,
		25.690115, 42.218597, 21.735294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169851, 42.757118, 21.215324>,  <26.157927, 42.623711, 22.062458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169851, 42.757118, 21.215324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830019, 42.620014, 21.375690>,  <25.626120, 42.537754, 21.471910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830019, 42.620014, 21.375690>,  <26.169851, 42.757118, 21.215324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830019, 42.620014, 21.375690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508310, 0.734989, -0.448790,
		-0.140842, -0.585071, -0.798658,
		-0.849579, -0.342757, 0.400914,
		25.575146, 42.517185, 21.495964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647430, 42.863792, 20.700745>,  <26.169851, 42.757118, 21.215324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647430, 42.863792, 20.700745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441780, 42.828335, 21.041992>,  <25.318390, 42.807060, 21.246740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441780, 42.828335, 21.041992>,  <25.647430, 42.863792, 20.700745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441780, 42.828335, 21.041992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658089, 0.678670, -0.326077,
		-0.550084, -0.729075, -0.407257,
		-0.514127, -0.088642, 0.853122,
		25.287542, 42.801743, 21.297928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813017, 43.236134, 20.755232>,  <25.647430, 42.863792, 20.700745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813017, 43.236134, 20.755232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644592, 43.177937, 21.113346>,  <24.543537, 43.143017, 21.328215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.644592, 43.177937, 21.113346>,  <24.813017, 43.236134, 20.755232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644592, 43.177937, 21.113346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605447, -0.780049, 0.157978,
		0.675383, 0.608567, 0.416538,
		-0.421061, -0.145496, 0.895287,
		24.518274, 43.134289, 21.381931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.333567, 43.664669, 20.152998>,  <24.813017, 43.236134, 20.755232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.333567, 43.664669, 20.152998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534920, 43.413059, 19.916039>,  <24.655731, 43.262093, 19.773863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.534920, 43.413059, 19.916039>,  <24.333567, 43.664669, 20.152998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.534920, 43.413059, 19.916039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838842, -0.520196, -0.160435,
		-0.207245, 0.577688, -0.789510,
		0.503382, -0.629025, -0.592397,
		24.685934, 43.224350, 19.738319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850662, 43.355240, 19.705669>,  <24.333567, 43.664669, 20.152998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850662, 43.355240, 19.705669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156857, 43.098522, 19.687214>,  <24.340574, 42.944492, 19.676140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.156857, 43.098522, 19.687214>,  <23.850662, 43.355240, 19.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.156857, 43.098522, 19.687214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631650, -0.763184, 0.136270,
		-0.122671, -0.075169, -0.989597,
		0.765487, -0.641795, -0.046140,
		24.386503, 42.905983, 19.673372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.780937, 42.879917, 19.234177>,  <23.850662, 43.355240, 19.705669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.780937, 42.879917, 19.234177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036268, 42.701805, 19.485336>,  <24.189466, 42.594936, 19.636032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.036268, 42.701805, 19.485336>,  <23.780937, 42.879917, 19.234177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036268, 42.701805, 19.485336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603086, -0.796202, 0.048466,
		0.478355, -0.409616, -0.776782,
		0.638328, -0.445283, 0.627901,
		24.227766, 42.568222, 19.673706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.008713, 42.140980, 18.986101>,  <23.780937, 42.879917, 19.234177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.008713, 42.140980, 18.986101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031527, 42.150269, 19.385342>,  <24.045216, 42.155842, 19.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.031527, 42.150269, 19.385342>,  <24.008713, 42.140980, 18.986101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.031527, 42.150269, 19.385342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599228, -0.798834, 0.052825,
		0.798544, -0.601104, -0.031649,
		0.057036, 0.023218, 0.998102,
		24.048637, 42.157234, 19.684772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.066645, 41.445930, 19.227030>,  <24.008713, 42.140980, 18.986101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.066645, 41.445930, 19.227030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.918209, 41.644699, 19.540810>,  <23.829147, 41.763958, 19.729078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.918209, 41.644699, 19.540810>,  <24.066645, 41.445930, 19.227030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.918209, 41.644699, 19.540810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598571, -0.773850, 0.207047,
		0.709934, -0.392718, 0.584608,
		-0.371089, 0.496919, 0.784452,
		23.806883, 41.793774, 19.776146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.895954, 40.953499, 19.703175>,  <24.066645, 41.445930, 19.227030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.895954, 40.953499, 19.703175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694912, 41.244614, 19.889816>,  <23.574287, 41.419281, 20.001802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694912, 41.244614, 19.889816>,  <23.895954, 40.953499, 19.703175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694912, 41.244614, 19.889816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654650, -0.672914, 0.344412,
		0.564643, -0.132361, 0.814653,
		-0.502605, 0.727782, 0.466606,
		23.544130, 41.462948, 20.029799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.760227, 40.760235, 20.439243>,  <23.895954, 40.953499, 19.703175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.760227, 40.760235, 20.439243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.485977, 41.045311, 20.379925>,  <23.321426, 41.216358, 20.344334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.485977, 41.045311, 20.379925>,  <23.760227, 40.760235, 20.439243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.485977, 41.045311, 20.379925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694331, -0.579043, 0.427335,
		0.218685, 0.395960, 0.891848,
		-0.685625, 0.712689, -0.148299,
		23.280289, 41.259117, 20.335436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.500242, 40.988007, 21.098446>,  <23.760227, 40.760235, 20.439243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.500242, 40.988007, 21.098446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.248447, 41.039040, 20.791859>,  <23.097370, 41.069660, 20.607906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.248447, 41.039040, 20.791859>,  <23.500242, 40.988007, 21.098446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.248447, 41.039040, 20.791859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720589, -0.464884, 0.514426,
		-0.290689, 0.876131, 0.384569,
		-0.629485, 0.127578, -0.766468,
		23.059603, 41.077312, 20.561918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.871874, 40.846897, 21.400562>,  <23.500242, 40.988007, 21.098446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.871874, 40.846897, 21.400562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789656, 40.808044, 21.011036>,  <22.740326, 40.784733, 20.777321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789656, 40.808044, 21.011036>,  <22.871874, 40.846897, 21.400562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789656, 40.808044, 21.011036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905870, -0.357667, 0.226878,
		-0.370338, 0.928784, -0.014472,
		-0.205544, -0.097132, -0.973816,
		22.727993, 40.778904, 20.718891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.162365, 41.100830, 21.274826>,  <22.871874, 40.846897, 21.400562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.162365, 41.100830, 21.274826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.252678, 40.845139, 20.980778>,  <22.306866, 40.691723, 20.804348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.252678, 40.845139, 20.980778>,  <22.162365, 41.100830, 21.274826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.252678, 40.845139, 20.980778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798266, -0.553930, 0.236499,
		-0.558387, 0.533435, -0.635335,
		0.225775, -0.639225, -0.735131,
		22.320414, 40.653370, 20.760241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.532621, 40.856113, 21.020773>,  <22.162365, 41.100830, 21.274826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.532621, 40.856113, 21.020773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769920, 40.594887, 20.832493>,  <21.912300, 40.438148, 20.719524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769920, 40.594887, 20.832493>,  <21.532621, 40.856113, 21.020773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769920, 40.594887, 20.832493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755898, -0.653024, -0.046662,
		-0.276904, 0.383482, -0.881059,
		0.593247, -0.653070, -0.470699,
		21.947895, 40.398964, 20.691282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124731, 40.662258, 20.538002>,  <21.532621, 40.856113, 21.020773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124731, 40.662258, 20.538002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393660, 40.366158, 20.539516>,  <21.555017, 40.188499, 20.540424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393660, 40.366158, 20.539516>,  <21.124731, 40.662258, 20.538002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393660, 40.366158, 20.539516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740249, -0.672281, 0.008305,
		-0.003602, -0.008387, -0.999958,
		0.672323, -0.740249, 0.003787,
		21.595356, 40.144081, 20.540653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927557, 40.259434, 20.056614>,  <21.124731, 40.662258, 20.538002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927557, 40.259434, 20.056614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.179388, 40.025272, 20.260941>,  <21.330486, 39.884777, 20.383537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.179388, 40.025272, 20.260941>,  <20.927557, 40.259434, 20.056614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.179388, 40.025272, 20.260941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698975, -0.713826, 0.043427,
		0.339213, -0.384390, -0.858591,
		0.629578, -0.585403, 0.510819,
		21.368261, 39.849651, 20.414186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931404, 39.558681, 19.713268>,  <20.927557, 40.259434, 20.056614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931404, 39.558681, 19.713268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045753, 39.507027, 20.093079>,  <21.114363, 39.476032, 20.320965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.045753, 39.507027, 20.093079>,  <20.931404, 39.558681, 19.713268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.045753, 39.507027, 20.093079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640438, -0.762828, 0.089070,
		0.712822, -0.633575, -0.300778,
		0.285875, -0.129139, 0.949526,
		21.131516, 39.468285, 20.377935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162874, 38.897278, 19.801483>,  <20.931404, 39.558681, 19.713268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162874, 38.897278, 19.801483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063805, 39.001541, 20.174732>,  <21.004364, 39.064098, 20.398682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063805, 39.001541, 20.174732>,  <21.162874, 38.897278, 19.801483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063805, 39.001541, 20.174732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510084, -0.853918, 0.103145,
		0.823695, -0.450424, 0.344449,
		-0.247672, 0.260658, 0.933121,
		20.989502, 39.079739, 20.454668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137300, 38.272957, 20.148001>,  <21.162874, 38.897278, 19.801483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137300, 38.272957, 20.148001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958784, 38.520855, 20.406223>,  <20.851675, 38.669594, 20.561157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958784, 38.520855, 20.406223>,  <21.137300, 38.272957, 20.148001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958784, 38.520855, 20.406223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633974, -0.728090, 0.260696,
		0.631588, -0.292920, 0.717840,
		-0.446289, 0.619744, 0.645557,
		20.824898, 38.706779, 20.599890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.143835, 37.834484, 20.627287>,  <21.137300, 38.272957, 20.148001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.143835, 37.834484, 20.627287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884150, 38.116135, 20.742340>,  <20.728338, 38.285126, 20.811373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884150, 38.116135, 20.742340>,  <21.143835, 37.834484, 20.627287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.884150, 38.116135, 20.742340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510022, -0.683546, 0.522152,
		0.564270, 0.192289, 0.802885,
		-0.649213, 0.704124, 0.287633,
		20.689386, 38.327374, 20.828630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.050617, 38.102913, 21.377413>,  <21.143835, 37.834484, 20.627287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.050617, 38.102913, 21.377413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697285, 38.163635, 21.200016>,  <20.485285, 38.200069, 21.093578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.697285, 38.163635, 21.200016>,  <21.050617, 38.102913, 21.377413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.697285, 38.163635, 21.200016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450129, -0.538729, 0.712148,
		-0.130813, 0.828690, 0.544207,
		-0.883330, 0.151806, -0.443490,
		20.432285, 38.209175, 21.066969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634249, 38.165619, 21.977291>,  <21.050617, 38.102913, 21.377413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634249, 38.165619, 21.977291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.348860, 38.141361, 21.698071>,  <20.177626, 38.126804, 21.530539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.348860, 38.141361, 21.698071>,  <20.634249, 38.165619, 21.977291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.348860, 38.141361, 21.698071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548458, -0.571664, 0.610241,
		-0.436061, 0.818243, 0.374605,
		-0.713473, -0.060647, -0.698053,
		20.134817, 38.123169, 21.488655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984108, 38.387665, 22.267134>,  <20.634249, 38.165619, 21.977291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984108, 38.387665, 22.267134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861296, 38.186787, 21.943768>,  <19.787609, 38.066261, 21.749748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.861296, 38.186787, 21.943768>,  <19.984108, 38.387665, 22.267134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.861296, 38.186787, 21.943768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697517, -0.459152, 0.550136,
		-0.647459, 0.732792, -0.209314,
		-0.307028, -0.502191, -0.808417,
		19.769188, 38.036129, 21.701242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.351555, 38.327946, 22.372845>,  <19.984108, 38.387665, 22.267134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.351555, 38.327946, 22.372845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412348, 38.038273, 22.103783>,  <19.448824, 37.864471, 21.942345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412348, 38.038273, 22.103783>,  <19.351555, 38.327946, 22.372845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412348, 38.038273, 22.103783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605576, -0.606090, 0.515686,
		-0.781139, 0.328968, -0.530661,
		0.151984, -0.724178, -0.672656,
		19.457943, 37.821018, 21.901985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709913, 38.035122, 22.233263>,  <19.351555, 38.327946, 22.372845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709913, 38.035122, 22.233263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958706, 37.734184, 22.146431>,  <19.107981, 37.553623, 22.094332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.958706, 37.734184, 22.146431>,  <18.709913, 38.035122, 22.233263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.958706, 37.734184, 22.146431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563926, -0.622720, 0.542408,
		-0.543257, -0.214949, -0.811584,
		0.621980, -0.752340, -0.217082,
		19.145300, 37.508484, 22.081306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333334, 37.443287, 22.082443>,  <18.709913, 38.035122, 22.233263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333334, 37.443287, 22.082443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.685181, 37.262794, 22.142658>,  <18.896290, 37.154499, 22.178787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.685181, 37.262794, 22.142658>,  <18.333334, 37.443287, 22.082443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.685181, 37.262794, 22.142658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454551, -0.704078, 0.545580,
		-0.140195, -0.548329, -0.824428,
		0.879618, -0.451232, 0.150536,
		18.949066, 37.127426, 22.187819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263323, 36.766457, 21.905828>,  <18.333334, 37.443287, 22.082443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263323, 36.766457, 21.905828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573683, 36.773056, 22.158085>,  <18.759899, 36.777016, 22.309439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573683, 36.773056, 22.158085>,  <18.263323, 36.766457, 21.905828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573683, 36.773056, 22.158085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466569, -0.657833, 0.591243,
		0.424610, -0.752983, -0.502715,
		0.775899, 0.016497, 0.630642,
		18.806452, 36.778004, 22.347277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293743, 36.194546, 22.214239>,  <18.263323, 36.766457, 21.905828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293743, 36.194546, 22.214239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559093, 36.362499, 22.461990>,  <18.718304, 36.463272, 22.610641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559093, 36.362499, 22.461990>,  <18.293743, 36.194546, 22.214239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559093, 36.362499, 22.461990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474487, -0.404010, 0.782073,
		0.578614, -0.812696, -0.068781,
		0.663376, 0.419883, 0.619379,
		18.758106, 36.488464, 22.647804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747213, 36.431870, 22.575176>,  <18.293743, 36.194546, 22.214239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747213, 36.431870, 22.575176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137886, 36.510010, 22.539551>,  <18.372290, 36.556892, 22.518175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.137886, 36.510010, 22.539551>,  <17.747213, 36.431870, 22.575176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.137886, 36.510010, 22.539551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174523, 0.964006, 0.200582,
		0.125039, -0.180362, 0.975620,
		0.976681, 0.195349, -0.089061,
		18.430891, 36.568615, 22.512833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.083946, 36.743092, 23.195526>,  <17.747213, 36.431870, 22.575176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.083946, 36.743092, 23.195526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214195, 36.883881, 22.844509>,  <18.292345, 36.968353, 22.633898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.214195, 36.883881, 22.844509>,  <18.083946, 36.743092, 23.195526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.214195, 36.883881, 22.844509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344471, 0.908500, 0.236573,
		0.880516, 0.225255, 0.417075,
		0.325623, 0.351977, -0.877543,
		18.311882, 36.989475, 22.581245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579754, 37.232967, 23.283775>,  <18.083946, 36.743092, 23.195526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579754, 37.232967, 23.283775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395617, 37.310375, 22.937218>,  <18.285135, 37.356819, 22.729284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395617, 37.310375, 22.937218>,  <18.579754, 37.232967, 23.283775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395617, 37.310375, 22.937218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188887, 0.932253, 0.308589,
		0.867414, 0.305707, -0.392603,
		-0.460342, 0.193517, -0.866393,
		18.257513, 37.368431, 22.677299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099237, 37.809708, 23.581396>,  <18.579754, 37.232967, 23.283775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099237, 37.809708, 23.581396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.250990, 37.988510, 23.257359>,  <18.342041, 38.095791, 23.062935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.250990, 37.988510, 23.257359>,  <18.099237, 37.809708, 23.581396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250990, 37.988510, 23.257359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333193, -0.882813, -0.331094,
		-0.863165, -0.144307, -0.483862,
		0.379380, 0.447008, -0.810096,
		18.364803, 38.122612, 23.014330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.786739, 31.005360, 32.308456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078754, 31.278374, 32.322247>,  <31.253963, 31.442183, 32.330521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078754, 31.278374, 32.322247>,  <30.786739, 31.005360, 32.308456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078754, 31.278374, 32.322247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168742, 0.228913, -0.958710,
		-0.662246, 0.694078, 0.282287,
		0.730039, 0.682535, 0.034477,
		31.297766, 31.483135, 32.332588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550699, 31.640959, 32.118946>,  <30.786739, 31.005360, 32.308456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550699, 31.640959, 32.118946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939754, 31.707573, 32.054153>,  <31.173187, 31.747541, 32.015278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939754, 31.707573, 32.054153>,  <30.550699, 31.640959, 32.118946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939754, 31.707573, 32.054153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218373, 0.417473, -0.882060,
		-0.079271, 0.893299, 0.442417,
		0.972640, 0.166534, -0.161979,
		31.231546, 31.757532, 32.005558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668186, 32.268486, 31.718874>,  <30.550699, 31.640959, 32.118946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668186, 32.268486, 31.718874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015554, 32.083508, 31.647335>,  <31.223976, 31.972521, 31.604412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.015554, 32.083508, 31.647335>,  <30.668186, 32.268486, 31.718874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015554, 32.083508, 31.647335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010289, 0.343822, -0.938978,
		0.495720, 0.817269, 0.293824,
		0.868421, -0.462447, -0.178849,
		31.276081, 31.944773, 31.593681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952379, 32.673019, 31.395346>,  <30.668186, 32.268486, 31.718874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952379, 32.673019, 31.395346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.176947, 32.358307, 31.292747>,  <31.311687, 32.169479, 31.231188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.176947, 32.358307, 31.292747>,  <30.952379, 32.673019, 31.395346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176947, 32.358307, 31.292747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072070, 0.355261, -0.931985,
		0.824388, 0.504747, 0.256153,
		0.561418, -0.786778, -0.256496,
		31.345371, 32.122272, 31.215799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555948, 32.998348, 31.070997>,  <30.952379, 32.673019, 31.395346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555948, 32.998348, 31.070997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.542759, 32.611080, 30.971748>,  <31.534845, 32.378719, 30.912199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.542759, 32.611080, 30.971748>,  <31.555948, 32.998348, 31.070997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542759, 32.611080, 30.971748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248602, 0.232508, -0.940286,
		0.968044, -0.092688, 0.233021,
		-0.032974, -0.968168, -0.248121,
		31.532867, 32.320629, 30.897312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155029, 32.814079, 30.782389>,  <31.555948, 32.998348, 31.070997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155029, 32.814079, 30.782389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884970, 32.560177, 30.632050>,  <31.722935, 32.407833, 30.541845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.884970, 32.560177, 30.632050>,  <32.155029, 32.814079, 30.782389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884970, 32.560177, 30.632050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195225, 0.337589, -0.920826,
		0.711384, -0.695065, -0.104001,
		-0.675144, -0.634758, -0.375849,
		31.682426, 32.369751, 30.519295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405460, 32.827305, 30.130184>,  <32.155029, 32.814079, 30.782389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405460, 32.827305, 30.130184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.052246, 32.642841, 30.095337>,  <31.840319, 32.532166, 30.074429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.052246, 32.642841, 30.095337>,  <32.405460, 32.827305, 30.130184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052246, 32.642841, 30.095337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048533, 0.094902, -0.994303,
		0.466795, -0.882230, -0.061420,
		-0.883033, -0.461154, -0.087117,
		31.787336, 32.504494, 30.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541832, 32.298595, 29.651207>,  <32.405460, 32.827305, 30.130184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541832, 32.298595, 29.651207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.153194, 32.376572, 29.597523>,  <31.920013, 32.423355, 29.565311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.153194, 32.376572, 29.597523>,  <32.541832, 32.298595, 29.651207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153194, 32.376572, 29.597523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043367, -0.410842, -0.910675,
		-0.232663, -0.890623, 0.390716,
		-0.971590, 0.194936, -0.134211,
		31.861717, 32.435051, 29.557259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359455, 31.823992, 29.220491>,  <32.541832, 32.298595, 29.651207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359455, 31.823992, 29.220491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066658, 32.094353, 29.186226>,  <31.890980, 32.256569, 29.165667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.066658, 32.094353, 29.186226>,  <32.359455, 31.823992, 29.220491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066658, 32.094353, 29.186226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108765, -0.240052, -0.964648,
		-0.672573, -0.696799, 0.249232,
		-0.731994, 0.675904, -0.085665,
		31.847059, 32.297123, 29.160526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862169, 31.454983, 28.892162>,  <32.359455, 31.823992, 29.220491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862169, 31.454983, 28.892162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757322, 31.837334, 28.839108>,  <31.694414, 32.066746, 28.807274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757322, 31.837334, 28.839108>,  <31.862169, 31.454983, 28.892162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757322, 31.837334, 28.839108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385200, -0.229653, -0.893801,
		-0.884825, -0.183189, 0.428400,
		-0.262118, 0.955877, -0.132638,
		31.678686, 32.124096, 28.799316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233475, 31.478365, 28.494480>,  <31.862169, 31.454983, 28.892162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233475, 31.478365, 28.494480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354677, 31.858643, 28.468040>,  <31.427399, 32.086807, 28.452177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.354677, 31.858643, 28.468040>,  <31.233475, 31.478365, 28.494480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354677, 31.858643, 28.468040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438993, 0.077680, -0.895126,
		-0.845856, 0.300245, 0.440886,
		0.303005, 0.950694, -0.066099,
		31.445580, 32.143852, 28.448210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622068, 31.940491, 28.262346>,  <31.233475, 31.478365, 28.494480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622068, 31.940491, 28.262346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958479, 32.119003, 28.140034>,  <31.160326, 32.226112, 28.066647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.958479, 32.119003, 28.140034>,  <30.622068, 31.940491, 28.262346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958479, 32.119003, 28.140034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403491, 0.140947, -0.904063,
		-0.360370, 0.883722, 0.298611,
		0.841029, 0.446284, -0.305781,
		31.210787, 32.252888, 28.048300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500296, 32.499157, 27.798176>,  <30.622068, 31.940491, 28.262346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500296, 32.499157, 27.798176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.879105, 32.421467, 27.695858>,  <31.106390, 32.374855, 27.634468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.879105, 32.421467, 27.695858>,  <30.500296, 32.499157, 27.798176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879105, 32.421467, 27.695858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213173, 0.215597, -0.952930,
		0.240229, 0.956972, 0.162772,
		0.947020, -0.194222, -0.255793,
		31.163210, 32.363201, 27.619120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636219, 33.001518, 27.338285>,  <30.500296, 32.499157, 27.798176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636219, 33.001518, 27.338285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937204, 32.743446, 27.285297>,  <31.117796, 32.588604, 27.253506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.937204, 32.743446, 27.285297>,  <30.636219, 33.001518, 27.338285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937204, 32.743446, 27.285297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069485, 0.122242, -0.990065,
		0.654960, 0.754191, 0.047152,
		0.752462, -0.645177, -0.132468,
		31.162943, 32.549892, 27.245558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978111, 33.292938, 26.764675>,  <30.636219, 33.001518, 27.338285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978111, 33.292938, 26.764675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143608, 32.928936, 26.775326>,  <31.242907, 32.710537, 26.781715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.143608, 32.928936, 26.775326>,  <30.978111, 33.292938, 26.764675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143608, 32.928936, 26.775326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154501, -0.099008, -0.983019,
		0.897187, 0.402605, -0.181560,
		0.413744, -0.910004, 0.026626,
		31.267731, 32.655933, 26.783314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660101, 33.287312, 26.514643>,  <30.978111, 33.292938, 26.764675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660101, 33.287312, 26.514643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.476168, 32.937073, 26.455463>,  <31.365808, 32.726929, 26.419956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.476168, 32.937073, 26.455463>,  <31.660101, 33.287312, 26.514643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476168, 32.937073, 26.455463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193130, 0.064007, -0.979083,
		0.866749, -0.478788, 0.139671,
		-0.459834, -0.875594, -0.147946,
		31.338217, 32.674393, 26.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963070, 33.136452, 25.962814>,  <31.660101, 33.287312, 26.514643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963070, 33.136452, 25.962814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653543, 32.883430, 25.975990>,  <31.467827, 32.731617, 25.983896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653543, 32.883430, 25.975990>,  <31.963070, 33.136452, 25.962814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653543, 32.883430, 25.975990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119282, 0.094449, -0.988358,
		0.622078, -0.768736, -0.148538,
		-0.773816, -0.632553, 0.032942,
		31.421398, 32.693665, 25.985872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049725, 32.827671, 25.348684>,  <31.963070, 33.136452, 25.962814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049725, 32.827671, 25.348684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668945, 32.741066, 25.435322>,  <31.440477, 32.689102, 25.487305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668945, 32.741066, 25.435322>,  <32.049725, 32.827671, 25.348684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668945, 32.741066, 25.435322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255890, 0.173764, -0.950961,
		0.168286, -0.960686, -0.220825,
		-0.951945, -0.216540, 0.216588,
		31.383360, 32.676113, 25.500301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840193, 32.408600, 24.846964>,  <32.049725, 32.827671, 25.348684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840193, 32.408600, 24.846964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515337, 32.579681, 25.005707>,  <31.320423, 32.682331, 25.100952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.515337, 32.579681, 25.005707>,  <31.840193, 32.408600, 24.846964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515337, 32.579681, 25.005707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285037, 0.302650, -0.909482,
		-0.509097, -0.851747, -0.123883,
		-0.812142, 0.427703, 0.396857,
		31.271694, 32.707993, 25.124763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261053, 32.220127, 24.457832>,  <31.840193, 32.408600, 24.846964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261053, 32.220127, 24.457832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126432, 32.554623, 24.631012>,  <31.045660, 32.755318, 24.734919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.126432, 32.554623, 24.631012>,  <31.261053, 32.220127, 24.457832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126432, 32.554623, 24.631012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254308, 0.361971, -0.896830,
		-0.906675, -0.411933, 0.090839,
		-0.336553, 0.836234, 0.432948,
		31.025467, 32.805492, 24.760897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763212, 32.507744, 24.033054>,  <31.261053, 32.220127, 24.457832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763212, 32.507744, 24.033054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827862, 32.833813, 24.255539>,  <30.866652, 33.029453, 24.389029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.827862, 32.833813, 24.255539>,  <30.763212, 32.507744, 24.033054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827862, 32.833813, 24.255539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315164, 0.576743, -0.753684,
		-0.935173, -0.053484, 0.350129,
		0.161624, 0.815173, 0.556211,
		30.876348, 33.078365, 24.422401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214903, 33.132511, 24.136322>,  <30.763212, 32.507744, 24.033054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214903, 33.132511, 24.136322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.588064, 33.264725, 24.079140>,  <30.811962, 33.344051, 24.044830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.588064, 33.264725, 24.079140>,  <30.214903, 33.132511, 24.136322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588064, 33.264725, 24.079140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291010, 0.458085, -0.839923,
		-0.212134, 0.825171, 0.523538,
		0.932905, 0.330531, -0.142958,
		30.867935, 33.363884, 24.036253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751945, 32.598572, 23.784189>,  <30.214903, 33.132511, 24.136322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751945, 32.598572, 23.784189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363028, 32.507717, 23.762077>,  <29.129677, 32.453205, 23.748810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363028, 32.507717, 23.762077>,  <29.751945, 32.598572, 23.784189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363028, 32.507717, 23.762077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014834, -0.176054, 0.984269,
		-0.233294, 0.957818, 0.167806,
		-0.972293, -0.227135, -0.055281,
		29.071341, 32.439575, 23.745493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418095, 32.891319, 24.440454>,  <29.751945, 32.598572, 23.784189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418095, 32.891319, 24.440454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.148037, 32.629482, 24.304401>,  <28.986002, 32.472382, 24.222769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.148037, 32.629482, 24.304401>,  <29.418095, 32.891319, 24.440454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148037, 32.629482, 24.304401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210602, -0.270859, 0.939299,
		-0.706982, 0.705797, 0.045012,
		-0.675147, -0.654588, -0.340135,
		28.945494, 32.433105, 24.202360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822260, 33.049183, 24.823320>,  <29.418095, 32.891319, 24.440454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822260, 33.049183, 24.823320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.770832, 32.677456, 24.684853>,  <28.739975, 32.454418, 24.601772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.770832, 32.677456, 24.684853>,  <28.822260, 33.049183, 24.823320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770832, 32.677456, 24.684853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262325, -0.304762, 0.915590,
		-0.956376, 0.208527, -0.204601,
		-0.128571, -0.929321, -0.346169,
		28.732262, 32.398659, 24.581001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146887, 32.887932, 24.960804>,  <28.822260, 33.049183, 24.823320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146887, 32.887932, 24.960804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.351593, 32.547298, 24.915363>,  <28.474417, 32.342918, 24.888100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.351593, 32.547298, 24.915363>,  <28.146887, 32.887932, 24.960804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351593, 32.547298, 24.915363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354629, -0.329831, 0.874900,
		-0.782517, -0.407458, -0.470792,
		0.511767, -0.851581, -0.113602,
		28.505123, 32.291824, 24.881283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717505, 32.411358, 25.387581>,  <28.146887, 32.887932, 24.960804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717505, 32.411358, 25.387581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.039701, 32.191116, 25.299934>,  <28.233021, 32.058971, 25.247347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.039701, 32.191116, 25.299934>,  <27.717505, 32.411358, 25.387581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039701, 32.191116, 25.299934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198335, -0.598910, 0.775867,
		-0.558427, -0.581499, -0.591624,
		0.805495, -0.550605, -0.219116,
		28.281349, 32.025936, 25.234200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561819, 31.697329, 25.441841>,  <27.717505, 32.411358, 25.387581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561819, 31.697329, 25.441841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957209, 31.718754, 25.498486>,  <28.194443, 31.731609, 25.532473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957209, 31.718754, 25.498486>,  <27.561819, 31.697329, 25.441841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957209, 31.718754, 25.498486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096986, -0.494216, 0.863912,
		0.116261, -0.867687, -0.483324,
		0.988472, 0.053564, 0.141611,
		28.253750, 31.734823, 25.540968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728138, 31.128027, 25.681307>,  <27.561819, 31.697329, 25.441841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728138, 31.128027, 25.681307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.043968, 31.348248, 25.789726>,  <28.233465, 31.480379, 25.854778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.043968, 31.348248, 25.789726>,  <27.728138, 31.128027, 25.681307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043968, 31.348248, 25.789726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097428, -0.323628, 0.941155,
		0.605873, -0.769519, -0.201889,
		0.789573, 0.550551, 0.271050,
		28.280840, 31.513412, 25.871040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191422, 30.716234, 26.042192>,  <27.728138, 31.128027, 25.681307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191422, 30.716234, 26.042192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.235815, 31.093449, 26.167645>,  <28.262451, 31.319777, 26.242916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.235815, 31.093449, 26.167645>,  <28.191422, 30.716234, 26.042192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235815, 31.093449, 26.167645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000983, -0.315477, 0.948933,
		0.993821, -0.105626, -0.034087,
		0.110986, 0.943036, 0.313631,
		28.269112, 31.376360, 26.261734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711573, 30.678362, 26.589571>,  <28.191422, 30.716234, 26.042192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711573, 30.678362, 26.589571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.572392, 31.046730, 26.659805>,  <28.488882, 31.267752, 26.701946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.572392, 31.046730, 26.659805>,  <28.711573, 30.678362, 26.589571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572392, 31.046730, 26.659805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091176, -0.153159, 0.983986,
		0.933067, 0.358391, -0.030674,
		-0.347954, 0.920923, 0.175584,
		28.468006, 31.323008, 26.712481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244047, 31.056993, 27.039629>,  <28.711573, 30.678362, 26.589571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244047, 31.056993, 27.039629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.897533, 31.241165, 27.117146>,  <28.689625, 31.351669, 27.163656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.897533, 31.241165, 27.117146>,  <29.244047, 31.056993, 27.039629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897533, 31.241165, 27.117146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234854, 0.032986, 0.971471,
		0.440902, 0.887083, -0.136709,
		-0.866284, 0.460430, 0.193792,
		28.637648, 31.379293, 27.175283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452368, 31.668188, 27.411053>,  <29.244047, 31.056993, 27.039629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452368, 31.668188, 27.411053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.060068, 31.632751, 27.480659>,  <28.824688, 31.611490, 27.522423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.060068, 31.632751, 27.480659>,  <29.452368, 31.668188, 27.411053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060068, 31.632751, 27.480659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122887, 0.412534, 0.902616,
		-0.151752, 0.906624, -0.393705,
		-0.980750, -0.088592, 0.174016,
		28.765842, 31.606174, 27.532864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181665, 32.306496, 27.640753>,  <29.452368, 31.668188, 27.411053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181665, 32.306496, 27.640753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.948612, 32.007103, 27.767437>,  <28.808781, 31.827467, 27.843447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.948612, 32.007103, 27.767437>,  <29.181665, 32.306496, 27.640753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948612, 32.007103, 27.767437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013156, 0.380947, 0.924503,
		-0.812627, 0.542814, -0.212107,
		-0.582635, -0.748486, 0.316709,
		28.773821, 31.782557, 27.862450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753534, 32.539078, 28.202223>,  <29.181665, 32.306496, 27.640753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753534, 32.539078, 28.202223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.730433, 32.144745, 28.265202>,  <28.716572, 31.908144, 28.302988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.730433, 32.144745, 28.265202>,  <28.753534, 32.539078, 28.202223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730433, 32.144745, 28.265202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001300, 0.157636, 0.987496,
		-0.998330, 0.057239, -0.007823,
		-0.057757, -0.985837, 0.157448,
		28.713106, 31.848993, 28.312435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214853, 32.500717, 28.662458>,  <28.753534, 32.539078, 28.202223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214853, 32.500717, 28.662458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.442043, 32.172787, 28.691540>,  <28.578358, 31.976028, 28.708988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.442043, 32.172787, 28.691540>,  <28.214853, 32.500717, 28.662458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442043, 32.172787, 28.691540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031837, 0.066387, 0.997286,
		-0.822431, -0.568747, 0.011605,
		0.567974, -0.819829, 0.072705,
		28.612436, 31.926838, 28.713352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899086, 32.100822, 29.171309>,  <28.214853, 32.500717, 28.662458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899086, 32.100822, 29.171309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.247423, 31.914196, 29.109402>,  <28.456425, 31.802221, 29.072258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.247423, 31.914196, 29.109402>,  <27.899086, 32.100822, 29.171309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247423, 31.914196, 29.109402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060643, -0.210468, 0.975718,
		-0.487810, -0.859081, -0.154990,
		0.870841, -0.466566, -0.154765,
		28.508677, 31.774227, 29.062973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840485, 31.554888, 29.645636>,  <27.899086, 32.100822, 29.171309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840485, 31.554888, 29.645636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.231586, 31.578972, 29.565269>,  <28.466248, 31.593422, 29.517050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.231586, 31.578972, 29.565269>,  <27.840485, 31.554888, 29.645636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231586, 31.578972, 29.565269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209536, -0.322750, 0.922999,
		-0.009270, -0.944567, -0.328188,
		0.977757, 0.060211, -0.200913,
		28.524914, 31.597034, 29.504995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099680, 30.932243, 29.894810>,  <27.840485, 31.554888, 29.645636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099680, 30.932243, 29.894810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.398348, 31.198307, 29.897514>,  <28.577549, 31.357944, 29.899137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.398348, 31.198307, 29.897514>,  <28.099680, 30.932243, 29.894810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398348, 31.198307, 29.897514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079229, -0.099023, 0.991926,
		0.660458, -0.740107, -0.126637,
		0.746671, 0.665159, 0.006763,
		28.622349, 31.397854, 29.899544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571896, 30.621813, 30.224691>,  <28.099680, 30.932243, 29.894810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571896, 30.621813, 30.224691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.702665, 30.999809, 30.228958>,  <28.781128, 31.226606, 30.231518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.702665, 30.999809, 30.228958>,  <28.571896, 30.621813, 30.224691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702665, 30.999809, 30.228958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285613, -0.109555, 0.952063,
		0.900858, -0.308207, -0.305718,
		0.326925, 0.944990, 0.010665,
		28.800743, 31.283306, 30.232157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.343405, 30.519827, 30.610750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.209333, 30.895962, 30.634129>,  <29.128891, 31.121643, 30.648155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.209333, 30.895962, 30.634129>,  <29.343405, 30.519827, 30.610750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209333, 30.895962, 30.634129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210113, 0.014135, 0.977575,
		0.918426, 0.339944, -0.202316,
		-0.335181, 0.940340, 0.058445,
		29.108780, 31.178064, 30.651663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760288, 30.841003, 31.086540>,  <29.343405, 30.519827, 30.610750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760288, 30.841003, 31.086540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454746, 31.098804, 31.100052>,  <29.271421, 31.253485, 31.108158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.454746, 31.098804, 31.100052>,  <29.760288, 30.841003, 31.086540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454746, 31.098804, 31.100052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030922, -0.015730, 0.999398,
		0.644645, 0.764441, -0.007914,
		-0.763857, 0.644501, 0.033778,
		29.225590, 31.292154, 31.110186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931810, 31.337776, 31.568945>,  <29.760288, 30.841003, 31.086540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931810, 31.337776, 31.568945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532627, 31.342388, 31.543808>,  <29.293118, 31.345156, 31.528727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532627, 31.342388, 31.543808>,  <29.931810, 31.337776, 31.568945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532627, 31.342388, 31.543808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063846, -0.143646, 0.987567,
		0.002357, 0.989562, 0.144088,
		-0.997957, 0.011528, -0.062841,
		29.233240, 31.345846, 31.524956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703043, 31.832977, 32.133831>,  <29.931810, 31.337776, 31.568945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703043, 31.832977, 32.133831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.399982, 31.592434, 32.032375>,  <29.218145, 31.448109, 31.971502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.399982, 31.592434, 32.032375>,  <29.703043, 31.832977, 32.133831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399982, 31.592434, 32.032375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229743, -0.118014, 0.966070,
		-0.610885, 0.790217, -0.048744,
		-0.757652, -0.601356, -0.253640,
		29.172688, 31.412027, 31.956284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035067, 32.125946, 32.513912>,  <29.703043, 31.832977, 32.133831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035067, 32.125946, 32.513912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974922, 31.755650, 32.375122>,  <28.938835, 31.533472, 32.291847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974922, 31.755650, 32.375122>,  <29.035067, 32.125946, 32.513912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974922, 31.755650, 32.375122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206979, -0.313711, 0.926685,
		-0.966722, 0.211155, -0.144439,
		-0.150362, -0.925742, -0.346976,
		28.929813, 31.477926, 32.271030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483898, 31.919060, 32.922905>,  <29.035067, 32.125946, 32.513912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483898, 31.919060, 32.922905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682423, 31.594891, 32.798401>,  <28.801538, 31.400389, 32.723698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.682423, 31.594891, 32.798401>,  <28.483898, 31.919060, 32.922905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682423, 31.594891, 32.798401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190949, -0.451665, 0.871514,
		-0.846884, -0.373108, -0.378917,
		0.496313, -0.810425, -0.311263,
		28.831316, 31.351763, 32.705021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020872, 31.342485, 33.116295>,  <28.483898, 31.919060, 32.922905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020872, 31.342485, 33.116295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392544, 31.203922, 33.064716>,  <28.615547, 31.120785, 33.033772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.392544, 31.203922, 33.064716>,  <28.020872, 31.342485, 33.116295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392544, 31.203922, 33.064716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136612, -0.645995, 0.751018,
		-0.343454, -0.680216, -0.647569,
		0.929181, -0.346405, -0.128944,
		28.671297, 31.100000, 33.026031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963800, 30.685495, 33.213982>,  <28.020872, 31.342485, 33.116295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963800, 30.685495, 33.213982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355408, 30.735966, 33.277985>,  <28.590372, 30.766247, 33.316387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.355408, 30.735966, 33.277985>,  <27.963800, 30.685495, 33.213982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355408, 30.735966, 33.277985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052969, -0.600665, 0.797744,
		0.196766, -0.789482, -0.581379,
		0.979019, 0.126174, 0.160008,
		28.649113, 30.773817, 33.325989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331978, 29.996464, 33.237785>,  <27.963800, 30.685495, 33.213982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331978, 29.996464, 33.237785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549673, 30.267967, 33.435005>,  <28.680290, 30.430868, 33.553337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.549673, 30.267967, 33.435005>,  <28.331978, 29.996464, 33.237785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549673, 30.267967, 33.435005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154135, -0.658603, 0.736536,
		0.824650, -0.324855, -0.463057,
		0.544237, 0.678757, 0.493045,
		28.712944, 30.471594, 33.582920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767868, 29.519281, 33.587666>,  <28.331978, 29.996464, 33.237785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767868, 29.519281, 33.587666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838097, 29.853329, 33.796185>,  <28.880234, 30.053757, 33.921295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.838097, 29.853329, 33.796185>,  <28.767868, 29.519281, 33.587666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838097, 29.853329, 33.796185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091983, -0.541127, 0.835895,
		0.980160, -0.098809, -0.171823,
		0.175572, 0.835116, 0.521302,
		28.890768, 30.103863, 33.952576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.290804, 29.316526, 34.147644>,  <28.767868, 29.519281, 33.587666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.290804, 29.316526, 34.147644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144724, 29.666187, 34.275700>,  <29.057076, 29.875984, 34.352531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.144724, 29.666187, 34.275700>,  <29.290804, 29.316526, 34.147644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144724, 29.666187, 34.275700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052265, -0.324092, 0.944581,
		0.929460, 0.361694, 0.072671,
		-0.365201, 0.874152, 0.320135,
		29.035164, 29.928432, 34.371738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611582, 29.552553, 34.730797>,  <29.290804, 29.316526, 34.147644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611582, 29.552553, 34.730797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271238, 29.756348, 34.782120>,  <29.067032, 29.878624, 34.812912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271238, 29.756348, 34.782120>,  <29.611582, 29.552553, 34.730797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271238, 29.756348, 34.782120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034230, -0.297446, 0.954125,
		0.524278, 0.807434, 0.270524,
		-0.850859, 0.509487, 0.128306,
		29.015980, 29.909193, 34.820610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795738, 30.001760, 35.287777>,  <29.611582, 29.552553, 34.730797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795738, 30.001760, 35.287777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.395937, 29.994946, 35.277161>,  <29.156055, 29.990856, 35.270790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.395937, 29.994946, 35.277161>,  <29.795738, 30.001760, 35.287777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395937, 29.994946, 35.277161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025930, -0.034928, 0.999053,
		-0.017949, 0.999245, 0.034468,
		-0.999503, -0.017038, -0.026538,
		29.096087, 29.989834, 35.269199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464159, 30.602581, 35.609524>,  <29.795738, 30.001760, 35.287777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464159, 30.602581, 35.609524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191986, 30.309536, 35.616329>,  <29.028683, 30.133709, 35.620411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191986, 30.309536, 35.616329>,  <29.464159, 30.602581, 35.609524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191986, 30.309536, 35.616329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025884, 0.047232, 0.998549,
		-0.732353, 0.679005, -0.051101,
		-0.680433, -0.732612, 0.017015,
		28.987856, 30.089752, 35.621433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243153, 30.692200, 36.223503>,  <29.464159, 30.602581, 35.609524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243153, 30.692200, 36.223503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078844, 30.342285, 36.120728>,  <28.980259, 30.132338, 36.059063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.078844, 30.342285, 36.120728>,  <29.243153, 30.692200, 36.223503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078844, 30.342285, 36.120728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162709, -0.206956, 0.964725,
		-0.897102, 0.438089, -0.057323,
		-0.410772, -0.874784, -0.256941,
		28.955612, 30.079849, 36.043644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606525, 30.678278, 36.584560>,  <29.243153, 30.692200, 36.223503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606525, 30.678278, 36.584560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714869, 30.302277, 36.501583>,  <28.779875, 30.076675, 36.451797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.714869, 30.302277, 36.501583>,  <28.606525, 30.678278, 36.584560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714869, 30.302277, 36.501583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092029, -0.239797, 0.966451,
		-0.958210, -0.242681, -0.151459,
		0.270859, -0.940002, -0.207442,
		28.796125, 30.020277, 36.439350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128916, 30.326887, 36.984043>,  <28.606525, 30.678278, 36.584560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128916, 30.326887, 36.984043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419426, 30.069389, 36.887615>,  <28.593733, 29.914890, 36.829758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419426, 30.069389, 36.887615>,  <28.128916, 30.326887, 36.984043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419426, 30.069389, 36.887615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089899, -0.436633, 0.895137,
		-0.681500, -0.628444, -0.374988,
		0.726276, -0.643747, -0.241068,
		28.637308, 29.876265, 36.815296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.939493, 29.626617, 37.189899>,  <28.128916, 30.326887, 36.984043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.939493, 29.626617, 37.189899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337511, 29.621044, 37.150517>,  <28.576321, 29.617701, 37.126888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.337511, 29.621044, 37.150517>,  <27.939493, 29.626617, 37.189899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337511, 29.621044, 37.150517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093358, -0.209962, 0.973242,
		-0.034232, -0.977610, -0.207620,
		0.995044, -0.013933, -0.098455,
		28.636024, 29.616863, 37.120979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174036, 29.040274, 37.635128>,  <27.939493, 29.626617, 37.189899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174036, 29.040274, 37.635128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451616, 29.324875, 37.590946>,  <28.618164, 29.495636, 37.564438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.451616, 29.324875, 37.590946>,  <28.174036, 29.040274, 37.635128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451616, 29.324875, 37.590946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240021, -0.083965, 0.967130,
		0.678840, -0.697650, -0.229043,
		0.693950, 0.711501, -0.110452,
		28.659801, 29.538324, 37.557812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593952, 28.848455, 38.137508>,  <28.174036, 29.040274, 37.635128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593952, 28.848455, 38.137508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700356, 29.220943, 38.037857>,  <28.764198, 29.444437, 37.978065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.700356, 29.220943, 38.037857>,  <28.593952, 28.848455, 38.137508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700356, 29.220943, 38.037857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186958, 0.203692, 0.961018,
		0.945667, -0.302216, -0.119915,
		0.266010, 0.931222, -0.249126,
		28.780159, 29.500311, 37.963120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109604, 28.962477, 38.523121>,  <28.593952, 28.848455, 38.137508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109604, 28.962477, 38.523121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.001356, 29.330753, 38.410629>,  <28.936407, 29.551720, 38.343136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.001356, 29.330753, 38.410629>,  <29.109604, 28.962477, 38.523121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001356, 29.330753, 38.410629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118829, 0.321844, 0.939306,
		0.955324, 0.220777, -0.196502,
		-0.270620, 0.920692, -0.281231,
		28.920170, 29.606960, 38.326260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512516, 29.393068, 38.901222>,  <29.109604, 28.962477, 38.523121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512516, 29.393068, 38.901222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.172569, 29.570877, 38.787994>,  <28.968601, 29.677563, 38.720058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.172569, 29.570877, 38.787994>,  <29.512516, 29.393068, 38.901222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172569, 29.570877, 38.787994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232473, 0.165819, 0.958363,
		0.472953, 0.880286, -0.037584,
		-0.849866, 0.444523, -0.283068,
		28.917610, 29.704233, 38.703075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489676, 30.078459, 39.277905>,  <29.512516, 29.393068, 38.901222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489676, 30.078459, 39.277905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140636, 29.907593, 39.183163>,  <28.931213, 29.805073, 39.126316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.140636, 29.907593, 39.183163>,  <29.489676, 30.078459, 39.277905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140636, 29.907593, 39.183163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255111, -0.014943, 0.966796,
		-0.416520, 0.904050, -0.095935,
		-0.872599, -0.427165, -0.236857,
		28.878857, 29.779444, 39.112106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950985, 30.472332, 39.514458>,  <29.489676, 30.078459, 39.277905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950985, 30.472332, 39.514458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843306, 30.087185, 39.506229>,  <28.778698, 29.856096, 39.501293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843306, 30.087185, 39.506229>,  <28.950985, 30.472332, 39.514458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843306, 30.087185, 39.506229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241133, 0.046710, 0.969367,
		-0.932410, 0.265909, -0.244753,
		-0.269196, -0.962866, -0.020567,
		28.762547, 29.798325, 39.500061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190140, 31.056946, 39.206474>,  <28.950985, 30.472332, 39.514458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190140, 31.056946, 39.206474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323545, 31.341640, 39.453762>,  <29.403589, 31.512457, 39.602135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.323545, 31.341640, 39.453762>,  <29.190140, 31.056946, 39.206474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323545, 31.341640, 39.453762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484261, 0.433304, -0.760092,
		-0.808863, 0.552882, -0.200153,
		0.333514, 0.711737, 0.618223,
		29.423599, 31.555161, 39.639229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990965, 31.648098, 38.732777>,  <29.190140, 31.056946, 39.206474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990965, 31.648098, 38.732777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258472, 31.763641, 39.006802>,  <29.418976, 31.832968, 39.171215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.258472, 31.763641, 39.006802>,  <28.990965, 31.648098, 38.732777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258472, 31.763641, 39.006802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506852, 0.496983, -0.704350,
		-0.543921, 0.818272, 0.185958,
		0.668768, 0.288857, 0.685063,
		29.459103, 31.850298, 39.212322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142521, 32.428040, 38.669075>,  <28.990965, 31.648098, 38.732777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142521, 32.428040, 38.669075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467930, 32.286381, 38.853580>,  <29.663176, 32.201385, 38.964283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.467930, 32.286381, 38.853580>,  <29.142521, 32.428040, 38.669075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467930, 32.286381, 38.853580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570498, 0.332229, -0.751103,
		0.112754, 0.874189, 0.472314,
		0.813522, -0.354144, 0.461263,
		29.711987, 32.180138, 38.991959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589226, 32.980835, 38.587910>,  <29.142521, 32.428040, 38.669075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589226, 32.980835, 38.587910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.784975, 32.635731, 38.638763>,  <29.902426, 32.428669, 38.669277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.784975, 32.635731, 38.638763>,  <29.589226, 32.980835, 38.587910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784975, 32.635731, 38.638763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556781, 0.196905, -0.806984,
		0.671198, 0.465703, 0.576727,
		0.489375, -0.862757, 0.127133,
		29.931787, 32.376904, 38.676903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293976, 33.152454, 38.557003>,  <29.589226, 32.980835, 38.587910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293976, 33.152454, 38.557003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244013, 32.765530, 38.468723>,  <30.214035, 32.533375, 38.415756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.244013, 32.765530, 38.468723>,  <30.293976, 33.152454, 38.557003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244013, 32.765530, 38.468723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487066, 0.134014, -0.863022,
		0.864387, -0.215295, 0.454404,
		-0.124907, -0.967310, -0.220703,
		30.206541, 32.475338, 38.402512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935032, 32.953796, 38.126377>,  <30.293976, 33.152454, 38.557003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935032, 32.953796, 38.126377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.697887, 32.634247, 38.085735>,  <30.555601, 32.442516, 38.061352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.697887, 32.634247, 38.085735>,  <30.935032, 32.953796, 38.126377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697887, 32.634247, 38.085735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282776, -0.088383, -0.955105,
		0.754025, -0.594975, 0.278300,
		-0.592861, -0.798870, -0.101601,
		30.520029, 32.394585, 38.055256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329218, 32.400307, 37.802074>,  <30.935032, 32.953796, 38.126377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329218, 32.400307, 37.802074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943338, 32.330860, 37.722866>,  <30.711811, 32.289192, 37.675343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.943338, 32.330860, 37.722866>,  <31.329218, 32.400307, 37.802074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943338, 32.330860, 37.722866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211900, -0.065264, -0.975110,
		0.156374, -0.982648, 0.099750,
		-0.964700, -0.173619, -0.198018,
		30.653929, 32.278774, 37.663460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256882, 31.702553, 37.509048>,  <31.329218, 32.400307, 37.802074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256882, 31.702553, 37.509048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968174, 31.958408, 37.403286>,  <30.794949, 32.111923, 37.339828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968174, 31.958408, 37.403286>,  <31.256882, 31.702553, 37.509048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968174, 31.958408, 37.403286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254327, -0.110188, -0.960821,
		-0.643714, -0.760735, -0.083147,
		-0.721768, 0.639641, -0.264405,
		30.751644, 32.150299, 37.323963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977072, 31.314043, 36.889648>,  <31.256882, 31.702553, 37.509048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977072, 31.314043, 36.889648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800219, 31.672306, 36.870396>,  <30.694107, 31.887264, 36.858845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.800219, 31.672306, 36.870396>,  <30.977072, 31.314043, 36.889648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800219, 31.672306, 36.870396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073739, -0.017182, -0.997129,
		-0.893915, -0.444411, -0.058448,
		-0.442131, 0.895658, -0.048130,
		30.667580, 31.941004, 36.855957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282887, 31.231401, 36.602016>,  <30.977072, 31.314043, 36.889648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282887, 31.231401, 36.602016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384272, 31.611225, 36.528156>,  <30.445103, 31.839119, 36.483841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.384272, 31.611225, 36.528156>,  <30.282887, 31.231401, 36.602016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384272, 31.611225, 36.528156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066445, -0.173339, -0.982618,
		-0.965060, 0.261327, 0.019159,
		0.253464, 0.949559, -0.184647,
		30.460310, 31.896093, 36.472763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844198, 31.532276, 36.069008>,  <30.282887, 31.231401, 36.602016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844198, 31.532276, 36.069008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175110, 31.756989, 36.067780>,  <30.373657, 31.891815, 36.067043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175110, 31.756989, 36.067780>,  <29.844198, 31.532276, 36.069008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175110, 31.756989, 36.067780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114766, -0.174345, -0.977974,
		-0.549942, 0.808706, -0.208705,
		0.827280, 0.561782, -0.003068,
		30.423294, 31.925524, 36.066860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736855, 31.829439, 35.469517>,  <29.844198, 31.532276, 36.069008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736855, 31.829439, 35.469517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124662, 31.855995, 35.563854>,  <30.357347, 31.871929, 35.620457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.124662, 31.855995, 35.563854>,  <29.736855, 31.829439, 35.469517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124662, 31.855995, 35.563854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243261, -0.145915, -0.958923,
		-0.029248, 0.987067, -0.157618,
		0.969520, 0.066389, 0.235847,
		30.415518, 31.875912, 35.634609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.983246, 32.331284, 34.993458>,  <29.736855, 31.829439, 35.469517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.983246, 32.331284, 34.993458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296715, 32.117809, 35.120605>,  <30.484797, 31.989725, 35.196892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.296715, 32.117809, 35.120605>,  <29.983246, 32.331284, 34.993458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296715, 32.117809, 35.120605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376123, 0.000436, -0.926570,
		0.494357, 0.845684, 0.201073,
		0.783672, -0.533684, 0.317866,
		30.531816, 31.957705, 35.215965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604147, 32.675694, 34.694931>,  <29.983246, 32.331284, 34.993458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604147, 32.675694, 34.694931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724598, 32.304691, 34.783531>,  <30.796869, 32.082092, 34.836693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724598, 32.304691, 34.783531>,  <30.604147, 32.675694, 34.694931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724598, 32.304691, 34.783531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406320, -0.085340, -0.909737,
		0.862685, 0.363950, 0.351164,
		0.301130, -0.927501, 0.221502,
		30.814938, 32.026440, 34.849983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274225, 32.641766, 34.462456>,  <30.604147, 32.675694, 34.694931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274225, 32.641766, 34.462456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173660, 32.255878, 34.493710>,  <31.113321, 32.024345, 34.512463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173660, 32.255878, 34.493710>,  <31.274225, 32.641766, 34.462456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173660, 32.255878, 34.493710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478494, -0.194057, -0.856379,
		0.841329, -0.177919, 0.510402,
		-0.251413, -0.964721, 0.078133,
		31.098236, 31.966461, 34.517151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887926, 32.225060, 34.326313>,  <31.274225, 32.641766, 34.462456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887926, 32.225060, 34.326313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584850, 31.970695, 34.267620>,  <31.403006, 31.818077, 34.232407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584850, 31.970695, 34.267620>,  <31.887926, 32.225060, 34.326313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584850, 31.970695, 34.267620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406041, -0.283328, -0.868825,
		0.510919, -0.717877, 0.472879,
		-0.757689, -0.635907, -0.146730,
		31.357544, 31.779922, 34.223602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264492, 31.654236, 34.150669>,  <31.887926, 32.225060, 34.326313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264492, 31.654236, 34.150669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894888, 31.562569, 34.028240>,  <31.673124, 31.507568, 33.954781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.894888, 31.562569, 34.028240>,  <32.264492, 31.654236, 34.150669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894888, 31.562569, 34.028240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356822, -0.229172, -0.905626,
		0.137395, -0.946025, 0.293529,
		-0.924013, -0.229167, -0.306076,
		31.617683, 31.493818, 33.936417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368748, 31.057148, 33.658127>,  <32.264492, 31.654236, 34.150669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368748, 31.057148, 33.658127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011436, 31.219372, 33.580593>,  <31.797049, 31.316706, 33.534073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.011436, 31.219372, 33.580593>,  <32.368748, 31.057148, 33.658127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011436, 31.219372, 33.580593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180438, -0.071430, -0.980989,
		-0.411695, -0.911273, -0.009371,
		-0.893280, 0.405560, -0.193836,
		31.743452, 31.341040, 33.522442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082233, 30.689058, 33.041405>,  <32.368748, 31.057148, 33.658127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082233, 30.689058, 33.041405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873713, 31.030407, 33.041924>,  <31.748600, 31.235216, 33.042236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.873713, 31.030407, 33.041924>,  <32.082233, 30.689058, 33.041405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873713, 31.030407, 33.041924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019911, -0.010639, -0.999745,
		-0.853139, -0.521197, 0.022537,
		-0.521304, 0.853370, 0.001301,
		31.717321, 31.286417, 33.042313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330387, 30.620070, 32.706703>,  <32.082233, 30.689058, 33.041405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330387, 30.620070, 32.706703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446270, 31.002914, 32.705566>,  <31.515799, 31.232622, 32.704884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.446270, 31.002914, 32.705566>,  <31.330387, 30.620070, 32.706703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446270, 31.002914, 32.705566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247166, 0.071941, -0.966299,
		-0.924651, 0.280645, 0.257407,
		0.289705, 0.957112, -0.002846,
		31.533182, 31.290049, 32.704712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.784216, 43.492809, 23.356148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.889824, 43.156300, 23.544853>,  <25.953188, 42.954395, 23.658075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.889824, 43.156300, 23.544853>,  <25.784216, 43.492809, 23.356148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889824, 43.156300, 23.544853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851030, -0.433374, -0.296538,
		0.453917, -0.323191, -0.830365,
		0.264020, -0.841270, 0.471761,
		25.969030, 42.903919, 23.686382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663610, 42.977673, 22.892298>,  <25.784216, 43.492809, 23.356148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663610, 42.977673, 22.892298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.693802, 42.774300, 23.235413>,  <25.711916, 42.652275, 23.441280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.693802, 42.774300, 23.235413>,  <25.663610, 42.977673, 22.892298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693802, 42.774300, 23.235413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867998, -0.456913, -0.194451,
		0.490799, -0.729879, -0.475808,
		0.075478, -0.508436, 0.857785,
		25.716446, 42.621769, 23.492748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632221, 42.270935, 22.770144>,  <25.663610, 42.977673, 22.892298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632221, 42.270935, 22.770144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.526058, 42.312096, 23.153595>,  <25.462360, 42.336792, 23.383667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.526058, 42.312096, 23.153595>,  <25.632221, 42.270935, 22.770144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526058, 42.312096, 23.153595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735988, -0.663902, -0.132502,
		0.622801, -0.740707, 0.251937,
		-0.265407, 0.102900, 0.958630,
		25.446436, 42.342964, 23.441183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644464, 41.601166, 23.171516>,  <25.632221, 42.270935, 22.770144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644464, 41.601166, 23.171516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.394047, 41.819878, 23.393906>,  <25.243795, 41.951103, 23.527338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.394047, 41.819878, 23.393906>,  <25.644464, 41.601166, 23.171516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394047, 41.819878, 23.393906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658253, -0.752796, -0.000872,
		0.418056, -0.366516, 0.831201,
		-0.626045, 0.546776, 0.555971,
		25.206234, 41.983910, 23.560698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.572100, 41.112988, 23.785105>,  <25.644464, 41.601166, 23.171516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.572100, 41.112988, 23.785105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.286821, 41.392426, 23.762051>,  <25.115654, 41.560089, 23.748219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.286821, 41.392426, 23.762051>,  <25.572100, 41.112988, 23.785105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.286821, 41.392426, 23.762051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700251, -0.706343, 0.103576,
		0.031649, 0.114228, 0.992950,
		-0.713195, 0.698592, -0.057633,
		25.072863, 41.602005, 23.744761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.112045, 41.153954, 24.434517>,  <25.572100, 41.112988, 23.785105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.112045, 41.153954, 24.434517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.901979, 41.328537, 24.142296>,  <24.775940, 41.433285, 23.966963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.901979, 41.328537, 24.142296>,  <25.112045, 41.153954, 24.434517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901979, 41.328537, 24.142296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703582, -0.705604, 0.084229,
		-0.478720, 0.558239, 0.677641,
		-0.525166, 0.436454, -0.730553,
		24.744431, 41.459473, 23.923130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521614, 41.068104, 24.627766>,  <25.112045, 41.153954, 24.434517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521614, 41.068104, 24.627766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.406015, 41.164673, 24.257210>,  <24.336657, 41.222614, 24.034876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.406015, 41.164673, 24.257210>,  <24.521614, 41.068104, 24.627766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.406015, 41.164673, 24.257210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734575, -0.676464, 0.052869,
		-0.613905, 0.695781, 0.372839,
		-0.288997, 0.241422, -0.926389,
		24.319317, 41.237099, 23.979294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.829006, 41.323833, 24.641575>,  <24.521614, 41.068104, 24.627766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.829006, 41.323833, 24.641575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.867693, 41.207314, 24.260883>,  <23.890905, 41.137402, 24.032469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.867693, 41.207314, 24.260883>,  <23.829006, 41.323833, 24.641575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.867693, 41.207314, 24.260883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917007, -0.397846, 0.028586,
		-0.386969, 0.869977, -0.305605,
		0.096715, -0.291304, -0.951729,
		23.896708, 41.119923, 23.975365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.343418, 41.668240, 24.196663>,  <23.829006, 41.323833, 24.641575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.343418, 41.668240, 24.196663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442577, 41.314251, 24.038990>,  <23.502073, 41.101860, 23.944387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.442577, 41.314251, 24.038990>,  <23.343418, 41.668240, 24.196663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442577, 41.314251, 24.038990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941164, -0.316461, 0.118590,
		-0.229692, 0.341591, -0.911349,
		0.247897, -0.884968, -0.394181,
		23.516947, 41.048759, 23.920736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.750652, 41.396351, 23.813833>,  <23.343418, 41.668240, 24.196663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.750652, 41.396351, 23.813833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.004829, 41.087555, 23.807495>,  <23.157335, 40.902279, 23.803692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.004829, 41.087555, 23.807495>,  <22.750652, 41.396351, 23.813833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.004829, 41.087555, 23.807495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771038, -0.635493, 0.040599,
		-0.041410, -0.013583, -0.999050,
		0.635441, -0.771987, -0.015843,
		23.195461, 40.855957, 23.802742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592110, 40.988209, 23.270510>,  <22.750652, 41.396351, 23.813833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592110, 40.988209, 23.270510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.788542, 40.736477, 23.511436>,  <22.906401, 40.585438, 23.655993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.788542, 40.736477, 23.511436>,  <22.592110, 40.988209, 23.270510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.788542, 40.736477, 23.511436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696087, -0.699203, -0.163028,
		0.523741, -0.339206, -0.781431,
		0.491078, -0.629329, 0.602319,
		22.935865, 40.547680, 23.692133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460436, 40.339554, 22.937956>,  <22.592110, 40.988209, 23.270510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460436, 40.339554, 22.937956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.572006, 40.246300, 23.310589>,  <22.638948, 40.190346, 23.534168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.572006, 40.246300, 23.310589>,  <22.460436, 40.339554, 22.937956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.572006, 40.246300, 23.310589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606607, -0.794814, -0.017287,
		0.744466, -0.560283, -0.363117,
		0.278925, -0.233139, 0.931583,
		22.655684, 40.176357, 23.590063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767614, 39.668987, 22.819965>,  <22.460436, 40.339554, 22.937956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767614, 39.668987, 22.819965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.663277, 39.720432, 23.202675>,  <22.600674, 39.751301, 23.432301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.663277, 39.720432, 23.202675>,  <22.767614, 39.668987, 22.819965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.663277, 39.720432, 23.202675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598522, -0.799164, -0.055747,
		0.757450, -0.587192, 0.285438,
		-0.260846, 0.128615, 0.956775,
		22.585022, 39.759018, 23.489708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.882793, 38.983421, 23.170465>,  <22.767614, 39.668987, 22.819965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.882793, 38.983421, 23.170465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.647499, 39.203049, 23.407951>,  <22.506323, 39.334827, 23.550444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.647499, 39.203049, 23.407951>,  <22.882793, 38.983421, 23.170465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.647499, 39.203049, 23.407951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616907, -0.779374, 0.109555,
		0.522880, -0.301823, 0.797182,
		-0.588237, 0.549071, 0.593716,
		22.471027, 39.367771, 23.586065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.781231, 38.583576, 23.601971>,  <22.882793, 38.983421, 23.170465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.781231, 38.583576, 23.601971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460135, 38.805099, 23.690430>,  <22.267477, 38.938011, 23.743505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.460135, 38.805099, 23.690430>,  <22.781231, 38.583576, 23.601971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.460135, 38.805099, 23.690430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523381, -0.832039, 0.183802,
		0.285795, 0.031800, 0.957763,
		-0.802741, 0.553805, 0.221149,
		22.219313, 38.971241, 23.756775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.413609, 38.269947, 24.189161>,  <22.781231, 38.583576, 23.601971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.413609, 38.269947, 24.189161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.129339, 38.509525, 24.041534>,  <21.958776, 38.653271, 23.952959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.129339, 38.509525, 24.041534>,  <22.413609, 38.269947, 24.189161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129339, 38.509525, 24.041534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674847, -0.728617, 0.117045,
		-0.198804, 0.332243, 0.922004,
		-0.710675, 0.598942, -0.369065,
		21.916136, 38.689209, 23.930815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821527, 38.166027, 24.715942>,  <22.413609, 38.269947, 24.189161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821527, 38.166027, 24.715942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.691210, 38.291557, 24.359207>,  <21.613020, 38.366875, 24.145166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.691210, 38.291557, 24.359207>,  <21.821527, 38.166027, 24.715942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.691210, 38.291557, 24.359207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574176, -0.815097, -0.077069,
		-0.751119, 0.486962, 0.445745,
		-0.325795, 0.313824, -0.891836,
		21.593472, 38.385704, 24.091656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.101490, 38.045540, 24.648323>,  <21.821527, 38.166027, 24.715942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.101490, 38.045540, 24.648323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209505, 38.079494, 24.264683>,  <21.274315, 38.099869, 24.034498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209505, 38.079494, 24.264683>,  <21.101490, 38.045540, 24.648323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209505, 38.079494, 24.264683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587153, -0.774946, -0.233903,
		-0.763106, 0.626302, -0.159425,
		0.270039, 0.084886, -0.959100,
		21.290516, 38.104961, 23.976954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485107, 37.815231, 24.410759>,  <21.101490, 38.045540, 24.648323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485107, 37.815231, 24.410759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727953, 37.786198, 24.094242>,  <20.873661, 37.768776, 23.904331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.727953, 37.786198, 24.094242>,  <20.485107, 37.815231, 24.410759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727953, 37.786198, 24.094242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389101, -0.895418, -0.216397,
		-0.692830, 0.439270, -0.571864,
		0.607114, -0.072586, -0.791292,
		20.910088, 37.764423, 23.856853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034756, 37.564411, 23.882742>,  <20.485107, 37.815231, 24.410759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034756, 37.564411, 23.882742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407845, 37.501713, 23.752842>,  <20.631697, 37.464092, 23.674902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407845, 37.501713, 23.752842>,  <20.034756, 37.564411, 23.882742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407845, 37.501713, 23.752842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301224, -0.833753, -0.462732,
		-0.198230, 0.529422, -0.824874,
		0.932721, -0.156745, -0.324749,
		20.687660, 37.454689, 23.655416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.974133, 37.550991, 23.073214>,  <20.034756, 37.564411, 23.882742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.974133, 37.550991, 23.073214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296459, 37.344048, 23.188454>,  <20.489855, 37.219879, 23.257597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296459, 37.344048, 23.188454>,  <19.974133, 37.550991, 23.073214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296459, 37.344048, 23.188454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302633, -0.777977, -0.550604,
		0.508995, 0.356496, -0.783476,
		0.805815, -0.517360, 0.288099,
		20.538204, 37.188839, 23.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901039, 36.847797, 23.039787>,  <19.974133, 37.550991, 23.073214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901039, 36.847797, 23.039787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.559151, 36.806328, 22.836338>,  <19.354017, 36.781445, 22.714268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.559151, 36.806328, 22.836338>,  <19.901039, 36.847797, 23.039787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559151, 36.806328, 22.836338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364176, 0.578468, -0.729897,
		0.369897, -0.809089, -0.456673,
		-0.854723, -0.103677, -0.508625,
		19.302734, 36.775223, 22.683750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085320, 36.589859, 22.418423>,  <19.901039, 36.847797, 23.039787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085320, 36.589859, 22.418423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.727741, 36.759727, 22.361126>,  <19.513195, 36.861649, 22.326748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.727741, 36.759727, 22.361126>,  <20.085320, 36.589859, 22.418423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727741, 36.759727, 22.361126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392078, 0.586189, -0.708983,
		-0.217119, -0.689953, -0.690524,
		-0.893943, 0.424673, -0.143243,
		19.459558, 36.887131, 22.318153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994070, 36.577171, 21.634134>,  <20.085320, 36.589859, 22.418423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994070, 36.577171, 21.634134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.774464, 36.861000, 21.810810>,  <19.642700, 37.031300, 21.916815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.774464, 36.861000, 21.810810>,  <19.994070, 36.577171, 21.634134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774464, 36.861000, 21.810810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450246, 0.696303, -0.558964,
		-0.704174, -0.108011, -0.701764,
		-0.549015, 0.709574, 0.441687,
		19.609758, 37.073872, 21.943316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855959, 36.841667, 21.076221>,  <19.994070, 36.577171, 21.634134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855959, 36.841667, 21.076221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.734652, 37.135780, 21.318672>,  <19.661867, 37.312248, 21.464142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.734652, 37.135780, 21.318672>,  <19.855959, 36.841667, 21.076221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734652, 37.135780, 21.318672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313161, 0.677655, -0.665367,
		-0.899976, -0.011971, -0.435774,
		-0.303270, 0.735282, 0.606125,
		19.643671, 37.356365, 21.500509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507679, 37.277153, 20.671314>,  <19.855959, 36.841667, 21.076221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.507679, 37.277153, 20.671314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584627, 37.513012, 20.985081>,  <19.630796, 37.654530, 21.173340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.584627, 37.513012, 20.985081>,  <19.507679, 37.277153, 20.671314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584627, 37.513012, 20.985081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104655, 0.782460, -0.613844,
		-0.975726, 0.200177, 0.088811,
		0.192369, 0.589649, 0.784416,
		19.642338, 37.689907, 21.220406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390722, 37.968403, 20.427593>,  <19.507679, 37.277153, 20.671314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390722, 37.968403, 20.427593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610895, 37.994156, 20.760551>,  <19.742998, 38.009609, 20.960325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610895, 37.994156, 20.760551>,  <19.390722, 37.968403, 20.427593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610895, 37.994156, 20.760551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400263, 0.854620, -0.330779,
		-0.732677, 0.515248, 0.444640,
		0.550431, 0.064381, 0.832395,
		19.776024, 38.013470, 21.010269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295870, 38.594902, 20.678377>,  <19.390722, 37.968403, 20.427593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295870, 38.594902, 20.678377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.656849, 38.469101, 20.796139>,  <19.873436, 38.393620, 20.866796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.656849, 38.469101, 20.796139>,  <19.295870, 38.594902, 20.678377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656849, 38.469101, 20.796139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417743, 0.805817, -0.419702,
		-0.105241, 0.501745, 0.858590,
		0.902450, -0.314500, 0.294405,
		19.927584, 38.374752, 20.884460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.631678, 39.111996, 20.957811>,  <19.295870, 38.594902, 20.678377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.631678, 39.111996, 20.957811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.961813, 38.888885, 20.922714>,  <20.159895, 38.755020, 20.901655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.961813, 38.888885, 20.922714>,  <19.631678, 39.111996, 20.957811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961813, 38.888885, 20.922714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542318, 0.826343, -0.151818,
		0.157187, 0.077716, 0.984506,
		0.825339, -0.557779, -0.087743,
		20.209415, 38.721550, 20.896391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.193468, 39.453629, 21.441479>,  <19.631678, 39.111996, 20.957811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.193468, 39.453629, 21.441479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.408091, 39.227139, 21.191200>,  <20.536865, 39.091244, 21.041033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.408091, 39.227139, 21.191200>,  <20.193468, 39.453629, 21.441479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.408091, 39.227139, 21.191200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681624, 0.727929, -0.074219,
		0.497488, -0.386668, 0.776527,
		0.536558, -0.566223, -0.625697,
		20.569057, 39.057270, 21.003490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.923155, 39.495487, 21.656168>,  <20.193468, 39.453629, 21.441479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.923155, 39.495487, 21.656168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931425, 39.378159, 21.273853>,  <20.936388, 39.307762, 21.044464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.931425, 39.378159, 21.273853>,  <20.923155, 39.495487, 21.656168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.931425, 39.378159, 21.273853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812667, 0.561785, -0.154827,
		0.582362, -0.773536, 0.249993,
		0.020677, -0.293326, -0.955789,
		20.937628, 39.290161, 20.987116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641550, 39.338074, 21.592003>,  <20.923155, 39.495487, 21.656168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641550, 39.338074, 21.592003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472677, 39.367775, 21.230618>,  <21.371353, 39.385593, 21.013786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472677, 39.367775, 21.230618>,  <21.641550, 39.338074, 21.592003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.472677, 39.367775, 21.230618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825145, 0.444158, -0.349083,
		0.375362, -0.892866, -0.248784,
		-0.422184, 0.074251, -0.903464,
		21.346022, 39.390049, 20.959578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117229, 39.119930, 21.184967>,  <21.641550, 39.338074, 21.592003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117229, 39.119930, 21.184967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.881220, 39.346573, 20.954895>,  <21.739614, 39.482559, 20.816853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.881220, 39.346573, 20.954895>,  <22.117229, 39.119930, 21.184967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881220, 39.346573, 20.954895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806872, 0.439220, -0.395024,
		0.028807, -0.697169, -0.716328,
		-0.590024, 0.566605, -0.575179,
		21.704212, 39.516556, 20.782341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.544899, 39.263771, 20.662958>,  <22.117229, 39.119930, 21.184967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.544899, 39.263771, 20.662958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.250048, 39.528076, 20.606346>,  <22.073137, 39.686661, 20.572378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.250048, 39.528076, 20.606346>,  <22.544899, 39.263771, 20.662958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250048, 39.528076, 20.606346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671049, 0.691095, -0.268479,
		-0.079590, -0.292878, -0.952831,
		-0.737129, 0.660764, -0.141531,
		22.028910, 39.726307, 20.563887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.613817, 39.558525, 19.995451>,  <22.544899, 39.263771, 20.662958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.613817, 39.558525, 19.995451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.423374, 39.821663, 20.228882>,  <22.309109, 39.979546, 20.368940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.423374, 39.821663, 20.228882>,  <22.613817, 39.558525, 19.995451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.423374, 39.821663, 20.228882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634649, 0.716407, -0.289797,
		-0.608721, 0.232393, -0.758586,
		-0.476110, 0.657841, 0.583579,
		22.280540, 40.019016, 20.403955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.652571, 40.117855, 19.610722>,  <22.613817, 39.558525, 19.995451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.652571, 40.117855, 19.610722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.570311, 40.288544, 19.962997>,  <22.520954, 40.390957, 20.174362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.570311, 40.288544, 19.962997>,  <22.652571, 40.117855, 19.610722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.570311, 40.288544, 19.962997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590315, 0.771856, -0.236149,
		-0.780537, 0.471320, -0.410634,
		-0.205648, 0.426726, 0.880689,
		22.508615, 40.416561, 20.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.395929, 40.732311, 19.503042>,  <22.652571, 40.117855, 19.610722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.395929, 40.732311, 19.503042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517855, 40.762493, 19.882809>,  <22.591009, 40.780602, 20.110668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.517855, 40.762493, 19.882809>,  <22.395929, 40.732311, 19.503042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.517855, 40.762493, 19.882809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525521, 0.818044, -0.233735,
		-0.794302, 0.570185, 0.209697,
		0.304814, 0.075456, 0.949418,
		22.609299, 40.785130, 20.167635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.266369, 41.410294, 19.621086>,  <22.395929, 40.732311, 19.503042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.266369, 41.410294, 19.621086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.530695, 41.281105, 19.892086>,  <22.689291, 41.203590, 20.054686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.530695, 41.281105, 19.892086>,  <22.266369, 41.410294, 19.621086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.530695, 41.281105, 19.892086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623748, 0.738379, -0.256391,
		-0.417444, 0.592017, 0.689388,
		0.660817, -0.322976, 0.677501,
		22.728941, 41.184212, 20.095337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.497816, 42.208298, 19.794615>,  <22.266369, 41.410294, 19.621086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.497816, 42.208298, 19.794615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725992, 41.927422, 19.965038>,  <22.862898, 41.758896, 20.067293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.725992, 41.927422, 19.965038>,  <22.497816, 42.208298, 19.794615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.725992, 41.927422, 19.965038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810165, 0.566333, -0.151327,
		-0.135031, 0.431501, 0.891949,
		0.570438, -0.702192, 0.426059,
		22.897123, 41.716763, 20.092855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772171, 42.451046, 20.456022>,  <22.497816, 42.208298, 19.794615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772171, 42.451046, 20.456022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006378, 42.162605, 20.307873>,  <23.146902, 41.989540, 20.218983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.006378, 42.162605, 20.307873>,  <22.772171, 42.451046, 20.456022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.006378, 42.162605, 20.307873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784986, 0.618410, 0.036952,
		0.202397, -0.312375, 0.928147,
		0.585518, -0.721104, -0.370374,
		23.182034, 41.946274, 20.196760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403843, 42.397194, 20.829350>,  <22.772171, 42.451046, 20.456022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403843, 42.397194, 20.829350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525320, 42.219349, 20.492283>,  <23.598207, 42.112640, 20.290043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.525320, 42.219349, 20.492283>,  <23.403843, 42.397194, 20.829350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.525320, 42.219349, 20.492283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869674, 0.490599, 0.054576,
		0.389147, -0.749422, 0.535660,
		0.303695, -0.444611, -0.842669,
		23.616428, 42.085964, 20.239483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.120306, 42.174824, 20.946341>,  <23.403843, 42.397194, 20.829350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.120306, 42.174824, 20.946341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.063957, 42.208740, 20.551785>,  <24.030148, 42.229092, 20.315050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.063957, 42.208740, 20.551785>,  <24.120306, 42.174824, 20.946341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.063957, 42.208740, 20.551785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847229, 0.525793, -0.075799,
		0.512210, -0.846376, -0.145907,
		-0.140871, 0.084792, -0.986390,
		24.021696, 42.234177, 20.255867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.817036, 30.858770, 28.199165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099657, 31.127316, 28.109676>,  <28.269230, 31.288443, 28.055983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099657, 31.127316, 28.109676>,  <27.817036, 30.858770, 28.199165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099657, 31.127316, 28.109676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287311, -0.016766, -0.957690,
		-0.646710, 0.740938, 0.181044,
		0.706554, 0.671364, -0.223722,
		28.311623, 31.328724, 28.042559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544405, 31.313402, 27.728558>,  <27.817036, 30.858770, 28.199165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544405, 31.313402, 27.728558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916550, 31.447208, 27.668526>,  <28.139837, 31.527493, 27.632505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916550, 31.447208, 27.668526>,  <27.544405, 31.313402, 27.728558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916550, 31.447208, 27.668526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214729, 0.165349, -0.962575,
		-0.297179, 0.927772, 0.225664,
		0.930363, 0.334514, -0.150081,
		28.195660, 31.547564, 27.623501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605574, 32.079704, 27.353130>,  <27.544405, 31.313402, 27.728558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605574, 32.079704, 27.353130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922394, 31.843216, 27.292313>,  <28.112486, 31.701324, 27.255821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922394, 31.843216, 27.292313>,  <27.605574, 32.079704, 27.353130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922394, 31.843216, 27.292313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056368, 0.177172, -0.982564,
		0.607846, 0.786812, 0.107003,
		0.792051, -0.591217, -0.152044,
		28.160009, 31.665852, 27.246698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091564, 32.506950, 26.939306>,  <27.605574, 32.079704, 27.353130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091564, 32.506950, 26.939306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185022, 32.125725, 26.862282>,  <28.241098, 31.896990, 26.816067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.185022, 32.125725, 26.862282>,  <28.091564, 32.506950, 26.939306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185022, 32.125725, 26.862282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126139, 0.226081, -0.965907,
		0.964105, 0.201392, 0.173041,
		0.233648, -0.953063, -0.192563,
		28.255117, 31.839806, 26.804514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704359, 32.567627, 26.593279>,  <28.091564, 32.506950, 26.939306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704359, 32.567627, 26.593279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580500, 32.200249, 26.494827>,  <28.506184, 31.979822, 26.435757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.580500, 32.200249, 26.494827>,  <28.704359, 32.567627, 26.593279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580500, 32.200249, 26.494827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272018, 0.162467, -0.948478,
		0.911111, -0.360648, 0.199525,
		-0.309650, -0.918443, -0.246129,
		28.487604, 31.924715, 26.420988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.263845, 32.281578, 26.277018>,  <28.704359, 32.567627, 26.593279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.263845, 32.281578, 26.277018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959545, 32.052883, 26.154137>,  <28.776966, 31.915665, 26.080408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959545, 32.052883, 26.154137>,  <29.263845, 32.281578, 26.277018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959545, 32.052883, 26.154137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282633, 0.134263, -0.949785,
		0.584276, -0.809374, 0.059452,
		-0.760750, -0.571741, -0.307202,
		28.731319, 31.881361, 26.061975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485434, 31.861677, 25.818691>,  <29.263845, 32.281578, 26.277018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485434, 31.861677, 25.818691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094292, 31.861206, 25.734978>,  <28.859608, 31.860924, 25.684750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094292, 31.861206, 25.734978>,  <29.485434, 31.861677, 25.818691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094292, 31.861206, 25.734978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204282, 0.212064, -0.955666,
		0.045504, -0.977255, -0.207128,
		-0.977854, -0.001175, -0.209286,
		28.800936, 31.860853, 25.672192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401968, 31.451706, 25.164560>,  <29.485434, 31.861677, 25.818691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401968, 31.451706, 25.164560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054626, 31.648819, 25.186920>,  <28.846222, 31.767086, 25.200336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054626, 31.648819, 25.186920>,  <29.401968, 31.451706, 25.164560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054626, 31.648819, 25.186920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057415, 0.211848, -0.975615,
		-0.492609, -0.843970, -0.212252,
		-0.868355, 0.492783, 0.055902,
		28.794121, 31.796654, 25.203691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134184, 31.155249, 24.694231>,  <29.401968, 31.451706, 25.164560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134184, 31.155249, 24.694231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932631, 31.493950, 24.762478>,  <28.811699, 31.697170, 24.803425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932631, 31.493950, 24.762478>,  <29.134184, 31.155249, 24.694231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932631, 31.493950, 24.762478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087865, 0.146253, -0.985337,
		-0.859291, -0.511487, 0.000706,
		-0.503884, 0.846753, 0.170616,
		28.781466, 31.747976, 24.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636808, 31.111908, 24.210012>,  <29.134184, 31.155249, 24.694231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636808, 31.111908, 24.210012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653582, 31.498714, 24.310509>,  <28.663645, 31.730799, 24.370806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653582, 31.498714, 24.310509>,  <28.636808, 31.111908, 24.210012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653582, 31.498714, 24.310509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134049, 0.254632, -0.957702,
		-0.990087, 0.006481, 0.140305,
		0.041933, 0.967016, 0.251239,
		28.666162, 31.788818, 24.385881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177530, 31.485638, 23.912521>,  <28.636808, 31.111908, 24.210012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177530, 31.485638, 23.912521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407257, 31.802616, 23.994678>,  <28.545094, 31.992804, 24.043974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407257, 31.802616, 23.994678>,  <28.177530, 31.485638, 23.912521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407257, 31.802616, 23.994678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115306, 0.326705, -0.938066,
		-0.810471, 0.515065, 0.279006,
		0.574318, 0.792447, 0.205395,
		28.579552, 32.040352, 24.056297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835060, 32.095642, 23.591431>,  <28.177530, 31.485638, 23.912521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835060, 32.095642, 23.591431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212967, 32.213284, 23.649281>,  <28.439711, 32.283867, 23.683990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212967, 32.213284, 23.649281>,  <27.835060, 32.095642, 23.591431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212967, 32.213284, 23.649281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012678, 0.473743, -0.880572,
		-0.327491, 0.830104, 0.451306,
		0.944769, 0.294101, 0.144622,
		28.496397, 32.301514, 23.692667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820429, 32.772984, 23.530890>,  <27.835060, 32.095642, 23.591431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820429, 32.772984, 23.530890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191149, 32.651287, 23.442814>,  <28.413580, 32.578270, 23.389969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191149, 32.651287, 23.442814>,  <27.820429, 32.772984, 23.530890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.191149, 32.651287, 23.442814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016172, 0.553418, -0.832747,
		0.375211, 0.775349, 0.507987,
		0.926798, -0.304241, -0.220187,
		28.469189, 32.560017, 23.376759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106098, 33.063095, 23.257578>,  <27.820429, 32.772984, 23.530890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106098, 33.063095, 23.257578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852341, 32.759689, 23.197987>,  <26.700087, 32.577644, 23.162231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.852341, 32.759689, 23.197987>,  <27.106098, 33.063095, 23.257578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852341, 32.759689, 23.197987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766540, 0.642174, -0.005438,
		0.099795, 0.110747, -0.988826,
		-0.634396, -0.758517, -0.148978,
		26.662022, 32.532135, 23.153294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796358, 33.751694, 22.976942>,  <27.106098, 33.063095, 23.257578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796358, 33.751694, 22.976942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461271, 33.970100, 22.980888>,  <26.260220, 34.101143, 22.983257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.461271, 33.970100, 22.980888>,  <26.796358, 33.751694, 22.976942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461271, 33.970100, 22.980888> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446594, 0.674561, 0.587811,
		0.314297, 0.496827, -0.808938,
		-0.837718, 0.546014, 0.009867,
		26.209955, 34.133904, 22.983849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961803, 34.513954, 22.955677>,  <26.796358, 33.751694, 22.976942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961803, 34.513954, 22.955677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605043, 34.465359, 23.129921>,  <26.390987, 34.436203, 23.234468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605043, 34.465359, 23.129921>,  <26.961803, 34.513954, 22.955677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605043, 34.465359, 23.129921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227681, 0.711637, 0.664630,
		-0.390740, 0.691964, -0.607049,
		-0.891899, -0.121484, 0.435612,
		26.337473, 34.428913, 23.260605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870022, 35.150604, 23.255903>,  <26.961803, 34.513954, 22.955677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870022, 35.150604, 23.255903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590136, 34.927261, 23.434177>,  <26.422205, 34.793255, 23.541142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590136, 34.927261, 23.434177>,  <26.870022, 35.150604, 23.255903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590136, 34.927261, 23.434177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032217, 0.647869, 0.761070,
		-0.713696, 0.518173, -0.471312,
		-0.699714, -0.558357, 0.445688,
		26.380220, 34.759754, 23.567884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550508, 35.520565, 23.735437>,  <26.870022, 35.150604, 23.255903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550508, 35.520565, 23.735437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456133, 35.154682, 23.866673>,  <26.399508, 34.935154, 23.945414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456133, 35.154682, 23.866673>,  <26.550508, 35.520565, 23.735437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.456133, 35.154682, 23.866673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218842, 0.278932, 0.935043,
		-0.946805, 0.292414, 0.134365,
		-0.235940, -0.914708, 0.328087,
		26.385351, 34.880268, 23.965099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212017, 35.664833, 24.284836>,  <26.550508, 35.520565, 23.735437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212017, 35.664833, 24.284836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329433, 35.291138, 24.365864>,  <26.399883, 35.066921, 24.414480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.329433, 35.291138, 24.365864>,  <26.212017, 35.664833, 24.284836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329433, 35.291138, 24.365864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201564, 0.267628, 0.942203,
		-0.934455, -0.235744, 0.266868,
		0.293540, -0.934237, 0.202569,
		26.417496, 35.010868, 24.426634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.850983, 35.449215, 24.931715>,  <26.212017, 35.664833, 24.284836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.850983, 35.449215, 24.931715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170225, 35.211063, 24.894730>,  <26.361771, 35.068172, 24.872538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170225, 35.211063, 24.894730>,  <25.850983, 35.449215, 24.931715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170225, 35.211063, 24.894730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143995, 0.039462, 0.988791,
		-0.585060, -0.802473, 0.117226,
		0.798104, -0.595382, -0.092464,
		26.409657, 35.032448, 24.866991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764420, 34.976986, 25.470251>,  <25.850983, 35.449215, 24.931715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764420, 34.976986, 25.470251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156496, 34.946995, 25.396931>,  <26.391743, 34.929001, 25.352938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156496, 34.946995, 25.396931>,  <25.764420, 34.976986, 25.470251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156496, 34.946995, 25.396931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188369, 0.067194, 0.979797,
		-0.061149, -0.994918, 0.079987,
		0.980193, -0.074981, -0.183303,
		26.450554, 34.924500, 25.341940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000309, 34.498272, 25.858702>,  <25.764420, 34.976986, 25.470251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000309, 34.498272, 25.858702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332762, 34.704006, 25.774151>,  <26.532234, 34.827446, 25.723419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.332762, 34.704006, 25.774151>,  <26.000309, 34.498272, 25.858702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332762, 34.704006, 25.774151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251899, -0.009352, 0.967708,
		0.495747, -0.857540, -0.137332,
		0.831133, 0.514332, -0.211378,
		26.582102, 34.858307, 25.710737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555883, 34.255375, 26.292751>,  <26.000309, 34.498272, 25.858702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555883, 34.255375, 26.292751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741032, 34.589657, 26.174538>,  <26.852121, 34.790226, 26.103609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741032, 34.589657, 26.174538>,  <26.555883, 34.255375, 26.292751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741032, 34.589657, 26.174538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396616, 0.102912, 0.912198,
		0.792745, -0.539445, -0.283820,
		0.462872, 0.835708, -0.295535,
		26.879894, 34.840370, 26.085876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250898, 34.150463, 26.508551>,  <26.555883, 34.255375, 26.292751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250898, 34.150463, 26.508551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179947, 34.541656, 26.464565>,  <27.137377, 34.776371, 26.438175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179947, 34.541656, 26.464565>,  <27.250898, 34.150463, 26.508551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179947, 34.541656, 26.464565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400628, 0.173812, 0.899603,
		0.898907, 0.115517, -0.422637,
		-0.177379, 0.977980, -0.109962,
		27.126734, 34.835049, 26.431578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.817738, 34.372566, 26.695694>,  <27.250898, 34.150463, 26.508551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.817738, 34.372566, 26.695694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586630, 34.697319, 26.729240>,  <27.447966, 34.892170, 26.749369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586630, 34.697319, 26.729240>,  <27.817738, 34.372566, 26.695694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586630, 34.697319, 26.729240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558577, 0.318393, 0.765910,
		0.595123, 0.489366, -0.637455,
		-0.577772, 0.811878, 0.083866,
		27.413298, 34.940884, 26.754400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217875, 34.983128, 26.864227>,  <27.817738, 34.372566, 26.695694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217875, 34.983128, 26.864227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856291, 35.099564, 26.989529>,  <27.639341, 35.169426, 27.064709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856291, 35.099564, 26.989529>,  <28.217875, 34.983128, 26.864227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856291, 35.099564, 26.989529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400779, 0.321261, 0.858002,
		0.149119, 0.901143, -0.407069,
		-0.903958, 0.291089, 0.313253,
		27.585104, 35.186890, 27.083504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350410, 35.592167, 27.268805>,  <28.217875, 34.983128, 26.864227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350410, 35.592167, 27.268805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993164, 35.445061, 27.372414>,  <27.778816, 35.356796, 27.434580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.993164, 35.445061, 27.372414>,  <28.350410, 35.592167, 27.268805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993164, 35.445061, 27.372414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232579, 0.115352, 0.965713,
		-0.385031, 0.922738, -0.017489,
		-0.893117, -0.367762, 0.259023,
		27.725229, 35.334732, 27.450121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129560, 36.011566, 27.854206>,  <28.350410, 35.592167, 27.268805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129560, 36.011566, 27.854206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903423, 35.682632, 27.880001>,  <27.767740, 35.485271, 27.895479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903423, 35.682632, 27.880001>,  <28.129560, 36.011566, 27.854206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903423, 35.682632, 27.880001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225207, -0.078668, 0.971130,
		-0.793517, 0.563545, 0.229669,
		-0.565343, -0.822331, 0.064490,
		27.733820, 35.435932, 27.899347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834137, 36.693302, 28.073374>,  <28.129560, 36.011566, 27.854206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834137, 36.693302, 28.073374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864988, 37.087219, 28.135647>,  <27.883499, 37.323570, 28.173010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864988, 37.087219, 28.135647>,  <27.834137, 36.693302, 28.073374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.864988, 37.087219, 28.135647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108234, 0.146955, -0.983204,
		-0.991129, 0.092685, -0.095254,
		0.077130, 0.984791, 0.155683,
		27.888126, 37.382656, 28.182352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613539, 36.892120, 27.468491>,  <27.834137, 36.693302, 28.073374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613539, 36.892120, 27.468491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796513, 37.225899, 27.591419>,  <27.906298, 37.426167, 27.665176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796513, 37.225899, 27.591419>,  <27.613539, 36.892120, 27.468491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796513, 37.225899, 27.591419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333713, 0.159250, -0.929126,
		-0.824250, 0.527572, -0.205620,
		0.457436, 0.834450, 0.307320,
		27.933744, 37.476234, 27.683615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508533, 37.354694, 26.917616>,  <27.613539, 36.892120, 27.468491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508533, 37.354694, 26.917616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802776, 37.511272, 27.138760>,  <27.979322, 37.605217, 27.271446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802776, 37.511272, 27.138760>,  <27.508533, 37.354694, 26.917616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802776, 37.511272, 27.138760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551068, 0.128850, -0.824453,
		-0.393962, 0.911137, -0.120928,
		0.735608, 0.391443, 0.552860,
		28.023458, 37.628704, 27.304617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747116, 37.857151, 26.529892>,  <27.508533, 37.354694, 26.917616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747116, 37.857151, 26.529892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046314, 37.784515, 26.785244>,  <28.225832, 37.740932, 26.938456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046314, 37.784515, 26.785244>,  <27.747116, 37.857151, 26.529892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.046314, 37.784515, 26.785244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656037, 0.056493, -0.752611,
		0.100604, 0.981750, 0.161387,
		0.747993, -0.181592, 0.638381,
		28.270712, 37.730038, 26.976759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279604, 38.350018, 26.396652>,  <27.747116, 37.857151, 26.529892>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279604, 38.350018, 26.396652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451292, 38.032768, 26.569500>,  <28.554304, 37.842419, 26.673208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451292, 38.032768, 26.569500>,  <28.279604, 38.350018, 26.396652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.451292, 38.032768, 26.569500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768794, 0.069709, -0.635686,
		0.474054, 0.605059, 0.639668,
		0.429219, -0.793123, 0.432120,
		28.580057, 37.794830, 26.699137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983343, 38.460396, 26.327618>,  <28.279604, 38.350018, 26.396652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983343, 38.460396, 26.327618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971544, 38.068226, 26.405487>,  <28.964466, 37.832924, 26.452209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971544, 38.068226, 26.405487>,  <28.983343, 38.460396, 26.327618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971544, 38.068226, 26.405487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821740, -0.134670, -0.553721,
		0.569098, 0.143641, 0.809626,
		-0.029495, -0.980424, 0.194676,
		28.962696, 37.774097, 26.463890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610437, 38.264473, 26.548672>,  <28.983343, 38.460396, 26.327618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610437, 38.264473, 26.548672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458710, 37.924477, 26.402443>,  <29.367674, 37.720478, 26.314707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.458710, 37.924477, 26.402443>,  <29.610437, 38.264473, 26.548672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458710, 37.924477, 26.402443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881229, -0.211431, -0.422768,
		0.282054, -0.482513, 0.829232,
		-0.379317, -0.849987, -0.365570,
		29.344915, 37.669479, 26.292772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068987, 37.783150, 26.677711>,  <29.610437, 38.264473, 26.548672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068987, 37.783150, 26.677711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863392, 37.628860, 26.371239>,  <29.740034, 37.536289, 26.187355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863392, 37.628860, 26.371239>,  <30.068987, 37.783150, 26.677711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863392, 37.628860, 26.371239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849615, -0.351991, -0.392755,
		-0.118195, -0.852831, 0.508634,
		-0.513989, -0.385722, -0.766182,
		29.709196, 37.513145, 26.141384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328430, 37.163826, 26.615549>,  <30.068987, 37.783150, 26.677711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328430, 37.163826, 26.615549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156826, 37.217838, 26.258289>,  <30.053864, 37.250244, 26.043934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156826, 37.217838, 26.258289>,  <30.328430, 37.163826, 26.615549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156826, 37.217838, 26.258289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743867, -0.508127, -0.434129,
		-0.512449, -0.850633, 0.117558,
		-0.429019, 0.135022, -0.893147,
		30.028122, 37.258347, 25.990345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426561, 36.594059, 26.240036>,  <30.328430, 37.163826, 26.615549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426561, 36.594059, 26.240036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352846, 36.854496, 25.945522>,  <30.308617, 37.010757, 25.768814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352846, 36.854496, 25.945522>,  <30.426561, 36.594059, 26.240036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352846, 36.854496, 25.945522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825810, -0.303654, -0.475218,
		-0.532988, -0.695606, -0.481721,
		-0.184288, 0.651096, -0.736283,
		30.297560, 37.049824, 25.724638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520845, 36.254013, 25.604898>,  <30.426561, 36.594059, 26.240036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520845, 36.254013, 25.604898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550877, 36.638767, 25.499722>,  <30.568895, 36.869621, 25.436615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550877, 36.638767, 25.499722>,  <30.520845, 36.254013, 25.604898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550877, 36.638767, 25.499722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786422, -0.219243, -0.577472,
		-0.613110, -0.163428, -0.772908,
		0.075080, 0.961886, -0.262943,
		30.573400, 36.927334, 25.420839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415955, 36.295666, 24.764593>,  <30.520845, 36.254013, 25.604898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415955, 36.295666, 24.764593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594849, 36.625641, 24.902840>,  <30.702185, 36.823627, 24.985788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594849, 36.625641, 24.902840>,  <30.415955, 36.295666, 24.764593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594849, 36.625641, 24.902840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725439, -0.108535, -0.679675,
		-0.523180, 0.554700, -0.646985,
		0.447237, 0.824941, 0.345617,
		30.729019, 36.873123, 25.006525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<26.481022, 36.404053, 31.761490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.814957, 36.623589, 31.778584>,  <27.015318, 36.755310, 31.788839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.814957, 36.623589, 31.778584>,  <26.481022, 36.404053, 31.761490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.814957, 36.623589, 31.778584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250176, 0.447402, -0.858629,
		-0.490368, 0.706122, 0.510813,
		0.834836, 0.548838, 0.042736,
		27.065407, 36.788239, 31.791405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259577, 37.105732, 31.498764>,  <26.481022, 36.404053, 31.761490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259577, 37.105732, 31.498764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.656382, 37.081520, 31.454498>,  <26.894464, 37.066994, 31.427938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.656382, 37.081520, 31.454498>,  <26.259577, 37.105732, 31.498764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656382, 37.081520, 31.454498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094600, 0.223302, -0.970148,
		0.083435, 0.972868, 0.215792,
		0.992013, -0.060530, -0.110664,
		26.953985, 37.063362, 31.421299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455019, 37.683266, 31.201675>,  <26.259577, 37.105732, 31.498764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455019, 37.683266, 31.201675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.774324, 37.477592, 31.076202>,  <26.965908, 37.354191, 31.000919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.774324, 37.477592, 31.076202>,  <26.455019, 37.683266, 31.201675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774324, 37.477592, 31.076202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040459, 0.565397, -0.823827,
		0.600948, 0.644940, 0.472139,
		0.798264, -0.514179, -0.313680,
		27.013803, 37.323338, 30.982098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665495, 38.115337, 30.759382>,  <26.455019, 37.683266, 31.201675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665495, 38.115337, 30.759382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.898869, 37.800747, 30.678329>,  <27.038893, 37.611992, 30.629698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.898869, 37.800747, 30.678329>,  <26.665495, 38.115337, 30.759382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.898869, 37.800747, 30.678329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227966, 0.398055, -0.888585,
		0.779510, 0.472237, 0.411529,
		0.583434, -0.786476, -0.202634,
		27.073898, 37.564804, 30.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265295, 38.368454, 30.387335>,  <26.665495, 38.115337, 30.759382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265295, 38.368454, 30.387335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.230049, 37.989906, 30.263000>,  <27.208900, 37.762779, 30.188400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.230049, 37.989906, 30.263000>,  <27.265295, 38.368454, 30.387335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.230049, 37.989906, 30.263000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437295, 0.243621, -0.865692,
		0.894991, -0.212208, 0.392376,
		-0.088115, -0.946370, -0.310836,
		27.203615, 37.705994, 30.169750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952621, 38.187088, 30.023905>,  <27.265295, 38.368454, 30.387335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952621, 38.187088, 30.023905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.663530, 37.945679, 29.889191>,  <27.490076, 37.800835, 29.808361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.663530, 37.945679, 29.889191>,  <27.952621, 38.187088, 30.023905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663530, 37.945679, 29.889191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349110, 0.101767, -0.931539,
		0.596479, -0.790825, 0.137146,
		-0.722727, -0.603523, -0.336787,
		27.446712, 37.764622, 29.788155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389769, 37.789295, 29.632746>,  <27.952621, 38.187088, 30.023905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389769, 37.789295, 29.632746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.008341, 37.743114, 29.521481>,  <27.779484, 37.715408, 29.454721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.008341, 37.743114, 29.521481>,  <28.389769, 37.789295, 29.632746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008341, 37.743114, 29.521481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297349, -0.214224, -0.930425,
		0.047829, -0.969938, 0.238607,
		-0.953570, -0.115450, -0.278164,
		27.722269, 37.708481, 29.438032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492039, 37.069279, 29.189070>,  <28.389769, 37.789295, 29.632746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492039, 37.069279, 29.189070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154062, 37.266800, 29.106865>,  <27.951277, 37.385311, 29.057543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154062, 37.266800, 29.106865>,  <28.492039, 37.069279, 29.189070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154062, 37.266800, 29.106865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242477, 0.011164, -0.970093,
		-0.476736, -0.869504, -0.129168,
		-0.844942, 0.493799, -0.205512,
		27.900579, 37.414940, 29.045212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196444, 36.714458, 28.683638>,  <28.492039, 37.069279, 29.189070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196444, 36.714458, 28.683638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.035357, 37.079498, 28.655396>,  <27.938704, 37.298523, 28.638451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.035357, 37.079498, 28.655396>,  <28.196444, 36.714458, 28.683638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035357, 37.079498, 28.655396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134106, -0.017479, -0.990813,
		-0.905446, -0.408488, -0.115345,
		-0.402719, 0.912596, -0.070606,
		27.914541, 37.353275, 28.634214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695452, 36.109379, 28.561424>,  <28.196444, 36.714458, 28.683638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695452, 36.109379, 28.561424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656794, 35.721874, 28.470062>,  <27.633598, 35.489372, 28.415245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656794, 35.721874, 28.470062>,  <27.695452, 36.109379, 28.561424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656794, 35.721874, 28.470062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113731, -0.217229, 0.969473,
		-0.988800, 0.119671, -0.089183,
		-0.096644, -0.968757, -0.228406,
		27.627800, 35.431248, 28.401541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155529, 35.874065, 28.950977>,  <27.695452, 36.109379, 28.561424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155529, 35.874065, 28.950977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.358856, 35.549725, 28.834957>,  <27.480852, 35.355118, 28.765345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.358856, 35.549725, 28.834957>,  <27.155529, 35.874065, 28.950977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358856, 35.549725, 28.834957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125013, -0.402720, 0.906746,
		-0.852048, -0.424655, -0.306077,
		0.508317, -0.810854, -0.290049,
		27.511351, 35.306469, 28.747942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.814665, 35.287243, 29.235050>,  <27.155529, 35.874065, 28.950977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.814665, 35.287243, 29.235050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.198122, 35.193001, 29.171188>,  <27.428196, 35.136456, 29.132872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.198122, 35.193001, 29.171188>,  <26.814665, 35.287243, 29.235050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198122, 35.193001, 29.171188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023648, -0.493083, 0.869661,
		-0.283620, -0.837472, -0.467120,
		0.958645, -0.235607, -0.159653,
		27.485716, 35.122318, 29.123293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884893, 34.562836, 29.117813>,  <26.814665, 35.287243, 29.235050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884893, 34.562836, 29.117813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.229191, 34.695831, 29.271996>,  <27.435768, 34.775627, 29.364506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.229191, 34.695831, 29.271996>,  <26.884893, 34.562836, 29.117813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229191, 34.695831, 29.271996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138978, -0.574958, 0.806293,
		0.489703, -0.747579, -0.448682,
		0.860741, 0.332487, 0.385457,
		27.487413, 34.795578, 29.387632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183662, 33.934464, 29.298822>,  <26.884893, 34.562836, 29.117813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183662, 33.934464, 29.298822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388617, 34.192345, 29.525742>,  <27.511589, 34.347073, 29.661892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.388617, 34.192345, 29.525742>,  <27.183662, 33.934464, 29.298822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388617, 34.192345, 29.525742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083779, -0.619924, 0.780176,
		0.854659, -0.447278, -0.263628,
		0.512385, 0.644698, 0.567297,
		27.542332, 34.385754, 29.695930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562666, 33.467598, 29.710112>,  <27.183662, 33.934464, 29.298822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562666, 33.467598, 29.710112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625719, 33.826778, 29.874474>,  <27.663551, 34.042286, 29.973091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.625719, 33.826778, 29.874474>,  <27.562666, 33.467598, 29.710112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625719, 33.826778, 29.874474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146296, -0.432751, 0.889564,
		0.976601, -0.080109, -0.199581,
		0.157631, 0.897947, 0.410906,
		27.673008, 34.096161, 29.997746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200100, 33.462452, 30.165644>,  <27.562666, 33.467598, 29.710112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200100, 33.462452, 30.165644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.984535, 33.772537, 30.297478>,  <27.855196, 33.958588, 30.376579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.984535, 33.772537, 30.297478>,  <28.200100, 33.462452, 30.165644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984535, 33.772537, 30.297478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091034, -0.335375, 0.937676,
		0.837430, 0.535326, 0.110166,
		-0.538910, 0.775209, 0.329586,
		27.822863, 34.005100, 30.396353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525743, 33.810158, 30.730150>,  <28.200100, 33.462452, 30.165644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525743, 33.810158, 30.730150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.134001, 33.887089, 30.755024>,  <27.898954, 33.933247, 30.769947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.134001, 33.887089, 30.755024>,  <28.525743, 33.810158, 30.730150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134001, 33.887089, 30.755024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013033, -0.246906, 0.968952,
		0.201711, 0.949762, 0.239302,
		-0.979358, 0.192330, 0.062182,
		27.840193, 33.944786, 30.773678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510357, 33.589073, 31.422249>,  <28.525743, 33.810158, 30.730150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510357, 33.589073, 31.422249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.133135, 33.689014, 31.334412>,  <27.906801, 33.748978, 31.281710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.133135, 33.689014, 31.334412>,  <28.510357, 33.589073, 31.422249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133135, 33.689014, 31.334412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285085, -0.266962, 0.920575,
		0.171381, 0.930756, 0.322989,
		-0.943056, 0.249849, -0.219592,
		27.850218, 33.763969, 31.268534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296444, 34.120018, 31.910730>,  <28.510357, 33.589073, 31.422249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296444, 34.120018, 31.910730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.974493, 33.922367, 31.779274>,  <27.781322, 33.803776, 31.700399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.974493, 33.922367, 31.779274>,  <28.296444, 34.120018, 31.910730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974493, 33.922367, 31.779274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264842, -0.196492, 0.944060,
		-0.531064, 0.846892, 0.027286,
		-0.804879, -0.494130, -0.328642,
		27.733030, 33.774128, 31.680681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748423, 34.361649, 32.312984>,  <28.296444, 34.120018, 31.910730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748423, 34.361649, 32.312984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.601067, 34.018047, 32.170773>,  <27.512653, 33.811886, 32.085445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.601067, 34.018047, 32.170773>,  <27.748423, 34.361649, 32.312984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601067, 34.018047, 32.170773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395960, -0.201031, 0.895992,
		-0.841134, 0.470849, -0.266074,
		-0.368388, -0.859004, -0.355531,
		27.490551, 33.760345, 32.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020853, 34.369137, 32.590981>,  <27.748423, 34.361649, 32.312984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020853, 34.369137, 32.590981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.121927, 33.995209, 32.491177>,  <27.182571, 33.770851, 32.431293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.121927, 33.995209, 32.491177>,  <27.020853, 34.369137, 32.590981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121927, 33.995209, 32.491177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282084, -0.317853, 0.905206,
		-0.925515, -0.158351, -0.344016,
		0.252687, -0.934823, -0.249510,
		27.197733, 33.714764, 32.416325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510141, 33.942120, 32.789005>,  <27.020853, 34.369137, 32.590981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510141, 33.942120, 32.789005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.786161, 33.654499, 32.756016>,  <26.951773, 33.481926, 32.736221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.786161, 33.654499, 32.756016>,  <26.510141, 33.942120, 32.789005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786161, 33.654499, 32.756016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209742, -0.307729, 0.928069,
		-0.692704, -0.623117, -0.363162,
		0.690051, -0.719047, -0.082471,
		26.993177, 33.438786, 32.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218317, 33.295471, 33.012264>,  <26.510141, 33.942120, 32.789005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218317, 33.295471, 33.012264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.612732, 33.251160, 33.061996>,  <26.849380, 33.224571, 33.091835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.612732, 33.251160, 33.061996>,  <26.218317, 33.295471, 33.012264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.612732, 33.251160, 33.061996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152275, -0.297645, 0.942454,
		-0.067396, -0.948228, -0.310358,
		0.986037, -0.110778, 0.124331,
		26.908543, 33.217926, 33.099297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.911011, 33.943001, 34.127884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550179, 34.115566, 34.123310>,  <32.333679, 34.219105, 34.120567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550179, 34.115566, 34.123310>,  <32.911011, 33.943001, 34.127884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550179, 34.115566, 34.123310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036481, 0.049837, -0.998091,
		-0.430020, -0.900777, -0.060695,
		-0.902082, 0.431413, -0.011430,
		32.279552, 34.244991, 34.119881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674728, 33.542870, 33.609592>,  <32.911011, 33.943001, 34.127884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674728, 33.542870, 33.609592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467484, 33.882675, 33.649345>,  <32.343136, 34.086559, 33.673199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467484, 33.882675, 33.649345>,  <32.674728, 33.542870, 33.609592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467484, 33.882675, 33.649345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135259, 0.196115, -0.971207,
		-0.844550, -0.489752, -0.216515,
		-0.518112, 0.849519, 0.099386,
		32.312050, 34.137531, 33.679161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236446, 33.547398, 33.032719>,  <32.674728, 33.542870, 33.609592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236446, 33.547398, 33.032719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217323, 33.930252, 33.146988>,  <32.205849, 34.159966, 33.215549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217323, 33.930252, 33.146988>,  <32.236446, 33.547398, 33.032719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217323, 33.930252, 33.146988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096985, 0.289097, -0.952374,
		-0.994137, -0.017826, -0.106649,
		-0.047809, 0.957134, 0.285673,
		32.202980, 34.217392, 33.232689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800287, 33.849491, 32.541447>,  <32.236446, 33.547398, 33.032719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800287, 33.849491, 32.541447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992407, 34.161522, 32.701843>,  <32.107677, 34.348740, 32.798080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992407, 34.161522, 32.701843>,  <31.800287, 33.849491, 32.541447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992407, 34.161522, 32.701843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174369, 0.363132, -0.915276,
		-0.859598, 0.509527, 0.038392,
		0.480299, 0.780075, 0.400993,
		32.136497, 34.395546, 32.822140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305321, 34.467121, 32.511578>,  <31.800287, 33.849491, 32.541447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305321, 34.467121, 32.511578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697475, 34.545898, 32.508629>,  <31.932768, 34.593163, 32.506859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697475, 34.545898, 32.508629>,  <31.305321, 34.467121, 32.511578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697475, 34.545898, 32.508629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065696, 0.291333, -0.954363,
		-0.185806, 0.936130, 0.298557,
		0.980388, 0.196941, -0.007368,
		31.991592, 34.604980, 32.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341673, 34.978607, 32.015125>,  <31.305321, 34.467121, 32.511578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341673, 34.978607, 32.015125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724123, 34.862385, 32.030113>,  <31.953592, 34.792652, 32.039104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.724123, 34.862385, 32.030113>,  <31.341673, 34.978607, 32.015125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724123, 34.862385, 32.030113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115031, 0.254721, -0.960148,
		0.269438, 0.922330, 0.276968,
		0.956123, -0.290560, 0.037465,
		32.010960, 34.775215, 32.041351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680115, 35.584751, 31.884636>,  <31.341673, 34.978607, 32.015125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680115, 35.584751, 31.884636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924456, 35.277378, 31.808353>,  <32.071060, 35.092953, 31.762585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.924456, 35.277378, 31.808353>,  <31.680115, 35.584751, 31.884636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924456, 35.277378, 31.808353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013656, 0.251056, -0.967876,
		0.791629, 0.588623, 0.163851,
		0.610850, -0.768436, -0.190705,
		32.107712, 35.046848, 31.751143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051628, 35.839687, 31.370157>,  <31.680115, 35.584751, 31.884636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051628, 35.839687, 31.370157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155518, 35.453560, 31.359608>,  <32.217854, 35.221882, 31.353277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155518, 35.453560, 31.359608>,  <32.051628, 35.839687, 31.370157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155518, 35.453560, 31.359608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064463, 0.044582, -0.996924,
		0.963528, 0.257228, 0.073806,
		0.259727, -0.965322, -0.026374,
		32.233437, 35.163963, 31.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660549, 35.729633, 30.898623>,  <32.051628, 35.839687, 31.370157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660549, 35.729633, 30.898623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478500, 35.376663, 30.946274>,  <32.369270, 35.164883, 30.974865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.478500, 35.376663, 30.946274>,  <32.660549, 35.729633, 30.898623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478500, 35.376663, 30.946274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059230, -0.103488, -0.992865,
		0.888458, -0.458928, -0.005167,
		-0.455120, -0.882426, 0.119127,
		32.341965, 35.111935, 30.982012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022079, 35.288517, 30.476521>,  <32.660549, 35.729633, 30.898623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022079, 35.288517, 30.476521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681213, 35.084812, 30.524639>,  <32.476692, 34.962589, 30.553511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681213, 35.084812, 30.524639>,  <33.022079, 35.288517, 30.476521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681213, 35.084812, 30.524639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054780, -0.141811, -0.988377,
		0.520400, -0.848849, 0.092949,
		-0.852164, -0.509259, 0.120299,
		32.425564, 34.932034, 30.560728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076504, 34.652111, 30.321093>,  <33.022079, 35.288517, 30.476521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076504, 34.652111, 30.321093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677887, 34.669521, 30.292770>,  <32.438717, 34.679966, 30.275778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677887, 34.669521, 30.292770>,  <33.076504, 34.652111, 30.321093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677887, 34.669521, 30.292770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048818, -0.382934, -0.922485,
		-0.067262, -0.922750, 0.379485,
		-0.996541, 0.043523, -0.070803,
		32.378925, 34.682579, 30.271530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892239, 34.027435, 30.088049>,  <33.076504, 34.652111, 30.321093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892239, 34.027435, 30.088049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581303, 34.262608, 29.998535>,  <32.394741, 34.403709, 29.944828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.581303, 34.262608, 29.998535>,  <32.892239, 34.027435, 30.088049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581303, 34.262608, 29.998535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082025, -0.257966, -0.962666,
		-0.623707, -0.766677, 0.152303,
		-0.777343, 0.587928, -0.223782,
		32.348099, 34.438988, 29.931400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348820, 33.583961, 29.588484>,  <32.892239, 34.027435, 30.088049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348820, 33.583961, 29.588484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332699, 33.983025, 29.566360>,  <32.323025, 34.222462, 29.553087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.332699, 33.983025, 29.566360>,  <32.348820, 33.583961, 29.588484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332699, 33.983025, 29.566360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040525, -0.053676, -0.997736,
		-0.998365, -0.042455, -0.038267,
		-0.040305, 0.997656, -0.055309,
		32.320606, 34.282322, 29.549768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932852, 33.614101, 29.044889>,  <32.348820, 33.583961, 29.588484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932852, 33.614101, 29.044889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085224, 33.983341, 29.065994>,  <32.176647, 34.204884, 29.078657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.085224, 33.983341, 29.065994>,  <31.932852, 33.614101, 29.044889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085224, 33.983341, 29.065994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046767, 0.037757, -0.998192,
		-0.923420, 0.382709, -0.028788,
		0.380930, 0.923097, 0.052764,
		32.199505, 34.260269, 29.081823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289293, 33.339523, 28.654215>,  <31.932852, 33.614101, 29.044889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289293, 33.339523, 28.654215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426493, 32.965668, 28.691734>,  <31.508812, 32.741352, 28.714245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.426493, 32.965668, 28.691734>,  <31.289293, 33.339523, 28.654215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426493, 32.965668, 28.691734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229386, 0.013489, 0.973242,
		-0.910898, -0.355334, -0.209767,
		0.342996, -0.934642, 0.093796,
		31.529392, 32.685276, 28.719873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765480, 33.042549, 29.109671>,  <31.289293, 33.339523, 28.654215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765480, 33.042549, 29.109671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092514, 32.813248, 29.131321>,  <31.288734, 32.675667, 29.144312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092514, 32.813248, 29.131321>,  <30.765480, 33.042549, 29.109671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092514, 32.813248, 29.131321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129370, -0.091279, 0.987386,
		-0.561087, -0.814274, -0.148791,
		0.817585, -0.573259, 0.054127,
		31.337790, 32.641270, 29.147558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581551, 32.392059, 29.379522>,  <30.765480, 33.042549, 29.109671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581551, 32.392059, 29.379522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973082, 32.428467, 29.452854>,  <31.208000, 32.450310, 29.496853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.973082, 32.428467, 29.452854>,  <30.581551, 32.392059, 29.379522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973082, 32.428467, 29.452854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169638, -0.140439, 0.975449,
		0.114530, -0.985897, -0.122026,
		0.978829, 0.091018, 0.183330,
		31.266729, 32.455772, 29.507853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555910, 32.148678, 29.934923>,  <30.581551, 32.392059, 29.379522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555910, 32.148678, 29.934923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.939346, 32.257633, 29.968159>,  <31.169409, 32.323006, 29.988100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.939346, 32.257633, 29.968159>,  <30.555910, 32.148678, 29.934923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939346, 32.257633, 29.968159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021190, -0.359180, 0.933028,
		0.283994, -0.892632, -0.350079,
		0.958592, 0.272392, 0.083090,
		31.226925, 32.339352, 29.993086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938084, 31.500195, 29.958237>,  <30.555910, 32.148678, 29.934923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938084, 31.500195, 29.958237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148161, 31.793789, 30.130486>,  <31.274206, 31.969946, 30.233835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.148161, 31.793789, 30.130486>,  <30.938084, 31.500195, 29.958237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148161, 31.793789, 30.130486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112072, -0.561277, 0.820005,
		0.843572, -0.382399, -0.377038,
		0.525192, 0.733988, 0.430622,
		31.305719, 32.013985, 30.259672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301027, 31.170782, 30.446421>,  <30.938084, 31.500195, 29.958237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301027, 31.170782, 30.446421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406586, 31.529709, 30.587944>,  <31.469921, 31.745066, 30.672857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.406586, 31.529709, 30.587944>,  <31.301027, 31.170782, 30.446421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406586, 31.529709, 30.587944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200913, -0.409903, 0.889726,
		0.943394, -0.163712, -0.288455,
		0.263898, 0.897317, 0.353809,
		31.485756, 31.798904, 30.694086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949694, 31.070961, 30.815462>,  <31.301027, 31.170782, 30.446421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949694, 31.070961, 30.815462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775812, 31.404213, 30.952240>,  <31.671482, 31.604164, 31.034306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.775812, 31.404213, 30.952240>,  <31.949694, 31.070961, 30.815462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775812, 31.404213, 30.952240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241196, -0.258117, 0.935521,
		0.867672, 0.489152, -0.088742,
		-0.434706, 0.833130, 0.341943,
		31.645401, 31.654152, 31.054823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397926, 31.336512, 31.294724>,  <31.949694, 31.070961, 30.815462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397926, 31.336512, 31.294724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056252, 31.523727, 31.385326>,  <31.851246, 31.636057, 31.439688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056252, 31.523727, 31.385326>,  <32.397926, 31.336512, 31.294724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056252, 31.523727, 31.385326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155651, -0.185479, 0.970242,
		0.496123, 0.864024, 0.085583,
		-0.854186, 0.468039, 0.226507,
		31.799995, 31.664139, 31.453278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481846, 31.851019, 31.749174>,  <32.397926, 31.336512, 31.294724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481846, 31.851019, 31.749174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093452, 31.782116, 31.815529>,  <31.860416, 31.740774, 31.855343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093452, 31.782116, 31.815529>,  <32.481846, 31.851019, 31.749174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093452, 31.782116, 31.815529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186620, -0.112002, 0.976027,
		-0.149548, 0.978664, 0.140899,
		-0.970983, -0.172258, 0.165888,
		31.802158, 31.730438, 31.865295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374676, 32.187416, 32.360310>,  <32.481846, 31.851019, 31.749174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374676, 32.187416, 32.360310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036697, 31.974163, 32.343155>,  <31.833910, 31.846212, 32.332863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.036697, 31.974163, 32.343155>,  <32.374676, 32.187416, 32.360310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036697, 31.974163, 32.343155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031677, -0.030158, 0.999043,
		-0.533915, 0.845495, 0.008594,
		-0.844945, -0.533131, -0.042885,
		31.783215, 31.814224, 32.330288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777514, 32.543842, 32.799850>,  <32.374676, 32.187416, 32.360310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777514, 32.543842, 32.799850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.737291, 32.147583, 32.762955>,  <31.713158, 31.909828, 32.740818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.737291, 32.147583, 32.762955>,  <31.777514, 32.543842, 32.799850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737291, 32.147583, 32.762955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071530, -0.085275, 0.993787,
		-0.992357, 0.106531, -0.062286,
		-0.100558, -0.990646, -0.092243,
		31.707125, 31.850389, 32.735283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176096, 32.469860, 33.042137>,  <31.777514, 32.543842, 32.799850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176096, 32.469860, 33.042137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316977, 32.095493, 33.043339>,  <31.401505, 31.870872, 33.044060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.316977, 32.095493, 33.043339>,  <31.176096, 32.469860, 33.042137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316977, 32.095493, 33.043339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416105, -0.153713, 0.896231,
		-0.838338, -0.316902, -0.443578,
		0.352201, -0.935920, 0.003001,
		31.422636, 31.814718, 33.044239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642540, 31.887743, 33.097179>,  <31.176096, 32.469860, 33.042137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642540, 31.887743, 33.097179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987022, 31.737408, 33.234039>,  <31.193712, 31.647205, 33.316154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.987022, 31.737408, 33.234039>,  <30.642540, 31.887743, 33.097179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987022, 31.737408, 33.234039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420645, -0.149231, 0.894868,
		-0.285270, -0.914589, -0.286615,
		0.861208, -0.375841, 0.342146,
		31.245384, 31.624655, 33.336685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410011, 31.257494, 33.418419>,  <30.642540, 31.887743, 33.097179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410011, 31.257494, 33.418419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763971, 31.369385, 33.567390>,  <30.976347, 31.436520, 33.656773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.763971, 31.369385, 33.567390>,  <30.410011, 31.257494, 33.418419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763971, 31.369385, 33.567390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386170, -0.006464, 0.922405,
		0.260430, -0.960057, 0.102303,
		0.884900, 0.279728, 0.372429,
		31.029442, 31.453302, 33.679119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874973, 30.716156, 33.501434>,  <30.410011, 31.257494, 33.418419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874973, 30.716156, 33.501434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.482637, 30.715355, 33.423512>,  <29.247236, 30.714874, 33.376759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.482637, 30.715355, 33.423512>,  <29.874973, 30.716156, 33.501434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482637, 30.715355, 33.423512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193342, 0.112816, -0.974624,
		0.023928, -0.993614, -0.110268,
		-0.980840, -0.002002, -0.194807,
		29.188385, 30.714754, 33.365070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790693, 30.467449, 32.875553>,  <29.874973, 30.716156, 33.501434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790693, 30.467449, 32.875553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.442923, 30.657993, 32.927982>,  <29.234261, 30.772320, 32.959438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.442923, 30.657993, 32.927982>,  <29.790693, 30.467449, 32.875553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442923, 30.657993, 32.927982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015864, 0.292069, -0.956266,
		-0.493810, -0.829323, -0.261489,
		-0.869425, 0.476361, 0.131070,
		29.182095, 30.800901, 32.967304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.314379, 30.188221, 32.388142>,  <29.790693, 30.467449, 32.875553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.314379, 30.188221, 32.388142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158751, 30.544903, 32.480652>,  <29.065374, 30.758911, 32.536160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.158751, 30.544903, 32.480652>,  <29.314379, 30.188221, 32.388142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158751, 30.544903, 32.480652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196364, 0.165013, -0.966547,
		-0.900038, -0.421467, 0.110897,
		-0.389068, 0.891704, 0.231278,
		29.042030, 30.812414, 32.550034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691849, 30.249573, 31.949261>,  <29.314379, 30.188221, 32.388142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691849, 30.249573, 31.949261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777092, 30.628239, 32.045933>,  <28.828238, 30.855438, 32.103935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.777092, 30.628239, 32.045933>,  <28.691849, 30.249573, 31.949261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777092, 30.628239, 32.045933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147407, 0.275686, -0.949878,
		-0.965845, 0.166801, 0.198295,
		0.213108, 0.946665, 0.241682,
		28.841024, 30.912239, 32.118439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126266, 30.707724, 31.643900>,  <28.691849, 30.249573, 31.949261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126266, 30.707724, 31.643900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.441887, 30.945213, 31.707005>,  <28.631260, 31.087708, 31.744867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.441887, 30.945213, 31.707005>,  <28.126266, 30.707724, 31.643900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441887, 30.945213, 31.707005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112379, 0.391974, -0.913087,
		-0.603961, 0.702743, 0.376010,
		0.789051, 0.593724, 0.157764,
		28.678602, 31.123331, 31.754333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980194, 31.491915, 31.476532>,  <28.126266, 30.707724, 31.643900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980194, 31.491915, 31.476532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.378353, 31.453804, 31.480663>,  <28.617249, 31.430937, 31.483143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.378353, 31.453804, 31.480663>,  <27.980194, 31.491915, 31.476532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378353, 31.453804, 31.480663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034812, 0.259068, -0.965232,
		0.089289, 0.961149, 0.261192,
		0.995397, -0.095277, 0.010328,
		28.676971, 31.425220, 31.483761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231119, 32.074024, 31.075813>,  <27.980194, 31.491915, 31.476532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231119, 32.074024, 31.075813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.538366, 31.817905, 31.074173>,  <28.722715, 31.664234, 31.073189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.538366, 31.817905, 31.074173>,  <28.231119, 32.074024, 31.075813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538366, 31.817905, 31.074173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124124, 0.155183, -0.980057,
		0.628161, 0.752291, 0.198675,
		0.768119, -0.640294, -0.004102,
		28.768803, 31.625816, 31.072943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.691179, 32.440536, 30.740599>,  <28.231119, 32.074024, 31.075813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.691179, 32.440536, 30.740599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763321, 32.048283, 30.710068>,  <28.806606, 31.812929, 30.691750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.763321, 32.048283, 30.710068>,  <28.691179, 32.440536, 30.740599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.763321, 32.048283, 30.710068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092463, 0.094159, -0.991254,
		0.979246, 0.171719, 0.107655,
		0.180354, -0.980636, -0.076327,
		28.817427, 31.754091, 30.687170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286972, 32.482052, 30.275894>,  <28.691179, 32.440536, 30.740599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286972, 32.482052, 30.275894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.142225, 32.109184, 30.280174>,  <29.055378, 31.885464, 30.282742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.142225, 32.109184, 30.280174>,  <29.286972, 32.482052, 30.275894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142225, 32.109184, 30.280174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085341, -0.044554, -0.995355,
		0.928316, -0.359272, 0.095674,
		-0.361866, -0.932169, 0.010700,
		29.033665, 31.829535, 30.283384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681528, 32.117279, 29.840580>,  <29.286972, 32.482052, 30.275894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681528, 32.117279, 29.840580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353542, 31.888584, 29.851700>,  <29.156752, 31.751366, 29.858372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.353542, 31.888584, 29.851700>,  <29.681528, 32.117279, 29.840580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353542, 31.888584, 29.851700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026139, -0.085915, -0.995959,
		0.571819, -0.815924, 0.085392,
		-0.819963, -0.571740, 0.027801,
		29.107553, 31.717062, 29.860041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796553, 31.538483, 29.346622>,  <29.681528, 32.117279, 29.840580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796553, 31.538483, 29.346622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.400602, 31.580360, 29.384953>,  <29.163033, 31.605488, 29.407951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.400602, 31.580360, 29.384953>,  <29.796553, 31.538483, 29.346622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400602, 31.580360, 29.384953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107503, -0.112277, -0.987845,
		-0.092653, -0.988147, 0.122394,
		-0.989878, 0.104684, 0.095827,
		29.103640, 31.611769, 29.413700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625771, 31.073936, 28.847853>,  <29.796553, 31.538483, 29.346622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625771, 31.073936, 28.847853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.306040, 31.299637, 28.930508>,  <29.114202, 31.435057, 28.980101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.306040, 31.299637, 28.930508>,  <29.625771, 31.073936, 28.847853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306040, 31.299637, 28.930508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376610, -0.202457, -0.903978,
		-0.468235, -0.800395, 0.374331,
		-0.799325, 0.564251, 0.206639,
		29.066242, 31.468912, 28.992500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.142082, 30.651546, 28.712643>,  <29.625771, 31.073936, 28.847853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.142082, 30.651546, 28.712643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969032, 31.012096, 28.720226>,  <28.865202, 31.228426, 28.724777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969032, 31.012096, 28.720226>,  <29.142082, 30.651546, 28.712643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969032, 31.012096, 28.720226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393149, -0.169687, -0.903681,
		-0.811338, -0.398409, 0.427786,
		-0.432625, 0.901375, 0.018961,
		28.839245, 31.282509, 28.725914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437544, 30.649246, 28.497196>,  <29.142082, 30.651546, 28.712643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437544, 30.649246, 28.497196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541605, 31.029030, 28.426937>,  <28.604042, 31.256899, 28.384783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.541605, 31.029030, 28.426937>,  <28.437544, 30.649246, 28.497196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541605, 31.029030, 28.426937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542204, -0.006874, -0.840219,
		-0.798959, 0.313821, 0.513011,
		0.260152, 0.949457, -0.175647,
		28.619650, 31.313868, 28.374243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.670952, 33.643269, 15.355313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.904110, 33.319065, 15.332305>,  <40.044003, 33.124542, 15.318500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.904110, 33.319065, 15.332305>,  <39.670952, 33.643269, 15.355313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904110, 33.319065, 15.332305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176111, 0.056909, 0.982724,
		-0.793236, -0.582952, 0.175912,
		0.582891, -0.810511, -0.057522,
		40.078976, 33.075912, 15.315048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510082, 33.344582, 15.909394>,  <39.670952, 33.643269, 15.355313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510082, 33.344582, 15.909394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.869839, 33.211876, 15.795527>,  <40.085693, 33.132252, 15.727207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.869839, 33.211876, 15.795527>,  <39.510082, 33.344582, 15.909394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869839, 33.211876, 15.795527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293320, -0.024854, 0.955691,
		-0.324141, -0.943034, 0.074961,
		0.899386, -0.331766, -0.284667,
		40.139656, 33.112347, 15.710128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697594, 32.728867, 16.360388>,  <39.510082, 33.344582, 15.909394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697594, 32.728867, 16.360388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025505, 32.905712, 16.214783>,  <40.222252, 33.011818, 16.127420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.025505, 32.905712, 16.214783>,  <39.697594, 32.728867, 16.360388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025505, 32.905712, 16.214783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319780, 0.173917, 0.931393,
		0.475091, -0.879936, 0.001193,
		0.819774, 0.442115, -0.364012,
		40.271439, 33.038345, 16.105579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186417, 32.550484, 16.799294>,  <39.697594, 32.728867, 16.360388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186417, 32.550484, 16.799294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369728, 32.859478, 16.623459>,  <40.479717, 33.044876, 16.517958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.369728, 32.859478, 16.623459>,  <40.186417, 32.550484, 16.799294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369728, 32.859478, 16.623459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422039, 0.246137, 0.872525,
		0.782216, -0.585385, -0.213221,
		0.458281, 0.772490, -0.439587,
		40.507214, 33.091225, 16.491583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793499, 32.487576, 16.941631>,  <40.186417, 32.550484, 16.799294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793499, 32.487576, 16.941631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.793945, 32.880863, 16.868660>,  <40.794212, 33.116837, 16.824877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.793945, 32.880863, 16.868660>,  <40.793499, 32.487576, 16.941631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793945, 32.880863, 16.868660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460013, 0.161478, 0.873105,
		0.887912, -0.084893, -0.452113,
		0.001114, 0.983218, -0.182430,
		40.794281, 33.175827, 16.813931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530567, 32.888847, 17.036654>,  <40.793499, 32.487576, 16.941631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530567, 32.888847, 17.036654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254761, 33.176846, 17.068085>,  <41.089279, 33.349644, 17.086943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.254761, 33.176846, 17.068085>,  <41.530567, 32.888847, 17.036654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254761, 33.176846, 17.068085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480304, 0.373348, 0.793675,
		0.542108, 0.584990, -0.603246,
		-0.689512, 0.719999, 0.078578,
		41.047909, 33.392845, 17.091658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898270, 33.357925, 17.503357>,  <41.530567, 32.888847, 17.036654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898270, 33.357925, 17.503357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514996, 33.472374, 17.504665>,  <41.285030, 33.541042, 17.505451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.514996, 33.472374, 17.504665>,  <41.898270, 33.357925, 17.503357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514996, 33.472374, 17.504665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151944, 0.499076, 0.853133,
		0.242470, 0.817958, -0.521683,
		-0.958186, 0.286126, 0.003273,
		41.227539, 33.558212, 17.505648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886063, 34.012287, 17.789406>,  <41.898270, 33.357925, 17.503357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886063, 34.012287, 17.789406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.499905, 33.910599, 17.812668>,  <41.268211, 33.849586, 17.826624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.499905, 33.910599, 17.812668>,  <41.886063, 34.012287, 17.789406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499905, 33.910599, 17.812668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066824, 0.456688, 0.887114,
		-0.252082, 0.852530, -0.457873,
		-0.965396, -0.254222, 0.058153,
		41.210285, 33.834332, 17.830114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624432, 34.624241, 18.085499>,  <41.886063, 34.012287, 17.789406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624432, 34.624241, 18.085499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.393181, 34.302624, 18.141033>,  <41.254429, 34.109653, 18.174353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.393181, 34.302624, 18.141033>,  <41.624432, 34.624241, 18.085499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393181, 34.302624, 18.141033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171349, 0.285995, 0.942787,
		-0.797750, 0.521264, -0.303115,
		-0.578130, -0.804047, 0.138834,
		41.219742, 34.061409, 18.182684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909821, 34.865589, 18.335154>,  <41.624432, 34.624241, 18.085499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909821, 34.865589, 18.335154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.937481, 34.502705, 18.501133>,  <40.954075, 34.284973, 18.600721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.937481, 34.502705, 18.501133>,  <40.909821, 34.865589, 18.335154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937481, 34.502705, 18.501133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341519, 0.369285, 0.864288,
		-0.937328, -0.201476, -0.284296,
		0.069147, -0.907213, 0.414949,
		40.958225, 34.230541, 18.625618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407078, 34.834232, 18.901827>,  <40.909821, 34.865589, 18.335154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407078, 34.834232, 18.901827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.589619, 34.485680, 18.973858>,  <40.699142, 34.276546, 19.017076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.589619, 34.485680, 18.973858>,  <40.407078, 34.834232, 18.901827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589619, 34.485680, 18.973858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354977, 0.007285, 0.934847,
		-0.815924, -0.490543, -0.305998,
		0.456353, -0.871386, 0.180076,
		40.726524, 34.224262, 19.027882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931904, 34.353947, 19.178162>,  <40.407078, 34.834232, 18.901827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931904, 34.353947, 19.178162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293682, 34.232948, 19.298481>,  <40.510750, 34.160351, 19.370672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.293682, 34.232948, 19.298481>,  <39.931904, 34.353947, 19.178162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293682, 34.232948, 19.298481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288711, 0.085052, 0.953631,
		-0.314052, -0.949349, -0.010409,
		0.904443, -0.302495, 0.300798,
		40.565014, 34.142200, 19.388720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831318, 33.798214, 19.641521>,  <39.931904, 34.353947, 19.178162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831318, 33.798214, 19.641521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204597, 33.910305, 19.731510>,  <40.428566, 33.977558, 19.785503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204597, 33.910305, 19.731510>,  <39.831318, 33.798214, 19.641521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204597, 33.910305, 19.731510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245807, 0.041083, 0.968448,
		0.262144, -0.959054, 0.107221,
		0.933199, 0.280228, 0.224972,
		40.484558, 33.994373, 19.799002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957554, 33.377911, 20.300787>,  <39.831318, 33.798214, 19.641521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957554, 33.377911, 20.300787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.254341, 33.645733, 20.287014>,  <40.432411, 33.806427, 20.278749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.254341, 33.645733, 20.287014>,  <39.957554, 33.377911, 20.300787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254341, 33.645733, 20.287014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106221, 0.168109, 0.980029,
		0.661973, -0.723488, 0.195852,
		0.741963, 0.669556, -0.034435,
		40.476929, 33.846600, 20.276684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451115, 33.212452, 20.846794>,  <39.957554, 33.377911, 20.300787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451115, 33.212452, 20.846794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517159, 33.599552, 20.770702>,  <40.556786, 33.831814, 20.725046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.517159, 33.599552, 20.770702>,  <40.451115, 33.212452, 20.846794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517159, 33.599552, 20.770702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147058, 0.214878, 0.965506,
		0.975250, -0.131442, 0.177795,
		0.165112, 0.967755, -0.190231,
		40.566692, 33.889877, 20.713633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969852, 33.387135, 21.214573>,  <40.451115, 33.212452, 20.846794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969852, 33.387135, 21.214573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753326, 33.718506, 21.157055>,  <40.623409, 33.917328, 21.122543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.753326, 33.718506, 21.157055>,  <40.969852, 33.387135, 21.214573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753326, 33.718506, 21.157055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123414, 0.247448, 0.961009,
		0.831712, 0.502463, -0.236188,
		-0.541316, 0.828432, -0.143795,
		40.590931, 33.967037, 21.113916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385548, 33.949215, 21.574635>,  <40.969852, 33.387135, 21.214573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385548, 33.949215, 21.574635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018002, 34.098175, 21.522469>,  <40.797474, 34.187550, 21.491169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.018002, 34.098175, 21.522469>,  <41.385548, 33.949215, 21.574635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018002, 34.098175, 21.522469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075151, 0.489645, 0.868677,
		0.387349, 0.788396, -0.477904,
		-0.918865, 0.372396, -0.130414,
		40.742344, 34.209892, 21.483345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493469, 34.632545, 21.809780>,  <41.385548, 33.949215, 21.574635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493469, 34.632545, 21.809780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097946, 34.574268, 21.796886>,  <40.860634, 34.539303, 21.789150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.097946, 34.574268, 21.796886>,  <41.493469, 34.632545, 21.809780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097946, 34.574268, 21.796886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096192, 0.457232, 0.884130,
		-0.114075, 0.877332, -0.466128,
		-0.988804, -0.145695, -0.032234,
		40.801304, 34.530560, 21.787216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219376, 35.288204, 22.079079>,  <41.493469, 34.632545, 21.809780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219376, 35.288204, 22.079079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.953510, 34.992058, 22.119251>,  <40.793991, 34.814369, 22.143354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.953510, 34.992058, 22.119251>,  <41.219376, 35.288204, 22.079079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953510, 34.992058, 22.119251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242679, 0.341060, 0.908177,
		-0.706633, 0.579259, -0.406360,
		-0.664663, -0.740363, 0.100430,
		40.754112, 34.769951, 22.149380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627220, 35.632805, 22.317757>,  <41.219376, 35.288204, 22.079079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627220, 35.632805, 22.317757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565281, 35.250702, 22.418556>,  <40.528118, 35.021439, 22.479036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.565281, 35.250702, 22.418556>,  <40.627220, 35.632805, 22.317757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565281, 35.250702, 22.418556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273353, 0.286542, 0.918244,
		-0.949369, 0.073303, -0.305493,
		-0.154846, -0.955259, 0.251997,
		40.518826, 34.964123, 22.494156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903629, 35.509220, 22.419947>,  <40.627220, 35.632805, 22.317757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903629, 35.509220, 22.419947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150261, 35.272102, 22.627186>,  <40.298241, 35.129833, 22.751530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150261, 35.272102, 22.627186>,  <39.903629, 35.509220, 22.419947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150261, 35.272102, 22.627186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299489, 0.432000, 0.850695,
		-0.728107, -0.679684, 0.088826,
		0.616577, -0.592794, 0.518100,
		40.335236, 35.094265, 22.782616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693241, 36.200790, 22.170279>,  <39.903629, 35.509220, 22.419947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693241, 36.200790, 22.170279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326950, 36.350189, 22.229527>,  <39.107174, 36.439827, 22.265076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.326950, 36.350189, 22.229527>,  <39.693241, 36.200790, 22.170279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326950, 36.350189, 22.229527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310138, -0.422673, -0.851564,
		-0.255450, -0.825740, 0.502890,
		-0.915729, 0.373497, 0.148122,
		39.052231, 36.462238, 22.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143036, 35.633213, 21.988823>,  <39.693241, 36.200790, 22.170279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143036, 35.633213, 21.988823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.948135, 35.981777, 21.966095>,  <38.831196, 36.190914, 21.952457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.948135, 35.981777, 21.966095>,  <39.143036, 35.633213, 21.988823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948135, 35.981777, 21.966095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511379, -0.337475, -0.790318,
		-0.707865, -0.356030, 0.610057,
		-0.487255, 0.871409, -0.056820,
		38.801960, 36.243198, 21.949049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344128, 35.448917, 21.809954>,  <39.143036, 35.633213, 21.988823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344128, 35.448917, 21.809954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425797, 35.826691, 21.706905>,  <38.474796, 36.053352, 21.645077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.425797, 35.826691, 21.706905>,  <38.344128, 35.448917, 21.809954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425797, 35.826691, 21.706905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429685, -0.149999, -0.890433,
		-0.879593, 0.292497, 0.375181,
		0.204172, 0.944429, -0.257620,
		38.487049, 36.110020, 21.629620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722511, 35.687653, 21.471128>,  <38.344128, 35.448917, 21.809954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722511, 35.687653, 21.471128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006279, 35.946579, 21.359623>,  <38.176540, 36.101936, 21.292721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.006279, 35.946579, 21.359623>,  <37.722511, 35.687653, 21.471128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006279, 35.946579, 21.359623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312707, -0.065369, -0.947598,
		-0.631621, 0.759410, 0.156048,
		0.709415, 0.647320, -0.278762,
		38.219105, 36.140774, 21.275995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382034, 36.223030, 21.006371>,  <37.722511, 35.687653, 21.471128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382034, 36.223030, 21.006371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771950, 36.229778, 20.917366>,  <38.005898, 36.233826, 20.863964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.771950, 36.229778, 20.917366>,  <37.382034, 36.223030, 21.006371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771950, 36.229778, 20.917366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223069, 0.100128, -0.969647,
		0.005925, 0.994832, 0.101365,
		0.974785, 0.016866, -0.222510,
		38.064384, 36.234837, 20.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452431, 36.676304, 20.413687>,  <37.382034, 36.223030, 21.006371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452431, 36.676304, 20.413687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800117, 36.478535, 20.412277>,  <38.008728, 36.359875, 20.411432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.800117, 36.478535, 20.412277>,  <37.452431, 36.676304, 20.413687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800117, 36.478535, 20.412277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017228, 0.037405, -0.999152,
		0.494131, 0.868419, 0.041031,
		0.869217, -0.494419, -0.003522,
		38.060883, 36.330208, 20.411221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834766, 36.989452, 19.892101>,  <37.452431, 36.676304, 20.413687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834766, 36.989452, 19.892101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980152, 36.622017, 19.954178>,  <38.067383, 36.401554, 19.991423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.980152, 36.622017, 19.954178>,  <37.834766, 36.989452, 19.892101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980152, 36.622017, 19.954178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071462, -0.138601, -0.987767,
		0.928863, 0.370108, 0.015268,
		0.363464, -0.918591, 0.155190,
		38.089191, 36.346439, 20.000734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068226, 36.784962, 19.206348>,  <37.834766, 36.989452, 19.892101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068226, 36.784962, 19.206348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117653, 36.441998, 19.406181>,  <38.147308, 36.236221, 19.526081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.117653, 36.441998, 19.406181>,  <38.068226, 36.784962, 19.206348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117653, 36.441998, 19.406181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019888, -0.501201, -0.865103,
		0.992136, 0.116838, -0.044882,
		0.123572, -0.857407, 0.499583,
		38.154724, 36.184776, 19.556057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675827, 36.495300, 18.877186>,  <38.068226, 36.784962, 19.206348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675827, 36.495300, 18.877186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464390, 36.211086, 19.062969>,  <38.337528, 36.040558, 19.174440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.464390, 36.211086, 19.062969>,  <38.675827, 36.495300, 18.877186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464390, 36.211086, 19.062969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097824, -0.594492, -0.798128,
		0.843218, -0.376452, 0.383754,
		-0.528596, -0.710537, 0.464460,
		38.305809, 35.997925, 19.202307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933056, 35.878433, 18.625006>,  <38.675827, 36.495300, 18.877186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933056, 35.878433, 18.625006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578114, 35.759583, 18.766041>,  <38.365147, 35.688271, 18.850662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.578114, 35.759583, 18.766041>,  <38.933056, 35.878433, 18.625006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578114, 35.759583, 18.766041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071932, -0.666116, -0.742371,
		0.455443, -0.684108, 0.569708,
		-0.887354, -0.297128, 0.352587,
		38.311909, 35.670444, 18.871817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902115, 35.209919, 18.579910>,  <38.933056, 35.878433, 18.625006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902115, 35.209919, 18.579910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509674, 35.287197, 18.584110>,  <38.274208, 35.333565, 18.586630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.509674, 35.287197, 18.584110>,  <38.902115, 35.209919, 18.579910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509674, 35.287197, 18.584110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135730, -0.648599, -0.748931,
		-0.137877, -0.736205, 0.662565,
		-0.981105, 0.193190, 0.010498,
		38.215343, 35.345154, 18.587259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625755, 34.621300, 18.495850>,  <38.902115, 35.209919, 18.579910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625755, 34.621300, 18.495850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.337933, 34.873089, 18.378544>,  <38.165241, 35.024162, 18.308161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.337933, 34.873089, 18.378544>,  <38.625755, 34.621300, 18.495850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337933, 34.873089, 18.378544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187994, -0.583104, -0.790347,
		-0.668509, -0.513564, 0.537911,
		-0.719551, 0.629478, -0.293263,
		38.122066, 35.061932, 18.290565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043320, 34.160240, 18.242548>,  <38.625755, 34.621300, 18.495850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043320, 34.160240, 18.242548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015446, 34.528740, 18.089474>,  <37.998722, 34.749840, 17.997629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015446, 34.528740, 18.089474>,  <38.043320, 34.160240, 18.242548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015446, 34.528740, 18.089474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167495, -0.388976, -0.905894,
		-0.983407, 0.000971, 0.181410,
		-0.069685, 0.921248, -0.382684,
		37.994541, 34.805115, 17.974669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338116, 34.321056, 17.933422>,  <38.043320, 34.160240, 18.242548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338116, 34.321056, 17.933422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634811, 34.525661, 17.759907>,  <37.812828, 34.648426, 17.655798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.634811, 34.525661, 17.759907>,  <37.338116, 34.321056, 17.933422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634811, 34.525661, 17.759907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253589, -0.384875, -0.887448,
		-0.620895, 0.768262, -0.155764,
		0.741742, 0.511512, -0.433790,
		37.857334, 34.679115, 17.629770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030289, 34.533409, 17.311665>,  <37.338116, 34.321056, 17.933422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030289, 34.533409, 17.311665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.405369, 34.624203, 17.206448>,  <37.630417, 34.678680, 17.143318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.405369, 34.624203, 17.206448>,  <37.030289, 34.533409, 17.311665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405369, 34.624203, 17.206448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099483, -0.549976, -0.829234,
		-0.332894, 0.803742, -0.493132,
		0.937702, 0.226988, -0.263043,
		37.686680, 34.692299, 17.127535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961597, 34.596642, 16.615685>,  <37.030289, 34.533409, 17.311665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961597, 34.596642, 16.615685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357323, 34.562847, 16.663227>,  <37.594757, 34.542572, 16.691753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.357323, 34.562847, 16.663227>,  <36.961597, 34.596642, 16.615685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357323, 34.562847, 16.663227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065465, -0.471030, -0.879685,
		0.130303, 0.878062, -0.460464,
		0.989311, -0.084482, 0.118859,
		37.654118, 34.537502, 16.698885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267689, 34.734962, 15.969104>,  <36.961597, 34.596642, 16.615685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267689, 34.734962, 15.969104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535072, 34.519081, 16.173801>,  <37.695503, 34.389553, 16.296619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.535072, 34.519081, 16.173801>,  <37.267689, 34.734962, 15.969104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535072, 34.519081, 16.173801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171095, -0.558017, -0.812000,
		0.723803, 0.630344, -0.280670,
		0.668457, -0.539707, 0.511743,
		37.735611, 34.357170, 16.327324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989071, 34.815273, 15.635932>,  <37.267689, 34.734962, 15.969104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989071, 34.815273, 15.635932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032726, 34.476925, 15.844771>,  <38.058918, 34.273914, 15.970076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.032726, 34.476925, 15.844771>,  <37.989071, 34.815273, 15.635932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032726, 34.476925, 15.844771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211501, -0.493449, -0.843668,
		0.971265, 0.202502, 0.125048,
		0.109140, -0.845873, 0.522099,
		38.065468, 34.223164, 16.001402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607162, 34.569958, 15.411197>,  <37.989071, 34.815273, 15.635932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607162, 34.569958, 15.411197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388515, 34.269783, 15.559817>,  <38.257328, 34.089676, 15.648990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.388515, 34.269783, 15.559817>,  <38.607162, 34.569958, 15.411197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388515, 34.269783, 15.559817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222195, -0.557782, -0.799693,
		0.807368, -0.354566, 0.471636,
		-0.546614, -0.750442, 0.371552,
		38.224533, 34.044651, 15.671283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903328, 33.959248, 15.158329>,  <38.607162, 34.569958, 15.411197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903328, 33.959248, 15.158329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.539852, 33.829769, 15.263789>,  <38.321766, 33.752083, 15.327065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.539852, 33.829769, 15.263789>,  <38.903328, 33.959248, 15.158329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539852, 33.829769, 15.263789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032764, -0.684870, -0.727928,
		0.416195, -0.652819, 0.632937,
		-0.908685, -0.323698, 0.263650,
		38.267246, 33.732658, 15.342884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952190, 33.317776, 15.259984>,  <38.903328, 33.959248, 15.158329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952190, 33.317776, 15.259984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564693, 33.372990, 15.177541>,  <38.332195, 33.406120, 15.128075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.564693, 33.372990, 15.177541>,  <38.952190, 33.317776, 15.259984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564693, 33.372990, 15.177541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048489, -0.709470, -0.703066,
		-0.243277, -0.691085, 0.680601,
		-0.968744, 0.138038, -0.206108,
		38.274071, 33.414402, 15.115708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.289358, 32.374569, 33.375797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.643764, 32.553356, 33.425110>,  <26.856407, 32.660629, 33.454697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.643764, 32.553356, 33.425110>,  <26.289358, 32.374569, 33.375797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643764, 32.553356, 33.425110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013037, -0.289804, 0.956997,
		0.463476, -0.846305, -0.262597,
		0.886014, 0.446969, 0.123284,
		26.909569, 32.687447, 33.462093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760798, 31.981642, 33.766037>,  <26.289358, 32.374569, 33.375797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760798, 31.981642, 33.766037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950960, 32.323265, 33.850483>,  <27.065058, 32.528240, 33.901150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.950960, 32.323265, 33.850483>,  <26.760798, 31.981642, 33.766037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950960, 32.323265, 33.850483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127423, -0.304283, 0.944021,
		0.870490, -0.421892, -0.253485,
		0.475406, 0.854060, 0.211117,
		27.093582, 32.579483, 33.913818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235903, 31.681358, 34.159168>,  <26.760798, 31.981642, 33.766037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235903, 31.681358, 34.159168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.186417, 32.069969, 34.239990>,  <27.156725, 32.303135, 34.288483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.186417, 32.069969, 34.239990>,  <27.235903, 31.681358, 34.159168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186417, 32.069969, 34.239990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079027, -0.212618, 0.973934,
		0.989166, 0.104523, 0.103081,
		-0.123716, 0.971529, 0.202054,
		27.149302, 32.361427, 34.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740667, 31.745596, 34.704983>,  <27.235903, 31.681358, 34.159168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740667, 31.745596, 34.704983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542393, 32.091499, 34.737213>,  <27.423428, 32.299042, 34.756550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.542393, 32.091499, 34.737213>,  <27.740667, 31.745596, 34.704983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542393, 32.091499, 34.737213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021607, -0.105022, 0.994235,
		0.868234, 0.491086, 0.070742,
		-0.495684, 0.864757, 0.080573,
		27.393688, 32.350925, 34.761387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027851, 32.079517, 35.250450>,  <27.740667, 31.745596, 34.704983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027851, 32.079517, 35.250450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.673923, 32.265366, 35.236477>,  <27.461567, 32.376873, 35.228092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.673923, 32.265366, 35.236477>,  <28.027851, 32.079517, 35.250450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673923, 32.265366, 35.236477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105826, -0.127396, 0.986190,
		0.453754, 0.876298, 0.161892,
		-0.884821, 0.464620, -0.034929,
		27.408478, 32.404751, 35.225998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014769, 32.620953, 35.733166>,  <28.027851, 32.079517, 35.250450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014769, 32.620953, 35.733166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.624763, 32.544384, 35.688072>,  <27.390760, 32.498444, 35.661015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.624763, 32.544384, 35.688072>,  <28.014769, 32.620953, 35.733166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624763, 32.544384, 35.688072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123914, 0.047428, 0.991159,
		-0.184379, 0.980362, -0.069963,
		-0.975013, -0.191419, -0.112735,
		27.332260, 32.486958, 35.654251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570395, 33.192112, 36.148830>,  <28.014769, 32.620953, 35.733166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570395, 33.192112, 36.148830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.333008, 32.874870, 36.094025>,  <27.190575, 32.684525, 36.061142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.333008, 32.874870, 36.094025>,  <27.570395, 33.192112, 36.148830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333008, 32.874870, 36.094025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259166, 0.027139, 0.965451,
		-0.761989, 0.608475, -0.221653,
		-0.593469, -0.793109, -0.137016,
		27.154966, 32.636936, 36.052921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108288, 33.300621, 36.620888>,  <27.570395, 33.192112, 36.148830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108288, 33.300621, 36.620888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.042904, 32.912922, 36.547310>,  <27.003674, 32.680302, 36.503162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.042904, 32.912922, 36.547310>,  <27.108288, 33.300621, 36.620888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.042904, 32.912922, 36.547310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009048, -0.187913, 0.982144,
		-0.986509, 0.158876, 0.039486,
		-0.163459, -0.969251, -0.183940,
		26.993866, 32.622147, 36.492126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598747, 33.018120, 37.079517>,  <27.108288, 33.300621, 36.620888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598747, 33.018120, 37.079517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.820326, 32.707256, 36.960072>,  <26.953274, 32.520741, 36.888405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.820326, 32.707256, 36.960072>,  <26.598747, 33.018120, 37.079517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820326, 32.707256, 36.960072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189189, -0.231790, 0.954191,
		-0.810771, -0.585067, 0.018630,
		0.553948, -0.777155, -0.298617,
		26.986511, 32.474110, 36.870487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387554, 32.518578, 37.594173>,  <26.598747, 33.018120, 37.079517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387554, 32.518578, 37.594173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.741673, 32.422272, 37.435036>,  <26.954144, 32.364487, 37.339554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.741673, 32.422272, 37.435036>,  <26.387554, 32.518578, 37.594173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741673, 32.422272, 37.435036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355272, -0.201833, 0.912713,
		-0.300050, -0.949365, -0.093144,
		0.885298, -0.240768, -0.397843,
		27.007261, 32.350040, 37.315681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502205, 31.820490, 37.868687>,  <26.387554, 32.518578, 37.594173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502205, 31.820490, 37.868687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.847588, 31.991413, 37.761471>,  <27.054817, 32.093967, 37.697140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.847588, 31.991413, 37.761471>,  <26.502205, 31.820490, 37.868687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847588, 31.991413, 37.761471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352232, -0.130397, 0.926784,
		0.361071, -0.894653, -0.263104,
		0.863459, 0.427308, -0.268043,
		27.106625, 32.119606, 37.681057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077965, 31.380558, 37.975166>,  <26.502205, 31.820490, 37.868687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077965, 31.380558, 37.975166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.241495, 31.745308, 37.989830>,  <27.339613, 31.964159, 37.998631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.241495, 31.745308, 37.989830>,  <27.077965, 31.380558, 37.975166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.241495, 31.745308, 37.989830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291622, -0.168599, 0.941558,
		0.864766, -0.374240, -0.334850,
		0.408824, 0.911877, 0.036662,
		27.364141, 32.018871, 38.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741104, 31.356661, 38.360283>,  <27.077965, 31.380558, 37.975166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741104, 31.356661, 38.360283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568092, 31.715939, 38.391689>,  <27.464285, 31.931505, 38.410534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.568092, 31.715939, 38.391689>,  <27.741104, 31.356661, 38.360283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568092, 31.715939, 38.391689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143685, -0.017306, 0.989472,
		0.890097, 0.439258, -0.121571,
		-0.432529, 0.898195, 0.078518,
		27.438334, 31.985397, 38.415245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715668, 30.879364, 38.934448>,  <27.741104, 31.356661, 38.360283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715668, 30.879364, 38.934448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.918018, 30.790474, 39.267845>,  <28.039429, 30.737141, 39.467884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.918018, 30.790474, 39.267845>,  <27.715668, 30.879364, 38.934448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918018, 30.790474, 39.267845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723530, 0.416792, 0.550263,
		-0.469673, -0.881420, 0.050061,
		0.505878, -0.222223, 0.833489,
		28.069782, 30.723806, 39.517891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021101, 30.528851, 38.390133>,  <27.715668, 30.879364, 38.934448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021101, 30.528851, 38.390133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.286236, 30.246693, 38.490582>,  <28.445316, 30.077398, 38.550850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.286236, 30.246693, 38.490582>,  <28.021101, 30.528851, 38.390133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286236, 30.246693, 38.490582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486758, 0.151096, -0.860370,
		0.568956, 0.692524, 0.443509,
		0.662839, -0.705394, 0.251125,
		28.485088, 30.035074, 38.565918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519552, 30.789515, 37.983906>,  <28.021101, 30.528851, 38.390133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519552, 30.789515, 37.983906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673752, 30.435799, 38.089294>,  <28.766272, 30.223568, 38.152527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.673752, 30.435799, 38.089294>,  <28.519552, 30.789515, 37.983906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673752, 30.435799, 38.089294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195440, -0.200810, -0.959937,
		0.901772, 0.421548, 0.095414,
		0.385500, -0.884292, 0.263473,
		28.789402, 30.170511, 38.168335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013666, 30.732847, 37.585449>,  <28.519552, 30.789515, 37.983906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013666, 30.732847, 37.585449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962456, 30.357010, 37.712429>,  <28.931730, 30.131508, 37.788616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.962456, 30.357010, 37.712429>,  <29.013666, 30.732847, 37.585449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962456, 30.357010, 37.712429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059265, -0.326760, -0.943247,
		0.989999, -0.101945, 0.097518,
		-0.128025, -0.939593, 0.317450,
		28.924047, 30.075132, 37.807663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.585535, 30.382053, 37.263500>,  <29.013666, 30.732847, 37.585449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.585535, 30.382053, 37.263500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298340, 30.119041, 37.354847>,  <29.126022, 29.961233, 37.409653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.298340, 30.119041, 37.354847>,  <29.585535, 30.382053, 37.263500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298340, 30.119041, 37.354847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032204, -0.359110, -0.932739,
		0.695313, -0.662339, 0.279011,
		-0.717986, -0.657531, 0.228363,
		29.082945, 29.921782, 37.423355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947718, 29.717272, 37.051853>,  <29.585535, 30.382053, 37.263500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947718, 29.717272, 37.051853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548086, 29.703136, 37.061569>,  <29.308308, 29.694656, 37.067398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.548086, 29.703136, 37.061569>,  <29.947718, 29.717272, 37.051853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548086, 29.703136, 37.061569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017756, -0.174702, -0.984461,
		0.039032, -0.983987, 0.173913,
		-0.999080, -0.035337, 0.024291,
		29.248362, 29.692535, 37.068855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673199, 29.139776, 36.512440>,  <29.947718, 29.717272, 37.051853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673199, 29.139776, 36.512440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368423, 29.379028, 36.611786>,  <29.185558, 29.522579, 36.671394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.368423, 29.379028, 36.611786>,  <29.673199, 29.139776, 36.512440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368423, 29.379028, 36.611786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206328, 0.139324, -0.968513,
		-0.613902, -0.789194, 0.017255,
		-0.761940, 0.598133, 0.248364,
		29.139841, 29.558468, 36.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150839, 28.825714, 36.033676>,  <29.673199, 29.139776, 36.512440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150839, 28.825714, 36.033676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009388, 29.174297, 36.169624>,  <28.924517, 29.383448, 36.251194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009388, 29.174297, 36.169624>,  <29.150839, 28.825714, 36.033676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009388, 29.174297, 36.169624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196947, 0.285830, -0.937823,
		-0.914417, -0.398577, 0.070553,
		-0.353629, 0.871457, 0.339867,
		28.903299, 29.435734, 36.271584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479818, 28.934628, 35.773628>,  <29.150839, 28.825714, 36.033676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479818, 28.934628, 35.773628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644083, 29.293880, 35.836521>,  <28.742641, 29.509432, 35.874256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644083, 29.293880, 35.836521>,  <28.479818, 28.934628, 35.773628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644083, 29.293880, 35.836521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358804, 0.317707, -0.877680,
		-0.838223, 0.304014, 0.452722,
		0.410660, 0.898130, 0.157228,
		28.767281, 29.563320, 35.883690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031984, 29.271067, 35.322720>,  <28.479818, 28.934628, 35.773628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031984, 29.271067, 35.322720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.329153, 29.513577, 35.436207>,  <28.507454, 29.659082, 35.504299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.329153, 29.513577, 35.436207>,  <28.031984, 29.271067, 35.322720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329153, 29.513577, 35.436207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069076, 0.491031, -0.868399,
		-0.665802, 0.625556, 0.406678,
		0.742924, 0.606274, 0.283719,
		28.552031, 29.695459, 35.521324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784428, 29.996237, 35.243755>,  <28.031984, 29.271067, 35.322720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784428, 29.996237, 35.243755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.182890, 29.967018, 35.224426>,  <28.421968, 29.949488, 35.212830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.182890, 29.967018, 35.224426>,  <27.784428, 29.996237, 35.243755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182890, 29.967018, 35.224426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005215, 0.501290, -0.865264,
		0.087427, 0.862191, 0.498983,
		0.996157, -0.073045, -0.048322,
		28.481737, 29.945105, 35.209930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.991522, 30.607430, 35.072906>,  <27.784428, 29.996237, 35.243755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.991522, 30.607430, 35.072906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323820, 30.402550, 34.985714>,  <28.523199, 30.279623, 34.933399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.323820, 30.402550, 34.985714>,  <27.991522, 30.607430, 35.072906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323820, 30.402550, 34.985714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046562, 0.454153, -0.889706,
		0.554700, 0.728971, 0.401135,
		0.830747, -0.512198, -0.217977,
		28.573044, 30.248890, 34.920322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458265, 31.038172, 34.900429>,  <27.991522, 30.607430, 35.072906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458265, 31.038172, 34.900429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619585, 30.707584, 34.743305>,  <28.716377, 30.509232, 34.649033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.619585, 30.707584, 34.743305>,  <28.458265, 31.038172, 34.900429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619585, 30.707584, 34.743305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357474, 0.537452, -0.763778,
		0.842356, 0.167611, 0.512195,
		0.403298, -0.826469, -0.392809,
		28.740574, 30.459644, 34.625462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993946, 31.286766, 34.560459>,  <28.458265, 31.038172, 34.900429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993946, 31.286766, 34.560459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.959455, 30.920902, 34.402493>,  <28.938761, 30.701384, 34.307713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.959455, 30.920902, 34.402493>,  <28.993946, 31.286766, 34.560459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959455, 30.920902, 34.402493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386433, 0.334657, -0.859462,
		0.918278, -0.226719, 0.324598,
		-0.086227, -0.914660, -0.394919,
		28.933588, 30.646503, 34.284016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568453, 31.195477, 34.202839>,  <28.993946, 31.286766, 34.560459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568453, 31.195477, 34.202839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286108, 30.980312, 34.018486>,  <29.116701, 30.851213, 33.907875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286108, 30.980312, 34.018486>,  <29.568453, 31.195477, 34.202839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286108, 30.980312, 34.018486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320013, 0.338296, -0.884956,
		0.631941, -0.772145, -0.066652,
		-0.705862, -0.537911, -0.460880,
		29.074348, 30.818939, 33.880222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387199, 30.980404, 34.093327>,  <29.568453, 31.195477, 34.202839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387199, 30.980404, 34.093327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714550, 31.206581, 34.134380>,  <30.910959, 31.342287, 34.159012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.714550, 31.206581, 34.134380>,  <30.387199, 30.980404, 34.093327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714550, 31.206581, 34.134380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209803, 0.127696, 0.969369,
		0.535018, -0.814841, 0.223135,
		0.818375, 0.565444, 0.102637,
		30.960062, 31.376215, 34.165173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678001, 30.755981, 34.657959>,  <30.387199, 30.980404, 34.093327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678001, 30.755981, 34.657959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.820408, 31.127930, 34.620880>,  <30.905851, 31.351099, 34.598633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.820408, 31.127930, 34.620880>,  <30.678001, 30.755981, 34.657959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820408, 31.127930, 34.620880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323079, 0.215557, 0.921496,
		0.876853, -0.298121, 0.377163,
		0.356018, 0.929870, -0.092695,
		30.927214, 31.406891, 34.593071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125923, 30.767515, 35.173298>,  <30.678001, 30.755981, 34.657959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125923, 30.767515, 35.173298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042318, 31.145054, 35.070950>,  <30.992155, 31.371576, 35.009541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042318, 31.145054, 35.070950>,  <31.125923, 30.767515, 35.173298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042318, 31.145054, 35.070950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081517, 0.243921, 0.966363,
		0.974510, 0.222839, 0.025957,
		-0.209012, 0.943846, -0.255869,
		30.979614, 31.428207, 34.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579727, 31.284073, 35.615845>,  <31.125923, 30.767515, 35.173298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579727, 31.284073, 35.615845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272297, 31.507603, 35.491261>,  <31.087839, 31.641720, 35.416508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.272297, 31.507603, 35.491261>,  <31.579727, 31.284073, 35.615845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272297, 31.507603, 35.491261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020012, 0.465604, 0.884767,
		0.639448, 0.686241, -0.346667,
		-0.768573, 0.558825, -0.311463,
		31.041725, 31.675251, 35.397823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722828, 32.060989, 35.713387>,  <31.579727, 31.284073, 35.615845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722828, 32.060989, 35.713387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327633, 31.999378, 35.718330>,  <31.090515, 31.962412, 35.721298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.327633, 31.999378, 35.718330>,  <31.722828, 32.060989, 35.713387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327633, 31.999378, 35.718330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049539, 0.391517, 0.918836,
		-0.146362, 0.907188, -0.394445,
		-0.987990, -0.154024, 0.012362,
		31.031237, 31.953171, 35.722038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473967, 32.710106, 35.965553>,  <31.722828, 32.060989, 35.713387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473967, 32.710106, 35.965553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148960, 32.478703, 35.994232>,  <30.953957, 32.339859, 36.011440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.148960, 32.478703, 35.994232>,  <31.473967, 32.710106, 35.965553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148960, 32.478703, 35.994232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207443, 0.401881, 0.891885,
		-0.544777, 0.709801, -0.446543,
		-0.812518, -0.578511, 0.071693,
		30.905205, 32.305149, 36.015739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859163, 33.139961, 36.277561>,  <31.473967, 32.710106, 35.965553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859163, 33.139961, 36.277561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771900, 32.752625, 36.326099>,  <30.719543, 32.520222, 36.355221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771900, 32.752625, 36.326099>,  <30.859163, 33.139961, 36.277561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771900, 32.752625, 36.326099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195423, 0.165167, 0.966711,
		-0.956147, 0.187181, -0.225268,
		-0.218157, -0.968341, 0.121344,
		30.706453, 32.462124, 36.362503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360981, 33.759514, 36.413971>,  <30.859163, 33.139961, 36.277561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360981, 33.759514, 36.413971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.572901, 34.086590, 36.504032>,  <30.700052, 34.282837, 36.558067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.572901, 34.086590, 36.504032>,  <30.360981, 33.759514, 36.413971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572901, 34.086590, 36.504032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419182, -0.021678, -0.907643,
		-0.737293, 0.575246, -0.354247,
		0.529798, 0.817693, 0.225150,
		30.731840, 34.331898, 36.571579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287039, 34.329006, 35.884422>,  <30.360981, 33.759514, 36.413971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287039, 34.329006, 35.884422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633692, 34.375530, 36.078503>,  <30.841684, 34.403446, 36.194950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633692, 34.375530, 36.078503>,  <30.287039, 34.329006, 35.884422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633692, 34.375530, 36.078503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489470, -0.009561, -0.871968,
		-0.096782, 0.993167, -0.065218,
		0.866633, 0.116313, 0.485200,
		30.893682, 34.410423, 36.224064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632915, 34.816864, 35.337322>,  <30.287039, 34.329006, 35.884422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632915, 34.816864, 35.337322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883427, 34.638817, 35.593338>,  <31.033733, 34.531990, 35.746948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883427, 34.638817, 35.593338>,  <30.632915, 34.816864, 35.337322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883427, 34.638817, 35.593338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707345, -0.020743, -0.706564,
		0.327782, 0.895231, 0.301861,
		0.626277, -0.445119, 0.640036,
		31.071310, 34.505280, 35.785347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123861, 35.233109, 35.252129>,  <30.632915, 34.816864, 35.337322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123861, 35.233109, 35.252129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283384, 34.911137, 35.427872>,  <31.379099, 34.717953, 35.533318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.283384, 34.911137, 35.427872>,  <31.123861, 35.233109, 35.252129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283384, 34.911137, 35.427872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653347, -0.086796, -0.752067,
		0.643498, 0.586983, 0.491286,
		0.398808, -0.804933, 0.439356,
		31.403027, 34.669655, 35.559677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827158, 35.364765, 35.233284>,  <31.123861, 35.233109, 35.252129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827158, 35.364765, 35.233284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766291, 34.972282, 35.280754>,  <31.729771, 34.736794, 35.309235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.766291, 34.972282, 35.280754>,  <31.827158, 35.364765, 35.233284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766291, 34.972282, 35.280754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590396, -0.186532, -0.785263,
		0.792640, -0.049427, 0.607683,
		-0.152166, -0.981205, 0.118671,
		31.720640, 34.677921, 35.316357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499256, 35.009151, 35.118858>,  <31.827158, 35.364765, 35.233284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499256, 35.009151, 35.118858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210323, 34.752930, 35.014606>,  <32.036964, 34.599197, 34.952053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.210323, 34.752930, 35.014606>,  <32.499256, 35.009151, 35.118858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210323, 34.752930, 35.014606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444164, -0.140853, -0.884805,
		0.530054, -0.754885, 0.386253,
		-0.722331, -0.640553, -0.260633,
		31.993624, 34.560764, 34.936417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872791, 34.473503, 34.766338>,  <32.499256, 35.009151, 35.118858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872791, 34.473503, 34.766338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505135, 34.376488, 34.642174>,  <32.284542, 34.318279, 34.567673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505135, 34.376488, 34.642174>,  <32.872791, 34.473503, 34.766338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505135, 34.376488, 34.642174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373897, -0.289018, -0.881289,
		0.124033, -0.926090, 0.356333,
		-0.919140, -0.242541, -0.310414,
		32.229393, 34.303726, 34.549049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<28.467829, 35.009468, 38.260826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.418707, 34.653400, 38.085323>,  <28.389235, 34.439758, 37.980022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.418707, 34.653400, 38.085323>,  <28.467829, 35.009468, 38.260826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418707, 34.653400, 38.085323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031596, 0.438375, -0.898237,
		0.991928, -0.124171, -0.025708,
		-0.122804, -0.890174, -0.438760,
		28.381865, 34.386349, 37.953697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862381, 35.048199, 37.743309>,  <28.467829, 35.009468, 38.260826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862381, 35.048199, 37.743309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.632984, 34.739147, 37.634388>,  <28.495346, 34.553715, 37.569035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.632984, 34.739147, 37.634388>,  <28.862381, 35.048199, 37.743309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632984, 34.739147, 37.634388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158917, 0.431006, -0.888245,
		0.803648, -0.466129, -0.369963,
		-0.573493, -0.772630, -0.272302,
		28.460936, 34.507359, 37.552696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082438, 34.841503, 37.077759>,  <28.862381, 35.048199, 37.743309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082438, 34.841503, 37.077759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717167, 34.685360, 37.124634>,  <28.498005, 34.591675, 37.152760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717167, 34.685360, 37.124634>,  <29.082438, 34.841503, 37.077759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717167, 34.685360, 37.124634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196792, 0.170519, -0.965503,
		0.356906, -0.904736, -0.232533,
		-0.913176, -0.390354, 0.117186,
		28.443214, 34.568253, 37.159790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949308, 34.511265, 36.414375>,  <29.082438, 34.841503, 37.077759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949308, 34.511265, 36.414375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573708, 34.533970, 36.550053>,  <28.348347, 34.547592, 36.631458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.573708, 34.533970, 36.550053>,  <28.949308, 34.511265, 36.414375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573708, 34.533970, 36.550053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319196, 0.223269, -0.921013,
		-0.128014, -0.973102, -0.191531,
		-0.939003, 0.056767, 0.339192,
		28.292007, 34.550999, 36.651810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491318, 34.087696, 35.961639>,  <28.949308, 34.511265, 36.414375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491318, 34.087696, 35.961639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268225, 34.357372, 36.155296>,  <28.134369, 34.519180, 36.271492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.268225, 34.357372, 36.155296>,  <28.491318, 34.087696, 35.961639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268225, 34.357372, 36.155296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360449, 0.328687, -0.872950,
		-0.747670, -0.661382, 0.059693,
		-0.557734, 0.674194, 0.484144,
		28.100904, 34.559631, 36.300541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845354, 33.994892, 35.641350>,  <28.491318, 34.087696, 35.961639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845354, 33.994892, 35.641350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879801, 34.358776, 35.803837>,  <27.900469, 34.577106, 35.901329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.879801, 34.358776, 35.803837>,  <27.845354, 33.994892, 35.641350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879801, 34.358776, 35.803837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394741, 0.405514, -0.824462,
		-0.914748, -0.089350, 0.394022,
		0.086116, 0.909711, 0.406213,
		27.905636, 34.631691, 35.925701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233576, 34.260197, 35.475719>,  <27.845354, 33.994892, 35.641350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233576, 34.260197, 35.475719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.472557, 34.570713, 35.556145>,  <27.615946, 34.757023, 35.604401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.472557, 34.570713, 35.556145>,  <27.233576, 34.260197, 35.475719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472557, 34.570713, 35.556145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313828, 0.457084, -0.832218,
		-0.737946, 0.434109, 0.516706,
		0.597452, 0.776288, 0.201068,
		27.651793, 34.803600, 35.616467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829575, 34.856441, 35.264454>,  <27.233576, 34.260197, 35.475719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829575, 34.856441, 35.264454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180187, 35.045757, 35.299534>,  <27.390554, 35.159348, 35.320580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.180187, 35.045757, 35.299534>,  <26.829575, 34.856441, 35.264454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180187, 35.045757, 35.299534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179941, 0.491171, -0.852275,
		-0.446445, 0.731266, 0.515691,
		0.876532, 0.473288, 0.087696,
		27.443148, 35.187744, 35.325844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663958, 35.458424, 35.172977>,  <26.829575, 34.856441, 35.264454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663958, 35.458424, 35.172977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.059456, 35.472473, 35.114811>,  <27.296755, 35.480904, 35.079910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.059456, 35.472473, 35.114811>,  <26.663958, 35.458424, 35.172977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059456, 35.472473, 35.114811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124736, 0.730188, -0.671764,
		0.082582, 0.682343, 0.726353,
		0.988747, 0.035127, -0.145413,
		27.356079, 35.483009, 35.071186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829039, 36.186966, 35.159985>,  <26.663958, 35.458424, 35.172977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829039, 36.186966, 35.159985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.121256, 35.979362, 34.982475>,  <27.296587, 35.854801, 34.875969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.121256, 35.979362, 34.982475>,  <26.829039, 36.186966, 35.159985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121256, 35.979362, 34.982475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148399, 0.513678, -0.845052,
		0.666547, 0.683203, 0.298243,
		0.730543, -0.519008, -0.443777,
		27.340418, 35.823662, 34.849342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323404, 36.761703, 34.854855>,  <26.829039, 36.186966, 35.159985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323404, 36.761703, 34.854855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.448271, 36.432213, 34.665531>,  <27.523191, 36.234516, 34.551937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.448271, 36.432213, 34.665531>,  <27.323404, 36.761703, 34.854855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448271, 36.432213, 34.665531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100498, 0.524041, -0.845743,
		0.944697, 0.216448, 0.246372,
		0.312168, -0.823730, -0.473307,
		27.541922, 36.185093, 34.523540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943995, 36.916111, 34.486286>,  <27.323404, 36.761703, 34.854855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943995, 36.916111, 34.486286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.782579, 36.599201, 34.303219>,  <27.685730, 36.409054, 34.193378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.782579, 36.599201, 34.303219>,  <27.943995, 36.916111, 34.486286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782579, 36.599201, 34.303219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189290, 0.417094, -0.888933,
		0.895170, -0.445348, -0.018343,
		-0.403535, -0.792274, -0.457670,
		27.661518, 36.361519, 34.165916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697271, 36.934841, 34.805637>,  <27.943995, 36.916111, 34.486286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697271, 36.934841, 34.805637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.982418, 37.205921, 34.877808>,  <29.153505, 37.368568, 34.921108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.982418, 37.205921, 34.877808>,  <28.697271, 36.934841, 34.805637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.982418, 37.205921, 34.877808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150791, -0.103134, 0.983171,
		0.684899, -0.728074, 0.028670,
		0.712864, 0.677696, 0.180423,
		29.196278, 37.409229, 34.931934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097731, 36.594120, 35.212791>,  <28.697271, 36.934841, 34.805637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097731, 36.594120, 35.212791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173443, 36.983311, 35.265701>,  <29.218870, 37.216824, 35.297447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.173443, 36.983311, 35.265701>,  <29.097731, 36.594120, 35.212791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173443, 36.983311, 35.265701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011538, -0.132496, 0.991116,
		0.981855, -0.189126, -0.013853,
		0.189281, 0.972973, 0.132274,
		29.230227, 37.275204, 35.305382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648165, 36.609123, 35.668232>,  <29.097731, 36.594120, 35.212791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648165, 36.609123, 35.668232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.491819, 36.974735, 35.711628>,  <29.398012, 37.194103, 35.737667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.491819, 36.974735, 35.711628>,  <29.648165, 36.609123, 35.668232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491819, 36.974735, 35.711628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077746, -0.150232, 0.985589,
		0.917159, 0.376798, 0.129783,
		-0.390865, 0.914032, 0.108492,
		29.374559, 37.248943, 35.744175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966337, 36.864662, 36.226215>,  <29.648165, 36.609123, 35.668232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966337, 36.864662, 36.226215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.626463, 37.072708, 36.191547>,  <29.422539, 37.197536, 36.170746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.626463, 37.072708, 36.191547>,  <29.966337, 36.864662, 36.226215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626463, 37.072708, 36.191547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224521, -0.208146, 0.951980,
		0.477097, 0.828345, 0.293636,
		-0.849687, 0.520114, -0.086674,
		29.371557, 37.228741, 36.165546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881262, 37.258144, 36.845028>,  <29.966337, 36.864662, 36.226215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881262, 37.258144, 36.845028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.505817, 37.280285, 36.708824>,  <29.280550, 37.293568, 36.627102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.505817, 37.280285, 36.708824>,  <29.881262, 37.258144, 36.845028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505817, 37.280285, 36.708824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339634, 0.024816, 0.940230,
		0.060491, 0.998159, -0.004494,
		-0.938610, 0.055349, -0.340510,
		29.224234, 37.296890, 36.606670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633112, 37.816792, 37.133408>,  <29.881262, 37.258144, 36.845028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633112, 37.816792, 37.133408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304041, 37.607594, 37.044250>,  <29.106598, 37.482075, 36.990757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304041, 37.607594, 37.044250>,  <29.633112, 37.816792, 37.133408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304041, 37.607594, 37.044250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295206, 0.057917, 0.953677,
		-0.485855, 0.850368, -0.202037,
		-0.822677, -0.522991, -0.222894,
		29.057238, 37.450695, 36.977383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070217, 38.149055, 37.478531>,  <29.633112, 37.816792, 37.133408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070217, 38.149055, 37.478531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.928434, 37.778992, 37.424210>,  <28.843365, 37.556953, 37.391617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.928434, 37.778992, 37.424210>,  <29.070217, 38.149055, 37.478531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928434, 37.778992, 37.424210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279241, -0.033874, 0.959623,
		-0.892403, 0.378069, -0.246335,
		-0.354459, -0.925158, -0.135802,
		28.822096, 37.501446, 37.383469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443314, 38.120495, 37.879612>,  <29.070217, 38.149055, 37.478531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443314, 38.120495, 37.879612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.513411, 37.731762, 37.816578>,  <28.555470, 37.498524, 37.778759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.513411, 37.731762, 37.816578>,  <28.443314, 38.120495, 37.879612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513411, 37.731762, 37.816578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286007, -0.203411, 0.936389,
		-0.942067, -0.119025, -0.313597,
		0.175243, -0.971832, -0.157584,
		28.565983, 37.440212, 37.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951996, 37.735134, 38.277882>,  <28.443314, 38.120495, 37.879612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951996, 37.735134, 38.277882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255587, 37.483761, 38.209736>,  <28.437742, 37.332935, 38.168846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.255587, 37.483761, 38.209736>,  <27.951996, 37.735134, 38.277882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255587, 37.483761, 38.209736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064919, -0.333390, 0.940551,
		-0.647872, -0.702797, -0.293833,
		0.758978, -0.628432, -0.170369,
		28.483280, 37.295231, 38.158627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742762, 36.988529, 38.500771>,  <27.951996, 37.735134, 38.277882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742762, 36.988529, 38.500771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.141914, 36.963001, 38.505856>,  <28.381405, 36.947685, 38.508907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.141914, 36.963001, 38.505856>,  <27.742762, 36.988529, 38.500771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.141914, 36.963001, 38.505856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045736, -0.548838, 0.834676,
		-0.046297, -0.833489, -0.550594,
		0.997880, -0.063824, 0.012711,
		28.441278, 36.943855, 38.509670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871449, 36.351753, 38.654491>,  <27.742762, 36.988529, 38.500771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871449, 36.351753, 38.654491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.225630, 36.512642, 38.747608>,  <28.438139, 36.609177, 38.803478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.225630, 36.512642, 38.747608>,  <27.871449, 36.351753, 38.654491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.225630, 36.512642, 38.747608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039351, -0.434230, 0.899942,
		0.463061, -0.806017, -0.368662,
		0.885452, 0.402221, 0.232793,
		28.491266, 36.633308, 38.817448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238955, 35.741932, 38.922817>,  <27.871449, 36.351753, 38.654491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.238955, 35.741932, 38.922817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.407057, 36.081741, 39.050377>,  <28.507917, 36.285625, 39.126915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.407057, 36.081741, 39.050377>,  <28.238955, 35.741932, 38.922817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407057, 36.081741, 39.050377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123293, -0.401643, 0.907459,
		0.898992, -0.342044, -0.273532,
		0.420253, 0.849523, 0.318902,
		28.533133, 36.336597, 39.146046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834507, 35.586487, 39.293339>,  <28.238955, 35.741932, 38.922817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834507, 35.586487, 39.293339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766428, 35.951546, 39.441994>,  <28.725580, 36.170582, 39.531185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.766428, 35.951546, 39.441994>,  <28.834507, 35.586487, 39.293339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766428, 35.951546, 39.441994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170858, -0.344093, 0.923259,
		0.970484, 0.220635, -0.097368,
		-0.170200, 0.912644, 0.371635,
		28.715368, 36.225338, 39.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287420, 35.622040, 39.751850>,  <28.834507, 35.586487, 39.293339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287420, 35.622040, 39.751850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.026331, 35.908749, 39.849983>,  <28.869677, 36.080776, 39.908863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.026331, 35.908749, 39.849983>,  <29.287420, 35.622040, 39.751850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026331, 35.908749, 39.849983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040642, -0.356488, 0.933416,
		0.756504, 0.599293, 0.261820,
		-0.652725, 0.716774, 0.245328,
		28.830513, 36.123779, 39.923580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822227, 35.779797, 39.380325>,  <29.287420, 35.622040, 39.751850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822227, 35.779797, 39.380325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.941761, 35.401127, 39.428513>,  <30.013481, 35.173927, 39.457424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.941761, 35.401127, 39.428513>,  <29.822227, 35.779797, 39.380325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941761, 35.401127, 39.428513> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330642, -0.015709, -0.943626,
		0.895195, 0.321819, 0.308314,
		0.298833, -0.946671, 0.120469,
		30.031410, 35.117126, 39.464653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531944, 35.802208, 39.122620>,  <29.822227, 35.779797, 39.380325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531944, 35.802208, 39.122620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384399, 35.430695, 39.108147>,  <30.295872, 35.207787, 39.099464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.384399, 35.430695, 39.108147>,  <30.531944, 35.802208, 39.122620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384399, 35.430695, 39.108147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277977, -0.073085, -0.957804,
		0.886944, -0.363356, 0.285137,
		-0.368863, -0.928779, -0.036183,
		30.273741, 35.152061, 39.097290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862278, 35.495052, 38.684666>,  <30.531944, 35.802208, 39.122620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862278, 35.495052, 38.684666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.602865, 35.190578, 38.684608>,  <30.447218, 35.007893, 38.684574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.602865, 35.190578, 38.684608>,  <30.862278, 35.495052, 38.684666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602865, 35.190578, 38.684608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207380, -0.176511, -0.962204,
		0.732395, -0.624047, 0.272328,
		-0.648530, -0.761189, -0.000139,
		30.408306, 34.962223, 38.684566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272251, 34.923626, 38.493965>,  <30.862278, 35.495052, 38.684666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272251, 34.923626, 38.493965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896692, 34.816891, 38.407001>,  <30.671356, 34.752850, 38.354824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.896692, 34.816891, 38.407001>,  <31.272251, 34.923626, 38.493965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896692, 34.816891, 38.407001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275205, -0.202649, -0.939785,
		0.206716, -0.942194, 0.263702,
		-0.938899, -0.266840, -0.217406,
		30.615023, 34.736839, 38.341782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328541, 34.207165, 38.149921>,  <31.272251, 34.923626, 38.493965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328541, 34.207165, 38.149921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997694, 34.402470, 38.038578>,  <30.799187, 34.519653, 37.971771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997694, 34.402470, 38.038578>,  <31.328541, 34.207165, 38.149921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997694, 34.402470, 38.038578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193153, -0.218161, -0.956607,
		-0.527800, -0.844990, 0.086135,
		-0.827115, 0.488260, -0.278358,
		30.749559, 34.548946, 37.955070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095325, 33.809456, 37.700687>,  <31.328541, 34.207165, 38.149921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095325, 33.809456, 37.700687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900976, 34.146694, 37.608501>,  <30.784367, 34.349037, 37.553188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900976, 34.146694, 37.608501>,  <31.095325, 33.809456, 37.700687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900976, 34.146694, 37.608501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091937, -0.212924, -0.972734,
		-0.869181, -0.493813, 0.025942,
		-0.485872, 0.843096, -0.230469,
		30.755215, 34.399624, 37.539360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512001, 33.673058, 37.196686>,  <31.095325, 33.809456, 37.700687>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512001, 33.673058, 37.196686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.619400, 34.055412, 37.149036>,  <30.683840, 34.284824, 37.120445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.619400, 34.055412, 37.149036>,  <30.512001, 33.673058, 37.196686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619400, 34.055412, 37.149036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076676, -0.144483, -0.986532,
		-0.960224, 0.255748, -0.112087,
		0.268498, 0.955886, -0.119127,
		30.699949, 34.342178, 37.113300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233862, 33.189487, 36.817905>,  <30.512001, 33.673058, 37.196686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233862, 33.189487, 36.817905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345392, 32.805466, 36.827267>,  <30.412310, 32.575050, 36.832886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.345392, 32.805466, 36.827267>,  <30.233862, 33.189487, 36.817905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345392, 32.805466, 36.827267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270268, -0.055060, 0.961209,
		-0.921527, -0.274334, -0.274825,
		0.278824, -0.960057, 0.023405,
		30.429039, 32.517448, 36.834290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616077, 32.768211, 37.105331>,  <30.233862, 33.189487, 36.817905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616077, 32.768211, 37.105331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.961525, 32.574341, 37.160824>,  <30.168795, 32.458019, 37.194118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.961525, 32.574341, 37.160824>,  <29.616077, 32.768211, 37.105331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961525, 32.574341, 37.160824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269860, -0.211988, 0.939274,
		-0.425837, -0.848615, -0.313873,
		0.863619, -0.484679, 0.138735,
		30.220612, 32.428936, 37.202446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470900, 32.018566, 37.302273>,  <29.616077, 32.768211, 37.105331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470900, 32.018566, 37.302273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.834703, 32.125851, 37.429302>,  <30.052986, 32.190220, 37.505520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.834703, 32.125851, 37.429302>,  <29.470900, 32.018566, 37.302273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834703, 32.125851, 37.429302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212948, -0.355482, 0.910102,
		0.356990, -0.895375, -0.266200,
		0.909512, 0.268211, 0.317572,
		30.107557, 32.206314, 37.524574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717634, 31.464727, 37.782898>,  <29.470900, 32.018566, 37.302273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717634, 31.464727, 37.782898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.962732, 31.765114, 37.881355>,  <30.109791, 31.945347, 37.940430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.962732, 31.765114, 37.881355>,  <29.717634, 31.464727, 37.782898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962732, 31.765114, 37.881355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090637, -0.242632, 0.965875,
		0.785064, -0.614147, -0.080607,
		0.612747, 0.750968, 0.246146,
		30.146557, 31.990404, 37.955200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182474, 31.191570, 38.273098>,  <29.717634, 31.464727, 37.782898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182474, 31.191570, 38.273098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195333, 31.590508, 38.299255>,  <30.203049, 31.829870, 38.314949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.195333, 31.590508, 38.299255>,  <30.182474, 31.191570, 38.273098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195333, 31.590508, 38.299255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176542, -0.058733, 0.982539,
		0.983768, -0.043132, 0.174185,
		0.032149, 0.997342, 0.065394,
		30.204979, 31.889709, 38.318874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574888, 31.254444, 38.825092>,  <30.182474, 31.191570, 38.273098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574888, 31.254444, 38.825092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.375355, 31.597557, 38.775497>,  <30.255634, 31.803425, 38.745739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.375355, 31.597557, 38.775497>,  <30.574888, 31.254444, 38.825092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375355, 31.597557, 38.775497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281357, -0.024958, 0.959278,
		0.819756, 0.513409, 0.253793,
		-0.498836, 0.857781, -0.123992,
		30.225704, 31.854891, 38.738300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756079, 31.613365, 39.533775>,  <30.574888, 31.254444, 38.825092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756079, 31.613365, 39.533775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422504, 31.759201, 39.368065>,  <30.222359, 31.846703, 39.268639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422504, 31.759201, 39.368065>,  <30.756079, 31.613365, 39.533775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422504, 31.759201, 39.368065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448333, -0.009878, 0.893812,
		0.321784, 0.931115, 0.171696,
		-0.833938, 0.364591, -0.414271,
		30.172323, 31.868578, 39.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486982, 32.139145, 39.999989>,  <30.756079, 31.613365, 39.533775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486982, 32.139145, 39.999989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.179148, 32.024796, 39.771599>,  <29.994446, 31.956186, 39.634563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.179148, 32.024796, 39.771599>,  <30.486982, 32.139145, 39.999989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179148, 32.024796, 39.771599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599645, 0.016237, 0.800101,
		-0.219453, 0.958131, -0.183916,
		-0.769588, -0.285869, -0.570975,
		29.948271, 31.939035, 39.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923109, 32.574459, 40.238327>,  <30.486982, 32.139145, 39.999989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923109, 32.574459, 40.238327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.758097, 32.252644, 40.067429>,  <29.659090, 32.059555, 39.964890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.758097, 32.252644, 40.067429>,  <29.923109, 32.574459, 40.238327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758097, 32.252644, 40.067429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561187, -0.144998, 0.814890,
		-0.717558, 0.575932, -0.391679,
		-0.412529, -0.804536, -0.427250,
		29.634338, 32.011284, 39.939255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.486532, 34.206722, 24.564102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165619, 33.981564, 24.484615>,  <30.973070, 33.846470, 24.436922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165619, 33.981564, 24.484615>,  <31.486532, 34.206722, 24.564102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165619, 33.981564, 24.484615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288080, -0.656659, 0.696999,
		-0.522827, 0.501945, 0.688987,
		-0.802285, -0.562894, -0.198719,
		30.924932, 33.812695, 24.424999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041643, 34.089367, 25.205088>,  <31.486532, 34.206722, 24.564102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041643, 34.089367, 25.205088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967131, 33.768227, 24.978554>,  <30.922422, 33.575542, 24.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.967131, 33.768227, 24.978554>,  <31.041643, 34.089367, 25.205088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967131, 33.768227, 24.978554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080134, -0.586921, 0.805669,
		-0.979223, 0.104699, 0.173668,
		-0.186282, -0.802846, -0.566336,
		30.911245, 33.527374, 24.808653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561831, 33.698208, 25.560064>,  <31.041643, 34.089367, 25.205088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561831, 33.698208, 25.560064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700953, 33.437126, 25.290840>,  <30.784426, 33.280476, 25.129307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700953, 33.437126, 25.290840>,  <30.561831, 33.698208, 25.560064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700953, 33.437126, 25.290840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021737, -0.712072, 0.701770,
		-0.937315, -0.258709, -0.233473,
		0.347804, -0.652705, -0.673059,
		30.805294, 33.241314, 25.088923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097601, 33.102287, 25.494719>,  <30.561831, 33.698208, 25.560064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097601, 33.102287, 25.494719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467009, 32.994343, 25.385693>,  <30.688652, 32.929577, 25.320278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467009, 32.994343, 25.385693>,  <30.097601, 33.102287, 25.494719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467009, 32.994343, 25.385693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041468, -0.636212, 0.770399,
		-0.381306, -0.722780, -0.576364,
		0.923519, -0.269857, -0.272563,
		30.744064, 32.913387, 25.303923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100996, 32.500320, 25.841297>,  <30.097601, 33.102287, 25.494719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100996, 32.500320, 25.841297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482582, 32.552223, 25.733139>,  <30.711535, 32.583363, 25.668243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482582, 32.552223, 25.733139>,  <30.100996, 32.500320, 25.841297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482582, 32.552223, 25.733139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291745, -0.610476, 0.736345,
		-0.069527, -0.781334, -0.620228,
		0.953966, 0.129752, -0.270395,
		30.768772, 32.591148, 25.652020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338060, 31.859623, 25.961527>,  <30.100996, 32.500320, 25.841297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338060, 31.859623, 25.961527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653034, 32.105293, 25.982452>,  <30.842018, 32.252693, 25.995007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653034, 32.105293, 25.982452>,  <30.338060, 31.859623, 25.961527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653034, 32.105293, 25.982452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287040, -0.440469, 0.850644,
		0.545485, -0.654811, -0.523134,
		0.787435, 0.614174, 0.052313,
		30.889265, 32.289547, 25.998146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925348, 31.474228, 26.324055>,  <30.338060, 31.859623, 25.961527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925348, 31.474228, 26.324055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082720, 31.841625, 26.339970>,  <31.177143, 32.062065, 26.349518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082720, 31.841625, 26.339970>,  <30.925348, 31.474228, 26.324055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082720, 31.841625, 26.339970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338091, -0.184790, 0.922793,
		0.854933, -0.349600, -0.383236,
		0.393426, 0.918495, 0.039786,
		31.200748, 32.117172, 26.351906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530458, 31.393719, 26.739170>,  <30.925348, 31.474228, 26.324055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530458, 31.393719, 26.739170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472725, 31.788631, 26.765823>,  <31.438086, 32.025578, 26.781816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472725, 31.788631, 26.765823>,  <31.530458, 31.393719, 26.739170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472725, 31.788631, 26.765823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248257, -0.029058, 0.968258,
		0.957881, 0.156294, -0.240905,
		-0.144333, 0.987283, 0.066635,
		31.429424, 32.084816, 26.785814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083210, 31.659740, 27.088163>,  <31.530458, 31.393719, 26.739170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083210, 31.659740, 27.088163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791742, 31.929703, 27.134708>,  <31.616861, 32.091679, 27.162636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791742, 31.929703, 27.134708>,  <32.083210, 31.659740, 27.088163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791742, 31.929703, 27.134708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267018, 0.123503, 0.955745,
		0.630666, 0.727495, -0.270205,
		-0.728671, 0.674906, 0.116365,
		31.573141, 32.132175, 27.169619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387836, 32.140438, 27.400394>,  <32.083210, 31.659740, 27.088163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387836, 32.140438, 27.400394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000072, 32.201771, 27.477051>,  <31.767414, 32.238571, 27.523045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000072, 32.201771, 27.477051>,  <32.387836, 32.140438, 27.400394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000072, 32.201771, 27.477051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220728, 0.203269, 0.953919,
		0.107315, 0.967042, -0.230897,
		-0.969413, 0.153336, 0.191640,
		31.709248, 32.247772, 27.534542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287243, 32.910851, 27.717709>,  <32.387836, 32.140438, 27.400394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287243, 32.910851, 27.717709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971167, 32.691280, 27.826721>,  <31.781521, 32.559540, 27.892128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971167, 32.691280, 27.826721>,  <32.287243, 32.910851, 27.717709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971167, 32.691280, 27.826721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052967, 0.381858, 0.922702,
		-0.610563, 0.743549, -0.272667,
		-0.790194, -0.548926, 0.272532,
		31.734108, 32.526604, 27.908482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817923, 33.309231, 27.985142>,  <32.287243, 32.910851, 27.717709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817923, 33.309231, 27.985142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725208, 32.950542, 28.135963>,  <31.669580, 32.735329, 28.226456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725208, 32.950542, 28.135963>,  <31.817923, 33.309231, 27.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725208, 32.950542, 28.135963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150244, 0.415959, 0.896886,
		-0.961094, 0.151235, -0.231140,
		-0.231785, -0.896720, 0.377053,
		31.655672, 32.681526, 28.249079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743422, 33.987713, 28.281326>,  <31.817923, 33.309231, 27.985142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743422, 33.987713, 28.281326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041245, 34.192352, 28.452858>,  <32.219940, 34.315136, 28.555777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041245, 34.192352, 28.452858>,  <31.743422, 33.987713, 28.281326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041245, 34.192352, 28.452858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400619, 0.171406, -0.900069,
		-0.533982, 0.841952, -0.077336,
		0.744559, 0.511603, 0.428829,
		32.264610, 34.345833, 28.581507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798510, 34.581867, 27.875401>,  <31.743422, 33.987713, 28.281326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798510, 34.581867, 27.875401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146198, 34.602505, 28.072090>,  <32.354813, 34.614887, 28.190104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146198, 34.602505, 28.072090>,  <31.798510, 34.581867, 27.875401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146198, 34.602505, 28.072090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463351, 0.262001, -0.846559,
		-0.172507, 0.963688, 0.203832,
		0.869223, 0.051591, 0.491722,
		32.406963, 34.617981, 28.219606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004135, 35.207878, 27.729876>,  <31.798510, 34.581867, 27.875401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004135, 35.207878, 27.729876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336487, 35.006489, 27.824673>,  <32.535896, 34.885654, 27.881550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336487, 35.006489, 27.824673>,  <32.004135, 35.207878, 27.729876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336487, 35.006489, 27.824673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423077, 0.294915, -0.856756,
		0.361459, 0.812122, 0.458044,
		0.830875, -0.503470, 0.236991,
		32.585751, 34.855446, 27.895769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556965, 35.658154, 27.639660>,  <32.004135, 35.207878, 27.729876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556965, 35.658154, 27.639660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723484, 35.294708, 27.626301>,  <32.823395, 35.076641, 27.618286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.723484, 35.294708, 27.626301>,  <32.556965, 35.658154, 27.639660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723484, 35.294708, 27.626301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584805, 0.295707, -0.755355,
		0.696201, 0.294924, 0.654464,
		0.416302, -0.908613, -0.033398,
		32.848373, 35.022125, 27.616282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202354, 35.730446, 27.685022>,  <32.556965, 35.658154, 27.639660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202354, 35.730446, 27.685022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211922, 35.369007, 27.513939>,  <33.217663, 35.152142, 27.411289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211922, 35.369007, 27.513939>,  <33.202354, 35.730446, 27.685022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211922, 35.369007, 27.513939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689713, 0.324617, -0.647240,
		0.723688, -0.279515, 0.630989,
		0.023917, -0.903601, -0.427707,
		33.219097, 35.097927, 27.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865467, 35.550018, 27.652380>,  <33.202354, 35.730446, 27.685022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865467, 35.550018, 27.652380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692554, 35.317116, 27.376957>,  <33.588806, 35.177376, 27.211704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692554, 35.317116, 27.376957>,  <33.865467, 35.550018, 27.652380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692554, 35.317116, 27.376957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698988, 0.266047, -0.663804,
		0.569693, -0.768242, 0.291984,
		-0.432280, -0.582257, -0.688557,
		33.562870, 35.142437, 27.170389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323780, 35.279026, 27.281563>,  <33.865467, 35.550018, 27.652380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323780, 35.279026, 27.281563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028763, 35.213867, 27.019421>,  <33.851753, 35.174774, 26.862135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028763, 35.213867, 27.019421>,  <34.323780, 35.279026, 27.281563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028763, 35.213867, 27.019421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612317, 0.247923, -0.750734,
		0.284768, -0.954986, -0.083112,
		-0.737547, -0.162894, -0.655356,
		33.807499, 35.165001, 26.822815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622322, 34.981579, 26.654144>,  <34.323780, 35.279026, 27.281563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622322, 34.981579, 26.654144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275631, 35.107727, 26.499573>,  <34.067616, 35.183418, 26.406830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275631, 35.107727, 26.499573>,  <34.622322, 34.981579, 26.654144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275631, 35.107727, 26.499573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494460, 0.441455, -0.748751,
		-0.065545, -0.840035, -0.538559,
		-0.866726, 0.315372, -0.386428,
		34.015614, 35.202339, 26.383644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573872, 34.671852, 25.857435>,  <34.622322, 34.981579, 26.654144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573872, 34.671852, 25.857435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366192, 34.999012, 25.956612>,  <34.241585, 35.195309, 26.016117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366192, 34.999012, 25.956612>,  <34.573872, 34.671852, 25.857435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366192, 34.999012, 25.956612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516102, 0.531289, -0.671841,
		-0.681224, -0.220860, -0.697965,
		-0.519204, 0.817896, 0.247940,
		34.210430, 35.244381, 26.030994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332153, 34.898506, 25.268278>,  <34.573872, 34.671852, 25.857435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332153, 34.898506, 25.268278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275211, 35.229351, 25.485764>,  <34.241047, 35.427856, 25.616255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275211, 35.229351, 25.485764>,  <34.332153, 34.898506, 25.268278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275211, 35.229351, 25.485764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099576, 0.558487, -0.823515,
		-0.984794, -0.063089, -0.161863,
		-0.142353, 0.827111, 0.543713,
		34.232506, 35.477486, 25.648878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822121, 35.249775, 24.905628>,  <34.332153, 34.898506, 25.268278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822121, 35.249775, 24.905628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017197, 35.515388, 25.132336>,  <34.134243, 35.674755, 25.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017197, 35.515388, 25.132336>,  <33.822121, 35.249775, 24.905628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017197, 35.515388, 25.132336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133014, 0.698143, -0.703494,
		-0.862826, 0.267696, 0.428800,
		0.487686, 0.664029, 0.566769,
		34.163502, 35.714596, 25.302366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452721, 35.898434, 24.736563>,  <33.822121, 35.249775, 24.905628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452721, 35.898434, 24.736563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796978, 36.024036, 24.896912>,  <34.003532, 36.099400, 24.993120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796978, 36.024036, 24.896912>,  <33.452721, 35.898434, 24.736563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796978, 36.024036, 24.896912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037093, 0.746483, -0.664370,
		-0.507861, 0.586653, 0.630806,
		0.860640, 0.314009, 0.400870,
		34.055172, 36.118240, 25.017172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439541, 36.647945, 24.614212>,  <33.452721, 35.898434, 24.736563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439541, 36.647945, 24.614212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821384, 36.582115, 24.713516>,  <34.050491, 36.542618, 24.773098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821384, 36.582115, 24.713516>,  <33.439541, 36.647945, 24.614212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821384, 36.582115, 24.713516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294784, 0.641393, -0.708321,
		-0.042660, 0.749354, 0.660794,
		0.954611, -0.164574, 0.248259,
		34.107769, 36.532742, 24.787994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788517, 37.257423, 24.648874>,  <33.439541, 36.647945, 24.614212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788517, 37.257423, 24.648874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067589, 36.979042, 24.580883>,  <34.235031, 36.812012, 24.540089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067589, 36.979042, 24.580883>,  <33.788517, 37.257423, 24.648874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067589, 36.979042, 24.580883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390053, 0.568017, -0.724717,
		0.600921, 0.439318, 0.667752,
		0.697676, -0.695957, -0.169976,
		34.276890, 36.770256, 24.529890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187374, 37.595436, 24.455978>,  <33.788517, 37.257423, 24.648874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187374, 37.595436, 24.455978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977734, 37.879215, 24.267509>,  <32.851948, 38.049480, 24.154428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977734, 37.879215, 24.267509>,  <33.187374, 37.595436, 24.455978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977734, 37.879215, 24.267509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306027, 0.359414, 0.881572,
		0.794772, 0.606227, 0.028738,
		-0.524104, 0.709443, -0.471174,
		32.820503, 38.092049, 24.126158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435551, 38.265835, 24.745281>,  <33.187374, 37.595436, 24.455978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435551, 38.265835, 24.745281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066433, 38.277058, 24.591568>,  <32.844963, 38.283791, 24.499340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066433, 38.277058, 24.591568>,  <33.435551, 38.265835, 24.745281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066433, 38.277058, 24.591568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349327, 0.359895, 0.865128,
		0.162571, 0.932571, -0.322307,
		-0.922790, 0.028055, -0.384281,
		32.789597, 38.285473, 24.476284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144192, 38.960861, 24.805882>,  <33.435551, 38.265835, 24.745281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144192, 38.960861, 24.805882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844616, 38.696236, 24.790794>,  <32.664871, 38.537460, 24.781742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.844616, 38.696236, 24.790794>,  <33.144192, 38.960861, 24.805882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844616, 38.696236, 24.790794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319687, 0.310880, 0.895072,
		-0.580423, 0.682411, -0.444324,
		-0.748939, -0.661565, -0.037717,
		32.619934, 38.497765, 24.779480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389885, 39.322002, 24.833220>,  <33.144192, 38.960861, 24.805882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389885, 39.322002, 24.833220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397064, 38.953026, 24.987511>,  <32.401371, 38.731640, 25.080086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397064, 38.953026, 24.987511>,  <32.389885, 39.322002, 24.833220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397064, 38.953026, 24.987511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373433, 0.351685, 0.858409,
		-0.927484, -0.159450, -0.338157,
		0.017949, -0.922439, 0.385726,
		32.402451, 38.676292, 25.103228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744406, 39.167015, 25.252211>,  <32.389885, 39.322002, 24.833220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744406, 39.167015, 25.252211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963312, 38.873127, 25.412556>,  <32.094654, 38.696793, 25.508762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963312, 38.873127, 25.412556>,  <31.744406, 39.167015, 25.252211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963312, 38.873127, 25.412556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371548, 0.215902, 0.902961,
		-0.749970, -0.643097, -0.154828,
		0.547264, -0.734720, 0.400861,
		32.127491, 38.652710, 25.532814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253515, 38.653549, 25.627880>,  <31.744406, 39.167015, 25.252211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253515, 38.653549, 25.627880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603361, 38.577961, 25.806469>,  <31.813269, 38.532608, 25.913622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603361, 38.577961, 25.806469>,  <31.253515, 38.653549, 25.627880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603361, 38.577961, 25.806469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481355, -0.228601, 0.846191,
		-0.057838, -0.955004, -0.290898,
		0.874616, -0.188967, 0.446474,
		31.865746, 38.521271, 25.940411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035913, 38.239407, 26.102516>,  <31.253515, 38.653549, 25.627880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035913, 38.239407, 26.102516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413624, 38.301598, 26.218567>,  <31.640249, 38.338913, 26.288197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413624, 38.301598, 26.218567>,  <31.035913, 38.239407, 26.102516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413624, 38.301598, 26.218567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243642, -0.262504, 0.933665,
		0.221326, -0.952322, -0.209994,
		0.944274, 0.155481, 0.290125,
		31.696905, 38.348244, 26.305605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115339, 37.766949, 26.527275>,  <31.035913, 38.239407, 26.102516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115339, 37.766949, 26.527275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393620, 38.041943, 26.610569>,  <31.560587, 38.206940, 26.660545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393620, 38.041943, 26.610569>,  <31.115339, 37.766949, 26.527275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393620, 38.041943, 26.610569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191601, -0.101787, 0.976180,
		0.692308, -0.719027, 0.060910,
		0.695700, 0.687488, 0.208235,
		31.602329, 38.248188, 26.673038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496861, 37.447021, 27.081518>,  <31.115339, 37.766949, 26.527275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496861, 37.447021, 27.081518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591873, 37.833530, 27.121304>,  <31.648882, 38.065437, 27.145176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591873, 37.833530, 27.121304>,  <31.496861, 37.447021, 27.081518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591873, 37.833530, 27.121304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162245, -0.061491, 0.984833,
		0.957734, -0.250067, 0.142167,
		0.237533, 0.966274, 0.099464,
		31.663134, 38.123413, 27.151142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001629, 37.513184, 27.614866>,  <31.496861, 37.447021, 27.081518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001629, 37.513184, 27.614866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821409, 37.868782, 27.582153>,  <31.713278, 38.082142, 27.562525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821409, 37.868782, 27.582153>,  <32.001629, 37.513184, 27.614866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821409, 37.868782, 27.582153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042678, 0.070057, 0.996629,
		0.891733, 0.452518, 0.006376,
		-0.450546, 0.888999, -0.081785,
		31.686245, 38.135483, 27.557617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382713, 37.912518, 28.082489>,  <32.001629, 37.513184, 27.614866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382713, 37.912518, 28.082489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033516, 38.099987, 28.028484>,  <31.823997, 38.212467, 27.996080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033516, 38.099987, 28.028484>,  <32.382713, 37.912518, 28.082489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033516, 38.099987, 28.028484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124511, 0.053492, 0.990775,
		0.471572, 0.881750, 0.011657,
		-0.872993, 0.468673, -0.135013,
		31.771618, 38.240589, 27.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356049, 38.287178, 28.570992>,  <32.382713, 37.912518, 28.082489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356049, 38.287178, 28.570992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971216, 38.341045, 28.476105>,  <31.740318, 38.373367, 28.419172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971216, 38.341045, 28.476105>,  <32.356049, 38.287178, 28.570992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971216, 38.341045, 28.476105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234653, 0.034823, 0.971455,
		0.139085, 0.990279, -0.001902,
		-0.962078, 0.134669, -0.237215,
		31.682592, 38.381447, 28.404940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066589, 38.784992, 28.955004>,  <32.356049, 38.287178, 28.570992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066589, 38.784992, 28.955004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737043, 38.582031, 28.853977>,  <31.539316, 38.460255, 28.793362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737043, 38.582031, 28.853977>,  <32.066589, 38.784992, 28.955004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737043, 38.582031, 28.853977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317441, 0.043912, 0.947261,
		-0.469552, 0.860590, -0.197248,
		-0.823864, -0.507403, -0.252567,
		31.489883, 38.429810, 28.778208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526882, 39.107498, 29.278204>,  <32.066589, 38.784992, 28.955004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526882, 39.107498, 29.278204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377932, 38.744576, 29.200089>,  <31.288561, 38.526821, 29.153219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377932, 38.744576, 29.200089>,  <31.526882, 39.107498, 29.278204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377932, 38.744576, 29.200089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483873, 0.010239, 0.875078,
		-0.791960, 0.420355, -0.442832,
		-0.372378, -0.907302, -0.195289,
		31.266218, 38.472385, 29.141502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846115, 39.162361, 29.436689>,  <31.526882, 39.107498, 29.278204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846115, 39.162361, 29.436689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929184, 38.771740, 29.459381>,  <30.979025, 38.537369, 29.472996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929184, 38.771740, 29.459381>,  <30.846115, 39.162361, 29.436689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929184, 38.771740, 29.459381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379682, -0.027024, 0.924723,
		-0.901507, -0.213578, -0.376391,
		0.207672, -0.976552, 0.056729,
		30.991486, 38.478775, 29.476400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135603, 38.754364, 29.567104>,  <30.846115, 39.162361, 29.436689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135603, 38.754364, 29.567104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450727, 38.537033, 29.683140>,  <30.639803, 38.406635, 29.752760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450727, 38.537033, 29.683140>,  <30.135603, 38.754364, 29.567104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450727, 38.537033, 29.683140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404444, -0.101136, 0.908953,
		-0.464520, -0.833408, -0.299421,
		0.787811, -0.543326, 0.290088,
		30.687071, 38.374035, 29.770166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822868, 38.527718, 30.025024>,  <30.135603, 38.754364, 29.567104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822868, 38.527718, 30.025024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186388, 38.376678, 30.096020>,  <30.404501, 38.286057, 30.138617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.186388, 38.376678, 30.096020>,  <29.822868, 38.527718, 30.025024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.186388, 38.376678, 30.096020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259687, -0.178950, 0.948968,
		-0.326567, -0.908513, -0.260687,
		0.908799, -0.377599, 0.177490,
		30.459028, 38.263401, 30.149267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778109, 37.809521, 30.325266>,  <29.822868, 38.527718, 30.025024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778109, 37.809521, 30.325266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133543, 37.959328, 30.431210>,  <30.346804, 38.049213, 30.494776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133543, 37.959328, 30.431210>,  <29.778109, 37.809521, 30.325266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133543, 37.959328, 30.431210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146961, -0.314527, 0.937804,
		0.434533, -0.872242, -0.224444,
		0.888585, 0.374522, 0.264857,
		30.400118, 38.071686, 30.510666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987198, 37.328293, 30.743073>,  <29.778109, 37.809521, 30.325266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987198, 37.328293, 30.743073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188110, 37.651005, 30.867535>,  <30.308659, 37.844631, 30.942211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188110, 37.651005, 30.867535>,  <29.987198, 37.328293, 30.743073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188110, 37.651005, 30.867535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123149, -0.289429, 0.949244,
		0.855890, -0.515106, -0.046020,
		0.502281, 0.806782, 0.311154,
		30.338795, 37.893040, 30.960880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357388, 37.065884, 31.283268>,  <29.987198, 37.328293, 30.743073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357388, 37.065884, 31.283268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335676, 37.458103, 31.358723>,  <30.322649, 37.693436, 31.403996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335676, 37.458103, 31.358723>,  <30.357388, 37.065884, 31.283268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335676, 37.458103, 31.358723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173034, -0.195295, 0.965359,
		0.983419, 0.019756, 0.180268,
		-0.054277, 0.980545, 0.188639,
		30.319393, 37.752266, 31.415314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910976, 37.254681, 31.729187>,  <30.357388, 37.065884, 31.283268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910976, 37.254681, 31.729187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624027, 37.529163, 31.777336>,  <30.451857, 37.693855, 31.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624027, 37.529163, 31.777336>,  <30.910976, 37.254681, 31.729187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624027, 37.529163, 31.777336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068039, -0.102948, 0.992357,
		0.693357, 0.720082, 0.027163,
		-0.717375, 0.686210, 0.120373,
		30.408815, 37.735027, 31.813448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054508, 37.452621, 32.377884>,  <30.910976, 37.254681, 31.729187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054508, 37.452621, 32.377884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722317, 37.671555, 32.336445>,  <30.523003, 37.802914, 32.311581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722317, 37.671555, 32.336445>,  <31.054508, 37.452621, 32.377884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722317, 37.671555, 32.336445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208735, -0.133334, 0.968840,
		0.516467, 0.826224, 0.224979,
		-0.830477, 0.547335, -0.103599,
		30.473173, 37.835754, 32.305367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995972, 37.848034, 32.903160>,  <31.054508, 37.452621, 32.377884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995972, 37.848034, 32.903160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608438, 37.850700, 32.804111>,  <30.375919, 37.852299, 32.744682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608438, 37.850700, 32.804111>,  <30.995972, 37.848034, 32.903160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608438, 37.850700, 32.804111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246156, -0.137836, 0.959379,
		-0.027737, 0.990433, 0.135181,
		-0.968833, 0.006665, -0.247624,
		30.317789, 37.852699, 32.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640831, 38.330086, 33.369923>,  <30.995972, 37.848034, 32.903160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640831, 38.330086, 33.369923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357183, 38.081249, 33.237167>,  <30.186995, 37.931946, 33.157513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357183, 38.081249, 33.237167>,  <30.640831, 38.330086, 33.369923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357183, 38.081249, 33.237167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441166, 0.024272, 0.897097,
		-0.550022, 0.782567, -0.291658,
		-0.709118, -0.622093, -0.331892,
		30.144447, 37.894623, 33.137600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017591, 38.626854, 33.573338>,  <30.640831, 38.330086, 33.369923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017591, 38.626854, 33.573338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912846, 38.248066, 33.498856>,  <29.849998, 38.020794, 33.454166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.912846, 38.248066, 33.498856>,  <30.017591, 38.626854, 33.573338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912846, 38.248066, 33.498856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543833, -0.014599, 0.839066,
		-0.797291, 0.320985, -0.511172,
		-0.261865, -0.946972, -0.186202,
		29.834286, 37.963974, 33.442993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337879, 38.642483, 33.716270>,  <30.017591, 38.626854, 33.573338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337879, 38.642483, 33.716270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453121, 38.260712, 33.747395>,  <29.522266, 38.031647, 33.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.453121, 38.260712, 33.747395>,  <29.337879, 38.642483, 33.716270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453121, 38.260712, 33.747395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582536, -0.110191, 0.805301,
		-0.760031, -0.277339, -0.587738,
		0.288105, -0.954432, 0.077811,
		29.539553, 37.974380, 33.770737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751448, 38.233585, 33.939671>,  <29.337879, 38.642483, 33.716270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751448, 38.233585, 33.939671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053484, 37.985722, 34.025333>,  <29.234705, 37.837002, 34.076729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053484, 37.985722, 34.025333>,  <28.751448, 38.233585, 33.939671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053484, 37.985722, 34.025333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304612, -0.042335, 0.951535,
		-0.580561, -0.783729, -0.220722,
		0.755090, -0.619659, 0.214154,
		29.280010, 37.799824, 34.089581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574926, 37.527885, 34.256405>,  <28.751448, 38.233585, 33.939671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574926, 37.527885, 34.256405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948084, 37.583008, 34.389503>,  <29.171978, 37.616081, 34.469364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948084, 37.583008, 34.389503>,  <28.574926, 37.527885, 34.256405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948084, 37.583008, 34.389503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323411, -0.086023, 0.942340,
		0.158482, -0.986717, -0.035683,
		0.932893, 0.137803, 0.332748,
		29.227951, 37.624348, 34.489326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459518, 36.787106, 33.981197>,  <28.574926, 37.527885, 34.256405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459518, 36.787106, 33.981197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116077, 36.612957, 33.872932>,  <27.910013, 36.508469, 33.807976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116077, 36.612957, 33.872932>,  <28.459518, 36.787106, 33.981197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116077, 36.612957, 33.872932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024247, 0.492888, -0.869755,
		0.512080, -0.753330, -0.412635,
		-0.858595, -0.435379, -0.270664,
		27.858498, 36.482346, 33.791733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552570, 36.664795, 33.276382>,  <28.459518, 36.787106, 33.981197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552570, 36.664795, 33.276382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156834, 36.627266, 33.320919>,  <27.919392, 36.604748, 33.347641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.156834, 36.627266, 33.320919>,  <28.552570, 36.664795, 33.276382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156834, 36.627266, 33.320919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134108, 0.289485, -0.947741,
		0.056686, -0.952574, -0.298982,
		-0.989344, -0.093819, 0.111338,
		27.860031, 36.599121, 33.354321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277060, 36.144169, 32.742622>,  <28.552570, 36.664795, 33.276382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277060, 36.144169, 32.742622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978363, 36.380100, 32.865578>,  <27.799145, 36.521660, 32.939350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978363, 36.380100, 32.865578>,  <28.277060, 36.144169, 32.742622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978363, 36.380100, 32.865578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191204, 0.252279, -0.948576,
		-0.637040, -0.767113, -0.075609,
		-0.746740, 0.589824, 0.307387,
		27.754341, 36.557049, 32.957794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875925, 35.924915, 32.247482>,  <28.277060, 36.144169, 32.742622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875925, 35.924915, 32.247482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707294, 36.254997, 32.397850>,  <27.606117, 36.453045, 32.488071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707294, 36.254997, 32.397850>,  <27.875925, 35.924915, 32.247482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707294, 36.254997, 32.397850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469035, 0.156361, -0.869228,
		-0.776067, -0.542766, 0.321130,
		-0.421575, 0.825200, 0.375923,
		27.580822, 36.502556, 32.510628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185289, 35.853104, 32.022148>,  <27.875925, 35.924915, 32.247482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185289, 35.853104, 32.022148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279602, 36.237846, 32.077637>,  <27.336189, 36.468693, 32.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279602, 36.237846, 32.077637>,  <27.185289, 35.853104, 32.022148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279602, 36.237846, 32.077637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223524, 0.192600, -0.955480,
		-0.945750, 0.194278, 0.260409,
		0.235783, 0.961853, 0.138726,
		27.350336, 36.526402, 32.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
