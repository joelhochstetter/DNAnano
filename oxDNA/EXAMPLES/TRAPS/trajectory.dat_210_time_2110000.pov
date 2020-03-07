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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.462929, 53.116989, 49.939659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689213, 53.445423, 49.970093>,  <36.824982, 53.642483, 49.988354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689213, 53.445423, 49.970093>,  <36.462929, 53.116989, 49.939659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689213, 53.445423, 49.970093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731961, -0.542502, 0.412218,
		0.379746, -0.177502, -0.907902,
		0.565708, 0.821088, 0.076088,
		36.858925, 53.691750, 49.992920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209656, 52.966007, 49.612370>,  <36.462929, 53.116989, 49.939659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209656, 52.966007, 49.612370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228466, 53.249428, 49.894005>,  <37.239754, 53.419479, 50.062984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228466, 53.249428, 49.894005>,  <37.209656, 52.966007, 49.612370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228466, 53.249428, 49.894005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686160, -0.535167, 0.492728,
		0.725929, 0.459944, -0.511350,
		0.047030, 0.708554, 0.704088,
		37.242577, 53.461994, 50.105232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912788, 53.164272, 49.661076>,  <37.209656, 52.966007, 49.612370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912788, 53.164272, 49.661076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738251, 53.231163, 50.014717>,  <37.633526, 53.271297, 50.226902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738251, 53.231163, 50.014717>,  <37.912788, 53.164272, 49.661076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738251, 53.231163, 50.014717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510195, -0.763366, 0.396200,
		0.741149, 0.623945, 0.247773,
		-0.436348, 0.167231, 0.884101,
		37.607346, 53.281334, 50.279949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576073, 53.253170, 49.524628>,  <37.912788, 53.164272, 49.661076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576073, 53.253170, 49.524628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777008, 53.372746, 49.200089>,  <38.897572, 53.444492, 49.005363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777008, 53.372746, 49.200089>,  <38.576073, 53.253170, 49.524628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777008, 53.372746, 49.200089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610980, 0.786692, -0.088430,
		0.611845, 0.540139, 0.577836,
		0.502343, 0.298941, -0.811348,
		38.927711, 53.462429, 48.956684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702045, 53.964039, 49.553551>,  <38.576073, 53.253170, 49.524628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702045, 53.964039, 49.553551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627930, 53.858978, 49.174778>,  <38.583462, 53.795940, 48.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627930, 53.858978, 49.174778>,  <38.702045, 53.964039, 49.553551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627930, 53.858978, 49.174778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677648, 0.732005, -0.070439,
		0.711661, 0.628637, -0.313616,
		-0.185288, -0.262650, -0.946934,
		38.572342, 53.780182, 48.890697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077061, 53.846855, 50.115997>,  <38.702045, 53.964039, 49.553551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077061, 53.846855, 50.115997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736717, 54.053967, 50.151665>,  <38.532513, 54.178234, 50.173065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736717, 54.053967, 50.151665>,  <39.077061, 53.846855, 50.115997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736717, 54.053967, 50.151665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514021, -0.855485, 0.062674,
		0.108730, 0.007494, 0.994043,
		-0.850858, 0.517774, 0.089165,
		38.481461, 54.209297, 50.178413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720078, 53.974270, 50.788052>,  <39.077061, 53.846855, 50.115997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720078, 53.974270, 50.788052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479256, 53.906876, 50.475861>,  <38.334763, 53.866440, 50.288548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479256, 53.906876, 50.475861>,  <38.720078, 53.974270, 50.788052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479256, 53.906876, 50.475861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072641, -0.961871, 0.263681,
		-0.795146, 0.215444, 0.566856,
		-0.602051, -0.168488, -0.780478,
		38.298641, 53.856331, 50.241718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976929, 54.416378, 51.409412>,  <38.720078, 53.974270, 50.788052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976929, 54.416378, 51.409412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113411, 54.701813, 51.654156>,  <39.195301, 54.873074, 51.801003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113411, 54.701813, 51.654156>,  <38.976929, 54.416378, 51.409412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113411, 54.701813, 51.654156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546667, -0.680164, 0.488398,
		0.764680, 0.167842, -0.622168,
		0.341203, 0.713587, 0.611861,
		39.215771, 54.915890, 51.837715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503784, 54.199844, 51.904495>,  <38.976929, 54.416378, 51.409412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503784, 54.199844, 51.904495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504505, 53.834335, 52.066986>,  <39.504936, 53.615032, 52.164482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504505, 53.834335, 52.066986>,  <39.503784, 54.199844, 51.904495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504505, 53.834335, 52.066986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955574, 0.121306, 0.268632,
		-0.294746, 0.387696, 0.873394,
		0.001800, -0.913771, 0.406227,
		39.505047, 53.560204, 52.188854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524464, 54.149261, 52.658195>,  <39.503784, 54.199844, 51.904495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524464, 54.149261, 52.658195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700058, 53.824032, 52.505249>,  <39.805412, 53.628895, 52.413483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700058, 53.824032, 52.505249>,  <39.524464, 54.149261, 52.658195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700058, 53.824032, 52.505249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821540, 0.190907, 0.537239,
		-0.363820, -0.549966, 0.751779,
		0.438983, -0.813075, -0.382364,
		39.831753, 53.580109, 52.390541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752647, 53.634857, 53.161777>,  <39.524464, 54.149261, 52.658195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752647, 53.634857, 53.161777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960098, 53.641045, 52.819832>,  <40.084568, 53.644756, 52.614666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.960098, 53.641045, 52.819832>,  <39.752647, 53.634857, 53.161777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960098, 53.641045, 52.819832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851970, 0.074784, 0.518222,
		0.071942, -0.997080, 0.025612,
		0.518624, 0.015462, -0.854862,
		40.115685, 53.645687, 52.563374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242359, 53.194626, 53.150753>,  <39.752647, 53.634857, 53.161777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242359, 53.194626, 53.150753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377972, 53.492447, 52.920723>,  <40.459339, 53.671139, 52.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377972, 53.492447, 52.920723>,  <40.242359, 53.194626, 53.150753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377972, 53.492447, 52.920723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837423, 0.039708, 0.545111,
		0.428696, -0.666387, -0.610040,
		0.339031, 0.744548, -0.575070,
		40.479679, 53.715813, 52.748203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832882, 53.192928, 53.523865>,  <40.242359, 53.194626, 53.150753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832882, 53.192928, 53.523865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861252, 53.504845, 53.275059>,  <40.878273, 53.691994, 53.125774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.861252, 53.504845, 53.275059>,  <40.832882, 53.192928, 53.523865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861252, 53.504845, 53.275059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804819, 0.323650, 0.497512,
		0.589268, -0.535892, -0.604635,
		0.070923, 0.779789, -0.622012,
		40.882530, 53.738781, 53.088455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.411835, 53.232784, 53.138340>,  <40.832882, 53.192928, 53.523865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.411835, 53.232784, 53.138340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300373, 53.614040, 53.185448>,  <41.233498, 53.842796, 53.213711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300373, 53.614040, 53.185448>,  <41.411835, 53.232784, 53.138340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300373, 53.614040, 53.185448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934534, 0.240839, 0.261998,
		0.221359, 0.183062, -0.957856,
		-0.278651, 0.953145, 0.117766,
		41.216778, 53.899982, 53.220776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756760, 53.835262, 52.664669>,  <41.411835, 53.232784, 53.138340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756760, 53.835262, 52.664669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651947, 53.976189, 53.024048>,  <41.589058, 54.060745, 53.239677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651947, 53.976189, 53.024048>,  <41.756760, 53.835262, 52.664669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651947, 53.976189, 53.024048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954219, 0.233730, 0.186644,
		-0.144237, 0.906226, -0.397430,
		-0.262032, 0.352315, 0.898450,
		41.573338, 54.081882, 53.293583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014229, 54.448654, 52.775806>,  <41.756760, 53.835262, 52.664669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014229, 54.448654, 52.775806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934650, 54.337933, 53.151848>,  <41.886906, 54.271500, 53.377472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934650, 54.337933, 53.151848>,  <42.014229, 54.448654, 52.775806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934650, 54.337933, 53.151848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956072, 0.155912, 0.248228,
		-0.215284, 0.948195, 0.233623,
		-0.198944, -0.276800, 0.940108,
		41.874966, 54.254894, 53.433880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190311, 55.010090, 53.315178>,  <42.014229, 54.448654, 52.775806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190311, 55.010090, 53.315178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218399, 54.637581, 53.458176>,  <42.235252, 54.414074, 53.543976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218399, 54.637581, 53.458176>,  <42.190311, 55.010090, 53.315178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218399, 54.637581, 53.458176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963943, 0.155562, 0.215903,
		-0.256677, 0.329445, 0.908616,
		0.070218, -0.931271, 0.357496,
		42.239464, 54.358200, 53.565426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556465, 55.080338, 53.943550>,  <42.190311, 55.010090, 53.315178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556465, 55.080338, 53.943550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608128, 54.702255, 53.823608>,  <42.639126, 54.475407, 53.751644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608128, 54.702255, 53.823608>,  <42.556465, 55.080338, 53.943550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608128, 54.702255, 53.823608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972645, 0.061874, 0.223904,
		-0.193081, -0.320571, 0.927337,
		0.129155, -0.945201, -0.299856,
		42.646873, 54.418694, 53.733650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769676, 54.548409, 54.503143>,  <42.556465, 55.080338, 53.943550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769676, 54.548409, 54.503143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898952, 54.466194, 54.133644>,  <42.976517, 54.416866, 53.911945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.898952, 54.466194, 54.133644>,  <42.769676, 54.548409, 54.503143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.898952, 54.466194, 54.133644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945621, 0.108020, 0.306809,
		0.036723, -0.972670, 0.229270,
		0.323189, -0.205536, -0.923744,
		42.995911, 54.404533, 53.856522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.051243, 53.941223, 54.504616>,  <42.769676, 54.548409, 54.503143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.051243, 53.941223, 54.504616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209908, 54.146057, 54.199875>,  <43.305107, 54.268959, 54.017029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209908, 54.146057, 54.199875>,  <43.051243, 53.941223, 54.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209908, 54.146057, 54.199875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900271, -0.054859, 0.431859,
		0.179356, -0.857178, -0.482780,
		0.396665, 0.512090, -0.761853,
		43.328907, 54.299683, 53.971317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395885, 53.540291, 54.061790>,  <43.051243, 53.941223, 54.504616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395885, 53.540291, 54.061790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543911, 53.907211, 54.120605>,  <43.632725, 54.127361, 54.155895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.543911, 53.907211, 54.120605>,  <43.395885, 53.540291, 54.061790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543911, 53.907211, 54.120605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789808, -0.393984, 0.470085,
		0.489138, -0.057829, -0.870287,
		0.370063, 0.917296, 0.147039,
		43.654930, 54.182400, 54.164719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030979, 53.627861, 53.676712>,  <43.395885, 53.540291, 54.061790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030979, 53.627861, 53.676712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005421, 53.790619, 54.041206>,  <43.990086, 53.888275, 54.259903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005421, 53.790619, 54.041206>,  <44.030979, 53.627861, 53.676712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005421, 53.790619, 54.041206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770584, -0.560091, 0.304136,
		0.634127, 0.721617, -0.277761,
		-0.063898, 0.406899, 0.911235,
		43.986252, 53.912689, 54.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.686714, 53.798756, 54.008175>,  <44.030979, 53.627861, 53.676712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.686714, 53.798756, 54.008175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843369, 54.066582, 53.755730>,  <44.937359, 54.227280, 53.604263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843369, 54.066582, 53.755730>,  <44.686714, 53.798756, 54.008175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843369, 54.066582, 53.755730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811005, 0.072793, 0.580492,
		0.434620, -0.739174, -0.514516,
		0.391632, 0.669569, -0.631112,
		44.960857, 54.267452, 53.566395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392780, 53.707176, 54.082825>,  <44.686714, 53.798756, 54.008175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392780, 53.707176, 54.082825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360939, 54.073463, 53.925285>,  <45.341835, 54.293236, 53.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.360939, 54.073463, 53.925285>,  <45.392780, 53.707176, 54.082825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360939, 54.073463, 53.925285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790307, 0.298771, 0.534930,
		0.607518, -0.268679, -0.747485,
		-0.079602, 0.915722, -0.393848,
		45.337059, 54.348179, 53.807133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003868, 54.024624, 54.289906>,  <45.392780, 53.707176, 54.082825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003868, 54.024624, 54.289906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814522, 54.332882, 54.119247>,  <45.700912, 54.517838, 54.016853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.814522, 54.332882, 54.119247>,  <46.003868, 54.024624, 54.289906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814522, 54.332882, 54.119247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765723, 0.599421, 0.233158,
		0.435424, -0.216324, -0.873848,
		-0.473365, 0.770648, -0.426647,
		45.672512, 54.564075, 53.991253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.371269, 54.313866, 53.778984>,  <46.003868, 54.024624, 54.289906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.371269, 54.313866, 53.778984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140846, 54.581848, 53.966309>,  <46.002590, 54.742638, 54.078705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140846, 54.581848, 53.966309>,  <46.371269, 54.313866, 53.778984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140846, 54.581848, 53.966309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815287, 0.512159, 0.270187,
		-0.058839, 0.537454, -0.841238,
		-0.576060, 0.669952, 0.468314,
		45.968029, 54.782833, 54.106804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.553291, 54.909374, 53.578178>,  <46.371269, 54.313866, 53.778984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.553291, 54.909374, 53.578178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462521, 54.985802, 53.960171>,  <46.408058, 55.031658, 54.189365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462521, 54.985802, 53.960171>,  <46.553291, 54.909374, 53.578178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462521, 54.985802, 53.960171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883829, 0.452282, 0.119527,
		-0.409085, 0.871168, -0.271508,
		-0.226926, 0.191070, 0.954985,
		46.394444, 55.043121, 54.246666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703140, 55.633003, 53.631023>,  <46.553291, 54.909374, 53.578178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703140, 55.633003, 53.631023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719151, 55.412281, 53.964226>,  <46.728756, 55.279846, 54.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719151, 55.412281, 53.964226>,  <46.703140, 55.633003, 53.631023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719151, 55.412281, 53.964226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885850, 0.405268, 0.225891,
		-0.462241, 0.728880, 0.505042,
		0.040030, -0.551807, 0.833010,
		46.731159, 55.246738, 54.214130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.713963, 56.120625, 54.232689>,  <46.703140, 55.633003, 53.631023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.713963, 56.120625, 54.232689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909931, 55.773464, 54.265488>,  <47.027512, 55.565166, 54.285168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.909931, 55.773464, 54.265488>,  <46.713963, 56.120625, 54.232689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909931, 55.773464, 54.265488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871386, 0.490316, -0.016658,
		-0.025748, 0.079615, 0.996493,
		0.489923, -0.867901, 0.082001,
		47.056908, 55.513096, 54.290089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.155205, 55.963894, 54.873093>,  <46.713963, 56.120625, 54.232689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.155205, 55.963894, 54.873093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336182, 55.750553, 54.587204>,  <47.444767, 55.622551, 54.415668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336182, 55.750553, 54.587204>,  <47.155205, 55.963894, 54.873093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336182, 55.750553, 54.587204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815332, 0.572076, 0.089234,
		0.361283, -0.623111, 0.693692,
		0.452447, -0.533350, -0.714723,
		47.471916, 55.590549, 54.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.777771, 55.723156, 55.223038>,  <47.155205, 55.963894, 54.873093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.777771, 55.723156, 55.223038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.859638, 55.775162, 54.834976>,  <47.908760, 55.806366, 54.602139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.859638, 55.775162, 54.834976>,  <47.777771, 55.723156, 55.223038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.859638, 55.775162, 54.834976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840617, 0.484429, 0.242262,
		0.501471, -0.865115, -0.010145,
		0.204670, 0.130015, -0.970158,
		47.921040, 55.814167, 54.543930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.317699, 55.107941, 55.492794>,  <47.777771, 55.723156, 55.223038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.317699, 55.107941, 55.492794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.449947, 54.753265, 55.363503>,  <48.529297, 54.540459, 55.285927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.449947, 54.753265, 55.363503>,  <48.317699, 55.107941, 55.492794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.449947, 54.753265, 55.363503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867397, 0.420451, -0.266163,
		0.371905, -0.192367, 0.908120,
		0.330619, -0.886688, -0.323226,
		48.549133, 54.487259, 55.266533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.074490, 55.063843, 55.559319>,  <48.317699, 55.107941, 55.492794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.074490, 55.063843, 55.559319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.977440, 54.773003, 55.302429>,  <48.919209, 54.598499, 55.148296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.977440, 54.773003, 55.302429>,  <49.074490, 55.063843, 55.559319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.977440, 54.773003, 55.302429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961810, -0.093826, -0.257133,
		0.126705, -0.680086, 0.722100,
		-0.242625, -0.727103, -0.642226,
		48.904652, 54.554871, 55.109760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.428825, 54.363808, 55.641258>,  <49.074490, 55.063843, 55.559319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.428825, 54.363808, 55.641258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.335670, 54.429977, 55.257927>,  <49.279778, 54.469681, 55.027927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.335670, 54.429977, 55.257927>,  <49.428825, 54.363808, 55.641258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.335670, 54.429977, 55.257927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939585, -0.215945, -0.265610,
		-0.250886, -0.962290, -0.105141,
		-0.232889, 0.165427, -0.958330,
		49.265804, 54.479607, 54.970428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.807041, 53.811489, 55.286274>,  <49.428825, 54.363808, 55.641258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.807041, 53.811489, 55.286274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.697708, 54.090538, 55.021362>,  <49.632111, 54.257969, 54.862415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.697708, 54.090538, 55.021362>,  <49.807041, 53.811489, 55.286274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.697708, 54.090538, 55.021362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912578, -0.029616, -0.407828,
		-0.304125, -0.715852, -0.628541,
		-0.273330, 0.697624, -0.662278,
		49.615707, 54.299824, 54.822678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.944580, 53.665913, 54.558136>,  <49.807041, 53.811489, 55.286274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.944580, 53.665913, 54.558136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.919014, 54.065079, 54.561577>,  <49.903675, 54.304581, 54.563641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.919014, 54.065079, 54.561577>,  <49.944580, 53.665913, 54.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.919014, 54.065079, 54.561577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902467, 0.061474, -0.426351,
		-0.425992, -0.019486, -0.904517,
		-0.063912, 0.997918, 0.008602,
		49.899841, 54.364456, 54.564156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.144238, 53.932827, 53.883896>,  <49.944580, 53.665913, 54.558136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.144238, 53.932827, 53.883896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.241051, 54.187202, 54.177017>,  <50.299137, 54.339828, 54.352890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.241051, 54.187202, 54.177017>,  <50.144238, 53.932827, 53.883896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.241051, 54.187202, 54.177017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944148, 0.019707, -0.328932,
		-0.223621, 0.771488, -0.595651,
		0.242029, 0.635938, 0.732806,
		50.313660, 54.377983, 54.396858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.519592, 54.594608, 53.567539>,  <50.144238, 53.932827, 53.883896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.519592, 54.594608, 53.567539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.636860, 54.511417, 53.940804>,  <50.707222, 54.461502, 54.164764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.636860, 54.511417, 53.940804>,  <50.519592, 54.594608, 53.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.636860, 54.511417, 53.940804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954646, 0.116737, -0.273904,
		-0.051967, 0.971142, 0.232773,
		0.293173, -0.207982, 0.933163,
		50.724812, 54.449024, 54.220753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.994164, 55.201244, 53.726341>,  <50.519592, 54.594608, 53.567539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.994164, 55.201244, 53.726341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072906, 54.852219, 53.905174>,  <51.120152, 54.642803, 54.012474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.072906, 54.852219, 53.905174>,  <50.994164, 55.201244, 53.726341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.072906, 54.852219, 53.905174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977493, 0.139390, -0.158358,
		0.075858, 0.468195, 0.880363,
		0.196856, -0.872562, 0.447084,
		51.131962, 54.590450, 54.039299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.355228, 55.834309, 53.396030>,  <50.994164, 55.201244, 53.726341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.355228, 55.834309, 53.396030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.013790, 55.948444, 53.221695>,  <50.808926, 56.016926, 53.117096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.013790, 55.948444, 53.221695>,  <51.355228, 55.834309, 53.396030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.013790, 55.948444, 53.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502396, 0.672125, -0.543917,
		0.137735, -0.683248, -0.717078,
		-0.853596, 0.285341, -0.435836,
		50.757710, 56.034046, 53.090942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.278404, 55.775589, 52.700039>,  <51.355228, 55.834309, 53.396030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.278404, 55.775589, 52.700039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.065632, 56.087811, 52.831360>,  <50.937969, 56.275143, 52.910152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.065632, 56.087811, 52.831360>,  <51.278404, 55.775589, 52.700039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.065632, 56.087811, 52.831360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407167, 0.575709, -0.709066,
		-0.742473, -0.243498, -0.624053,
		-0.531929, 0.780556, 0.328304,
		50.906052, 56.321976, 52.929852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.933895, 56.245384, 52.070515>,  <51.278404, 55.775589, 52.700039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.933895, 56.245384, 52.070515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.000084, 56.441532, 52.412777>,  <51.039795, 56.559223, 52.618134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.000084, 56.441532, 52.412777>,  <50.933895, 56.245384, 52.070515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.000084, 56.441532, 52.412777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637077, 0.609152, -0.472299,
		-0.752830, 0.623272, -0.211611,
		0.165468, 0.490373, 0.855660,
		51.049725, 56.588646, 52.669476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.183830, 56.774849, 51.719383>,  <50.933895, 56.245384, 52.070515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.183830, 56.774849, 51.719383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.290981, 56.805374, 52.103554>,  <51.355270, 56.823689, 52.334057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.290981, 56.805374, 52.103554>,  <51.183830, 56.774849, 51.719383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.290981, 56.805374, 52.103554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862829, 0.424543, -0.274388,
		-0.428682, 0.902186, 0.047881,
		0.267876, 0.076312, 0.960426,
		51.371346, 56.828266, 52.391682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.483345, 57.413479, 51.681240>,  <51.183830, 56.774849, 51.719383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.483345, 57.413479, 51.681240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.607738, 57.211021, 52.003014>,  <51.682377, 57.089546, 52.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.607738, 57.211021, 52.003014>,  <51.483345, 57.413479, 51.681240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.607738, 57.211021, 52.003014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908592, 0.406644, -0.095398,
		-0.278832, 0.760566, 0.586338,
		0.310987, -0.506142, 0.804430,
		51.701035, 57.059177, 52.244343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.675888, 57.846458, 52.284126>,  <51.483345, 57.413479, 51.681240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.675888, 57.846458, 52.284126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.887062, 57.506809, 52.290813>,  <52.013767, 57.303020, 52.294827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.887062, 57.506809, 52.290813>,  <51.675888, 57.846458, 52.284126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.887062, 57.506809, 52.290813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847823, 0.528076, 0.048288,
		-0.049831, -0.011319, 0.998694,
		0.527933, -0.849122, 0.016718,
		52.045441, 57.252071, 52.295830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.116524, 57.636166, 52.968018>,  <51.675888, 57.846458, 52.284126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.116524, 57.636166, 52.968018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.267303, 57.542530, 52.609550>,  <52.357773, 57.486347, 52.394470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.267303, 57.542530, 52.609550>,  <52.116524, 57.636166, 52.968018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.267303, 57.542530, 52.609550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756084, 0.636645, 0.151725,
		0.535021, -0.734768, 0.416975,
		0.376948, -0.234092, -0.896165,
		52.380386, 57.472301, 52.340702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.757919, 57.820251, 53.015079>,  <52.116524, 57.636166, 52.968018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.757919, 57.820251, 53.015079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.723156, 57.765968, 52.620308>,  <52.702297, 57.733398, 52.383446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.723156, 57.765968, 52.620308>,  <52.757919, 57.820251, 53.015079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.723156, 57.765968, 52.620308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736980, 0.657818, -0.155353,
		0.670304, -0.740849, 0.042846,
		-0.086908, -0.135710, -0.986930,
		52.697083, 57.725254, 52.324230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.215412, 57.878635, 53.671688>,  <52.757919, 57.820251, 53.015079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.215412, 57.878635, 53.671688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523972, 57.681370, 53.832550>,  <53.709106, 57.563011, 53.929066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.523972, 57.681370, 53.832550>,  <53.215412, 57.878635, 53.671688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.523972, 57.681370, 53.832550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522282, -0.851707, -0.042619,
		0.363537, -0.177162, -0.914579,
		0.771403, -0.493162, 0.402156,
		53.755394, 57.533421, 53.953197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.363770, 57.287590, 53.303200>,  <53.215412, 57.878635, 53.671688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.363770, 57.287590, 53.303200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.539524, 57.156593, 53.637787>,  <53.644978, 57.077995, 53.838539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.539524, 57.156593, 53.637787>,  <53.363770, 57.287590, 53.303200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.539524, 57.156593, 53.637787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195285, -0.943728, -0.266909,
		0.876814, -0.046074, -0.478618,
		0.439388, -0.327496, 0.836472,
		53.671341, 57.058346, 53.888729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.994892, 56.842190, 53.221909>,  <53.363770, 57.287590, 53.303200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.994892, 56.842190, 53.221909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.794769, 56.748875, 53.555443>,  <53.674698, 56.692886, 53.755562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.794769, 56.748875, 53.555443>,  <53.994892, 56.842190, 53.221909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.794769, 56.748875, 53.555443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126257, -0.933072, -0.336803,
		0.856595, -0.273782, 0.437366,
		-0.500305, -0.233283, 0.833831,
		53.644676, 56.678890, 53.805592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.292057, 56.275047, 53.462421>,  <53.994892, 56.842190, 53.221909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.292057, 56.275047, 53.462421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.911797, 56.272747, 53.586502>,  <53.683640, 56.271366, 53.660950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.911797, 56.272747, 53.586502>,  <54.292057, 56.275047, 53.462421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.911797, 56.272747, 53.586502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111265, -0.927006, -0.358163,
		0.289616, -0.375003, 0.880622,
		-0.950654, -0.005747, 0.310200,
		53.626602, 56.271023, 53.679562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.446442, 55.547901, 53.736595>,  <54.292057, 56.275047, 53.462421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.446442, 55.547901, 53.736595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.789589, 55.739784, 53.810287>,  <54.995476, 55.854916, 53.854504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.789589, 55.739784, 53.810287>,  <54.446442, 55.547901, 53.736595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.789589, 55.739784, 53.810287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332825, 0.245532, 0.910462,
		0.391527, -0.842371, 0.370294,
		0.857866, 0.479713, 0.184230,
		55.046947, 55.883698, 53.865555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.399734, 55.411030, 54.449497>,  <54.446442, 55.547901, 53.736595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.399734, 55.411030, 54.449497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.662117, 55.704895, 54.380230>,  <54.819546, 55.881214, 54.338669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.662117, 55.704895, 54.380230>,  <54.399734, 55.411030, 54.449497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.662117, 55.704895, 54.380230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273139, 0.444915, 0.852904,
		0.703643, -0.512171, 0.492511,
		0.655959, 0.734664, -0.173167,
		54.858906, 55.925293, 54.328281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.915646, 55.494038, 55.046070>,  <54.399734, 55.411030, 54.449497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.915646, 55.494038, 55.046070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.844162, 55.842644, 54.863411>,  <54.801273, 56.051807, 54.753815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.844162, 55.842644, 54.863411>,  <54.915646, 55.494038, 55.046070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.844162, 55.842644, 54.863411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169065, 0.430012, 0.886852,
		0.969268, 0.235692, 0.070495,
		-0.178710, 0.871515, -0.456644,
		54.790550, 56.104099, 54.726418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.250816, 55.996426, 55.486786>,  <54.915646, 55.494038, 55.046070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.250816, 55.996426, 55.486786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.974510, 56.160767, 55.248779>,  <54.808727, 56.259369, 55.105976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.974510, 56.160767, 55.248779>,  <55.250816, 55.996426, 55.486786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.974510, 56.160767, 55.248779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302783, 0.582917, 0.754009,
		0.656628, 0.701006, -0.278263,
		-0.690769, 0.410850, -0.595013,
		54.767281, 56.284023, 55.070274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.329441, 56.696278, 55.203976>,  <55.250816, 55.996426, 55.486786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.329441, 56.696278, 55.203976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.937790, 56.632729, 55.254677>,  <54.702801, 56.594601, 55.285099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.937790, 56.632729, 55.254677>,  <55.329441, 56.696278, 55.203976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.937790, 56.632729, 55.254677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033659, 0.741819, 0.669755,
		-0.200433, 0.651510, -0.731683,
		-0.979129, -0.158869, 0.126756,
		54.644051, 56.585068, 55.292702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.932789, 57.388866, 55.165707>,  <55.329441, 56.696278, 55.203976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.932789, 57.388866, 55.165707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.730789, 57.114143, 55.374809>,  <54.609589, 56.949310, 55.500271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.730789, 57.114143, 55.374809>,  <54.932789, 57.388866, 55.165707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.730789, 57.114143, 55.374809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157051, 0.668666, 0.726788,
		-0.848713, 0.284926, -0.445538,
		-0.504997, -0.686806, 0.522758,
		54.579288, 56.908100, 55.531635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.371403, 57.399113, 54.596607>,  <54.932789, 57.388866, 55.165707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.371403, 57.399113, 54.596607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.564171, 57.509945, 54.929108>,  <55.679832, 57.576443, 55.128609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.564171, 57.509945, 54.929108>,  <55.371403, 57.399113, 54.596607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.564171, 57.509945, 54.929108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838812, -0.420112, -0.346266,
		0.253275, 0.864137, -0.434879,
		0.481919, 0.277081, 0.831252,
		55.708748, 57.593071, 55.178482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.037846, 57.740643, 54.387081>,  <55.371403, 57.399113, 54.596607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.037846, 57.740643, 54.387081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.038010, 57.563828, 54.745880>,  <56.038109, 57.457741, 54.961159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.038010, 57.563828, 54.745880>,  <56.037846, 57.740643, 54.387081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.038010, 57.563828, 54.745880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911225, -0.369316, -0.182411,
		0.411908, 0.817442, 0.402641,
		0.000409, -0.442034, 0.896998,
		56.038132, 57.431217, 55.014980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.597343, 57.835155, 54.934460>,  <56.037846, 57.740643, 54.387081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.597343, 57.835155, 54.934460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.472214, 57.457184, 54.972919>,  <56.397137, 57.230400, 54.995995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.472214, 57.457184, 54.972919>,  <56.597343, 57.835155, 54.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.472214, 57.457184, 54.972919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928480, -0.325563, -0.178699,
		0.200160, 0.033368, 0.979195,
		-0.312827, -0.944931, 0.096147,
		56.378365, 57.173706, 55.001762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.133568, 57.350765, 55.045380>,  <56.597343, 57.835155, 54.934460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.133568, 57.350765, 55.045380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.862000, 57.057426, 55.059586>,  <56.699059, 56.881424, 55.068108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.862000, 57.057426, 55.059586>,  <57.133568, 57.350765, 55.045380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.862000, 57.057426, 55.059586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716638, -0.672420, -0.185151,
		0.159659, -0.100255, 0.982068,
		-0.678925, -0.733349, 0.035511,
		56.658321, 56.837421, 55.070240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.315929, 56.716228, 55.551865>,  <57.133568, 57.350765, 55.045380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.315929, 56.716228, 55.551865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.668808, 56.898643, 55.504959>,  <57.880535, 57.008091, 55.476814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.668808, 56.898643, 55.504959>,  <57.315929, 56.716228, 55.551865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.668808, 56.898643, 55.504959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195899, -0.129001, 0.972102,
		0.428189, -0.880561, -0.203142,
		0.882200, 0.456039, -0.117264,
		57.933468, 57.035454, 55.469780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.921852, 56.289280, 55.632240>,  <57.315929, 56.716228, 55.551865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.921852, 56.289280, 55.632240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.006393, 56.658279, 55.761444>,  <58.057117, 56.879677, 55.838966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.006393, 56.658279, 55.761444>,  <57.921852, 56.289280, 55.632240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.006393, 56.658279, 55.761444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297466, -0.375502, 0.877788,
		0.931046, -0.089437, -0.353773,
		0.211349, 0.922496, 0.323005,
		58.069798, 56.935028, 55.858345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.644901, 56.435410, 55.791080>,  <57.921852, 56.289280, 55.632240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.644901, 56.435410, 55.791080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.451836, 56.695614, 56.025642>,  <58.335995, 56.851738, 56.166378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.451836, 56.695614, 56.025642>,  <58.644901, 56.435410, 55.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.451836, 56.695614, 56.025642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424276, -0.412071, 0.806342,
		0.766174, 0.637991, -0.077103,
		-0.482668, 0.650511, 0.586402,
		58.307034, 56.890766, 56.201565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.972141, 56.602657, 55.124779>,  <58.644901, 56.435410, 55.791080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.972141, 56.602657, 55.124779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160904, 56.360191, 54.868698>,  <59.274162, 56.214710, 54.715050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.160904, 56.360191, 54.868698>,  <58.972141, 56.602657, 55.124779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.160904, 56.360191, 54.868698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727456, -0.142535, 0.671187,
		-0.498104, -0.782459, 0.373698,
		0.471911, -0.606169, -0.640202,
		59.302479, 56.178341, 54.676636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.979717, 55.922909, 55.426868>,  <58.972141, 56.602657, 55.124779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.979717, 55.922909, 55.426868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.275925, 56.074337, 55.204765>,  <59.453651, 56.165195, 55.071503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.275925, 56.074337, 55.204765>,  <58.979717, 55.922909, 55.426868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.275925, 56.074337, 55.204765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629836, -0.102799, 0.769896,
		0.234382, -0.919845, -0.314563,
		0.740521, 0.378573, -0.555257,
		59.498081, 56.187908, 55.038189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.587494, 55.560936, 55.486248>,  <58.979717, 55.922909, 55.426868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.587494, 55.560936, 55.486248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701981, 55.920776, 55.354309>,  <59.770672, 56.136681, 55.275146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.701981, 55.920776, 55.354309>,  <59.587494, 55.560936, 55.486248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.701981, 55.920776, 55.354309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784798, -0.022611, 0.619339,
		0.549700, -0.436129, -0.712476,
		0.286221, 0.899600, -0.329844,
		59.787846, 56.190655, 55.255356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.279602, 55.602821, 55.551609>,  <59.587494, 55.560936, 55.486248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.279602, 55.602821, 55.551609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.146576, 55.979984, 55.544403>,  <60.066761, 56.206284, 55.540081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.146576, 55.979984, 55.544403>,  <60.279602, 55.602821, 55.551609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.146576, 55.979984, 55.544403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635341, 0.238122, 0.734602,
		0.696951, 0.232861, -0.678259,
		-0.332569, 0.942907, -0.018013,
		60.046806, 56.262856, 55.538998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.852516, 55.826042, 55.728565>,  <60.279602, 55.602821, 55.551609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.852516, 55.826042, 55.728565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.561432, 56.088997, 55.806824>,  <60.386780, 56.246769, 55.853779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.561432, 56.088997, 55.806824>,  <60.852516, 55.826042, 55.728565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.561432, 56.088997, 55.806824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517877, 0.339610, 0.785155,
		0.449706, 0.672688, -0.587584,
		-0.727714, 0.657385, 0.195645,
		60.343117, 56.286213, 55.865517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.176392, 55.204762, 55.464516>,  <60.852516, 55.826042, 55.728565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.176392, 55.204762, 55.464516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.472801, 55.367184, 55.678429>,  <61.650646, 55.464638, 55.806778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.472801, 55.367184, 55.678429>,  <61.176392, 55.204762, 55.464516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.472801, 55.367184, 55.678429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366499, -0.422750, 0.828831,
		0.562635, -0.810184, -0.164449,
		0.741027, 0.406059, 0.534786,
		61.695110, 55.489002, 55.838863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.530106, 54.658863, 55.883621>,  <61.176392, 55.204762, 55.464516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.530106, 54.658863, 55.883621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.587585, 55.013451, 56.059586>,  <61.622074, 55.226204, 56.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.587585, 55.013451, 56.059586>,  <61.530106, 54.658863, 55.883621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.587585, 55.013451, 56.059586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259828, -0.395129, 0.881114,
		0.954902, -0.240920, 0.173549,
		0.143704, 0.886471, 0.439907,
		61.630695, 55.279392, 56.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.761738, 54.054146, 56.192055>,  <61.530106, 54.658863, 55.883621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.761738, 54.054146, 56.192055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.101067, 54.230244, 56.074387>,  <62.304665, 54.335903, 56.003784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.101067, 54.230244, 56.074387>,  <61.761738, 54.054146, 56.192055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.101067, 54.230244, 56.074387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471739, 0.880722, -0.042321,
		0.240449, 0.174673, 0.954816,
		0.848320, 0.440248, -0.294169,
		62.355564, 54.362316, 55.986137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.987148, 54.466911, 56.683746>,  <61.761738, 54.054146, 56.192055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.987148, 54.466911, 56.683746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.076958, 54.580795, 56.310966>,  <62.130844, 54.649124, 56.087299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.076958, 54.580795, 56.310966>,  <61.987148, 54.466911, 56.683746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.076958, 54.580795, 56.310966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551641, 0.825507, 0.119290,
		0.803293, 0.487318, 0.342406,
		0.224526, 0.284710, -0.931949,
		62.144314, 54.666206, 56.031384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.646244, 55.077709, 57.143108>,  <61.987148, 54.466911, 56.683746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.646244, 55.077709, 57.143108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.821861, 55.260582, 57.452492>,  <61.927231, 55.370304, 57.638123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.821861, 55.260582, 57.452492>,  <61.646244, 55.077709, 57.143108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.821861, 55.260582, 57.452492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897917, -0.193120, -0.395537,
		-0.031462, 0.868154, -0.495296,
		0.439039, 0.457180, 0.773454,
		61.953571, 55.397736, 57.684528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.081692, 55.673672, 56.845612>,  <61.646244, 55.077709, 57.143108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.081692, 55.673672, 56.845612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195442, 55.463081, 57.166100>,  <62.263691, 55.336727, 57.358391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.195442, 55.463081, 57.166100>,  <62.081692, 55.673672, 56.845612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.195442, 55.463081, 57.166100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768240, -0.374818, -0.518960,
		0.573531, 0.763109, 0.297869,
		0.284376, -0.526475, 0.801221,
		62.280754, 55.305138, 57.406467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.837528, 55.686974, 56.970203>,  <62.081692, 55.673672, 56.845612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.837528, 55.686974, 56.970203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.705292, 55.353146, 57.146477>,  <62.625950, 55.152847, 57.252239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.705292, 55.353146, 57.146477>,  <62.837528, 55.686974, 56.970203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.705292, 55.353146, 57.146477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838352, -0.474132, -0.269007,
		0.433448, 0.280517, 0.856407,
		-0.330589, -0.834571, 0.440684,
		62.606113, 55.102776, 57.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.132042, 55.530239, 57.601494>,  <62.837528, 55.686974, 56.970203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.132042, 55.530239, 57.601494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.048546, 55.201218, 57.389900>,  <62.998447, 55.003803, 57.262943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.048546, 55.201218, 57.389900>,  <63.132042, 55.530239, 57.601494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.048546, 55.201218, 57.389900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961936, -0.270238, 0.040623,
		-0.176367, -0.500369, 0.847659,
		-0.208743, -0.822558, -0.528984,
		62.985924, 54.954449, 57.231205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.470856, 55.114838, 57.899971>,  <63.132042, 55.530239, 57.601494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.470856, 55.114838, 57.899971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.417725, 54.955334, 57.537018>,  <63.385845, 54.859631, 57.319244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.417725, 54.955334, 57.537018>,  <63.470856, 55.114838, 57.899971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.417725, 54.955334, 57.537018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950627, -0.310322, -0.002781,
		-0.280472, -0.862953, 0.420295,
		-0.132826, -0.398764, -0.907383,
		63.377876, 54.835705, 57.264801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.556007, 54.350521, 57.805527>,  <63.470856, 55.114838, 57.899971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.556007, 54.350521, 57.805527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.700600, 54.580006, 57.511536>,  <63.787354, 54.717697, 57.335140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.700600, 54.580006, 57.511536>,  <63.556007, 54.350521, 57.805527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.700600, 54.580006, 57.511536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928674, -0.291759, 0.229001,
		-0.083056, -0.765332, -0.638255,
		0.361479, 0.573711, -0.734976,
		63.809044, 54.752117, 57.291042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.803940, 53.984329, 57.306320>,  <63.556007, 54.350521, 57.805527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.803940, 53.984329, 57.306320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017426, 54.321327, 57.335571>,  <64.145515, 54.523525, 57.353123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017426, 54.321327, 57.335571>,  <63.803940, 53.984329, 57.306320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.017426, 54.321327, 57.335571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830111, -0.538442, 0.144897,
		0.161452, -0.016627, -0.986741,
		0.533712, 0.842499, 0.073130,
		64.177536, 54.574078, 57.357510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.458420, 53.801304, 57.587044>,  <63.803940, 53.984329, 57.306320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.458420, 53.801304, 57.587044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.522598, 54.185127, 57.494514>,  <64.561104, 54.415421, 57.438999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.522598, 54.185127, 57.494514>,  <64.458420, 53.801304, 57.587044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.522598, 54.185127, 57.494514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974849, -0.117323, 0.189488,
		0.154685, -0.255905, -0.954246,
		0.160446, 0.959556, -0.231320,
		64.570732, 54.472996, 57.425117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.938034, 53.887966, 56.936928>,  <64.458420, 53.801304, 57.587044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.938034, 53.887966, 56.936928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.970070, 54.197800, 57.187881>,  <64.989296, 54.383701, 57.338451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.970070, 54.197800, 57.187881>,  <64.938034, 53.887966, 56.936928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.970070, 54.197800, 57.187881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973183, -0.196927, 0.118889,
		0.215638, 0.601033, -0.769584,
		0.080096, 0.774583, 0.627380,
		64.994095, 54.430176, 57.376095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.440361, 54.355019, 56.777832>,  <64.938034, 53.887966, 56.936928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.440361, 54.355019, 56.777832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.397835, 54.395927, 57.173454>,  <65.372322, 54.420471, 57.410828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.397835, 54.395927, 57.173454>,  <65.440361, 54.355019, 56.777832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.397835, 54.395927, 57.173454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981727, -0.147084, 0.120737,
		0.157822, 0.983823, -0.084765,
		-0.106317, 0.102271, 0.989059,
		65.365936, 54.426609, 57.470173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.995216, 54.794804, 57.001743>,  <65.440361, 54.355019, 56.777832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.995216, 54.794804, 57.001743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.844498, 54.534775, 57.265694>,  <65.754066, 54.378757, 57.424065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.844498, 54.534775, 57.265694>,  <65.995216, 54.794804, 57.001743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.844498, 54.534775, 57.265694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906119, -0.406555, 0.116884,
		0.192291, 0.641964, 0.742231,
		-0.376793, -0.650073, 0.659872,
		65.731461, 54.339752, 57.463654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.249992, 54.867203, 57.733952>,  <65.995216, 54.794804, 57.001743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.249992, 54.867203, 57.733952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.184097, 54.495911, 57.600540>,  <66.144562, 54.273136, 57.520493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.184097, 54.495911, 57.600540>,  <66.249992, 54.867203, 57.733952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.184097, 54.495911, 57.600540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924617, -0.263074, 0.275456,
		-0.343431, -0.263011, 0.901599,
		-0.164739, -0.928234, -0.333532,
		66.134674, 54.217442, 57.500481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.977470, 54.640347, 57.814129>,  <66.249992, 54.867203, 57.733952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.977470, 54.640347, 57.814129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294769, 54.534763, 57.594643>,  <67.485146, 54.471413, 57.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.294769, 54.534763, 57.594643>,  <66.977470, 54.640347, 57.814129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.294769, 54.534763, 57.594643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499991, 0.231960, -0.834388,
		0.347521, 0.936228, 0.052026,
		0.793245, -0.263955, -0.548716,
		67.532745, 54.455578, 57.430027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.179268, 55.182991, 57.236980>,  <66.977470, 54.640347, 57.814129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.179268, 55.182991, 57.236980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.261024, 54.800884, 57.151482>,  <67.310081, 54.571621, 57.100182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.261024, 54.800884, 57.151482>,  <67.179268, 55.182991, 57.236980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.261024, 54.800884, 57.151482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718277, 0.001997, -0.695754,
		0.665058, 0.295741, -0.685737,
		0.204394, -0.955266, -0.213752,
		67.322342, 54.514305, 57.087357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.957497, 55.297501, 57.274620>,  <67.179268, 55.182991, 57.236980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.957497, 55.297501, 57.274620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319916, 55.129288, 57.255745>,  <68.537369, 55.028362, 57.244419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.319916, 55.129288, 57.255745>,  <67.957497, 55.297501, 57.274620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.319916, 55.129288, 57.255745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075301, -0.050501, -0.995881,
		0.416414, 0.905872, -0.077423,
		0.906051, -0.420529, -0.047184,
		68.591728, 55.003128, 57.241589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.330894, 55.647003, 56.792583>,  <67.957497, 55.297501, 57.274620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.330894, 55.647003, 56.792583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519821, 55.297443, 56.838554>,  <68.633179, 55.087708, 56.866138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.519821, 55.297443, 56.838554>,  <68.330894, 55.647003, 56.792583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.519821, 55.297443, 56.838554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049823, -0.156654, -0.986396,
		0.880016, 0.460171, -0.117532,
		0.472323, -0.873900, 0.114931,
		68.661514, 55.035275, 56.873035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.966194, 55.645855, 56.465027>,  <68.330894, 55.647003, 56.792583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.966194, 55.645855, 56.465027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.788277, 55.287998, 56.448143>,  <68.681526, 55.073284, 56.438015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.788277, 55.287998, 56.448143>,  <68.966194, 55.645855, 56.465027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.788277, 55.287998, 56.448143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018205, 0.038085, -0.999109,
		0.895451, -0.445160, -0.000653,
		-0.444788, -0.894641, -0.042208,
		68.654839, 55.019608, 56.435482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.504684, 55.558060, 56.973396>,  <68.966194, 55.645855, 56.465027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.504684, 55.558060, 56.973396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.890678, 55.486252, 56.896896>,  <70.122276, 55.443169, 56.850998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.890678, 55.486252, 56.896896>,  <69.504684, 55.558060, 56.973396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.890678, 55.486252, 56.896896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013209, 0.694922, -0.718964,
		0.261968, 0.696316, 0.668219,
		0.964986, -0.179519, -0.191245,
		70.180176, 55.432396, 56.839523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.993652, 56.092632, 57.035988>,  <69.504684, 55.558060, 56.973396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.993652, 56.092632, 57.035988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.103462, 55.863770, 56.726852>,  <70.169350, 55.726452, 56.541370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.103462, 55.863770, 56.726852>,  <69.993652, 56.092632, 57.035988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.103462, 55.863770, 56.726852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308083, 0.709009, -0.634343,
		0.910892, 0.412235, 0.018363,
		0.274518, -0.572161, -0.772834,
		70.185814, 55.692120, 56.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.810143, 56.342056, 56.916752>,  <69.993652, 56.092632, 57.035988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.810143, 56.342056, 56.916752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.859879, 56.673672, 57.134827>,  <70.889725, 56.872643, 57.265671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.859879, 56.673672, 57.134827>,  <70.810143, 56.342056, 56.916752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.859879, 56.673672, 57.134827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845611, -0.376001, 0.378900,
		0.519116, 0.413903, -0.747799,
		0.124345, 0.829040, 0.545189,
		70.897179, 56.922382, 57.298382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.508156, 56.457375, 57.029427>,  <70.810143, 56.342056, 56.916752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.508156, 56.457375, 57.029427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.351913, 56.664284, 57.334023>,  <71.258171, 56.788429, 57.516781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.351913, 56.664284, 57.334023>,  <71.508156, 56.457375, 57.029427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.351913, 56.664284, 57.334023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780968, -0.251730, 0.571595,
		0.487358, 0.817963, -0.305645,
		-0.390604, 0.517270, 0.761485,
		71.234734, 56.819466, 57.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.836136, 57.097591, 57.282902>,  <71.508156, 56.457375, 57.029427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.836136, 57.097591, 57.282902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.665604, 56.872272, 57.566010>,  <71.563286, 56.737083, 57.735874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.665604, 56.872272, 57.566010>,  <71.836136, 57.097591, 57.282902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.665604, 56.872272, 57.566010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897598, -0.360368, 0.253877,
		0.112049, 0.743528, 0.659250,
		-0.426337, -0.563295, 0.707768,
		71.537704, 56.703285, 57.778339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.245544, 57.207279, 57.872093>,  <71.836136, 57.097591, 57.282902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.245544, 57.207279, 57.872093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.053070, 56.857639, 57.898643>,  <71.937584, 56.647854, 57.914574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.053070, 56.857639, 57.898643>,  <72.245544, 57.207279, 57.872093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.053070, 56.857639, 57.898643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823170, -0.424511, 0.377069,
		-0.301418, 0.236081, 0.923804,
		-0.481184, -0.874103, 0.066380,
		71.908714, 56.595409, 57.918556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.520592, 57.041393, 58.547638>,  <72.245544, 57.207279, 57.872093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.520592, 57.041393, 58.547638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.404610, 56.748402, 58.301254>,  <72.335022, 56.572609, 58.153423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.404610, 56.748402, 58.301254>,  <72.520592, 57.041393, 58.547638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.404610, 56.748402, 58.301254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762695, -0.565641, 0.313602,
		-0.578115, -0.378853, 0.722671,
		-0.289964, -0.732476, -0.615955,
		72.317619, 56.528660, 58.116467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.416374, 56.915344, 59.239635>,  <72.520592, 57.041393, 58.547638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.416374, 56.915344, 59.239635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650879, 56.772167, 59.530334>,  <72.791580, 56.686260, 59.704754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.650879, 56.772167, 59.530334>,  <72.416374, 56.915344, 59.239635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.650879, 56.772167, 59.530334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094037, 0.921096, 0.377809,
		-0.804640, -0.153157, 0.573670,
		0.586269, -0.357946, 0.726748,
		72.826759, 56.664783, 59.748360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.104141, 57.202026, 59.800514>,  <72.416374, 56.915344, 59.239635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.104141, 57.202026, 59.800514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494118, 57.114868, 59.818466>,  <72.728104, 57.062572, 59.829235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.494118, 57.114868, 59.818466>,  <72.104141, 57.202026, 59.800514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.494118, 57.114868, 59.818466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203348, 0.954634, 0.217542,
		-0.090244, -0.202964, 0.975019,
		0.974939, -0.217900, 0.044878,
		72.786598, 57.049500, 59.831928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.311966, 57.765724, 60.253174>,  <72.104141, 57.202026, 59.800514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.311966, 57.765724, 60.253174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630722, 57.559357, 60.127449>,  <72.821976, 57.435535, 60.052013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.630722, 57.559357, 60.127449>,  <72.311966, 57.765724, 60.253174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.630722, 57.559357, 60.127449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570144, 0.814292, 0.108918,
		0.199746, -0.265997, 0.943052,
		0.796892, -0.515920, -0.314308,
		72.869789, 57.404579, 60.033157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
