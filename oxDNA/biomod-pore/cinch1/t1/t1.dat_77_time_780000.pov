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
	<42.864315, 32.263733, 22.352575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961830, 32.353710, 22.729927>,  <43.020340, 32.407696, 22.956339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.961830, 32.353710, 22.729927>,  <42.864315, 32.263733, 22.352575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961830, 32.353710, 22.729927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877888, 0.464583, 0.116085,
		-0.412166, -0.856483, 0.310736,
		0.243787, 0.224945, 0.943381,
		43.034966, 32.421192, 23.012941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310413, 32.107201, 22.820089>,  <42.864315, 32.263733, 22.352575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310413, 32.107201, 22.820089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542553, 32.416206, 22.923176>,  <42.681839, 32.601608, 22.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542553, 32.416206, 22.923176>,  <42.310413, 32.107201, 22.820089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542553, 32.416206, 22.923176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783153, 0.616199, -0.083482,
		-0.223296, -0.153383, 0.962607,
		0.580353, 0.772511, 0.257718,
		42.716660, 32.647961, 23.000492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619934, 32.063534, 23.137117>,  <42.310413, 32.107201, 22.820089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619934, 32.063534, 23.137117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535503, 31.697353, 23.274170>,  <41.484844, 31.477646, 23.356401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.535503, 31.697353, 23.274170>,  <41.619934, 32.063534, 23.137117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535503, 31.697353, 23.274170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681040, -0.113707, -0.723364,
		0.701163, -0.386035, -0.599457,
		-0.211081, -0.915450, 0.342633,
		41.472179, 31.422718, 23.376959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484406, 31.721895, 22.550894>,  <41.619934, 32.063534, 23.137117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484406, 31.721895, 22.550894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340923, 31.498730, 22.850243>,  <41.254833, 31.364830, 23.029852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340923, 31.498730, 22.850243>,  <41.484406, 31.721895, 22.550894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340923, 31.498730, 22.850243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842073, -0.152552, -0.517341,
		0.402798, -0.815757, -0.415084,
		-0.358702, -0.557915, 0.748374,
		41.233311, 31.331356, 23.074755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359699, 31.022432, 22.368464>,  <41.484406, 31.721895, 22.550894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359699, 31.022432, 22.368464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103985, 31.186443, 22.628677>,  <40.950558, 31.284849, 22.784805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103985, 31.186443, 22.628677>,  <41.359699, 31.022432, 22.368464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103985, 31.186443, 22.628677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759354, -0.203238, -0.618123,
		-0.121234, -0.889141, 0.441282,
		-0.639284, 0.410027, 0.650534,
		40.912201, 31.309452, 22.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654461, 31.169510, 22.106972>,  <41.359699, 31.022432, 22.368464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654461, 31.169510, 22.106972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293594, 31.338604, 22.141350>,  <40.077072, 31.440060, 22.161978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.293594, 31.338604, 22.141350>,  <40.654461, 31.169510, 22.106972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293594, 31.338604, 22.141350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191781, 0.214575, 0.957694,
		0.386407, 0.880485, -0.274655,
		-0.902169, 0.422733, 0.085947,
		40.022945, 31.465424, 22.167133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698162, 31.870914, 22.505009>,  <40.654461, 31.169510, 22.106972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698162, 31.870914, 22.505009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323761, 31.737392, 22.549698>,  <40.099121, 31.657280, 22.576511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323761, 31.737392, 22.549698>,  <40.698162, 31.870914, 22.505009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323761, 31.737392, 22.549698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072800, 0.126954, 0.989233,
		-0.344393, 0.934055, -0.094528,
		-0.935999, -0.333803, 0.111721,
		40.042961, 31.637251, 22.583214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313107, 32.441578, 22.827503>,  <40.698162, 31.870914, 22.505009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313107, 32.441578, 22.827503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103760, 32.110558, 22.908741>,  <39.978149, 31.911945, 22.957483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103760, 32.110558, 22.908741>,  <40.313107, 32.441578, 22.827503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103760, 32.110558, 22.908741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092728, 0.292240, 0.951839,
		-0.847045, 0.479333, -0.229686,
		-0.523371, -0.827548, 0.203093,
		39.946747, 31.862293, 22.969669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758564, 32.725246, 23.162893>,  <40.313107, 32.441578, 22.827503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758564, 32.725246, 23.162893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809799, 32.338642, 23.251846>,  <39.840538, 32.106682, 23.305218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809799, 32.338642, 23.251846>,  <39.758564, 32.725246, 23.162893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809799, 32.338642, 23.251846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100391, 0.210445, 0.972438,
		-0.986669, -0.146878, -0.070074,
		0.128083, -0.966509, 0.222385,
		39.848225, 32.048691, 23.318562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218880, 32.618149, 23.649153>,  <39.758564, 32.725246, 23.162893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218880, 32.618149, 23.649153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479328, 32.320004, 23.706390>,  <39.635597, 32.141117, 23.740732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479328, 32.320004, 23.706390>,  <39.218880, 32.618149, 23.649153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479328, 32.320004, 23.706390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192083, 0.020565, 0.981163,
		-0.734263, -0.666345, -0.129781,
		0.651124, -0.745360, 0.143093,
		39.674667, 32.096397, 23.749319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859390, 32.164383, 24.097059>,  <39.218880, 32.618149, 23.649153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859390, 32.164383, 24.097059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251228, 32.092247, 24.132534>,  <39.486332, 32.048965, 24.153818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251228, 32.092247, 24.132534>,  <38.859390, 32.164383, 24.097059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251228, 32.092247, 24.132534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059571, 0.160885, 0.985174,
		-0.191936, -0.970357, 0.146860,
		0.979598, -0.180342, 0.088685,
		39.545109, 32.038143, 24.159140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916348, 31.594023, 24.537691>,  <38.859390, 32.164383, 24.097059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916348, 31.594023, 24.537691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261410, 31.794792, 24.562641>,  <39.468449, 31.915255, 24.577610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.261410, 31.794792, 24.562641>,  <38.916348, 31.594023, 24.537691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261410, 31.794792, 24.562641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097265, 0.043609, 0.994303,
		0.496346, -0.863811, 0.086440,
		0.862659, 0.501926, 0.062373,
		39.520206, 31.945370, 24.581352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178532, 31.249271, 25.044073>,  <38.916348, 31.594023, 24.537691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178532, 31.249271, 25.044073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391407, 31.587570, 25.028622>,  <39.519131, 31.790550, 25.019350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.391407, 31.587570, 25.028622>,  <39.178532, 31.249271, 25.044073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391407, 31.587570, 25.028622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042471, 0.018900, 0.998919,
		0.845563, -0.533249, -0.025861,
		0.532184, 0.845747, -0.038629,
		39.551064, 31.841293, 25.017033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497795, 31.213182, 25.638971>,  <39.178532, 31.249271, 25.044073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497795, 31.213182, 25.638971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549782, 31.592731, 25.523907>,  <39.580975, 31.820461, 25.454868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.549782, 31.592731, 25.523907>,  <39.497795, 31.213182, 25.638971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549782, 31.592731, 25.523907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197404, 0.309076, 0.930325,
		0.971669, -0.064125, 0.227480,
		0.129965, 0.948873, -0.287661,
		39.588772, 31.877394, 25.437609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964291, 31.555492, 26.108496>,  <39.497795, 31.213182, 25.638971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964291, 31.555492, 26.108496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724258, 31.839283, 25.960686>,  <39.580238, 32.009556, 25.872000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724258, 31.839283, 25.960686>,  <39.964291, 31.555492, 26.108496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724258, 31.839283, 25.960686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366708, 0.166567, 0.915304,
		0.710935, 0.684764, 0.160217,
		-0.600080, 0.709474, -0.369526,
		39.544235, 32.052124, 25.849827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990990, 32.059399, 26.594580>,  <39.964291, 31.555492, 26.108496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990990, 32.059399, 26.594580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658508, 32.162941, 26.397766>,  <39.459019, 32.225067, 26.279678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.658508, 32.162941, 26.397766>,  <39.990990, 32.059399, 26.594580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658508, 32.162941, 26.397766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502110, 0.030488, 0.864267,
		0.238723, 0.965434, 0.104633,
		-0.831202, 0.258858, -0.492032,
		39.409149, 32.240597, 26.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750160, 32.474514, 27.015902>,  <39.990990, 32.059399, 26.594580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750160, 32.474514, 27.015902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444099, 32.401119, 26.769039>,  <39.260464, 32.357082, 26.620922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.444099, 32.401119, 26.769039>,  <39.750160, 32.474514, 27.015902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444099, 32.401119, 26.769039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608352, -0.107862, 0.786304,
		-0.210844, 0.977087, -0.029094,
		-0.765149, -0.183486, -0.617155,
		39.214554, 32.346073, 26.583893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209007, 32.968922, 27.254597>,  <39.750160, 32.474514, 27.015902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209007, 32.968922, 27.254597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032154, 32.674988, 27.048862>,  <38.926044, 32.498627, 26.925421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032154, 32.674988, 27.048862>,  <39.209007, 32.968922, 27.254597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032154, 32.674988, 27.048862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704696, -0.070178, 0.706030,
		-0.554908, 0.674609, -0.486806,
		-0.442131, -0.734832, -0.514337,
		38.899513, 32.454536, 26.894562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482685, 33.092213, 27.483034>,  <39.209007, 32.968922, 27.254597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482685, 33.092213, 27.483034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520279, 32.724094, 27.331123>,  <38.542835, 32.503223, 27.239977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520279, 32.724094, 27.331123>,  <38.482685, 33.092213, 27.483034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520279, 32.724094, 27.331123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697270, -0.333130, 0.634696,
		-0.710620, 0.205156, -0.673001,
		0.093985, -0.920291, -0.379778,
		38.548473, 32.448006, 27.217190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772171, 32.893234, 27.372982>,  <38.482685, 33.092213, 27.483034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772171, 32.893234, 27.372982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982983, 32.553917, 27.393501>,  <38.109470, 32.350327, 27.405813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982983, 32.553917, 27.393501>,  <37.772171, 32.893234, 27.372982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982983, 32.553917, 27.393501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707261, -0.404342, 0.579905,
		-0.471189, -0.341908, -0.813068,
		0.527032, -0.848296, 0.051297,
		38.141090, 32.299427, 27.408890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301254, 32.400707, 27.321520>,  <37.772171, 32.893234, 27.372982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301254, 32.400707, 27.321520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617130, 32.221245, 27.488899>,  <37.806656, 32.113567, 27.589327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.617130, 32.221245, 27.488899>,  <37.301254, 32.400707, 27.321520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617130, 32.221245, 27.488899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596822, -0.403792, 0.693366,
		-0.142118, -0.797282, -0.586638,
		0.789688, -0.448658, 0.418449,
		37.854038, 32.086647, 27.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075195, 31.695721, 27.377705>,  <37.301254, 32.400707, 27.321520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075195, 31.695721, 27.377705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375336, 31.758728, 27.634502>,  <37.555420, 31.796532, 27.788582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375336, 31.758728, 27.634502>,  <37.075195, 31.695721, 27.377705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375336, 31.758728, 27.634502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524640, -0.448925, 0.723339,
		0.402145, -0.879576, -0.254214,
		0.750355, 0.157517, 0.641994,
		37.600441, 31.805983, 27.827101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107422, 31.033476, 27.758312>,  <37.075195, 31.695721, 27.377705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107422, 31.033476, 27.758312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328930, 31.292526, 27.967663>,  <37.461834, 31.447956, 28.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328930, 31.292526, 27.967663>,  <37.107422, 31.033476, 27.758312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328930, 31.292526, 27.967663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346012, -0.392738, 0.852075,
		0.757377, -0.652945, 0.006602,
		0.553765, 0.647627, 0.523378,
		37.495060, 31.486814, 28.124676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449436, 30.648939, 28.265112>,  <37.107422, 31.033476, 27.758312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449436, 30.648939, 28.265112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468426, 31.030170, 28.384705>,  <37.479820, 31.258909, 28.456461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468426, 31.030170, 28.384705>,  <37.449436, 30.648939, 28.265112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468426, 31.030170, 28.384705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247570, -0.278756, 0.927903,
		0.967706, -0.118066, 0.222720,
		0.047470, 0.953077, 0.298983,
		37.482666, 31.316093, 28.474400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738644, 30.616478, 28.897291>,  <37.449436, 30.648939, 28.265112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738644, 30.616478, 28.897291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543335, 30.964905, 28.918583>,  <37.426151, 31.173960, 28.931358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543335, 30.964905, 28.918583>,  <37.738644, 30.616478, 28.897291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543335, 30.964905, 28.918583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288509, -0.218688, 0.932169,
		0.823621, 0.439795, 0.358089,
		-0.488273, 0.871066, 0.053231,
		37.396854, 31.226225, 28.934553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037308, 30.979589, 29.506805>,  <37.738644, 30.616478, 28.897291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037308, 30.979589, 29.506805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682758, 31.159420, 29.462570>,  <37.470028, 31.267319, 29.436029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.682758, 31.159420, 29.462570>,  <38.037308, 30.979589, 29.506805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682758, 31.159420, 29.462570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224400, -0.208242, 0.951988,
		0.404962, 0.868629, 0.285464,
		-0.886369, 0.449577, -0.110590,
		37.416847, 31.294292, 29.429394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952511, 31.644211, 29.938459>,  <38.037308, 30.979589, 29.506805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952511, 31.644211, 29.938459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633034, 31.407692, 29.893826>,  <37.441345, 31.265779, 29.867046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633034, 31.407692, 29.893826>,  <37.952511, 31.644211, 29.938459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633034, 31.407692, 29.893826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086669, -0.070460, 0.993742,
		-0.595460, 0.803369, 0.005029,
		-0.798696, -0.591298, -0.111583,
		37.393425, 31.230303, 29.860350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464169, 32.058941, 30.159164>,  <37.952511, 31.644211, 29.938459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464169, 32.058941, 30.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383560, 31.961998, 30.538776>,  <38.335194, 31.903833, 30.766542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383560, 31.961998, 30.538776>,  <38.464169, 32.058941, 30.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383560, 31.961998, 30.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670048, -0.672614, -0.314047,
		0.714440, -0.699181, -0.026844,
		-0.201520, -0.242355, 0.949028,
		38.323105, 31.889292, 30.823484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.652351, 31.317047, 30.348000>,  <38.464169, 32.058941, 30.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.652351, 31.317047, 30.348000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345993, 31.492886, 30.535683>,  <38.162178, 31.598389, 30.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345993, 31.492886, 30.535683>,  <38.652351, 31.317047, 30.348000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345993, 31.492886, 30.535683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639002, -0.601275, -0.479734,
		0.071234, -0.667252, 0.741418,
		-0.765899, 0.439595, 0.469207,
		38.116222, 31.624763, 30.676445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315536, 30.786360, 30.616428>,  <38.652351, 31.317047, 30.348000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315536, 30.786360, 30.616428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042957, 31.078255, 30.594124>,  <37.879410, 31.253391, 30.580742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042957, 31.078255, 30.594124>,  <38.315536, 30.786360, 30.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042957, 31.078255, 30.594124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680540, -0.659848, -0.318537,
		-0.269242, -0.179120, 0.946269,
		-0.681450, 0.729738, -0.055760,
		37.838524, 31.297176, 30.577396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726151, 30.550592, 31.003624>,  <38.315536, 30.786360, 30.616428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726151, 30.550592, 31.003624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558338, 30.831131, 30.773109>,  <37.457649, 30.999454, 30.634800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558338, 30.831131, 30.773109>,  <37.726151, 30.550592, 31.003624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558338, 30.831131, 30.773109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843800, -0.535363, -0.037255,
		-0.334651, 0.470640, 0.816398,
		-0.419535, 0.701345, -0.576286,
		37.432476, 31.041534, 30.600224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057281, 30.384186, 31.049311>,  <37.726151, 30.550592, 31.003624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057281, 30.384186, 31.049311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067509, 30.674767, 30.774612>,  <37.073647, 30.849115, 30.609795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067509, 30.674767, 30.774612>,  <37.057281, 30.384186, 31.049311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067509, 30.674767, 30.774612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815905, -0.381770, -0.434224,
		-0.577620, 0.571421, 0.582952,
		0.025571, 0.726449, -0.686744,
		37.075180, 30.892702, 30.568590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791821, 29.670521, 31.197550>,  <37.057281, 30.384186, 31.049311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791821, 29.670521, 31.197550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733162, 29.277889, 31.148567>,  <36.697968, 29.042311, 31.119179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733162, 29.277889, 31.148567>,  <36.791821, 29.670521, 31.197550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733162, 29.277889, 31.148567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936046, 0.177729, -0.303696,
		0.319866, 0.070088, -0.944867,
		-0.146645, -0.981580, -0.122455,
		36.689167, 28.983416, 31.111830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592922, 29.425688, 30.562754>,  <36.791821, 29.670521, 31.197550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592922, 29.425688, 30.562754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445660, 29.202362, 30.860142>,  <36.357304, 29.068367, 31.038574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445660, 29.202362, 30.860142>,  <36.592922, 29.425688, 30.562754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445660, 29.202362, 30.860142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929201, 0.248783, -0.273299,
		-0.032376, -0.791450, -0.610376,
		-0.368153, -0.558314, 0.743471,
		36.335213, 29.034868, 31.083183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823708, 29.598900, 30.591858>,  <36.592922, 29.425688, 30.562754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823708, 29.598900, 30.591858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806282, 29.319714, 30.877781>,  <35.795826, 29.152203, 31.049334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806282, 29.319714, 30.877781>,  <35.823708, 29.598900, 30.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806282, 29.319714, 30.877781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968112, 0.206174, 0.142310,
		-0.246702, -0.685812, -0.684689,
		-0.043567, -0.697964, 0.714806,
		35.793213, 29.110325, 31.092222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191338, 29.287552, 30.413675>,  <35.823708, 29.598900, 30.591858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191338, 29.287552, 30.413675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309978, 29.242092, 30.792961>,  <35.381161, 29.214817, 31.020533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309978, 29.242092, 30.792961>,  <35.191338, 29.287552, 30.413675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309978, 29.242092, 30.792961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947102, 0.092437, 0.307331,
		-0.122579, -0.989211, -0.080224,
		0.296600, -0.113653, 0.948215,
		35.398960, 29.207998, 31.077425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562103, 29.483072, 30.022314>,  <35.191338, 29.287552, 30.413675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562103, 29.483072, 30.022314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776314, 29.180786, 29.871529>,  <34.904842, 28.999414, 29.781057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776314, 29.180786, 29.871529>,  <34.562103, 29.483072, 30.022314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776314, 29.180786, 29.871529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233412, 0.561427, -0.793926,
		0.811620, 0.337184, 0.477054,
		0.535530, -0.755716, -0.376962,
		34.936974, 28.954071, 29.758440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151253, 29.699553, 29.707407>,  <34.562103, 29.483072, 30.022314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151253, 29.699553, 29.707407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115124, 29.355923, 29.505878>,  <35.093445, 29.149746, 29.384962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115124, 29.355923, 29.505878>,  <35.151253, 29.699553, 29.707407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115124, 29.355923, 29.505878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236270, 0.472961, -0.848814,
		0.967480, -0.195706, 0.160254,
		-0.090324, -0.859074, -0.503819,
		35.088028, 29.098200, 29.354733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573994, 29.718821, 29.162504>,  <35.151253, 29.699553, 29.707407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573994, 29.718821, 29.162504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348335, 29.417622, 29.027012>,  <35.212940, 29.236902, 28.945717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348335, 29.417622, 29.027012>,  <35.573994, 29.718821, 29.162504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348335, 29.417622, 29.027012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105648, 0.341045, -0.934091,
		0.818890, -0.562747, -0.112845,
		-0.564143, -0.752997, -0.338732,
		35.179092, 29.191723, 28.925392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973427, 29.208532, 28.837477>,  <35.573994, 29.718821, 29.162504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973427, 29.208532, 28.837477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604916, 29.172253, 28.686207>,  <35.383808, 29.150486, 28.595444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604916, 29.172253, 28.686207>,  <35.973427, 29.208532, 28.837477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604916, 29.172253, 28.686207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353744, 0.208593, -0.911786,
		0.161580, -0.973788, -0.160090,
		-0.921280, -0.090696, -0.378176,
		35.328533, 29.145042, 28.572754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054714, 29.012499, 28.190733>,  <35.973427, 29.208532, 28.837477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054714, 29.012499, 28.190733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667580, 29.110817, 28.169308>,  <35.435299, 29.169807, 28.156452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667580, 29.110817, 28.169308>,  <36.054714, 29.012499, 28.190733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667580, 29.110817, 28.169308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110876, 0.225668, -0.967874,
		-0.225814, -0.942686, -0.245664,
		-0.967840, 0.245798, -0.053562,
		35.377228, 29.184557, 28.153238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775475, 28.593115, 27.629515>,  <36.054714, 29.012499, 28.190733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775475, 28.593115, 27.629515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568462, 28.926178, 27.708347>,  <35.444252, 29.126015, 27.755648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568462, 28.926178, 27.708347>,  <35.775475, 28.593115, 27.629515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568462, 28.926178, 27.708347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197863, 0.340543, -0.919174,
		-0.832471, -0.436709, -0.340995,
		-0.517535, 0.832656, 0.197084,
		35.413200, 29.175974, 27.767473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548893, 28.677990, 27.006355>,  <35.775475, 28.593115, 27.629515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548893, 28.677990, 27.006355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470112, 29.021355, 27.195812>,  <35.422844, 29.227373, 27.309486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470112, 29.021355, 27.195812>,  <35.548893, 28.677990, 27.006355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470112, 29.021355, 27.195812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274821, 0.512077, -0.813788,
		-0.941106, -0.030113, -0.336766,
		-0.196956, 0.858412, 0.473643,
		35.411026, 29.278877, 27.337906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043957, 29.014679, 26.635736>,  <35.548893, 28.677990, 27.006355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043957, 29.014679, 26.635736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270859, 29.277748, 26.834007>,  <35.406998, 29.435589, 26.952969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270859, 29.277748, 26.834007>,  <35.043957, 29.014679, 26.635736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270859, 29.277748, 26.834007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090227, 0.548627, -0.831184,
		-0.818586, 0.516215, 0.251871,
		0.567253, 0.657671, 0.495675,
		35.441036, 29.475050, 26.982710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813702, 29.669878, 26.348490>,  <35.043957, 29.014679, 26.635736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813702, 29.669878, 26.348490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157131, 29.737095, 26.542240>,  <35.363190, 29.777426, 26.658491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157131, 29.737095, 26.542240>,  <34.813702, 29.669878, 26.348490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157131, 29.737095, 26.542240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281484, 0.635136, -0.719283,
		-0.428514, 0.753899, 0.498008,
		0.858570, 0.168042, 0.484375,
		35.414703, 29.787508, 26.687553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891983, 30.402620, 26.255564>,  <34.813702, 29.669878, 26.348490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891983, 30.402620, 26.255564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266785, 30.290764, 26.339310>,  <35.491665, 30.223650, 26.389557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266785, 30.290764, 26.339310>,  <34.891983, 30.402620, 26.255564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266785, 30.290764, 26.339310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335540, 0.553723, -0.762105,
		0.097187, 0.784342, 0.612669,
		0.936999, -0.279641, 0.209363,
		35.547886, 30.206871, 26.402119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285130, 30.970955, 26.132994>,  <34.891983, 30.402620, 26.255564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285130, 30.970955, 26.132994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569534, 30.689739, 26.127293>,  <35.740177, 30.521009, 26.123871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569534, 30.689739, 26.127293>,  <35.285130, 30.970955, 26.132994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569534, 30.689739, 26.127293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482102, 0.502125, -0.717947,
		0.511901, 0.503596, 0.695951,
		0.711010, -0.703037, -0.014253,
		35.782837, 30.478828, 26.123016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959572, 31.300734, 26.109571>,  <35.285130, 30.970955, 26.132994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959572, 31.300734, 26.109571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033226, 30.930511, 25.977242>,  <36.077419, 30.708378, 25.897844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033226, 30.930511, 25.977242>,  <35.959572, 31.300734, 26.109571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033226, 30.930511, 25.977242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494304, 0.378120, -0.782745,
		0.849564, -0.019397, 0.527130,
		0.184135, -0.925554, -0.330824,
		36.088467, 30.652845, 25.877995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682491, 31.202353, 26.066988>,  <35.959572, 31.300734, 26.109571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682491, 31.202353, 26.066988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525108, 30.920673, 25.830585>,  <36.430679, 30.751665, 25.688744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525108, 30.920673, 25.830585>,  <36.682491, 31.202353, 26.066988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525108, 30.920673, 25.830585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481319, 0.389925, -0.785042,
		0.783275, -0.593347, 0.185525,
		-0.393461, -0.704200, -0.591008,
		36.407070, 30.709414, 25.653282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285011, 30.979656, 25.589893>,  <36.682491, 31.202353, 26.066988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285011, 30.979656, 25.589893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 30.902267, 25.429718>,  <36.711788, 30.855835, 25.333612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.926746, 30.902267, 25.429718>,  <37.285011, 30.979656, 25.589893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926746, 30.902267, 25.429718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320259, 0.344155, -0.882605,
		0.308567, -0.918764, -0.246289,
		-0.895667, -0.193467, -0.400438,
		36.658047, 30.844227, 25.309586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406788, 30.624590, 24.934484>,  <37.285011, 30.979656, 25.589893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406788, 30.624590, 24.934484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038754, 30.772282, 24.882153>,  <36.817932, 30.860897, 24.850754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038754, 30.772282, 24.882153>,  <37.406788, 30.624590, 24.934484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038754, 30.772282, 24.882153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271668, 0.360844, -0.892182,
		-0.282213, -0.856422, -0.432315,
		-0.920082, 0.369232, -0.130827,
		36.762730, 30.883051, 24.842905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195213, 30.402430, 24.361242>,  <37.406788, 30.624590, 24.934484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195213, 30.402430, 24.361242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962948, 30.721302, 24.427376>,  <36.823589, 30.912626, 24.467056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962948, 30.721302, 24.427376>,  <37.195213, 30.402430, 24.361242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962948, 30.721302, 24.427376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164250, 0.313605, -0.935240,
		-0.797405, -0.515901, -0.313035,
		-0.580660, 0.797182, 0.165333,
		36.788750, 30.960457, 24.476976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881935, 30.558165, 23.735373>,  <37.195213, 30.402430, 24.361242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881935, 30.558165, 23.735373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810730, 30.887093, 23.951557>,  <36.768005, 31.084450, 24.081268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810730, 30.887093, 23.951557>,  <36.881935, 30.558165, 23.735373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810730, 30.887093, 23.951557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233060, 0.568840, -0.788736,
		-0.956031, -0.014444, -0.292911,
		-0.178012, 0.822321, 0.540462,
		36.757328, 31.133789, 24.113695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420067, 31.011360, 23.314598>,  <36.881935, 30.558165, 23.735373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420067, 31.011360, 23.314598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632694, 31.232704, 23.571106>,  <36.760269, 31.365511, 23.725010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632694, 31.232704, 23.571106>,  <36.420067, 31.011360, 23.314598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632694, 31.232704, 23.571106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294095, 0.589410, -0.752399,
		-0.794318, 0.588546, 0.150572,
		0.531570, 0.553361, 0.641268,
		36.792164, 31.398712, 23.763487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272797, 31.681440, 23.196924>,  <36.420067, 31.011360, 23.314598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272797, 31.681440, 23.196924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628551, 31.691334, 23.379520>,  <36.842003, 31.697269, 23.489079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628551, 31.691334, 23.379520>,  <36.272797, 31.681440, 23.196924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628551, 31.691334, 23.379520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322638, 0.673470, -0.665089,
		-0.323881, 0.738801, 0.590995,
		0.889385, 0.024732, 0.456490,
		36.895367, 31.698753, 23.516468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513939, 32.405010, 23.068178>,  <36.272797, 31.681440, 23.196924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513939, 32.405010, 23.068178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840958, 32.208279, 23.187984>,  <37.037170, 32.090240, 23.259869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840958, 32.208279, 23.187984>,  <36.513939, 32.405010, 23.068178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840958, 32.208279, 23.187984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562846, 0.572555, -0.596142,
		0.121713, 0.655958, 0.744920,
		0.817552, -0.491833, 0.299515,
		37.086224, 32.060730, 23.277840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923569, 32.998684, 23.094885>,  <36.513939, 32.405010, 23.068178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923569, 32.998684, 23.094885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162090, 32.678371, 23.072323>,  <37.305202, 32.486183, 23.058786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162090, 32.678371, 23.072323>,  <36.923569, 32.998684, 23.094885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162090, 32.678371, 23.072323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388581, 0.349412, -0.852594,
		0.702447, 0.486484, 0.519521,
		0.596300, -0.800777, -0.056406,
		37.340981, 32.438137, 23.055401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517868, 33.238777, 23.008017>,  <36.923569, 32.998684, 23.094885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517868, 33.238777, 23.008017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500652, 32.878307, 22.835487>,  <37.490322, 32.662025, 22.731970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500652, 32.878307, 22.835487>,  <37.517868, 33.238777, 23.008017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500652, 32.878307, 22.835487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359134, 0.388910, -0.848394,
		0.932293, -0.191417, 0.306902,
		-0.043040, -0.901171, -0.431322,
		37.487740, 32.607956, 22.706091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427139, 34.000992, 22.923912>,  <37.517868, 33.238777, 23.008017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427139, 34.000992, 22.923912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140579, 34.135868, 23.168232>,  <36.968643, 34.216793, 23.314823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140579, 34.135868, 23.168232>,  <37.427139, 34.000992, 22.923912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140579, 34.135868, 23.168232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428662, 0.478008, -0.766654,
		-0.550474, -0.811056, -0.197904,
		-0.716399, 0.337189, 0.610799,
		36.925659, 34.237026, 23.351471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778862, 33.670086, 22.846924>,  <37.427139, 34.000992, 22.923912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778862, 33.670086, 22.846924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751339, 34.053650, 22.957016>,  <36.734825, 34.283791, 23.023071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751339, 34.053650, 22.957016>,  <36.778862, 33.670086, 22.846924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751339, 34.053650, 22.957016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371581, 0.231402, -0.899100,
		-0.925847, -0.164136, 0.340392,
		-0.068808, 0.958912, 0.275232,
		36.730698, 34.341324, 23.039585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096642, 33.908527, 22.664579>,  <36.778862, 33.670086, 22.846924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096642, 33.908527, 22.664579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361935, 34.207088, 22.686493>,  <36.521111, 34.386227, 22.699640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361935, 34.207088, 22.686493>,  <36.096642, 33.908527, 22.664579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361935, 34.207088, 22.686493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136313, 0.192451, -0.971793,
		-0.735891, 0.637062, 0.229385,
		0.663237, 0.746401, 0.054783,
		36.560905, 34.431007, 22.702929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717152, 34.445335, 22.272142>,  <36.096642, 33.908527, 22.664579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717152, 34.445335, 22.272142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109116, 34.518318, 22.304356>,  <36.344296, 34.562107, 22.323685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109116, 34.518318, 22.304356>,  <35.717152, 34.445335, 22.272142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109116, 34.518318, 22.304356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014344, 0.338283, -0.940935,
		-0.198922, 0.923187, 0.328870,
		0.979910, 0.182456, 0.080534,
		36.403088, 34.573055, 22.328516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902359, 33.849941, 21.868080>,  <35.717152, 34.445335, 22.272142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902359, 33.849941, 21.868080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133999, 33.606529, 21.651070>,  <36.272984, 33.460484, 21.520863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133999, 33.606529, 21.651070>,  <35.902359, 33.849941, 21.868080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133999, 33.606529, 21.651070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036813, -0.645269, 0.763068,
		-0.814425, -0.461864, -0.351273,
		0.579100, -0.608531, -0.542526,
		36.307728, 33.423969, 21.488312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634811, 33.303539, 22.016172>,  <35.902359, 33.849941, 21.868080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634811, 33.303539, 22.016172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005016, 33.201519, 21.904190>,  <36.227139, 33.140308, 21.837000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005016, 33.201519, 21.904190>,  <35.634811, 33.303539, 22.016172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005016, 33.201519, 21.904190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036675, -0.675390, 0.736548,
		-0.376936, -0.691952, -0.615728,
		0.925513, -0.255050, -0.279957,
		36.282669, 33.125004, 21.820204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260201, 32.641594, 21.734097>,  <35.634811, 33.303539, 22.016172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260201, 32.641594, 21.734097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985168, 32.816883, 21.965683>,  <34.820148, 32.922054, 22.104635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985168, 32.816883, 21.965683>,  <35.260201, 32.641594, 21.734097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985168, 32.816883, 21.965683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420818, -0.890283, 0.174094,
		0.591735, -0.123936, 0.796549,
		-0.687577, 0.438219, 0.578966,
		34.778896, 32.948349, 22.139372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226654, 32.252872, 22.345774>,  <35.260201, 32.641594, 21.734097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226654, 32.252872, 22.345774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876709, 32.446602, 22.348549>,  <34.666740, 32.562840, 22.350214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876709, 32.446602, 22.348549>,  <35.226654, 32.252872, 22.345774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876709, 32.446602, 22.348549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460611, -0.836292, 0.297411,
		0.149847, 0.256997, 0.954724,
		-0.874862, 0.484322, 0.006940,
		34.614250, 32.591900, 22.350632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890244, 31.906151, 22.884972>,  <35.226654, 32.252872, 22.345774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890244, 31.906151, 22.884972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606991, 32.113506, 22.693211>,  <34.437038, 32.237919, 22.578154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606991, 32.113506, 22.693211>,  <34.890244, 31.906151, 22.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606991, 32.113506, 22.693211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656275, -0.733703, 0.176019,
		-0.260492, 0.439263, 0.859763,
		-0.708129, 0.518389, -0.479402,
		34.394550, 32.269024, 22.549391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356426, 31.989838, 23.243025>,  <34.890244, 31.906151, 22.884972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356426, 31.989838, 23.243025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178894, 32.046379, 22.889069>,  <34.072376, 32.080303, 22.676695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178894, 32.046379, 22.889069>,  <34.356426, 31.989838, 23.243025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178894, 32.046379, 22.889069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650570, -0.729920, 0.209704,
		-0.616258, 0.668757, 0.415920,
		-0.443829, 0.141354, -0.884892,
		34.045746, 32.088783, 22.623600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653790, 32.129467, 23.343369>,  <34.356426, 31.989838, 23.243025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653790, 32.129467, 23.343369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683609, 31.979176, 22.973877>,  <33.701500, 31.889002, 22.752182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683609, 31.979176, 22.973877>,  <33.653790, 32.129467, 23.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683609, 31.979176, 22.973877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655653, -0.716410, 0.238487,
		-0.751373, 0.587867, -0.299750,
		0.074545, -0.375724, -0.923729,
		33.705971, 31.866459, 22.696758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986233, 31.923578, 23.210823>,  <33.653790, 32.129467, 23.343369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986233, 31.923578, 23.210823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233955, 31.737801, 22.957603>,  <33.382587, 31.626333, 22.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233955, 31.737801, 22.957603>,  <32.986233, 31.923578, 23.210823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233955, 31.737801, 22.957603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529231, -0.842519, 0.100383,
		-0.579978, 0.272862, -0.767575,
		0.619306, -0.464445, -0.633050,
		33.419746, 31.598467, 22.767689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501339, 31.486666, 22.788157>,  <32.986233, 31.923578, 23.210823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501339, 31.486666, 22.788157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866501, 31.331146, 22.738445>,  <33.085598, 31.237835, 22.708618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866501, 31.331146, 22.738445>,  <32.501339, 31.486666, 22.788157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866501, 31.331146, 22.738445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398310, -0.915082, -0.063039,
		-0.089213, 0.107049, -0.990243,
		0.912902, -0.388800, -0.124276,
		33.140373, 31.214506, 22.701162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609879, 31.053875, 22.122675>,  <32.501339, 31.486666, 22.788157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609879, 31.053875, 22.122675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855957, 30.925240, 22.410595>,  <33.003605, 30.848059, 22.583347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855957, 30.925240, 22.410595>,  <32.609879, 31.053875, 22.122675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855957, 30.925240, 22.410595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371142, -0.923656, -0.095463,
		0.695549, -0.208420, -0.687585,
		0.615196, -0.321591, 0.719801,
		33.040516, 30.828762, 22.626535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492710, 30.413376, 22.006079>,  <32.609879, 31.053875, 22.122675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492710, 30.413376, 22.006079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729172, 30.366703, 22.325310>,  <32.871048, 30.338699, 22.516848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729172, 30.366703, 22.325310>,  <32.492710, 30.413376, 22.006079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729172, 30.366703, 22.325310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262762, -0.963360, 0.053783,
		0.762560, -0.241499, -0.600150,
		0.591149, -0.116684, 0.798077,
		32.906517, 30.331697, 22.564734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636410, 29.577736, 22.144030>,  <32.492710, 30.413376, 22.006079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636410, 29.577736, 22.144030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769024, 29.708828, 22.497906>,  <32.848591, 29.787483, 22.710232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769024, 29.708828, 22.497906>,  <32.636410, 29.577736, 22.144030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769024, 29.708828, 22.497906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052135, -0.929929, 0.364026,
		0.942001, -0.166811, -0.291218,
		0.331536, 0.327730, 0.884691,
		32.868484, 29.807148, 22.763313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145645, 29.101791, 22.377775>,  <32.636410, 29.577736, 22.144030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145645, 29.101791, 22.377775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979923, 29.301304, 22.682293>,  <32.880489, 29.421011, 22.865004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979923, 29.301304, 22.682293>,  <33.145645, 29.101791, 22.377775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979923, 29.301304, 22.682293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090163, -0.854838, 0.511001,
		0.905663, 0.143067, 0.399132,
		-0.414300, 0.498782, 0.761296,
		32.855633, 29.450939, 22.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441467, 28.836866, 22.974371>,  <33.145645, 29.101791, 22.377775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441467, 28.836866, 22.974371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163322, 29.048492, 23.168922>,  <32.996437, 29.175468, 23.285652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.163322, 29.048492, 23.168922>,  <33.441467, 28.836866, 22.974371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.163322, 29.048492, 23.168922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105012, -0.594718, 0.797047,
		0.710947, 0.605311, 0.357986,
		-0.695361, 0.529065, 0.486377,
		32.954716, 29.207212, 23.314837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693127, 28.897865, 23.750147>,  <33.441467, 28.836866, 22.974371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693127, 28.897865, 23.750147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298920, 28.962784, 23.769798>,  <33.062397, 29.001736, 23.781590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298920, 28.962784, 23.769798>,  <33.693127, 28.897865, 23.750147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298920, 28.962784, 23.769798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049741, -0.553663, 0.831254,
		0.162111, 0.816772, 0.553718,
		-0.985518, 0.162298, 0.049128,
		33.003265, 29.011473, 23.784536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496292, 28.935652, 24.502981>,  <33.693127, 28.897865, 23.750147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496292, 28.935652, 24.502981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152485, 28.878193, 24.306782>,  <32.946201, 28.843718, 24.189062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.152485, 28.878193, 24.306782>,  <33.496292, 28.935652, 24.502981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152485, 28.878193, 24.306782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287470, -0.657627, 0.696339,
		-0.422592, 0.739522, 0.523950,
		-0.859522, -0.143648, -0.490498,
		32.894627, 28.835098, 24.159632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996357, 29.047522, 25.008068>,  <33.496292, 28.935652, 24.502981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996357, 29.047522, 25.008068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885975, 28.800243, 24.713673>,  <32.819744, 28.651876, 24.537035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885975, 28.800243, 24.713673>,  <32.996357, 29.047522, 25.008068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885975, 28.800243, 24.713673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082292, -0.747716, 0.658900,
		-0.957640, 0.242395, 0.155466,
		-0.275958, -0.618196, -0.735990,
		32.803188, 28.614784, 24.492876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547798, 28.595045, 25.334970>,  <32.996357, 29.047522, 25.008068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547798, 28.595045, 25.334970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650940, 28.425026, 24.987904>,  <32.712826, 28.323015, 24.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650940, 28.425026, 24.987904>,  <32.547798, 28.595045, 25.334970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650940, 28.425026, 24.987904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188697, -0.858588, 0.476676,
		-0.947578, -0.286640, -0.141187,
		0.257856, -0.425046, -0.867667,
		32.728298, 28.297512, 24.727604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277313, 27.998379, 25.384249>,  <32.547798, 28.595045, 25.334970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277313, 27.998379, 25.384249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571056, 27.953262, 25.116520>,  <32.747303, 27.926193, 24.955883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571056, 27.953262, 25.116520>,  <32.277313, 27.998379, 25.384249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571056, 27.953262, 25.116520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236441, -0.881827, 0.408016,
		-0.636245, -0.457886, -0.620912,
		0.734362, -0.112790, -0.669321,
		32.791367, 27.919426, 24.915724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314331, 27.246519, 25.296215>,  <32.277313, 27.998379, 25.384249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314331, 27.246519, 25.296215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661118, 27.384014, 25.151875>,  <32.869190, 27.466511, 25.065269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661118, 27.384014, 25.151875>,  <32.314331, 27.246519, 25.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661118, 27.384014, 25.151875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444522, -0.860731, 0.248078,
		-0.225323, -0.375482, -0.899023,
		0.866966, 0.343738, -0.360853,
		32.921207, 27.487135, 25.043619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684124, 26.773159, 24.873819>,  <32.314331, 27.246519, 25.296215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684124, 26.773159, 24.873819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976803, 26.993206, 25.034813>,  <33.152409, 27.125235, 25.131409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976803, 26.993206, 25.034813>,  <32.684124, 26.773159, 24.873819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976803, 26.993206, 25.034813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462623, -0.834438, 0.299488,
		0.500602, -0.032935, -0.865051,
		0.731695, 0.550116, 0.402485,
		33.196312, 27.158241, 25.155558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179893, 26.249340, 25.006098>,  <32.684124, 26.773159, 24.873819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179893, 26.249340, 25.006098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330166, 26.568790, 25.194168>,  <33.420330, 26.760460, 25.307011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330166, 26.568790, 25.194168>,  <33.179893, 26.249340, 25.006098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330166, 26.568790, 25.194168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611198, -0.594874, 0.522074,
		0.696638, 0.091241, -0.711598,
		0.375676, 0.798624, 0.470178,
		33.442867, 26.808378, 25.335222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843098, 26.229231, 24.793581>,  <33.179893, 26.249340, 25.006098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843098, 26.229231, 24.793581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863998, 26.446362, 25.128868>,  <33.876541, 26.576639, 25.330040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863998, 26.446362, 25.128868>,  <33.843098, 26.229231, 24.793581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863998, 26.446362, 25.128868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543219, -0.719770, 0.432255,
		0.837963, 0.432749, -0.332485,
		0.052255, 0.542826, 0.838218,
		33.879677, 26.609209, 25.380333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356174, 26.053291, 25.076857>,  <33.843098, 26.229231, 24.793581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356174, 26.053291, 25.076857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202457, 26.237919, 25.396675>,  <34.110229, 26.348696, 25.588566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202457, 26.237919, 25.396675>,  <34.356174, 26.053291, 25.076857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202457, 26.237919, 25.396675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531318, -0.597679, 0.600401,
		0.754999, 0.655542, -0.015558,
		-0.384289, 0.461568, 0.799548,
		34.087170, 26.376389, 25.636539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900383, 25.943520, 25.530640>,  <34.356174, 26.053291, 25.076857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900383, 25.943520, 25.530640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577755, 26.006119, 25.758659>,  <34.384178, 26.043678, 25.895472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577755, 26.006119, 25.758659>,  <34.900383, 25.943520, 25.530640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577755, 26.006119, 25.758659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324943, -0.688191, 0.648695,
		0.493823, 0.708450, 0.504220,
		-0.806568, 0.156498, 0.570050,
		34.335785, 26.053068, 25.929674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104355, 26.086809, 26.316513>,  <34.900383, 25.943520, 25.530640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104355, 26.086809, 26.316513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735466, 25.940395, 26.266666>,  <34.514133, 25.852547, 26.236759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.735466, 25.940395, 26.266666>,  <35.104355, 26.086809, 26.316513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735466, 25.940395, 26.266666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155140, -0.645482, 0.747853,
		-0.354176, 0.670353, 0.652063,
		-0.922221, -0.366033, -0.124616,
		34.458801, 25.830585, 26.229282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038921, 25.844177, 26.950476>,  <35.104355, 26.086809, 26.316513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038921, 25.844177, 26.950476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 25.694893, 26.761482>,  <34.527935, 25.605322, 26.648087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719555, 25.694893, 26.761482>,  <35.038921, 25.844177, 26.950476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719555, 25.694893, 26.761482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073251, -0.718687, 0.691464,
		-0.597629, 0.586688, 0.546476,
		-0.798419, -0.373210, -0.472484,
		34.480030, 25.582930, 26.619738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442005, 25.837353, 27.456816>,  <35.038921, 25.844177, 26.950476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442005, 25.837353, 27.456816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345238, 25.583836, 27.162937>,  <34.287178, 25.431725, 26.986610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345238, 25.583836, 27.162937>,  <34.442005, 25.837353, 27.456816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345238, 25.583836, 27.162937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112879, -0.733664, 0.670072,
		-0.963708, 0.245036, 0.105947,
		-0.241920, -0.633794, -0.734697,
		34.272663, 25.393698, 26.942528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809364, 25.464806, 27.576488>,  <34.442005, 25.837353, 27.456816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809364, 25.464806, 27.576488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011852, 25.215588, 27.337975>,  <34.133343, 25.066057, 27.194866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011852, 25.215588, 27.337975>,  <33.809364, 25.464806, 27.576488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011852, 25.215588, 27.337975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020582, -0.699952, 0.713893,
		-0.862160, -0.349112, -0.367152,
		0.506217, -0.623047, -0.596285,
		34.163719, 25.028673, 27.159088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457947, 24.855568, 27.558271>,  <33.809364, 25.464806, 27.576488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457947, 24.855568, 27.558271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839512, 24.781872, 27.463528>,  <34.068451, 24.737654, 27.406681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839512, 24.781872, 27.463528>,  <33.457947, 24.855568, 27.558271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839512, 24.781872, 27.463528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010623, -0.768096, 0.640246,
		-0.299892, -0.613256, -0.730741,
		0.953914, -0.184242, -0.236861,
		34.125687, 24.726599, 27.392469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439903, 24.153854, 27.433670>,  <33.457947, 24.855568, 27.558271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439903, 24.153854, 27.433670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809338, 24.267334, 27.536819>,  <34.030998, 24.335423, 27.598709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809338, 24.267334, 27.536819>,  <33.439903, 24.153854, 27.433670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809338, 24.267334, 27.536819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061526, -0.773585, 0.630698,
		0.378417, -0.566640, -0.731929,
		0.923588, 0.283700, 0.257875,
		34.086414, 24.352444, 27.614182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938343, 23.587034, 27.257343>,  <33.439903, 24.153854, 27.433670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938343, 23.587034, 27.257343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118687, 23.797974, 27.545406>,  <34.226894, 23.924538, 27.718245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118687, 23.797974, 27.545406>,  <33.938343, 23.587034, 27.257343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118687, 23.797974, 27.545406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064811, -0.785344, 0.615658,
		0.890239, -0.324249, -0.319901,
		0.450859, 0.527350, 0.720159,
		34.253944, 23.956179, 27.761454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343315, 23.058044, 27.722195>,  <33.938343, 23.587034, 27.257343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343315, 23.058044, 27.722195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358574, 23.383999, 27.953541>,  <34.367729, 23.579571, 28.092348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.358574, 23.383999, 27.953541>,  <34.343315, 23.058044, 27.722195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358574, 23.383999, 27.953541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016775, -0.579228, 0.814993,
		0.999131, -0.021391, -0.035768,
		0.038152, 0.814885, 0.578366,
		34.370018, 23.628464, 28.127050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722527, 22.830017, 28.322021>,  <34.343315, 23.058044, 27.722195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722527, 22.830017, 28.322021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540512, 23.169182, 28.430820>,  <34.431301, 23.372681, 28.496099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540512, 23.169182, 28.430820>,  <34.722527, 22.830017, 28.322021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540512, 23.169182, 28.430820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121261, -0.361610, 0.924410,
		0.882175, 0.387662, 0.267366,
		-0.455041, 0.847913, 0.271996,
		34.403999, 23.423555, 28.512419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112572, 23.176319, 28.797266>,  <34.722527, 22.830017, 28.322021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112572, 23.176319, 28.797266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754662, 23.336693, 28.875877>,  <34.539913, 23.432917, 28.923044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754662, 23.336693, 28.875877>,  <35.112572, 23.176319, 28.797266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754662, 23.336693, 28.875877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086414, -0.276327, 0.957171,
		0.438066, 0.873440, 0.212606,
		-0.894780, 0.400932, 0.196526,
		34.486229, 23.456972, 28.934835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175781, 23.616817, 29.482460>,  <35.112572, 23.176319, 28.797266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175781, 23.616817, 29.482460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790524, 23.533375, 29.414532>,  <34.559368, 23.483309, 29.373775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790524, 23.533375, 29.414532>,  <35.175781, 23.616817, 29.482460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790524, 23.533375, 29.414532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145162, -0.128414, 0.981039,
		-0.226459, 0.969532, 0.093399,
		-0.963143, -0.208607, -0.169820,
		34.501579, 23.470793, 29.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755444, 23.761263, 30.132626>,  <35.175781, 23.616817, 29.482460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755444, 23.761263, 30.132626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510757, 23.508842, 29.941807>,  <34.363945, 23.357389, 29.827316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510757, 23.508842, 29.941807>,  <34.755444, 23.761263, 30.132626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510757, 23.508842, 29.941807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291065, -0.381190, 0.877483,
		-0.735582, 0.675624, 0.049504,
		-0.611719, -0.631052, -0.477047,
		34.327240, 23.319527, 29.798693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061275, 23.862478, 30.376007>,  <34.755444, 23.761263, 30.132626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061275, 23.862478, 30.376007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118031, 23.488766, 30.245174>,  <34.152084, 23.264538, 30.166674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118031, 23.488766, 30.245174>,  <34.061275, 23.862478, 30.376007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118031, 23.488766, 30.245174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251860, -0.353626, 0.900841,
		-0.957305, -0.045441, -0.285485,
		0.141890, -0.934282, -0.327084,
		34.160599, 23.208481, 30.147049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393829, 23.521833, 30.545452>,  <34.061275, 23.862478, 30.376007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393829, 23.521833, 30.545452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649860, 23.223083, 30.473362>,  <33.803478, 23.043835, 30.430109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649860, 23.223083, 30.473362>,  <33.393829, 23.521833, 30.545452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649860, 23.223083, 30.473362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387516, -0.516381, 0.763663,
		-0.663424, -0.418964, -0.619950,
		0.640077, -0.746873, -0.180224,
		33.841885, 22.999022, 30.419294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039219, 22.855375, 30.778347>,  <33.393829, 23.521833, 30.545452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039219, 22.855375, 30.778347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423512, 22.744423, 30.775257>,  <33.654087, 22.677851, 30.773403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423512, 22.744423, 30.775257>,  <33.039219, 22.855375, 30.778347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423512, 22.744423, 30.775257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188917, -0.674212, 0.713966,
		-0.203249, -0.684469, -0.700138,
		0.960729, -0.277381, -0.007725,
		33.711731, 22.661209, 30.772940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012524, 22.137459, 30.976246>,  <33.039219, 22.855375, 30.778347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012524, 22.137459, 30.976246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406567, 22.186790, 31.024170>,  <33.642994, 22.216391, 31.052925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406567, 22.186790, 31.024170>,  <33.012524, 22.137459, 30.976246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406567, 22.186790, 31.024170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000557, -0.694503, 0.719489,
		0.171944, -0.708840, -0.684091,
		0.985106, 0.123331, 0.119810,
		33.702099, 22.223789, 31.060112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204155, 21.462997, 31.189207>,  <33.012524, 22.137459, 30.976246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204155, 21.462997, 31.189207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509064, 21.700443, 31.292404>,  <33.692009, 21.842911, 31.354322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.509064, 21.700443, 31.292404>,  <33.204155, 21.462997, 31.189207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.509064, 21.700443, 31.292404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181167, -0.578343, 0.795423,
		0.621382, -0.559591, -0.548400,
		0.762275, 0.593613, 0.257992,
		33.737747, 21.878527, 31.369802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725021, 21.064524, 31.249422>,  <33.204155, 21.462997, 31.189207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725021, 21.064524, 31.249422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831673, 21.364815, 31.491188>,  <33.895664, 21.544989, 31.636248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831673, 21.364815, 31.491188>,  <33.725021, 21.064524, 31.249422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831673, 21.364815, 31.491188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215165, -0.657655, 0.721937,
		0.939475, -0.062440, -0.336880,
		0.266628, 0.750727, 0.604416,
		33.911663, 21.590033, 31.672512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287479, 20.820417, 31.524055>,  <33.725021, 21.064524, 31.249422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287479, 20.820417, 31.524055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108311, 21.094826, 31.753399>,  <34.000809, 21.259470, 31.891005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108311, 21.094826, 31.753399>,  <34.287479, 20.820417, 31.524055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108311, 21.094826, 31.753399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062646, -0.663795, 0.745286,
		0.891875, 0.297911, 0.340305,
		-0.447921, 0.686021, 0.573359,
		33.973934, 21.300632, 31.925407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552235, 20.946508, 32.228767>,  <34.287479, 20.820417, 31.524055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552235, 20.946508, 32.228767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166828, 21.043781, 32.273479>,  <33.935585, 21.102144, 32.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166828, 21.043781, 32.273479>,  <34.552235, 20.946508, 32.228767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166828, 21.043781, 32.273479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029066, -0.510260, 0.859529,
		0.266058, 0.824923, 0.498713,
		-0.963519, 0.243181, 0.111782,
		33.877773, 21.116735, 32.307014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342175, 20.977924, 32.874321>,  <34.552235, 20.946508, 32.228767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342175, 20.977924, 32.874321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945389, 20.948528, 32.833130>,  <33.707317, 20.930891, 32.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.945389, 20.948528, 32.833130>,  <34.342175, 20.977924, 32.874321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945389, 20.948528, 32.833130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021399, -0.704772, 0.709111,
		-0.124689, 0.705617, 0.697537,
		-0.991965, -0.073492, -0.102977,
		33.647800, 20.926481, 32.802238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154064, 21.112213, 33.622169>,  <34.342175, 20.977924, 32.874321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154064, 21.112213, 33.622169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958790, 20.858109, 33.382797>,  <33.841625, 20.705647, 33.239174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958790, 20.858109, 33.382797>,  <34.154064, 21.112213, 33.622169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958790, 20.858109, 33.382797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015059, -0.691720, 0.722009,
		-0.872609, 0.343463, 0.347255,
		-0.488186, -0.635261, -0.598429,
		33.812332, 20.667530, 33.203270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704941, 20.652634, 33.989811>,  <34.154064, 21.112213, 33.622169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704941, 20.652634, 33.989811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884529, 20.427647, 33.712090>,  <33.992283, 20.292654, 33.545456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884529, 20.427647, 33.712090>,  <33.704941, 20.652634, 33.989811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884529, 20.427647, 33.712090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024144, -0.784371, 0.619821,
		-0.893219, -0.261519, -0.365742,
		0.448973, -0.562467, -0.694301,
		34.019222, 20.258907, 33.503799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304131, 20.140448, 33.853123>,  <33.704941, 20.652634, 33.989811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304131, 20.140448, 33.853123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681194, 20.032745, 33.774246>,  <33.907433, 19.968124, 33.726921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681194, 20.032745, 33.774246>,  <33.304131, 20.140448, 33.853123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681194, 20.032745, 33.774246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083856, -0.762989, 0.640950,
		-0.323036, -0.587665, -0.741821,
		0.942665, -0.269256, -0.197193,
		33.963993, 19.951969, 33.715088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968994, 20.467562, 34.385574>,  <33.304131, 20.140448, 33.853123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968994, 20.467562, 34.385574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615967, 20.497524, 34.571247>,  <32.404152, 20.515501, 34.682652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615967, 20.497524, 34.571247>,  <32.968994, 20.467562, 34.385574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615967, 20.497524, 34.571247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078632, 0.949811, -0.302780,
		-0.463563, -0.303723, -0.832383,
		-0.882568, 0.074906, 0.464180,
		32.351196, 20.519997, 34.710503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513660, 20.899900, 34.058121>,  <32.968994, 20.467562, 34.385574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513660, 20.899900, 34.058121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385387, 20.957619, 34.432575>,  <32.308426, 20.992250, 34.657246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385387, 20.957619, 34.432575>,  <32.513660, 20.899900, 34.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385387, 20.957619, 34.432575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091282, 0.979019, -0.182178,
		-0.942779, -0.143873, -0.300780,
		-0.320680, 0.144298, 0.936132,
		32.289185, 21.000908, 34.713413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830030, 21.241718, 34.087585>,  <32.513660, 20.899900, 34.058121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830030, 21.241718, 34.087585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046883, 21.331867, 34.411388>,  <32.176994, 21.385956, 34.605671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046883, 21.331867, 34.411388>,  <31.830030, 21.241718, 34.087585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046883, 21.331867, 34.411388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051796, 0.970493, -0.235501,
		-0.838698, 0.085743, 0.537805,
		0.542128, 0.225370, 0.809509,
		32.209522, 21.399479, 34.654240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392483, 21.682335, 34.548416>,  <31.830030, 21.241718, 34.087585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392483, 21.682335, 34.548416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789858, 21.727680, 34.542351>,  <32.028282, 21.754887, 34.538712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789858, 21.727680, 34.542351>,  <31.392483, 21.682335, 34.548416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789858, 21.727680, 34.542351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112688, 0.947526, -0.299160,
		-0.019548, 0.298906, 0.954083,
		0.993438, 0.113361, -0.015161,
		32.087891, 21.761688, 34.537804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494576, 22.307320, 34.555180>,  <31.392483, 21.682335, 34.548416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494576, 22.307320, 34.555180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879122, 22.216858, 34.492409>,  <32.109852, 22.162580, 34.454746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879122, 22.216858, 34.492409>,  <31.494576, 22.307320, 34.555180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879122, 22.216858, 34.492409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171979, 0.938603, -0.299079,
		0.214930, 0.260537, 0.941236,
		0.961368, -0.226153, -0.156927,
		32.167534, 22.149012, 34.445332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864990, 22.962244, 34.803772>,  <31.494576, 22.307320, 34.555180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864990, 22.962244, 34.803772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090931, 22.764828, 34.539242>,  <32.226494, 22.646378, 34.380524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090931, 22.764828, 34.539242>,  <31.864990, 22.962244, 34.803772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090931, 22.764828, 34.539242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185054, 0.856775, -0.481343,
		0.804174, 0.149506, 0.575284,
		0.564853, -0.493542, -0.661330,
		32.260387, 22.616766, 34.340843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550522, 23.311947, 34.845547>,  <31.864990, 22.962244, 34.803772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550522, 23.311947, 34.845547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551052, 23.121124, 34.493999>,  <32.551369, 23.006630, 34.283070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551052, 23.121124, 34.493999>,  <32.550522, 23.311947, 34.845547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551052, 23.121124, 34.493999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035787, 0.878332, -0.476709,
		0.999359, -0.030820, 0.018238,
		0.001327, -0.477056, -0.878872,
		32.551449, 22.978008, 34.230339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041542, 23.584398, 34.461678>,  <32.550522, 23.311947, 34.845547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041542, 23.584398, 34.461678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804462, 23.431454, 34.178127>,  <32.662212, 23.339687, 34.007999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804462, 23.431454, 34.178127>,  <33.041542, 23.584398, 34.461678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804462, 23.431454, 34.178127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009126, 0.883260, -0.468795,
		0.805369, -0.271388, -0.527001,
		-0.592704, -0.382363, -0.708873,
		32.626652, 23.316746, 33.965466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208923, 23.926231, 33.888401>,  <33.041542, 23.584398, 34.461678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208923, 23.926231, 33.888401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874252, 23.757927, 33.748150>,  <32.673450, 23.656944, 33.664001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874252, 23.757927, 33.748150>,  <33.208923, 23.926231, 33.888401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874252, 23.757927, 33.748150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225804, 0.848229, -0.479083,
		0.498990, -0.321663, -0.804700,
		-0.836673, -0.420762, -0.350625,
		32.623249, 23.631699, 33.642963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097645, 24.022663, 33.159210>,  <33.208923, 23.926231, 33.888401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097645, 24.022663, 33.159210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720715, 23.955193, 33.274841>,  <32.494556, 23.914711, 33.344219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720715, 23.955193, 33.274841>,  <33.097645, 24.022663, 33.159210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720715, 23.955193, 33.274841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294778, 0.827323, -0.478165,
		-0.158506, -0.535803, -0.829332,
		-0.942328, -0.168677, 0.289079,
		32.438015, 23.904589, 33.361565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650490, 23.988325, 32.598423>,  <33.097645, 24.022663, 33.159210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650490, 23.988325, 32.598423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368458, 24.073524, 32.868977>,  <32.199238, 24.124645, 33.031307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368458, 24.073524, 32.868977>,  <32.650490, 23.988325, 32.598423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368458, 24.073524, 32.868977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289328, 0.784411, -0.548625,
		-0.647417, -0.582521, -0.491447,
		-0.705082, 0.213000, 0.676381,
		32.156933, 24.137424, 33.071892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022800, 24.145073, 32.212646>,  <32.650490, 23.988325, 32.598423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022800, 24.145073, 32.212646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965471, 24.300343, 32.576797>,  <31.931074, 24.393505, 32.795288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965471, 24.300343, 32.576797>,  <32.022800, 24.145073, 32.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965471, 24.300343, 32.576797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294429, 0.861496, -0.413687,
		-0.944866, -0.327329, -0.009179,
		-0.143320, 0.388176, 0.910373,
		31.922476, 24.416796, 32.849911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384617, 24.273872, 32.278996>,  <32.022800, 24.145073, 32.212646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384617, 24.273872, 32.278996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546629, 24.523335, 32.546429>,  <31.643837, 24.673012, 32.706890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546629, 24.523335, 32.546429>,  <31.384617, 24.273872, 32.278996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546629, 24.523335, 32.546429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363026, 0.780833, -0.508440,
		-0.839144, -0.036780, 0.542664,
		0.405030, 0.623656, 0.668584,
		31.668139, 24.710432, 32.747005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925381, 24.933626, 32.276768>,  <31.384617, 24.273872, 32.278996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925381, 24.933626, 32.276768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269444, 25.024986, 32.459179>,  <31.475882, 25.079802, 32.568626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.269444, 25.024986, 32.459179>,  <30.925381, 24.933626, 32.276768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269444, 25.024986, 32.459179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040324, 0.921781, -0.385609,
		-0.508435, 0.313294, 0.802085,
		0.860156, 0.228400, 0.456032,
		31.527491, 25.093506, 32.595989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779785, 25.434319, 32.764687>,  <30.925381, 24.933626, 32.276768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779785, 25.434319, 32.764687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158508, 25.474575, 32.642422>,  <31.385742, 25.498728, 32.569061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158508, 25.474575, 32.642422>,  <30.779785, 25.434319, 32.764687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158508, 25.474575, 32.642422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200951, 0.926787, -0.317310,
		0.251350, 0.361854, 0.897711,
		0.946806, 0.100640, -0.305663,
		31.442551, 25.504766, 32.550724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909601, 26.122730, 32.785839>,  <30.779785, 25.434319, 32.764687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909601, 26.122730, 32.785839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203087, 25.985065, 32.551502>,  <31.379179, 25.902468, 32.410900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203087, 25.985065, 32.551502>,  <30.909601, 26.122730, 32.785839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203087, 25.985065, 32.551502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014209, 0.869810, -0.493183,
		0.679309, 0.353532, 0.643083,
		0.733715, -0.344161, -0.585846,
		31.423201, 25.881817, 32.375748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324984, 26.647375, 32.778595>,  <30.909601, 26.122730, 32.785839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324984, 26.647375, 32.778595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426689, 26.438187, 32.453178>,  <31.487713, 26.312674, 32.257927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426689, 26.438187, 32.453178>,  <31.324984, 26.647375, 32.778595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426689, 26.438187, 32.453178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059284, 0.848034, -0.526616,
		0.965316, 0.085669, 0.246628,
		0.254264, -0.522972, -0.813542,
		31.502968, 26.281296, 32.209114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795559, 27.111645, 32.326042>,  <31.324984, 26.647375, 32.778595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795559, 27.111645, 32.326042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668768, 26.839943, 32.061275>,  <31.592693, 26.676922, 31.902414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668768, 26.839943, 32.061275>,  <31.795559, 27.111645, 32.326042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668768, 26.839943, 32.061275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024673, 0.691765, -0.721701,
		0.948112, -0.245094, -0.202514,
		-0.316977, -0.679256, -0.661919,
		31.573675, 26.636166, 31.862700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399658, 27.094469, 31.878489>,  <31.795559, 27.111645, 32.326042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399658, 27.094469, 31.878489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074642, 26.947872, 31.697174>,  <31.879633, 26.859915, 31.588387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074642, 26.947872, 31.697174>,  <32.399658, 27.094469, 31.878489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074642, 26.947872, 31.697174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115058, 0.661489, -0.741076,
		0.571440, -0.654307, -0.495318,
		-0.812538, -0.366490, -0.453284,
		31.830881, 26.837925, 31.561188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573322, 27.006821, 31.235689>,  <32.399658, 27.094469, 31.878489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573322, 27.006821, 31.235689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175201, 27.028534, 31.203621>,  <31.936329, 27.041563, 31.184380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175201, 27.028534, 31.203621>,  <32.573322, 27.006821, 31.235689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175201, 27.028534, 31.203621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096458, 0.627698, -0.772457,
		0.008391, -0.776561, -0.629985,
		-0.995301, 0.054286, -0.080173,
		31.876612, 27.044819, 31.179569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420338, 26.961639, 30.538748>,  <32.573322, 27.006821, 31.235689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420338, 26.961639, 30.538748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099140, 27.121235, 30.715839>,  <31.906422, 27.216991, 30.822094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099140, 27.121235, 30.715839>,  <32.420338, 26.961639, 30.538748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099140, 27.121235, 30.715839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090215, 0.652920, -0.752035,
		-0.589122, -0.643819, -0.488295,
		-0.802993, 0.398989, 0.442731,
		31.858242, 27.240931, 30.848660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894958, 27.094835, 30.020065>,  <32.420338, 26.961639, 30.538748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894958, 27.094835, 30.020065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807600, 27.368359, 30.298550>,  <31.755184, 27.532473, 30.465641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807600, 27.368359, 30.298550>,  <31.894958, 27.094835, 30.020065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807600, 27.368359, 30.298550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090603, 0.696145, -0.712161,
		-0.971645, -0.218612, -0.090081,
		-0.218396, 0.683806, 0.696212,
		31.742081, 27.573500, 30.507414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511562, 27.543344, 29.673641>,  <31.894958, 27.094835, 30.020065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511562, 27.543344, 29.673641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613293, 27.758026, 29.995453>,  <31.674332, 27.886835, 30.188540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613293, 27.758026, 29.995453>,  <31.511562, 27.543344, 29.673641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613293, 27.758026, 29.995453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086657, 0.815889, -0.571677,
		-0.963228, 0.215111, 0.160994,
		0.254327, 0.536705, 0.804528,
		31.689590, 27.919037, 30.236811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094122, 28.185059, 29.479877>,  <31.511562, 27.543344, 29.673641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094122, 28.185059, 29.479877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365973, 28.278542, 29.758011>,  <31.529083, 28.334631, 29.924891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365973, 28.278542, 29.758011>,  <31.094122, 28.185059, 29.479877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365973, 28.278542, 29.758011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033896, 0.936873, -0.348023,
		-0.732774, 0.260095, 0.628803,
		0.679628, 0.233708, 0.695332,
		31.569860, 28.348654, 29.966610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819447, 28.832169, 29.800253>,  <31.094122, 28.185059, 29.479877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819447, 28.832169, 29.800253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210373, 28.820095, 29.884102>,  <31.444929, 28.812851, 29.934412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210373, 28.820095, 29.884102>,  <30.819447, 28.832169, 29.800253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210373, 28.820095, 29.884102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104338, 0.929958, -0.352550,
		-0.184300, 0.366424, 0.912012,
		0.977316, -0.030183, 0.209624,
		31.503569, 28.811041, 29.946989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906696, 29.516832, 30.122398>,  <30.819447, 28.832169, 29.800253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906696, 29.516832, 30.122398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251596, 29.362267, 29.991425>,  <31.458536, 29.269527, 29.912840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251596, 29.362267, 29.991425>,  <30.906696, 29.516832, 30.122398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251596, 29.362267, 29.991425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340301, 0.920809, -0.190541,
		0.375131, 0.052868, 0.925463,
		0.862248, -0.386414, -0.327433,
		31.510271, 29.246342, 29.893194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431561, 29.957323, 30.313070>,  <30.906696, 29.516832, 30.122398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431561, 29.957323, 30.313070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630608, 29.749744, 30.035057>,  <31.750036, 29.625198, 29.868250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630608, 29.749744, 30.035057>,  <31.431561, 29.957323, 30.313070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630608, 29.749744, 30.035057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404090, 0.847719, -0.343635,
		0.767520, -0.109857, 0.631542,
		0.497619, -0.518946, -0.695033,
		31.779894, 29.594061, 29.826548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.088913, 30.196409, 30.318138>,  <31.431561, 29.957323, 30.313070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.088913, 30.196409, 30.318138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077030, 30.024158, 29.957321>,  <32.069901, 29.920809, 29.740831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077030, 30.024158, 29.957321>,  <32.088913, 30.196409, 30.318138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077030, 30.024158, 29.957321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462961, 0.793880, -0.394237,
		0.885881, -0.429320, 0.175783,
		-0.029703, -0.430627, -0.902041,
		32.068119, 29.894970, 29.686708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632084, 30.404057, 29.959963>,  <32.088913, 30.196409, 30.318138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632084, 30.404057, 29.959963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385017, 30.277534, 29.671951>,  <32.236778, 30.201620, 29.499144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385017, 30.277534, 29.671951>,  <32.632084, 30.404057, 29.959963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385017, 30.277534, 29.671951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246808, 0.791336, -0.559351,
		0.746712, -0.523199, -0.410710,
		-0.617662, -0.316307, -0.720030,
		32.199718, 30.182642, 29.455942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099262, 30.285692, 29.323767>,  <32.632084, 30.404057, 29.959963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099262, 30.285692, 29.323767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718063, 30.324348, 29.208908>,  <32.489342, 30.347542, 29.139994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718063, 30.324348, 29.208908>,  <33.099262, 30.285692, 29.323767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718063, 30.324348, 29.208908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276073, 0.667414, -0.691623,
		0.124806, -0.738390, -0.662725,
		-0.952999, 0.096642, -0.287147,
		32.432163, 30.353340, 29.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089165, 30.245050, 28.494560>,  <33.099262, 30.285692, 29.323767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089165, 30.245050, 28.494560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755627, 30.440762, 28.596779>,  <32.555504, 30.558187, 28.658110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755627, 30.440762, 28.596779>,  <33.089165, 30.245050, 28.494560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755627, 30.440762, 28.596779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161086, 0.658493, -0.735145,
		-0.527967, -0.571834, -0.627898,
		-0.833848, 0.489278, 0.255548,
		32.505474, 30.587545, 28.673443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626610, 30.479425, 27.867638>,  <33.089165, 30.245050, 28.494560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626610, 30.479425, 27.867638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412109, 30.690948, 28.130787>,  <32.283409, 30.817863, 28.288677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412109, 30.690948, 28.130787>,  <32.626610, 30.479425, 27.867638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412109, 30.690948, 28.130787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028995, 0.790496, -0.611780,
		-0.843561, -0.308992, -0.439236,
		-0.536250, 0.528810, 0.657873,
		32.251236, 30.849592, 28.328148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930561, 30.738743, 27.627148>,  <32.626610, 30.479425, 27.867638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930561, 30.738743, 27.627148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070225, 30.996929, 27.898872>,  <32.154022, 31.151840, 28.061907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070225, 30.996929, 27.898872>,  <31.930561, 30.738743, 27.627148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070225, 30.996929, 27.898872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024878, 0.731066, -0.681853,
		-0.936733, 0.221176, 0.271317,
		0.349160, 0.645464, 0.679311,
		32.174973, 31.190569, 28.102665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574135, 31.366432, 27.471418>,  <31.930561, 30.738743, 27.627148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574135, 31.366432, 27.471418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895658, 31.465004, 27.687996>,  <32.088573, 31.524147, 27.817944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895658, 31.465004, 27.687996>,  <31.574135, 31.366432, 27.471418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895658, 31.465004, 27.687996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135893, 0.810038, -0.570414,
		-0.579158, 0.532083, 0.617628,
		0.803809, 0.246429, 0.541446,
		32.136803, 31.538933, 27.850430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465441, 32.017307, 27.661390>,  <31.574135, 31.366432, 27.471418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465441, 32.017307, 27.661390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859373, 31.977573, 27.718296>,  <32.095734, 31.953733, 27.752439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859373, 31.977573, 27.718296>,  <31.465441, 32.017307, 27.661390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859373, 31.977573, 27.718296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150871, 0.895205, -0.419340,
		-0.085700, 0.434443, 0.896613,
		0.984832, -0.099336, 0.142264,
		32.154823, 31.947773, 27.760975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660614, 32.676659, 27.725264>,  <31.465441, 32.017307, 27.661390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660614, 32.676659, 27.725264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964857, 32.450020, 27.598488>,  <32.147404, 32.314037, 27.522423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964857, 32.450020, 27.598488>,  <31.660614, 32.676659, 27.725264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964857, 32.450020, 27.598488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268441, 0.718979, -0.641100,
		0.591117, 0.402544, 0.698956,
		0.760605, -0.566593, -0.316941,
		32.193039, 32.280041, 27.503405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056274, 33.183193, 27.387310>,  <31.660614, 32.676659, 27.725264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056274, 33.183193, 27.387310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263268, 32.844662, 27.336819>,  <32.387463, 32.641544, 27.306524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263268, 32.844662, 27.336819>,  <32.056274, 33.183193, 27.387310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263268, 32.844662, 27.336819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521274, 0.428781, -0.737848,
		0.678588, 0.316025, 0.663058,
		0.517486, -0.846330, -0.126230,
		32.418514, 32.590763, 27.298950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840950, 33.295612, 27.501793>,  <32.056274, 33.183193, 27.387310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840950, 33.295612, 27.501793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738205, 32.997948, 27.255135>,  <32.676559, 32.819351, 27.107140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738205, 32.997948, 27.255135>,  <32.840950, 33.295612, 27.501793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738205, 32.997948, 27.255135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495868, 0.446189, -0.745004,
		0.829541, -0.497137, 0.254396,
		-0.256860, -0.744157, -0.616646,
		32.661148, 32.774700, 27.070141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324951, 33.318180, 26.986595>,  <32.840950, 33.295612, 27.501793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324951, 33.318180, 26.986595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039402, 33.081799, 26.836311>,  <32.868073, 32.939968, 26.746141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039402, 33.081799, 26.836311>,  <33.324951, 33.318180, 26.986595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039402, 33.081799, 26.836311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172101, 0.372006, -0.912136,
		0.678799, -0.715808, -0.163860,
		-0.713872, -0.590957, -0.375709,
		32.825241, 32.904510, 26.723598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607342, 32.978592, 26.406872>,  <33.324951, 33.318180, 26.986595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607342, 32.978592, 26.406872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214310, 32.924786, 26.355595>,  <32.978489, 32.892502, 26.324829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214310, 32.924786, 26.355595>,  <33.607342, 32.978592, 26.406872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214310, 32.924786, 26.355595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109464, 0.138431, -0.984304,
		0.150161, -0.981193, -0.121294,
		-0.982583, -0.134527, -0.128192,
		32.919533, 32.884430, 26.317137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539536, 32.512798, 25.920221>,  <33.607342, 32.978592, 26.406872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539536, 32.512798, 25.920221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195553, 32.716442, 25.905865>,  <32.989162, 32.838627, 25.897251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195553, 32.716442, 25.905865>,  <33.539536, 32.512798, 25.920221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195553, 32.716442, 25.905865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180615, 0.237801, -0.954374,
		-0.477347, -0.827199, -0.296450,
		-0.859953, 0.509111, -0.035891,
		32.937569, 32.869175, 25.895098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205257, 32.373833, 25.197817>,  <33.539536, 32.512798, 25.920221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205257, 32.373833, 25.197817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043941, 32.705345, 25.352982>,  <32.947151, 32.904255, 25.446081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043941, 32.705345, 25.352982>,  <33.205257, 32.373833, 25.197817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043941, 32.705345, 25.352982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053376, 0.444498, -0.894189,
		-0.913515, -0.339911, -0.223498,
		-0.403289, 0.828784, 0.387912,
		32.922955, 32.953979, 25.469355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621712, 32.517754, 24.798748>,  <33.205257, 32.373833, 25.197817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621712, 32.517754, 24.798748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725662, 32.850277, 24.995274>,  <32.788033, 33.049789, 25.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725662, 32.850277, 24.995274>,  <32.621712, 32.517754, 24.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725662, 32.850277, 24.995274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105663, 0.530222, -0.841249,
		-0.959843, 0.166709, 0.225631,
		0.259879, 0.831308, 0.491314,
		32.803627, 33.099670, 25.142668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186573, 33.004566, 24.542589>,  <32.621712, 32.517754, 24.798748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186573, 33.004566, 24.542589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462074, 33.242664, 24.708145>,  <32.627373, 33.385525, 24.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462074, 33.242664, 24.708145>,  <32.186573, 33.004566, 24.542589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462074, 33.242664, 24.708145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020397, 0.586568, -0.809643,
		-0.724713, 0.549198, 0.416140,
		0.688749, 0.595247, 0.413891,
		32.668697, 33.421238, 24.832312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.911703, 33.679504, 24.466633>,  <32.186573, 33.004566, 24.542589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.911703, 33.679504, 24.466633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309193, 33.682507, 24.511280>,  <32.547688, 33.684307, 24.538069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309193, 33.682507, 24.511280>,  <31.911703, 33.679504, 24.466633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309193, 33.682507, 24.511280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088136, 0.561956, -0.822459,
		-0.068899, 0.827133, 0.557766,
		0.993723, 0.007508, 0.111618,
		32.607311, 33.684757, 24.544765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346519, 33.445206, 24.033201>,  <31.911703, 33.679504, 24.466633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346519, 33.445206, 24.033201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958529, 33.399815, 23.947163>,  <30.725735, 33.372581, 23.895540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958529, 33.399815, 23.947163>,  <31.346519, 33.445206, 24.033201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958529, 33.399815, 23.947163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182405, -0.245514, 0.952078,
		-0.160846, 0.962729, 0.217444,
		-0.969978, -0.113474, -0.215096,
		30.667536, 33.365772, 23.882633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105373, 33.529778, 24.627264>,  <31.346519, 33.445206, 24.033201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105373, 33.529778, 24.627264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787722, 33.367538, 24.446224>,  <30.597130, 33.270195, 24.337601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787722, 33.367538, 24.446224>,  <31.105373, 33.529778, 24.627264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787722, 33.367538, 24.446224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325095, -0.345711, 0.880226,
		-0.513490, 0.846151, 0.142680,
		-0.794129, -0.405602, -0.452598,
		30.549482, 33.245857, 24.310444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703129, 33.487156, 25.096193>,  <31.105373, 33.529778, 24.627264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703129, 33.487156, 25.096193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509777, 33.238960, 24.849182>,  <30.393766, 33.090042, 24.700975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.509777, 33.238960, 24.849182>,  <30.703129, 33.487156, 25.096193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509777, 33.238960, 24.849182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511784, -0.372009, 0.774394,
		-0.710227, 0.690367, -0.137734,
		-0.483378, -0.620486, -0.617530,
		30.364763, 33.052814, 24.663923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.089767, 33.428192, 25.396013>,  <30.703129, 33.487156, 25.096193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.089767, 33.428192, 25.396013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107227, 33.107876, 25.157074>,  <30.117702, 32.915684, 25.013710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107227, 33.107876, 25.157074>,  <30.089767, 33.428192, 25.396013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107227, 33.107876, 25.157074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535939, -0.523372, 0.662458,
		-0.843128, 0.291226, -0.452021,
		0.043650, -0.800792, -0.597349,
		30.120323, 32.867638, 24.977869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432047, 33.182030, 25.637987>,  <30.089767, 33.428192, 25.396013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432047, 33.182030, 25.637987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642691, 32.909817, 25.434200>,  <29.769077, 32.746490, 25.311928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642691, 32.909817, 25.434200>,  <29.432047, 33.182030, 25.637987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642691, 32.909817, 25.434200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408012, -0.728093, 0.550823,
		-0.745798, -0.082193, -0.661082,
		0.526603, -0.680533, -0.509475,
		29.800674, 32.705658, 25.281359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987747, 32.727753, 25.497551>,  <29.432047, 33.182030, 25.637987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987747, 32.727753, 25.497551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335941, 32.535004, 25.457432>,  <29.544857, 32.419353, 25.433361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335941, 32.535004, 25.457432>,  <28.987747, 32.727753, 25.497551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335941, 32.535004, 25.457432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287604, -0.663346, 0.690837,
		-0.399425, -0.572517, -0.716020,
		0.870485, -0.481868, -0.100298,
		29.597086, 32.390442, 25.427341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880701, 31.976170, 25.256092>,  <28.987747, 32.727753, 25.497551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880701, 31.976170, 25.256092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234213, 31.984928, 25.443047>,  <29.446320, 31.990183, 25.555220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234213, 31.984928, 25.443047>,  <28.880701, 31.976170, 25.256092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234213, 31.984928, 25.443047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314213, -0.712381, 0.627521,
		0.346699, -0.701451, -0.622709,
		0.883782, 0.021898, 0.467388,
		29.499348, 31.991497, 25.583263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120262, 31.339647, 25.463095>,  <28.880701, 31.976170, 25.256092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120262, 31.339647, 25.463095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355335, 31.537300, 25.719364>,  <29.496380, 31.655891, 25.873125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355335, 31.537300, 25.719364>,  <29.120262, 31.339647, 25.463095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355335, 31.537300, 25.719364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162989, -0.703309, 0.691947,
		0.792504, -0.511069, -0.332786,
		0.587684, 0.494130, 0.640674,
		29.531641, 31.685539, 25.911566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218006, 30.786482, 25.831236>,  <29.120262, 31.339647, 25.463095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218006, 30.786482, 25.831236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337040, 31.083443, 26.071331>,  <29.408461, 31.261620, 26.215387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337040, 31.083443, 26.071331>,  <29.218006, 30.786482, 25.831236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337040, 31.083443, 26.071331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155874, -0.582502, 0.797744,
		0.941884, -0.330959, -0.057624,
		0.297586, 0.742400, 0.600237,
		29.426315, 31.306162, 26.251402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849604, 30.590996, 26.257141>,  <29.218006, 30.786482, 25.831236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849604, 30.590996, 26.257141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662024, 30.886143, 26.451313>,  <29.549475, 31.063231, 26.567816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662024, 30.886143, 26.451313>,  <29.849604, 30.590996, 26.257141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662024, 30.886143, 26.451313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001215, -0.550147, 0.835067,
		0.883224, 0.391015, 0.258888,
		-0.468950, 0.737866, 0.485428,
		29.521339, 31.107502, 26.596941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166430, 30.616964, 26.985758>,  <29.849604, 30.590996, 26.257141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166430, 30.616964, 26.985758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816284, 30.810036, 26.996819>,  <29.606197, 30.925879, 27.003456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816284, 30.810036, 26.996819>,  <30.166430, 30.616964, 26.985758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816284, 30.810036, 26.996819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295218, -0.578937, 0.760052,
		0.382870, 0.657156, 0.649274,
		-0.875361, 0.482678, 0.027654,
		29.553677, 30.954840, 27.005116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113819, 30.869213, 27.614302>,  <30.166430, 30.616964, 26.985758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113819, 30.869213, 27.614302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747934, 30.819592, 27.460464>,  <29.528404, 30.789818, 27.368162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747934, 30.819592, 27.460464>,  <30.113819, 30.869213, 27.614302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747934, 30.819592, 27.460464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267163, -0.528404, 0.805862,
		-0.303193, 0.839881, 0.450194,
		-0.914712, -0.124056, -0.384593,
		29.473520, 30.782375, 27.345087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605898, 31.192244, 28.045654>,  <30.113819, 30.869213, 27.614302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605898, 31.192244, 28.045654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420500, 30.896111, 27.850891>,  <29.309261, 30.718430, 27.734034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420500, 30.896111, 27.850891>,  <29.605898, 31.192244, 28.045654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420500, 30.896111, 27.850891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342759, -0.356924, 0.868977,
		-0.817122, 0.569659, -0.088323,
		-0.463496, -0.740334, -0.486906,
		29.281450, 30.674011, 27.704819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136662, 31.115250, 28.494425>,  <29.605898, 31.192244, 28.045654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136662, 31.115250, 28.494425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107313, 30.785389, 28.270081>,  <29.089705, 30.587473, 28.135473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.107313, 30.785389, 28.270081>,  <29.136662, 31.115250, 28.494425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107313, 30.785389, 28.270081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385263, -0.495284, 0.778631,
		-0.919885, 0.273209, -0.281368,
		-0.073372, -0.824652, -0.560862,
		29.085302, 30.537992, 28.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480104, 30.844740, 28.645620>,  <29.136662, 31.115250, 28.494425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480104, 30.844740, 28.645620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736958, 30.565720, 28.518444>,  <28.891069, 30.398308, 28.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.736958, 30.565720, 28.518444>,  <28.480104, 30.844740, 28.645620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736958, 30.565720, 28.518444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358144, -0.639681, 0.680104,
		-0.677790, -0.322847, -0.660583,
		0.642132, -0.697552, -0.317944,
		28.929598, 30.356455, 28.423061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114813, 30.209101, 28.833378>,  <28.480104, 30.844740, 28.645620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114813, 30.209101, 28.833378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484304, 30.092140, 28.734402>,  <28.705999, 30.021965, 28.675016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.484304, 30.092140, 28.734402>,  <28.114813, 30.209101, 28.833378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484304, 30.092140, 28.734402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035821, -0.709092, 0.704205,
		-0.381368, -0.641631, -0.665483,
		0.923729, -0.292400, -0.247441,
		28.761423, 30.004419, 28.660170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122911, 29.516180, 28.583344>,  <28.114813, 30.209101, 28.833378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122911, 29.516180, 28.583344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481665, 29.582596, 28.747311>,  <28.696917, 29.622446, 28.845690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481665, 29.582596, 28.747311>,  <28.122911, 29.516180, 28.583344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481665, 29.582596, 28.747311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134139, -0.781067, 0.609870,
		0.421435, -0.601968, -0.678253,
		0.896883, 0.166040, 0.409916,
		28.750731, 29.632408, 28.870285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363331, 28.896074, 28.688721>,  <28.122911, 29.516180, 28.583344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363331, 28.896074, 28.688721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611410, 29.103710, 28.923973>,  <28.760258, 29.228292, 29.065125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611410, 29.103710, 28.923973>,  <28.363331, 28.896074, 28.688721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611410, 29.103710, 28.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144734, -0.812593, 0.564576,
		0.770978, -0.265026, -0.579098,
		0.620197, 0.519090, 0.588133,
		28.797470, 29.259438, 29.100412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.858719, 28.370289, 28.804705>,  <28.363331, 28.896074, 28.688721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.858719, 28.370289, 28.804705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893589, 28.646381, 29.092033>,  <28.914511, 28.812037, 29.264431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.893589, 28.646381, 29.092033>,  <28.858719, 28.370289, 28.804705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893589, 28.646381, 29.092033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287240, -0.707856, 0.645316,
		0.953884, 0.150074, -0.259969,
		0.087175, 0.690230, 0.718320,
		28.919743, 28.853451, 29.307529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426138, 28.153187, 29.144186>,  <28.858719, 28.370289, 28.804705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426138, 28.153187, 29.144186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252373, 28.402294, 29.404476>,  <29.148113, 28.551758, 29.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252373, 28.402294, 29.404476>,  <29.426138, 28.153187, 29.144186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252373, 28.402294, 29.404476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213345, -0.630753, 0.746079,
		0.875081, 0.462937, 0.141144,
		-0.434415, 0.622768, 0.650726,
		29.122047, 28.589125, 29.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999228, 28.071260, 29.675552>,  <29.426138, 28.153187, 29.144186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999228, 28.071260, 29.675552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632071, 28.180389, 29.790821>,  <29.411777, 28.245867, 29.859982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632071, 28.180389, 29.790821>,  <29.999228, 28.071260, 29.675552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632071, 28.180389, 29.790821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068129, -0.607058, 0.791732,
		0.390941, 0.746356, 0.538626,
		-0.917891, 0.272824, 0.288172,
		29.356703, 28.262238, 29.877274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991909, 28.178207, 30.420866>,  <29.999228, 28.071260, 29.675552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991909, 28.178207, 30.420866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599316, 28.136036, 30.356895>,  <29.363760, 28.110733, 30.318514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599316, 28.136036, 30.356895>,  <29.991909, 28.178207, 30.420866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599316, 28.136036, 30.356895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080840, -0.528923, 0.844811,
		-0.173654, 0.842096, 0.510606,
		-0.981483, -0.105427, -0.159925,
		29.304871, 28.104408, 30.308918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749046, 28.250452, 31.083328>,  <29.991909, 28.178207, 30.420866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749046, 28.250452, 31.083328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450745, 28.086346, 30.873363>,  <29.271765, 27.987881, 30.747385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450745, 28.086346, 30.873363>,  <29.749046, 28.250452, 31.083328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450745, 28.086346, 30.873363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117498, -0.694550, 0.709785,
		-0.655779, 0.591001, 0.469757,
		-0.745753, -0.410267, -0.524912,
		29.227018, 27.963266, 30.715889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149200, 28.213236, 31.530539>,  <29.749046, 28.250452, 31.083328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149200, 28.213236, 31.530539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105389, 27.939495, 31.242188>,  <29.079102, 27.775251, 31.069176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.105389, 27.939495, 31.242188>,  <29.149200, 28.213236, 31.530539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105389, 27.939495, 31.242188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012984, -0.724196, 0.689472,
		-0.993899, 0.084876, 0.070435,
		-0.109528, -0.684351, -0.720879,
		29.072531, 27.734190, 31.025923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883291, 27.684460, 31.944691>,  <29.149200, 28.213236, 31.530539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883291, 27.684460, 31.944691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960501, 27.510960, 31.592644>,  <29.006826, 27.406860, 31.381416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960501, 27.510960, 31.592644>,  <28.883291, 27.684460, 31.944691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960501, 27.510960, 31.592644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037278, -0.893094, 0.448322,
		-0.980485, -0.119347, -0.156220,
		0.193025, -0.433750, -0.880115,
		29.018408, 27.380835, 31.328609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381220, 27.125900, 31.700232>,  <28.883291, 27.684460, 31.944691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381220, 27.125900, 31.700232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714102, 27.021782, 31.504402>,  <28.913830, 26.959311, 31.386904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714102, 27.021782, 31.504402>,  <28.381220, 27.125900, 31.700232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714102, 27.021782, 31.504402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071242, -0.925838, 0.371145,
		-0.549874, -0.273990, -0.789030,
		0.832204, -0.260295, -0.489575,
		28.963762, 26.943693, 31.357531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206387, 26.558804, 31.288048>,  <28.381220, 27.125900, 31.700232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206387, 26.558804, 31.288048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602583, 26.542377, 31.340572>,  <28.840302, 26.532522, 31.372087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.602583, 26.542377, 31.340572>,  <28.206387, 26.558804, 31.288048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602583, 26.542377, 31.340572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063257, -0.983483, 0.169589,
		0.122180, -0.176283, -0.976727,
		0.990490, -0.041064, 0.131313,
		28.899731, 26.530058, 31.379967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480106, 25.937555, 30.931931>,  <28.206387, 26.558804, 31.288048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480106, 25.937555, 30.931931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774271, 26.033432, 31.185455>,  <28.950769, 26.090958, 31.337570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.774271, 26.033432, 31.185455>,  <28.480106, 25.937555, 30.931931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774271, 26.033432, 31.185455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042764, -0.949901, 0.309611,
		0.676268, -0.200588, -0.708820,
		0.735413, 0.239692, 0.633810,
		28.994894, 26.105339, 31.375599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841469, 25.325104, 30.952326>,  <28.480106, 25.937555, 30.931931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841469, 25.325104, 30.952326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011040, 25.502396, 31.268257>,  <29.112783, 25.608770, 31.457817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.011040, 25.502396, 31.268257>,  <28.841469, 25.325104, 30.952326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011040, 25.502396, 31.268257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006900, -0.870465, 0.492182,
		0.905669, -0.214099, -0.365957,
		0.423928, 0.443229, 0.789831,
		29.138218, 25.635365, 31.505207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384447, 25.006151, 31.114441>,  <28.841469, 25.325104, 30.952326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384447, 25.006151, 31.114441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251076, 25.189091, 31.444206>,  <29.171053, 25.298855, 31.642065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251076, 25.189091, 31.444206>,  <29.384447, 25.006151, 31.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251076, 25.189091, 31.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051727, -0.882011, 0.468382,
		0.941356, 0.113527, 0.317743,
		-0.333427, 0.457350, 0.824414,
		29.151049, 25.326296, 31.691530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757103, 24.681116, 31.621731>,  <29.384447, 25.006151, 31.114441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757103, 24.681116, 31.621731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494333, 24.846329, 31.874035>,  <29.336672, 24.945456, 32.025417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.494333, 24.846329, 31.874035>,  <29.757103, 24.681116, 31.621731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494333, 24.846329, 31.874035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038323, -0.853809, 0.519174,
		0.752983, 0.316885, 0.576715,
		-0.656923, 0.413031, 0.630759,
		29.297256, 24.970238, 32.063263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994492, 24.679323, 32.315926>,  <29.757103, 24.681116, 31.621731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994492, 24.679323, 32.315926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598106, 24.701454, 32.364799>,  <29.360275, 24.714733, 32.394123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598106, 24.701454, 32.364799>,  <29.994492, 24.679323, 32.315926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598106, 24.701454, 32.364799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027271, -0.808826, 0.587416,
		0.131327, 0.585440, 0.800008,
		-0.990964, 0.055326, 0.122186,
		29.300817, 24.718052, 32.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797646, 24.675934, 33.114456>,  <29.994492, 24.679323, 32.315926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797646, 24.675934, 33.114456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499250, 24.545246, 32.882336>,  <29.320213, 24.466833, 32.743061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499250, 24.545246, 32.882336>,  <29.797646, 24.675934, 33.114456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499250, 24.545246, 32.882336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061693, -0.833735, 0.548707,
		-0.663094, 0.445131, 0.601802,
		-0.745990, -0.326717, -0.580306,
		29.275454, 24.447231, 32.708244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466499, 24.258480, 33.520866>,  <29.797646, 24.675934, 33.114456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466499, 24.258480, 33.520866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337818, 24.133556, 33.163326>,  <29.260609, 24.058603, 32.948803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337818, 24.133556, 33.163326>,  <29.466499, 24.258480, 33.520866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337818, 24.133556, 33.163326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045663, -0.948055, 0.314812,
		-0.945739, 0.060460, 0.319253,
		-0.321702, -0.312308, -0.893852,
		29.241308, 24.039864, 32.895172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941589, 23.850569, 33.674194>,  <29.466499, 24.258480, 33.520866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941589, 23.850569, 33.674194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049370, 23.763073, 33.299057>,  <29.114038, 23.710575, 33.073975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.049370, 23.763073, 33.299057>,  <28.941589, 23.850569, 33.674194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049370, 23.763073, 33.299057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061367, -0.967982, 0.243401,
		-0.961057, -0.123137, -0.247399,
		0.269449, -0.218740, -0.937843,
		29.130205, 23.697451, 33.017704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610590, 23.315718, 33.531933>,  <28.941589, 23.850569, 33.674194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610590, 23.315718, 33.531933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910311, 23.283257, 33.269039>,  <29.090143, 23.263781, 33.111301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910311, 23.283257, 33.269039>,  <28.610590, 23.315718, 33.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910311, 23.283257, 33.269039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117291, -0.960509, 0.252319,
		-0.651758, -0.266151, -0.710193,
		0.749302, -0.081152, -0.657237,
		29.135101, 23.258911, 33.071869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506155, 22.602110, 33.300812>,  <28.610590, 23.315718, 33.531933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506155, 22.602110, 33.300812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874428, 22.725620, 33.205307>,  <29.095390, 22.799726, 33.148006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874428, 22.725620, 33.205307>,  <28.506155, 22.602110, 33.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874428, 22.725620, 33.205307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368718, -0.888699, 0.272508,
		-0.128041, -0.338928, -0.932059,
		0.920680, 0.308774, -0.238759,
		29.150633, 22.818253, 33.133678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810610, 22.128077, 32.807457>,  <28.506155, 22.602110, 33.300812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810610, 22.128077, 32.807457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123209, 22.310310, 32.977962>,  <29.310768, 22.419651, 33.080265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123209, 22.310310, 32.977962>,  <28.810610, 22.128077, 32.807457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123209, 22.310310, 32.977962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418902, -0.889472, 0.182649,
		0.462363, 0.035824, -0.885967,
		0.781500, 0.455583, 0.426265,
		29.357658, 22.446985, 33.105843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498837, 21.506611, 32.589634>,  <28.810610, 22.128077, 32.807457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498837, 21.506611, 32.589634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350569, 21.270561, 32.302757>,  <28.261608, 21.128931, 32.130630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.350569, 21.270561, 32.302757>,  <28.498837, 21.506611, 32.589634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.350569, 21.270561, 32.302757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090025, 0.745730, -0.660138,
		0.924392, -0.309257, -0.223292,
		-0.370668, -0.590125, -0.717187,
		28.239368, 21.093523, 32.087601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842506, 21.749113, 32.072121>,  <28.498837, 21.506611, 32.589634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842506, 21.749113, 32.072121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561806, 21.537487, 31.881275>,  <28.393385, 21.410511, 31.766769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.561806, 21.537487, 31.881275>,  <28.842506, 21.749113, 32.072121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561806, 21.537487, 31.881275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001223, 0.668807, -0.743435,
		0.712422, -0.522290, -0.468688,
		-0.701751, -0.529066, -0.477112,
		28.351280, 21.378767, 31.738142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062119, 21.583553, 31.277281>,  <28.842506, 21.749113, 32.072121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062119, 21.583553, 31.277281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666338, 21.558430, 31.329491>,  <28.428869, 21.543356, 31.360817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666338, 21.558430, 31.329491>,  <29.062119, 21.583553, 31.277281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666338, 21.558430, 31.329491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127983, 0.801097, -0.584691,
		-0.067837, -0.595229, -0.800687,
		-0.989454, -0.062811, 0.130523,
		28.369501, 21.539587, 31.368649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849346, 21.818523, 30.711489>,  <29.062119, 21.583553, 31.277281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849346, 21.818523, 30.711489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497814, 21.853264, 30.899155>,  <28.286896, 21.874109, 31.011753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497814, 21.853264, 30.899155>,  <28.849346, 21.818523, 30.711489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497814, 21.853264, 30.899155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218728, 0.800553, -0.557919,
		-0.424048, -0.592935, -0.684552,
		-0.878830, 0.086854, 0.469164,
		28.234165, 21.879320, 31.039904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279522, 21.814493, 30.194176>,  <28.849346, 21.818523, 30.711489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279522, 21.814493, 30.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157610, 22.009621, 30.521381>,  <28.084463, 22.126698, 30.717705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.157610, 22.009621, 30.521381>,  <28.279522, 21.814493, 30.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.157610, 22.009621, 30.521381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211519, 0.802758, -0.557530,
		-0.928638, -0.342949, -0.141481,
		-0.304779, 0.487818, 0.818012,
		28.066175, 22.155966, 30.766785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762890, 22.140009, 29.901754>,  <28.279522, 21.814493, 30.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762890, 22.140009, 29.901754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834360, 22.318951, 30.252285>,  <27.877241, 22.426315, 30.462605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834360, 22.318951, 30.252285>,  <27.762890, 22.140009, 29.901754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834360, 22.318951, 30.252285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139095, 0.893200, -0.427606,
		-0.974027, -0.045491, 0.221817,
		0.178674, 0.447353, 0.876328,
		27.887962, 22.453157, 30.515182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110662, 22.427734, 30.069126>,  <27.762890, 22.140009, 29.901754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110662, 22.427734, 30.069126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404179, 22.618912, 30.262257>,  <27.580288, 22.733618, 30.378136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404179, 22.618912, 30.262257>,  <27.110662, 22.427734, 30.069126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404179, 22.618912, 30.262257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195513, 0.829186, -0.523665,
		-0.650635, 0.289862, 0.701893,
		0.733791, 0.477943, 0.482826,
		27.624315, 22.762295, 30.407104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838776, 23.082596, 30.331163>,  <27.110662, 22.427734, 30.069126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838776, 23.082596, 30.331163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232922, 23.138271, 30.291809>,  <27.469410, 23.171677, 30.268196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.232922, 23.138271, 30.291809>,  <26.838776, 23.082596, 30.331163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.232922, 23.138271, 30.291809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167710, 0.894816, -0.413736,
		0.030449, 0.424182, 0.905065,
		0.985366, 0.139191, -0.098386,
		27.528532, 23.180029, 30.262293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912046, 23.806034, 30.345472>,  <26.838776, 23.082596, 30.331163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912046, 23.806034, 30.345472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266890, 23.701744, 30.193123>,  <27.479795, 23.639170, 30.101713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.266890, 23.701744, 30.193123>,  <26.912046, 23.806034, 30.345472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.266890, 23.701744, 30.193123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002549, 0.827932, -0.560822,
		0.461557, 0.496538, 0.735129,
		0.887107, -0.260725, -0.380873,
		27.533022, 23.623526, 30.078861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340481, 24.329615, 30.384592>,  <26.912046, 23.806034, 30.345472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340481, 24.329615, 30.384592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520527, 24.115067, 30.099018>,  <27.628555, 23.986338, 29.927673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520527, 24.115067, 30.099018>,  <27.340481, 24.329615, 30.384592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520527, 24.115067, 30.099018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009100, 0.796708, -0.604296,
		0.892923, 0.278501, 0.353731,
		0.450117, -0.536371, -0.713933,
		27.655561, 23.954155, 29.884838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976238, 24.679979, 30.219730>,  <27.340481, 24.329615, 30.384592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976238, 24.679979, 30.219730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877254, 24.462776, 29.898754>,  <27.817865, 24.332455, 29.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877254, 24.462776, 29.898754>,  <27.976238, 24.679979, 30.219730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877254, 24.462776, 29.898754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097732, 0.837962, -0.536906,
		0.963957, -0.054438, -0.260428,
		-0.247457, -0.543006, -0.802440,
		27.803017, 24.299875, 29.658022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417768, 24.942804, 29.783075>,  <27.976238, 24.679979, 30.219730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417768, 24.942804, 29.783075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110909, 24.783913, 29.581604>,  <27.926792, 24.688578, 29.460722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110909, 24.783913, 29.581604>,  <28.417768, 24.942804, 29.783075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110909, 24.783913, 29.581604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201597, 0.894709, -0.398567,
		0.608968, -0.204220, -0.766455,
		-0.767149, -0.397229, -0.503678,
		27.880764, 24.664743, 29.430500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423254, 24.974384, 29.032444>,  <28.417768, 24.942804, 29.783075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423254, 24.974384, 29.032444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031996, 24.983143, 29.115154>,  <27.797241, 24.988398, 29.164780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.031996, 24.983143, 29.115154>,  <28.423254, 24.974384, 29.032444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.031996, 24.983143, 29.115154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102174, 0.815487, -0.569686,
		-0.181096, -0.578362, -0.795426,
		-0.978144, 0.021896, 0.206774,
		27.738552, 24.989712, 29.177187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883081, 25.009281, 28.381931>,  <28.423254, 24.974384, 29.032444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883081, 25.009281, 28.381931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689896, 25.167038, 28.694649>,  <27.573984, 25.261692, 28.882278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689896, 25.167038, 28.694649>,  <27.883081, 25.009281, 28.381931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689896, 25.167038, 28.694649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153636, 0.840807, -0.519076,
		-0.862056, -0.370808, -0.345488,
		-0.482966, 0.394393, 0.781792,
		27.545006, 25.285357, 28.929186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441488, 25.572063, 28.052628>,  <27.883081, 25.009281, 28.381931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441488, 25.572063, 28.052628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379038, 25.637733, 28.442226>,  <27.341568, 25.677135, 28.675985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379038, 25.637733, 28.442226>,  <27.441488, 25.572063, 28.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379038, 25.637733, 28.442226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495977, 0.839730, -0.221045,
		-0.854184, -0.517592, -0.049679,
		-0.156128, 0.164173, 0.973998,
		27.332199, 25.686985, 28.734426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659595, 25.660748, 28.174608>,  <27.441488, 25.572063, 28.052628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659595, 25.660748, 28.174608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904951, 25.843437, 28.432339>,  <27.052164, 25.953051, 28.586977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904951, 25.843437, 28.432339>,  <26.659595, 25.660748, 28.174608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904951, 25.843437, 28.432339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264842, 0.887541, -0.377000,
		-0.744053, 0.060601, 0.665366,
		0.613387, 0.456725, 0.644328,
		27.088966, 25.980455, 28.625637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432713, 26.233788, 28.530216>,  <26.659595, 25.660748, 28.174608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432713, 26.233788, 28.530216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826269, 26.305092, 28.524788>,  <27.062403, 26.347876, 28.521530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826269, 26.305092, 28.524788>,  <26.432713, 26.233788, 28.530216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826269, 26.305092, 28.524788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175631, 0.949600, -0.259641,
		-0.033398, 0.257841, 0.965610,
		0.983890, 0.178262, -0.013570,
		27.121435, 26.358570, 28.520718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452019, 27.004543, 28.785749>,  <26.432713, 26.233788, 28.530216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452019, 27.004543, 28.785749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790205, 26.921848, 28.588795>,  <26.993116, 26.872231, 28.470621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790205, 26.921848, 28.588795>,  <26.452019, 27.004543, 28.785749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790205, 26.921848, 28.588795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167186, 0.978145, -0.123620,
		0.507183, 0.022197, 0.861552,
		0.845467, -0.206737, -0.492387,
		27.043844, 26.859827, 28.441078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894516, 27.614010, 28.973398>,  <26.452019, 27.004543, 28.785749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894516, 27.614010, 28.973398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049894, 27.426640, 28.655987>,  <27.143122, 27.314217, 28.465540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049894, 27.426640, 28.655987>,  <26.894516, 27.614010, 28.973398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049894, 27.426640, 28.655987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208805, 0.883497, -0.419324,
		0.897502, -0.002807, 0.441002,
		0.388447, -0.468428, -0.793526,
		27.166428, 27.286112, 28.417929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.420139, 27.982422, 28.718353>,  <26.894516, 27.614010, 28.973398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.420139, 27.982422, 28.718353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400436, 27.750404, 28.393116>,  <27.388615, 27.611195, 28.197973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400436, 27.750404, 28.393116>,  <27.420139, 27.982422, 28.718353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400436, 27.750404, 28.393116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269036, 0.776289, -0.570084,
		0.961870, -0.246831, 0.117816,
		-0.049255, -0.580043, -0.813095,
		27.385660, 27.576391, 28.149187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111984, 28.052029, 28.335663>,  <27.420139, 27.982422, 28.718353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111984, 28.052029, 28.335663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814072, 27.929459, 28.098545>,  <27.635324, 27.855917, 27.956274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.814072, 27.929459, 28.098545>,  <28.111984, 28.052029, 28.335663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814072, 27.929459, 28.098545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292539, 0.648497, -0.702761,
		0.599770, -0.696818, -0.393346,
		-0.744780, -0.306425, -0.592795,
		27.590637, 27.837532, 27.920706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.405210, 28.160782, 27.649767>,  <28.111984, 28.052029, 28.335663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.405210, 28.160782, 27.649767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007837, 28.155495, 27.604313>,  <27.769413, 28.152323, 27.577040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.007837, 28.155495, 27.604313>,  <28.405210, 28.160782, 27.649767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007837, 28.155495, 27.604313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058509, 0.794854, -0.603973,
		0.098307, -0.606657, -0.788862,
		-0.993434, -0.013219, -0.113634,
		27.709806, 28.151529, 27.570223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360237, 28.409664, 26.942242>,  <28.405210, 28.160782, 27.649767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360237, 28.409664, 26.942242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000517, 28.444374, 27.113697>,  <27.784685, 28.465200, 27.216570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000517, 28.444374, 27.113697>,  <28.360237, 28.409664, 26.942242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000517, 28.444374, 27.113697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151244, 0.857928, -0.491003,
		-0.410347, -0.506388, -0.758411,
		-0.899300, 0.086777, 0.428636,
		27.730726, 28.470407, 27.242289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787886, 28.541578, 26.344475>,  <28.360237, 28.409664, 26.942242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787886, 28.541578, 26.344475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649647, 28.694580, 26.687229>,  <27.566704, 28.786381, 26.892881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649647, 28.694580, 26.687229>,  <27.787886, 28.541578, 26.344475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649647, 28.694580, 26.687229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397935, 0.767240, -0.502982,
		-0.849830, -0.514814, -0.112944,
		-0.345598, 0.382505, 0.856885,
		27.545967, 28.809332, 26.944294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129704, 28.725037, 26.178324>,  <27.787886, 28.541578, 26.344475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129704, 28.725037, 26.178324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194929, 28.945770, 26.505466>,  <27.234064, 29.078211, 26.701752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194929, 28.945770, 26.505466>,  <27.129704, 28.725037, 26.178324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194929, 28.945770, 26.505466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414375, 0.790602, -0.450824,
		-0.895379, -0.265387, 0.357584,
		0.163064, 0.551832, 0.817858,
		27.243849, 29.111320, 26.750824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486004, 29.115728, 26.329317>,  <27.129704, 28.725037, 26.178324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486004, 29.115728, 26.329317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779915, 29.292953, 26.534763>,  <26.956261, 29.399288, 26.658031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779915, 29.292953, 26.534763>,  <26.486004, 29.115728, 26.329317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779915, 29.292953, 26.534763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251437, 0.881163, -0.400415,
		-0.629987, 0.165074, 0.758859,
		0.734776, 0.443061, 0.513615,
		27.000347, 29.425871, 26.688848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227985, 29.657545, 26.626764>,  <26.486004, 29.115728, 26.329317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227985, 29.657545, 26.626764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617176, 29.748993, 26.613831>,  <26.850691, 29.803862, 26.606070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617176, 29.748993, 26.613831>,  <26.227985, 29.657545, 26.626764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617176, 29.748993, 26.613831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225015, 0.907442, -0.354848,
		-0.051784, 0.352535, 0.934365,
		0.972978, 0.228621, -0.032335,
		26.909069, 29.817579, 26.604130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262907, 30.361698, 26.740749>,  <26.227985, 29.657545, 26.626764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262907, 30.361698, 26.740749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617821, 30.286968, 26.572075>,  <26.830769, 30.242130, 26.470871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617821, 30.286968, 26.572075>,  <26.262907, 30.361698, 26.740749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617821, 30.286968, 26.572075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060910, 0.858814, -0.508653,
		0.457179, 0.477006, 0.750635,
		0.887286, -0.186824, -0.421687,
		26.884007, 30.230921, 26.445568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717175, 30.920904, 26.854107>,  <26.262907, 30.361698, 26.740749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717175, 30.920904, 26.854107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906111, 30.757214, 26.541843>,  <27.019472, 30.659000, 26.354485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906111, 30.757214, 26.541843>,  <26.717175, 30.920904, 26.854107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906111, 30.757214, 26.541843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005607, 0.884275, -0.466934,
		0.881398, 0.224929, 0.415385,
		0.472341, -0.409225, -0.780659,
		27.047813, 30.634445, 26.307646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099258, 31.515285, 26.590624>,  <26.717175, 30.920904, 26.854107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099258, 31.515285, 26.590624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127661, 31.234859, 26.306801>,  <27.144703, 31.066605, 26.136507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.127661, 31.234859, 26.306801>,  <27.099258, 31.515285, 26.590624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127661, 31.234859, 26.306801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191158, 0.707730, -0.680130,
		0.978988, -0.087344, 0.184267,
		0.071006, -0.701063, -0.709555,
		27.148962, 31.024540, 26.093935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657042, 31.716242, 26.130039>,  <27.099258, 31.515285, 26.590624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657042, 31.716242, 26.130039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421026, 31.466816, 25.924896>,  <27.279417, 31.317162, 25.801809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421026, 31.466816, 25.924896>,  <27.657042, 31.716242, 26.130039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421026, 31.466816, 25.924896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073314, 0.673973, -0.735109,
		0.804040, -0.396142, -0.443385,
		-0.590037, -0.623563, -0.512859,
		27.244015, 31.279747, 25.771038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047699, 31.583166, 25.549925>,  <27.657042, 31.716242, 26.130039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047699, 31.583166, 25.549925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657961, 31.536747, 25.472790>,  <27.424118, 31.508896, 25.426508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657961, 31.536747, 25.472790>,  <28.047699, 31.583166, 25.549925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657961, 31.536747, 25.472790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120769, 0.453432, -0.883071,
		0.189919, -0.883703, -0.427784,
		-0.974343, -0.116049, -0.192839,
		27.365658, 31.501932, 25.414938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078373, 31.569010, 24.789106>,  <28.047699, 31.583166, 25.549925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078373, 31.569010, 24.789106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684259, 31.572510, 24.857391>,  <27.447792, 31.574610, 24.898363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684259, 31.572510, 24.857391>,  <28.078373, 31.569010, 24.789106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684259, 31.572510, 24.857391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149640, 0.438602, -0.886136,
		-0.082631, -0.898639, -0.430837,
		-0.985282, 0.008752, 0.170715,
		27.388676, 31.575134, 24.908606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703188, 31.351248, 24.146109>,  <28.078373, 31.569010, 24.789106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703188, 31.351248, 24.146109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453596, 31.577137, 24.362160>,  <27.303841, 31.712669, 24.491791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453596, 31.577137, 24.362160>,  <27.703188, 31.351248, 24.146109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453596, 31.577137, 24.362160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283070, 0.480906, -0.829819,
		-0.728368, -0.670685, -0.140220,
		-0.623981, 0.564721, 0.540128,
		27.266401, 31.746553, 24.524199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106600, 31.348339, 23.824940>,  <27.703188, 31.351248, 24.146109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106600, 31.348339, 23.824940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090704, 31.678471, 24.050240>,  <27.081167, 31.876551, 24.185419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090704, 31.678471, 24.050240>,  <27.106600, 31.348339, 23.824940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090704, 31.678471, 24.050240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334408, 0.520203, -0.785850,
		-0.941590, -0.219584, 0.255325,
		-0.039739, 0.825331, 0.563249,
		27.078783, 31.926069, 24.219213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547556, 31.706816, 23.541990>,  <27.106600, 31.348339, 23.824940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547556, 31.706816, 23.541990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723179, 31.990177, 23.763039>,  <26.828552, 32.160194, 23.895668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723179, 31.990177, 23.763039>,  <26.547556, 31.706816, 23.541990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723179, 31.990177, 23.763039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296231, 0.694822, -0.655339,
		-0.848218, 0.124029, 0.514920,
		0.439059, 0.708406, 0.552620,
		26.854897, 32.202698, 23.928825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.185862, 32.257446, 23.389584>,  <26.547556, 31.706816, 23.541990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.185862, 32.257446, 23.389584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521456, 32.415989, 23.538719>,  <26.722813, 32.511112, 23.628201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.521456, 32.415989, 23.538719>,  <26.185862, 32.257446, 23.389584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.521456, 32.415989, 23.538719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092002, 0.778628, -0.620705,
		-0.536322, 0.486460, 0.689722,
		0.838984, 0.396353, 0.372840,
		26.773151, 32.534893, 23.650572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981749, 32.995319, 23.535112>,  <26.185862, 32.257446, 23.389584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981749, 32.995319, 23.535112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380547, 33.012718, 23.509457>,  <26.619825, 33.023155, 23.494064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380547, 33.012718, 23.509457>,  <25.981749, 32.995319, 23.535112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380547, 33.012718, 23.509457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072703, 0.811490, -0.579826,
		0.026828, 0.582745, 0.812212,
		0.996993, 0.043494, -0.064138,
		26.679644, 33.025768, 23.490215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093084, 33.668976, 23.626358>,  <25.981749, 32.995319, 23.535112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093084, 33.668976, 23.626358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414864, 33.524902, 23.437412>,  <26.607931, 33.438457, 23.324045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414864, 33.524902, 23.437412>,  <26.093084, 33.668976, 23.626358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414864, 33.524902, 23.437412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017775, 0.780248, -0.625217,
		0.593756, 0.511352, 0.621267,
		0.804449, -0.360183, -0.472367,
		26.656199, 33.416847, 23.295702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582075, 34.212292, 23.694044>,  <26.093084, 33.668976, 23.626358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582075, 34.212292, 23.694044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670734, 33.982086, 23.379173>,  <26.723930, 33.843964, 23.190250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670734, 33.982086, 23.379173>,  <26.582075, 34.212292, 23.694044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670734, 33.982086, 23.379173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040480, 0.801132, -0.597117,
		0.974286, 0.164216, 0.154273,
		0.221649, -0.575518, -0.787179,
		26.737228, 33.809429, 23.143019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985250, 34.661694, 23.284901>,  <26.582075, 34.212292, 23.694044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985250, 34.661694, 23.284901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836758, 34.387264, 23.034626>,  <26.747662, 34.222607, 22.884460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836758, 34.387264, 23.034626>,  <26.985250, 34.661694, 23.284901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836758, 34.387264, 23.034626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031100, 0.682649, -0.730084,
		0.928019, -0.251573, -0.274759,
		-0.371234, -0.686077, -0.625687,
		26.725388, 34.181442, 22.846920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247456, 34.850788, 23.385771>,  <26.985250, 34.661694, 23.284901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247456, 34.850788, 23.385771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908867, 34.806801, 23.177391>,  <25.705713, 34.780411, 23.052362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908867, 34.806801, 23.177391>,  <26.247456, 34.850788, 23.385771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908867, 34.806801, 23.177391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403888, -0.504919, 0.762844,
		-0.346924, 0.856133, 0.382988,
		-0.846474, -0.109965, -0.520950,
		25.654924, 34.773811, 23.021107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584171, 35.151917, 23.658356>,  <26.247456, 34.850788, 23.385771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584171, 35.151917, 23.658356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519909, 34.822678, 23.440475>,  <25.481352, 34.625134, 23.309748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.519909, 34.822678, 23.440475>,  <25.584171, 35.151917, 23.658356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519909, 34.822678, 23.440475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767254, -0.243017, 0.593517,
		-0.620895, 0.513275, -0.592484,
		-0.160654, -0.823098, -0.544701,
		25.471712, 34.575748, 23.277065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.857634, 35.180866, 23.692919>,  <25.584171, 35.151917, 23.658356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.857634, 35.180866, 23.692919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944656, 34.807827, 23.577724>,  <24.996870, 34.584003, 23.508608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944656, 34.807827, 23.577724>,  <24.857634, 35.180866, 23.692919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944656, 34.807827, 23.577724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759635, -0.347050, 0.550010,
		-0.612882, 0.099105, -0.783935,
		0.217556, -0.932596, -0.287984,
		25.009924, 34.528049, 23.491329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694633, 35.923359, 23.397337>,  <24.857634, 35.180866, 23.692919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694633, 35.923359, 23.397337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391439, 35.961899, 23.139290>,  <24.209522, 35.985023, 22.984463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391439, 35.961899, 23.139290>,  <24.694633, 35.923359, 23.397337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391439, 35.961899, 23.139290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376842, -0.871954, 0.312549,
		-0.532399, 0.480015, 0.697236,
		-0.757985, 0.096348, -0.645117,
		24.164043, 35.990803, 22.945755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016615, 35.902153, 23.726564>,  <24.694633, 35.923359, 23.397337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016615, 35.902153, 23.726564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996716, 35.756256, 23.354652>,  <23.984776, 35.668716, 23.131506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.996716, 35.756256, 23.354652>,  <24.016615, 35.902153, 23.726564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996716, 35.756256, 23.354652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469062, -0.813346, 0.344164,
		-0.881763, 0.453245, -0.130625,
		-0.049748, -0.364743, -0.929779,
		23.981791, 35.646832, 23.075718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302517, 35.760540, 23.515085>,  <24.016615, 35.902153, 23.726564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302517, 35.760540, 23.515085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559284, 35.530403, 23.312336>,  <23.713345, 35.392323, 23.190685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.559284, 35.530403, 23.312336>,  <23.302517, 35.760540, 23.515085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.559284, 35.530403, 23.312336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465621, -0.817699, 0.338475,
		-0.609209, 0.018738, -0.792788,
		0.641920, -0.575341, -0.506874,
		23.751860, 35.357800, 23.160275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.859007, 35.354015, 23.130779>,  <23.302517, 35.760540, 23.515085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.859007, 35.354015, 23.130779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.462336, 35.400345, 23.153271>,  <22.224333, 35.428143, 23.166765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.462336, 35.400345, 23.153271>,  <22.859007, 35.354015, 23.130779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.462336, 35.400345, 23.153271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082743, -0.238748, -0.967550,
		-0.098639, -0.964150, 0.246344,
		-0.991677, 0.115822, 0.056227,
		22.164833, 35.435093, 23.170139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.557072, 34.702194, 22.957140>,  <22.859007, 35.354015, 23.130779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.557072, 34.702194, 22.957140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301577, 34.997799, 22.871468>,  <22.148279, 35.175163, 22.820065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.301577, 34.997799, 22.871468>,  <22.557072, 34.702194, 22.957140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301577, 34.997799, 22.871468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019761, -0.294026, -0.955593,
		-0.769171, -0.606141, 0.202409,
		-0.638738, 0.739015, -0.214179,
		22.109955, 35.219501, 22.807215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.091419, 34.470226, 22.334486>,  <22.557072, 34.702194, 22.957140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.091419, 34.470226, 22.334486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047228, 34.867100, 22.357681>,  <22.020714, 35.105225, 22.371597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.047228, 34.867100, 22.357681>,  <22.091419, 34.470226, 22.334486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.047228, 34.867100, 22.357681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024232, 0.061016, -0.997843,
		-0.993583, -0.108834, -0.030784,
		-0.110478, 0.992186, 0.057987,
		22.014084, 35.164757, 22.375078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.595608, 34.623714, 21.874035>,  <22.091419, 34.470226, 22.334486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.595608, 34.623714, 21.874035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800484, 34.963730, 21.923176>,  <21.923409, 35.167740, 21.952660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800484, 34.963730, 21.923176>,  <21.595608, 34.623714, 21.874035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.800484, 34.963730, 21.923176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089195, 0.089620, -0.991974,
		-0.854229, 0.519035, -0.029917,
		0.512188, 0.850042, 0.122851,
		21.954140, 35.218742, 21.960032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324812, 35.096874, 21.408888>,  <21.595608, 34.623714, 21.874035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324812, 35.096874, 21.408888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683737, 35.243622, 21.507061>,  <21.899092, 35.331669, 21.565966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.683737, 35.243622, 21.507061>,  <21.324812, 35.096874, 21.408888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.683737, 35.243622, 21.507061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165117, 0.236680, -0.957454,
		-0.409349, 0.899661, 0.151800,
		0.897313, 0.366868, 0.245434,
		21.952930, 35.353683, 21.580690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324148, 35.717316, 21.103287>,  <21.324812, 35.096874, 21.408888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324148, 35.717316, 21.103287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.713238, 35.668472, 21.182178>,  <21.946692, 35.639168, 21.229513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.713238, 35.668472, 21.182178>,  <21.324148, 35.717316, 21.103287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.713238, 35.668472, 21.182178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225891, 0.305290, -0.925079,
		0.052749, 0.944398, 0.324547,
		0.972723, -0.122109, 0.197227,
		22.005054, 35.631840, 21.241346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.609095, 36.300766, 20.939215>,  <21.324148, 35.717316, 21.103287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.609095, 36.300766, 20.939215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909990, 36.038425, 20.913948>,  <22.090528, 35.881020, 20.898788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.909990, 36.038425, 20.913948>,  <21.609095, 36.300766, 20.939215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.909990, 36.038425, 20.913948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253813, 0.376908, -0.890797,
		0.608042, 0.654059, 0.449990,
		0.752239, -0.655856, -0.063167,
		22.135662, 35.841667, 20.894999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.158800, 36.600677, 20.503618>,  <21.609095, 36.300766, 20.939215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.158800, 36.600677, 20.503618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260326, 36.214699, 20.476917>,  <22.321241, 35.983112, 20.460897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.260326, 36.214699, 20.476917>,  <22.158800, 36.600677, 20.503618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.260326, 36.214699, 20.476917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411597, 0.170202, -0.895332,
		0.875309, 0.199774, 0.440369,
		0.253816, -0.964946, -0.066753,
		22.336472, 35.925217, 20.456892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.858624, 36.605873, 20.244120>,  <22.158800, 36.600677, 20.503618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.858624, 36.605873, 20.244120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.707731, 36.244030, 20.164738>,  <22.617197, 36.026924, 20.117107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.707731, 36.244030, 20.164738>,  <22.858624, 36.605873, 20.244120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.707731, 36.244030, 20.164738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325809, 0.070963, -0.942768,
		0.866917, -0.420299, 0.267960,
		-0.377230, -0.904606, -0.198457,
		22.594563, 35.972649, 20.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405975, 36.298431, 19.886873>,  <22.858624, 36.605873, 20.244120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405975, 36.298431, 19.886873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.069441, 36.098984, 19.803417>,  <22.867519, 35.979313, 19.753344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.069441, 36.098984, 19.803417>,  <23.405975, 36.298431, 19.886873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.069441, 36.098984, 19.803417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247651, -0.012504, -0.968769,
		0.480441, -0.866729, 0.134005,
		-0.841336, -0.498622, -0.208639,
		22.817039, 35.949398, 19.740826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614824, 35.742050, 19.318689>,  <23.405975, 36.298431, 19.886873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614824, 35.742050, 19.318689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.218822, 35.787750, 19.285603>,  <22.981222, 35.815170, 19.265751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.218822, 35.787750, 19.285603>,  <23.614824, 35.742050, 19.318689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.218822, 35.787750, 19.285603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064492, -0.154884, -0.985825,
		-0.125434, -0.981305, 0.145969,
		-0.990003, 0.114242, -0.082714,
		22.921822, 35.822025, 19.260788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.482285, 35.191692, 18.879383>,  <23.614824, 35.742050, 19.318689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.482285, 35.191692, 18.879383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.187883, 35.461746, 18.859383>,  <23.011244, 35.623779, 18.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.187883, 35.461746, 18.859383>,  <23.482285, 35.191692, 18.879383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187883, 35.461746, 18.859383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061313, -0.007082, -0.998093,
		-0.674199, -0.737663, -0.036182,
		-0.736001, 0.675132, -0.050003,
		22.967083, 35.664288, 18.844381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947720, 35.003754, 18.371590>,  <23.482285, 35.191692, 18.879383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947720, 35.003754, 18.371590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.899744, 35.398472, 18.415142>,  <22.870958, 35.635303, 18.441273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.899744, 35.398472, 18.415142>,  <22.947720, 35.003754, 18.371590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.899744, 35.398472, 18.415142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258100, 0.074909, -0.963210,
		-0.958644, -0.143628, 0.245707,
		-0.119938, 0.986793, 0.108881,
		22.863762, 35.694511, 18.447807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.556744, 35.135288, 17.794563>,  <22.947720, 35.003754, 18.371590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.556744, 35.135288, 17.794563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659260, 35.504036, 17.910824>,  <22.720770, 35.725285, 17.980581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659260, 35.504036, 17.910824>,  <22.556744, 35.135288, 17.794563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.659260, 35.504036, 17.910824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162102, 0.337429, -0.927289,
		-0.952910, 0.190540, 0.235916,
		0.256291, 0.921865, 0.290653,
		22.736147, 35.780594, 17.998020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.981716, 35.477360, 17.623627>,  <22.556744, 35.135288, 17.794563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.981716, 35.477360, 17.623627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287823, 35.734825, 17.626888>,  <22.471487, 35.889305, 17.628845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287823, 35.734825, 17.626888>,  <21.981716, 35.477360, 17.623627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287823, 35.734825, 17.626888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236254, 0.292622, -0.926583,
		-0.598794, 0.707155, 0.376001,
		0.765265, 0.643664, 0.008152,
		22.517403, 35.927925, 17.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.754993, 35.949276, 17.266779>,  <21.981716, 35.477360, 17.623627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.754993, 35.949276, 17.266779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143194, 36.045486, 17.260201>,  <22.376116, 36.103214, 17.256254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.143194, 36.045486, 17.260201>,  <21.754993, 35.949276, 17.266779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143194, 36.045486, 17.260201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057819, 0.165983, -0.984432,
		-0.234052, 0.956346, 0.174994,
		0.970504, 0.240526, -0.016446,
		22.434345, 36.117645, 17.255266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802551, 36.640717, 16.913351>,  <21.754993, 35.949276, 17.266779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802551, 36.640717, 16.913351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171694, 36.496765, 16.858467>,  <22.393179, 36.410397, 16.825537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.171694, 36.496765, 16.858467>,  <21.802551, 36.640717, 16.913351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.171694, 36.496765, 16.858467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034415, 0.277775, -0.960030,
		0.383603, 0.890692, 0.243961,
		0.922857, -0.359874, -0.137208,
		22.448551, 36.388802, 16.817305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.273876, 37.151768, 16.533838>,  <21.802551, 36.640717, 16.913351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.273876, 37.151768, 16.533838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437645, 36.793385, 16.464977>,  <22.535906, 36.578354, 16.423660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.437645, 36.793385, 16.464977>,  <22.273876, 37.151768, 16.533838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.437645, 36.793385, 16.464977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169056, 0.110924, -0.979345,
		0.896546, 0.430067, -0.106052,
		0.409420, -0.895957, -0.172154,
		22.560471, 36.524597, 16.413332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658230, 37.186325, 15.891905>,  <22.273876, 37.151768, 16.533838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658230, 37.186325, 15.891905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577560, 36.797050, 15.936166>,  <22.529160, 36.563488, 15.962723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577560, 36.797050, 15.936166>,  <22.658230, 37.186325, 15.891905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577560, 36.797050, 15.936166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251658, -0.057696, -0.966095,
		0.946571, -0.222682, -0.233274,
		-0.201673, -0.973182, 0.110653,
		22.517059, 36.505096, 15.969361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913174, 36.975868, 15.287499>,  <22.658230, 37.186325, 15.891905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913174, 36.975868, 15.287499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.682293, 36.679070, 15.423896>,  <22.543764, 36.500992, 15.505733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.682293, 36.679070, 15.423896>,  <22.913174, 36.975868, 15.287499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.682293, 36.679070, 15.423896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413975, -0.094058, -0.905416,
		0.703890, -0.663771, -0.252879,
		-0.577203, -0.741999, 0.340991,
		22.509132, 36.456470, 15.526194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913168, 36.456158, 14.834881>,  <22.913174, 36.975868, 15.287499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913168, 36.456158, 14.834881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593594, 36.351105, 15.051299>,  <22.401850, 36.288074, 15.181149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.593594, 36.351105, 15.051299>,  <22.913168, 36.456158, 14.834881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.593594, 36.351105, 15.051299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501015, -0.207019, -0.840314,
		0.332700, -0.942426, 0.033812,
		-0.798934, -0.262632, 0.541044,
		22.353914, 36.272316, 15.213613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.658407, 35.717594, 14.754052>,  <22.913168, 36.456158, 14.834881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.658407, 35.717594, 14.754052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369642, 35.981194, 14.838490>,  <22.196383, 36.139355, 14.889153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369642, 35.981194, 14.838490>,  <22.658407, 35.717594, 14.754052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369642, 35.981194, 14.838490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471500, -0.245164, -0.847102,
		-0.506485, -0.711067, 0.487705,
		-0.721914, 0.658998, 0.211096,
		22.153069, 36.178894, 14.901819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.022390, 35.405777, 14.493116>,  <22.658407, 35.717594, 14.754052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.022390, 35.405777, 14.493116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984589, 35.803791, 14.505570>,  <21.961906, 36.042599, 14.513042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.984589, 35.803791, 14.505570>,  <22.022390, 35.405777, 14.493116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.984589, 35.803791, 14.505570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506532, -0.021138, -0.861962,
		-0.857026, -0.097232, 0.506016,
		-0.094506, 0.995037, 0.031135,
		21.956236, 36.102303, 14.514911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491940, 35.559525, 14.129463>,  <22.022390, 35.405777, 14.493116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491940, 35.559525, 14.129463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637608, 35.931343, 14.152551>,  <21.725008, 36.154434, 14.166403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637608, 35.931343, 14.152551>,  <21.491940, 35.559525, 14.129463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637608, 35.931343, 14.152551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587706, 0.277440, -0.760019,
		-0.722483, 0.242856, 0.647333,
		0.364171, 0.929542, 0.057718,
		21.746859, 36.210205, 14.169867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937952, 36.138779, 14.262428>,  <21.491940, 35.559525, 14.129463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937952, 36.138779, 14.262428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244333, 36.275845, 14.044843>,  <21.428162, 36.358086, 13.914291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.244333, 36.275845, 14.044843>,  <20.937952, 36.138779, 14.262428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.244333, 36.275845, 14.044843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594009, 0.053576, -0.802673,
		-0.245904, 0.937929, 0.244582,
		0.765954, 0.342664, -0.543963,
		21.474119, 36.378643, 13.881654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373934, 36.732792, 14.458219>,  <20.937952, 36.138779, 14.262428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373934, 36.732792, 14.458219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518587, 37.085762, 14.578586>,  <21.605379, 37.297543, 14.650805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.518587, 37.085762, 14.578586>,  <21.373934, 36.732792, 14.458219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518587, 37.085762, 14.578586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833545, 0.450598, -0.319630,
		-0.417642, -0.135240, 0.898491,
		0.361631, 0.882424, 0.300918,
		21.627077, 37.350491, 14.668861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914646, 37.051956, 15.017755>,  <21.373934, 36.732792, 14.458219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914646, 37.051956, 15.017755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109474, 37.311714, 14.784158>,  <21.226372, 37.467571, 14.644000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.109474, 37.311714, 14.784158>,  <20.914646, 37.051956, 15.017755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109474, 37.311714, 14.784158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871919, 0.323130, -0.367892,
		-0.050202, 0.688382, 0.723609,
		0.487070, 0.649397, -0.583991,
		21.255596, 37.506535, 14.608960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.883892, 37.743881, 15.168244>,  <20.914646, 37.051956, 15.017755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.883892, 37.743881, 15.168244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884871, 37.630093, 14.784772>,  <20.885458, 37.561817, 14.554688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.884871, 37.630093, 14.784772>,  <20.883892, 37.743881, 15.168244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.884871, 37.630093, 14.784772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972281, 0.223467, -0.068793,
		0.233803, 0.932275, -0.276043,
		0.002448, -0.284475, -0.958680,
		20.885605, 37.544750, 14.497168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.634516, 38.310204, 14.637926>,  <20.883892, 37.743881, 15.168244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.634516, 38.310204, 14.637926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536222, 37.948353, 14.498630>,  <20.477247, 37.731243, 14.415051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536222, 37.948353, 14.498630>,  <20.634516, 38.310204, 14.637926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536222, 37.948353, 14.498630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878844, 0.359487, -0.313693,
		0.408962, 0.228965, -0.883360,
		-0.245732, -0.904624, -0.348241,
		20.462503, 37.676964, 14.394157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112726, 37.856518, 14.905625>,  <20.634516, 38.310204, 14.637926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112726, 37.856518, 14.905625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.886627, 37.579399, 14.726506>,  <19.750967, 37.413128, 14.619035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.886627, 37.579399, 14.726506>,  <20.112726, 37.856518, 14.905625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.886627, 37.579399, 14.726506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504682, -0.138966, 0.852048,
		-0.652526, 0.707615, -0.271093,
		-0.565249, -0.692799, -0.447799,
		19.717052, 37.371559, 14.592167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379515, 38.102497, 15.002331>,  <20.112726, 37.856518, 14.905625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379515, 38.102497, 15.002331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447117, 37.711887, 14.948895>,  <19.487679, 37.477524, 14.916835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447117, 37.711887, 14.948895>,  <19.379515, 38.102497, 15.002331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447117, 37.711887, 14.948895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498524, -0.201615, 0.843105,
		-0.850242, -0.075891, -0.520892,
		0.169004, -0.976520, -0.133588,
		19.497818, 37.418930, 14.908819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.693008, 37.667610, 15.117258>,  <19.379515, 38.102497, 15.002331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.693008, 37.667610, 15.117258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017836, 37.441357, 15.174668>,  <19.212732, 37.305603, 15.209114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.017836, 37.441357, 15.174668>,  <18.693008, 37.667610, 15.117258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017836, 37.441357, 15.174668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368491, -0.306319, 0.877715,
		-0.452505, -0.765651, -0.457184,
		0.812068, -0.565639, 0.143524,
		19.261456, 37.271664, 15.217726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408611, 37.027687, 15.306910>,  <18.693008, 37.667610, 15.117258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408611, 37.027687, 15.306910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791466, 37.021542, 15.422603>,  <19.021177, 37.017853, 15.492019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.791466, 37.021542, 15.422603>,  <18.408611, 37.027687, 15.306910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791466, 37.021542, 15.422603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279470, -0.311306, 0.908287,
		0.076084, -0.950185, -0.302256,
		0.957135, -0.015365, 0.289234,
		19.078606, 37.016933, 15.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.438091, 36.390831, 15.661423>,  <18.408611, 37.027687, 15.306910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.438091, 36.390831, 15.661423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.724293, 36.649269, 15.767716>,  <18.896013, 36.804333, 15.831492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.724293, 36.649269, 15.767716>,  <18.438091, 36.390831, 15.661423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724293, 36.649269, 15.767716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139625, -0.240447, 0.960567,
		0.684515, -0.724392, -0.081829,
		0.715503, 0.646097, 0.265733,
		18.938944, 36.843098, 15.847436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.745970, 36.050835, 16.247572>,  <18.438091, 36.390831, 15.661423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.745970, 36.050835, 16.247572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.906836, 36.414837, 16.287891>,  <19.003355, 36.633236, 16.312084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.906836, 36.414837, 16.287891>,  <18.745970, 36.050835, 16.247572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906836, 36.414837, 16.287891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080785, -0.074398, 0.993951,
		0.911996, -0.407876, 0.043594,
		0.402166, 0.910001, 0.100801,
		19.027485, 36.687836, 16.318132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275698, 35.954468, 16.795046>,  <18.745970, 36.050835, 16.247572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.275698, 35.954468, 16.795046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242392, 36.352974, 16.785954>,  <19.222408, 36.592079, 16.780499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242392, 36.352974, 16.785954>,  <19.275698, 35.954468, 16.795046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242392, 36.352974, 16.785954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200729, 0.039108, 0.978866,
		0.976102, 0.076942, -0.203236,
		-0.083264, 0.996268, -0.022729,
		19.217413, 36.651855, 16.779135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.809864, 36.319805, 17.315052>,  <19.275698, 35.954468, 16.795046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.809864, 36.319805, 17.315052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513548, 36.580757, 17.251011>,  <19.335758, 36.737328, 17.212587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513548, 36.580757, 17.251011>,  <19.809864, 36.319805, 17.315052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513548, 36.580757, 17.251011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067598, 0.309530, 0.948484,
		0.668325, 0.691807, -0.273396,
		-0.740792, 0.652377, -0.160102,
		19.291311, 36.776470, 17.202980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059235, 36.967880, 17.490047>,  <19.809864, 36.319805, 17.315052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059235, 36.967880, 17.490047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.661631, 36.978821, 17.532364>,  <19.423067, 36.985386, 17.557755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.661631, 36.978821, 17.532364>,  <20.059235, 36.967880, 17.490047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.661631, 36.978821, 17.532364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105843, 0.481569, 0.869993,
		-0.027152, 0.875981, -0.481580,
		-0.994012, 0.027350, 0.105793,
		19.363426, 36.987026, 17.564102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961937, 37.534264, 17.893021>,  <20.059235, 36.967880, 17.490047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961937, 37.534264, 17.893021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612507, 37.341896, 17.922905>,  <19.402849, 37.226475, 17.940836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.612507, 37.341896, 17.922905>,  <19.961937, 37.534264, 17.893021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.612507, 37.341896, 17.922905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108329, 0.341794, 0.933511,
		-0.474480, 0.807398, -0.350680,
		-0.873575, -0.480921, 0.074710,
		19.350435, 37.197620, 17.945318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.543678, 37.994183, 18.260138>,  <19.961937, 37.534264, 17.893021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.543678, 37.994183, 18.260138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367451, 37.636742, 18.294506>,  <19.261715, 37.422279, 18.315128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367451, 37.636742, 18.294506>,  <19.543678, 37.994183, 18.260138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367451, 37.636742, 18.294506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022535, 0.106690, 0.994037,
		-0.897436, 0.436005, -0.067141,
		-0.440569, -0.893598, 0.085922,
		19.235281, 37.368664, 18.320282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934877, 38.098804, 18.581846>,  <19.543678, 37.994183, 18.260138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934877, 38.098804, 18.581846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032595, 37.717075, 18.650646>,  <19.091225, 37.488037, 18.691925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032595, 37.717075, 18.650646>,  <18.934877, 38.098804, 18.581846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032595, 37.717075, 18.650646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128286, 0.144007, 0.981226,
		-0.961179, -0.261771, -0.087247,
		0.244292, -0.954326, 0.171998,
		19.105883, 37.430779, 18.702246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.515997, 37.959888, 19.225883>,  <18.934877, 38.098804, 18.581846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.515997, 37.959888, 19.225883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801798, 37.681175, 19.200645>,  <18.973278, 37.513947, 19.185503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801798, 37.681175, 19.200645>,  <18.515997, 37.959888, 19.225883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801798, 37.681175, 19.200645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117171, 0.030265, 0.992650,
		-0.689749, -0.716646, 0.103267,
		0.714504, -0.696780, -0.063095,
		19.016150, 37.472141, 19.181717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366806, 37.667950, 19.828133>,  <18.515997, 37.959888, 19.225883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366806, 37.667950, 19.828133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727049, 37.531261, 19.720703>,  <18.943195, 37.449249, 19.656246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.727049, 37.531261, 19.720703>,  <18.366806, 37.667950, 19.828133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.727049, 37.531261, 19.720703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268555, -0.048334, 0.962051,
		-0.341734, -0.938558, 0.048241,
		0.900609, -0.341721, -0.268572,
		18.997232, 37.428745, 19.640131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501970, 37.137035, 20.247751>,  <18.366806, 37.667950, 19.828133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501970, 37.137035, 20.247751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859558, 37.264973, 20.122200>,  <19.074110, 37.341736, 20.046869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.859558, 37.264973, 20.122200>,  <18.501970, 37.137035, 20.247751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.859558, 37.264973, 20.122200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322380, 0.027509, 0.946210,
		0.311278, -0.947070, -0.078520,
		0.893967, 0.319847, -0.313880,
		19.127748, 37.360928, 20.028036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901012, 36.668060, 20.527243>,  <18.501970, 37.137035, 20.247751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901012, 36.668060, 20.527243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163082, 36.960056, 20.449413>,  <19.320324, 37.135254, 20.402716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163082, 36.960056, 20.449413>,  <18.901012, 36.668060, 20.527243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163082, 36.960056, 20.449413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339647, -0.054560, 0.938969,
		0.674824, -0.681275, -0.283686,
		0.655174, 0.729992, -0.194575,
		19.359634, 37.179054, 20.391041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521198, 36.516079, 20.692047>,  <18.901012, 36.668060, 20.527243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521198, 36.516079, 20.692047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562931, 36.913708, 20.704227>,  <19.587971, 37.152287, 20.711535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.562931, 36.913708, 20.704227>,  <19.521198, 36.516079, 20.692047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562931, 36.913708, 20.704227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322520, -0.062781, 0.944478,
		0.940795, -0.088720, -0.327160,
		0.104334, 0.994076, 0.030450,
		19.594231, 37.211929, 20.713362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.279087, 36.638664, 20.954992>,  <19.521198, 36.516079, 20.692047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.279087, 36.638664, 20.954992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.035156, 36.952049, 21.002827>,  <19.888798, 37.140079, 21.031528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.035156, 36.952049, 21.002827>,  <20.279087, 36.638664, 20.954992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035156, 36.952049, 21.002827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261823, 0.056736, 0.963447,
		0.748039, 0.618845, -0.239727,
		-0.609825, 0.783462, 0.119587,
		19.852209, 37.187088, 21.038702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700882, 37.133816, 21.370481>,  <20.279087, 36.638664, 20.954992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700882, 37.133816, 21.370481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333521, 37.279461, 21.432400>,  <20.113104, 37.366848, 21.469551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.333521, 37.279461, 21.432400>,  <20.700882, 37.133816, 21.370481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.333521, 37.279461, 21.432400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161583, -0.011948, 0.986787,
		0.361151, 0.931278, -0.047862,
		-0.918401, 0.364113, 0.154793,
		20.058001, 37.388695, 21.478838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790752, 37.706520, 21.863495>,  <20.700882, 37.133816, 21.370481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790752, 37.706520, 21.863495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419386, 37.558132, 21.871742>,  <20.196566, 37.469097, 21.876690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.419386, 37.558132, 21.871742>,  <20.790752, 37.706520, 21.863495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.419386, 37.558132, 21.871742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083382, -0.153958, 0.984553,
		-0.362069, 0.915792, 0.173869,
		-0.928414, -0.370974, 0.020618,
		20.140862, 37.446838, 21.877928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.398748, 38.027092, 22.433771>,  <20.790752, 37.706520, 21.863495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.398748, 38.027092, 22.433771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198685, 37.691433, 22.348286>,  <20.078646, 37.490040, 22.296993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198685, 37.691433, 22.348286>,  <20.398748, 38.027092, 22.433771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198685, 37.691433, 22.348286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037859, -0.267758, 0.962742,
		-0.865105, 0.473434, 0.165692,
		-0.500161, -0.839146, -0.213715,
		20.048637, 37.439690, 22.284172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.861425, 37.889465, 22.917637>,  <20.398748, 38.027092, 22.433771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.861425, 37.889465, 22.917637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904814, 37.513702, 22.787563>,  <19.930847, 37.288242, 22.709518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904814, 37.513702, 22.787563>,  <19.861425, 37.889465, 22.917637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904814, 37.513702, 22.787563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139620, -0.309474, 0.940602,
		-0.984246, -0.147432, 0.097590,
		0.108473, -0.939409, -0.325183,
		19.937355, 37.231880, 22.690008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.348265, 37.574684, 23.321642>,  <19.861425, 37.889465, 22.917637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.348265, 37.574684, 23.321642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608488, 37.316147, 23.162132>,  <19.764622, 37.161026, 23.066427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608488, 37.316147, 23.162132>,  <19.348265, 37.574684, 23.321642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608488, 37.316147, 23.162132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174100, -0.384169, 0.906699,
		-0.739233, -0.659285, -0.137396,
		0.650556, -0.646341, -0.398772,
		19.803656, 37.122246, 23.042501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.210371, 36.845959, 23.390625>,  <19.348265, 37.574684, 23.321642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.210371, 36.845959, 23.390625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609447, 36.873070, 23.388882>,  <19.848894, 36.889336, 23.387835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.609447, 36.873070, 23.388882>,  <19.210371, 36.845959, 23.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609447, 36.873070, 23.388882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023907, -0.290393, 0.956609,
		0.063569, -0.954504, -0.291343,
		0.997691, 0.067775, -0.004359,
		19.908754, 36.893402, 23.387573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.425034, 36.519611, 24.018995>,  <19.210371, 36.845959, 23.390625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.425034, 36.519611, 24.018995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.770147, 36.684490, 23.901897>,  <19.977215, 36.783417, 23.831638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.770147, 36.684490, 23.901897>,  <19.425034, 36.519611, 24.018995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.770147, 36.684490, 23.901897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341399, -0.047933, 0.938695,
		0.372893, -0.909834, -0.182078,
		0.862785, 0.412194, -0.292743,
		20.028982, 36.808147, 23.814074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703054, 36.457615, 24.237268>,  <19.425034, 36.519611, 24.018995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703054, 36.457615, 24.237268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303122, 36.462074, 24.243134>,  <18.063162, 36.464748, 24.246653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303122, 36.462074, 24.243134>,  <18.703054, 36.457615, 24.237268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303122, 36.462074, 24.243134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013326, 0.111977, -0.993622,
		-0.012717, -0.993648, -0.111809,
		-0.999831, 0.011146, 0.014665,
		18.003172, 36.465416, 24.247534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755667, 37.225437, 23.987888>,  <18.703054, 36.457615, 24.237268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755667, 37.225437, 23.987888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641598, 37.558624, 23.798218>,  <18.573156, 37.758537, 23.684416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641598, 37.558624, 23.798218>,  <18.755667, 37.225437, 23.987888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641598, 37.558624, 23.798218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929395, -0.361252, -0.075648,
		-0.234309, 0.419124, 0.877174,
		-0.285175, 0.832966, -0.474176,
		18.556046, 37.808514, 23.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107599, 37.594074, 24.368082>,  <18.755667, 37.225437, 23.987888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107599, 37.594074, 24.368082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.139702, 37.646427, 23.972824>,  <18.158962, 37.677837, 23.735670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.139702, 37.646427, 23.972824>,  <18.107599, 37.594074, 24.368082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139702, 37.646427, 23.972824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890960, -0.435079, -0.129989,
		-0.446934, 0.890829, 0.081694,
		0.080255, 0.130883, -0.988144,
		18.163778, 37.685692, 23.676380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.602787, 23.921469, 25.613644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986429, 23.994019, 25.526726>,  <31.216616, 24.037548, 25.474575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.986429, 23.994019, 25.526726>,  <30.602787, 23.921469, 25.613644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986429, 23.994019, 25.526726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279617, 0.726220, -0.628027,
		0.043897, 0.663105, 0.747238,
		0.959108, 0.181372, -0.217294,
		31.274162, 24.048429, 25.461538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733067, 24.696554, 25.631376>,  <30.602787, 23.921469, 25.613644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733067, 24.696554, 25.631376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.036572, 24.554672, 25.412849>,  <31.218674, 24.469543, 25.281733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.036572, 24.554672, 25.412849>,  <30.733067, 24.696554, 25.631376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036572, 24.554672, 25.412849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106156, 0.760172, -0.640991,
		0.642660, 0.544354, 0.539135,
		0.758761, -0.354707, -0.546319,
		31.264200, 24.448259, 25.248953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.279684, 25.266487, 25.708559>,  <30.733067, 24.696554, 25.631376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.279684, 25.266487, 25.708559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.368120, 25.057526, 25.379143>,  <31.421181, 24.932150, 25.181494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.368120, 25.057526, 25.379143>,  <31.279684, 25.266487, 25.708559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368120, 25.057526, 25.379143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176744, 0.851915, -0.492953,
		0.959104, -0.036569, 0.280680,
		0.221089, -0.522402, -0.823539,
		31.434446, 24.900805, 25.132082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877348, 25.581903, 25.474808>,  <31.279684, 25.266487, 25.708559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877348, 25.581903, 25.474808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.707954, 25.384548, 25.170906>,  <31.606319, 25.266134, 24.988565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.707954, 25.384548, 25.170906>,  <31.877348, 25.581903, 25.474808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707954, 25.384548, 25.170906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063218, 0.820531, -0.568095,
		0.903696, -0.288608, -0.316288,
		-0.423481, -0.493390, -0.759757,
		31.580910, 25.236530, 24.942980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321472, 25.692993, 24.931736>,  <31.877348, 25.581903, 25.474808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321472, 25.692993, 24.931736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967657, 25.610119, 24.764565>,  <31.755367, 25.560394, 24.664261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.967657, 25.610119, 24.764565>,  <32.321472, 25.692993, 24.931736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967657, 25.610119, 24.764565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053717, 0.844742, -0.532471,
		0.463363, -0.493442, -0.736078,
		-0.884539, -0.207187, -0.417928,
		31.702295, 25.547962, 24.639187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428642, 25.725998, 24.148241>,  <32.321472, 25.692993, 24.931736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428642, 25.725998, 24.148241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034130, 25.742489, 24.212181>,  <31.797422, 25.752384, 24.250546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.034130, 25.742489, 24.212181>,  <32.428642, 25.725998, 24.148241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034130, 25.742489, 24.212181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063847, 0.797683, -0.599688,
		-0.152234, -0.601666, -0.784106,
		-0.986280, 0.041230, 0.159849,
		31.738247, 25.754858, 24.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056690, 25.911608, 23.476433>,  <32.428642, 25.725998, 24.148241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056690, 25.911608, 23.476433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757303, 25.984779, 23.731411>,  <31.577671, 26.028683, 23.884398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.757303, 25.984779, 23.731411>,  <32.056690, 25.911608, 23.476433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757303, 25.984779, 23.731411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312545, 0.750462, -0.582342,
		-0.584905, -0.635093, -0.504522,
		-0.748466, 0.182929, 0.637444,
		31.532763, 26.039658, 23.922644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443375, 25.886070, 23.173876>,  <32.056690, 25.911608, 23.476433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443375, 25.886070, 23.173876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337288, 26.102646, 23.493000>,  <31.273636, 26.232592, 23.684475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.337288, 26.102646, 23.493000>,  <31.443375, 25.886070, 23.173876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337288, 26.102646, 23.493000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374431, 0.704668, -0.602697,
		-0.888517, -0.458571, 0.015842,
		-0.265216, 0.541439, 0.797812,
		31.257723, 26.265078, 23.732344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842255, 26.028416, 23.038967>,  <31.443375, 25.886070, 23.173876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842255, 26.028416, 23.038967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970015, 26.302574, 23.300720>,  <31.046671, 26.467070, 23.457771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.970015, 26.302574, 23.300720>,  <30.842255, 26.028416, 23.038967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970015, 26.302574, 23.300720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379405, 0.725281, -0.574473,
		-0.868353, -0.064791, 0.491697,
		0.319398, 0.685398, 0.654382,
		31.065834, 26.508194, 23.497034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271545, 26.389870, 23.283974>,  <30.842255, 26.028416, 23.038967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271545, 26.389870, 23.283974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.576445, 26.639374, 23.353142>,  <30.759384, 26.789076, 23.394644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.576445, 26.639374, 23.353142>,  <30.271545, 26.389870, 23.283974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576445, 26.639374, 23.353142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509446, 0.742926, -0.434195,
		-0.399301, 0.242871, 0.884066,
		0.762249, 0.623759, 0.172922,
		30.805119, 26.826502, 23.405018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960995, 26.969606, 23.399139>,  <30.271545, 26.389870, 23.283974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960995, 26.969606, 23.399139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307997, 27.166588, 23.371067>,  <30.516197, 27.284777, 23.354223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.307997, 27.166588, 23.371067>,  <29.960995, 26.969606, 23.399139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307997, 27.166588, 23.371067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478986, 0.788919, -0.384940,
		-0.134198, 0.367553, 0.920269,
		0.867504, 0.492454, -0.070181,
		30.568249, 27.314323, 23.350012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856371, 27.766764, 23.575966>,  <29.960995, 26.969606, 23.399139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856371, 27.766764, 23.575966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185329, 27.737698, 23.350266>,  <30.382706, 27.720259, 23.214846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.185329, 27.737698, 23.350266>,  <29.856371, 27.766764, 23.575966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185329, 27.737698, 23.350266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316493, 0.765730, -0.559901,
		0.472751, 0.639044, 0.606737,
		0.822398, -0.072665, -0.564253,
		30.432049, 27.715899, 23.180990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971716, 28.407978, 23.458260>,  <29.856371, 27.766764, 23.575966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971716, 28.407978, 23.458260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203716, 28.251205, 23.172607>,  <30.342916, 28.157141, 23.001215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.203716, 28.251205, 23.172607>,  <29.971716, 28.407978, 23.458260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203716, 28.251205, 23.172607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317732, 0.698376, -0.641340,
		0.750096, 0.598882, 0.280530,
		0.580003, -0.391933, -0.714133,
		30.377716, 28.133625, 22.958368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343334, 28.958256, 23.197937>,  <29.971716, 28.407978, 23.458260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343334, 28.958256, 23.197937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335062, 28.666763, 22.924141>,  <30.330099, 28.491869, 22.759863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335062, 28.666763, 22.924141>,  <30.343334, 28.958256, 23.197937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335062, 28.666763, 22.924141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222670, 0.670796, -0.707426,
		0.974675, 0.137787, -0.176138,
		-0.020679, -0.728730, -0.684489,
		30.328859, 28.448145, 22.718794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844429, 29.180632, 22.561859>,  <30.343334, 28.958256, 23.197937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844429, 29.180632, 22.561859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623205, 28.880280, 22.417469>,  <30.490471, 28.700068, 22.330835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.623205, 28.880280, 22.417469>,  <30.844429, 29.180632, 22.561859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623205, 28.880280, 22.417469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154055, 0.517966, -0.841415,
		0.818776, -0.409741, -0.402142,
		-0.553058, -0.750882, -0.360975,
		30.457287, 28.655014, 22.309177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061785, 29.004011, 21.939318>,  <30.844429, 29.180632, 22.561859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061785, 29.004011, 21.939318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.680952, 28.881874, 21.932362>,  <30.452452, 28.808592, 21.928188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.680952, 28.881874, 21.932362>,  <31.061785, 29.004011, 21.939318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680952, 28.881874, 21.932362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154874, 0.530373, -0.833498,
		0.263726, -0.790866, -0.552249,
		-0.952083, -0.305344, -0.017389,
		30.395327, 28.790270, 21.927145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933773, 29.046854, 21.207687>,  <31.061785, 29.004011, 21.939318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933773, 29.046854, 21.207687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579145, 29.028042, 21.391766>,  <30.366369, 29.016754, 21.502213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.579145, 29.028042, 21.391766>,  <30.933773, 29.046854, 21.207687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579145, 29.028042, 21.391766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340179, 0.740434, -0.579686,
		-0.313481, -0.670482, -0.672446,
		-0.886571, -0.047031, 0.460196,
		30.313173, 29.013933, 21.529823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519829, 28.914619, 20.696505>,  <30.933773, 29.046854, 21.207687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519829, 28.914619, 20.696505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320601, 29.093163, 20.993877>,  <30.201063, 29.200289, 21.172302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.320601, 29.093163, 20.993877>,  <30.519829, 28.914619, 20.696505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320601, 29.093163, 20.993877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394276, 0.647021, -0.652618,
		-0.772317, -0.618167, -0.146273,
		-0.498069, 0.446356, 0.743434,
		30.171181, 29.227070, 21.216908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919003, 29.115717, 20.431665>,  <30.519829, 28.914619, 20.696505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919003, 29.115717, 20.431665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.902916, 29.341213, 20.761654>,  <29.893263, 29.476511, 20.959648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.902916, 29.341213, 20.761654>,  <29.919003, 29.115717, 20.431665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902916, 29.341213, 20.761654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432707, 0.734379, -0.522927,
		-0.900637, -0.378002, 0.214399,
		-0.040218, 0.563739, 0.824973,
		29.890850, 29.510334, 21.009146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170238, 29.462301, 20.462559>,  <29.919003, 29.115717, 20.431665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170238, 29.462301, 20.462559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395494, 29.672634, 20.717548>,  <29.530647, 29.798834, 20.870543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.395494, 29.672634, 20.717548>,  <29.170238, 29.462301, 20.462559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395494, 29.672634, 20.717548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311246, 0.849580, -0.425841,
		-0.765507, 0.041395, 0.642094,
		0.563138, 0.525833, 0.637475,
		29.564436, 29.830383, 20.908791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694391, 29.959837, 20.841234>,  <29.170238, 29.462301, 20.462559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694391, 29.959837, 20.841234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074419, 30.081718, 20.868126>,  <29.302437, 30.154848, 20.884260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.074419, 30.081718, 20.868126>,  <28.694391, 29.959837, 20.841234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074419, 30.081718, 20.868126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272409, 0.915020, -0.297544,
		-0.152179, 0.264374, 0.952338,
		0.950071, 0.304706, 0.067229,
		29.359440, 30.173130, 20.888294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582287, 30.611113, 21.045271>,  <28.694391, 29.959837, 20.841234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582287, 30.611113, 21.045271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.964132, 30.606186, 20.926235>,  <29.193239, 30.603230, 20.854815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.964132, 30.606186, 20.926235>,  <28.582287, 30.611113, 21.045271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964132, 30.606186, 20.926235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018029, 0.994924, -0.099005,
		0.297297, 0.099877, 0.949547,
		0.954615, -0.012315, -0.297589,
		29.250517, 30.602491, 20.836958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172770, 31.015999, 21.518589>,  <28.582287, 30.611113, 21.045271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172770, 31.015999, 21.518589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215599, 31.001747, 21.121143>,  <29.241297, 30.993196, 20.882677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.215599, 31.001747, 21.121143>,  <29.172770, 31.015999, 21.518589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215599, 31.001747, 21.121143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085203, 0.995353, -0.044873,
		0.990594, 0.089463, 0.103539,
		0.107072, -0.035629, -0.993613,
		29.247721, 30.991058, 20.823059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961466, 31.043964, 22.143394>,  <29.172770, 31.015999, 21.518589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961466, 31.043964, 22.143394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.613279, 31.028542, 21.947109>,  <28.404367, 31.019289, 21.829338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.613279, 31.028542, 21.947109>,  <28.961466, 31.043964, 22.143394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613279, 31.028542, 21.947109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386410, -0.564036, 0.729761,
		-0.304916, 0.824850, 0.476077,
		-0.870467, -0.038555, -0.490714,
		28.352139, 31.016975, 21.799894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480867, 30.948944, 22.627783>,  <28.961466, 31.043964, 22.143394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480867, 30.948944, 22.627783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270182, 30.851368, 22.302067>,  <28.143770, 30.792822, 22.106638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270182, 30.851368, 22.302067>,  <28.480867, 30.948944, 22.627783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270182, 30.851368, 22.302067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432270, -0.747963, 0.503681,
		-0.731927, 0.617287, 0.288513,
		-0.526712, -0.243942, -0.814289,
		28.112167, 30.778185, 22.057779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858288, 30.936403, 22.826454>,  <28.480867, 30.948944, 22.627783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858288, 30.936403, 22.826454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870111, 30.699718, 22.504211>,  <27.877205, 30.557707, 22.310865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.870111, 30.699718, 22.504211>,  <27.858288, 30.936403, 22.826454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870111, 30.699718, 22.504211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548367, -0.683445, 0.481868,
		-0.835715, 0.427525, -0.344677,
		0.029557, -0.591713, -0.805606,
		27.878979, 30.522203, 22.262529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133871, 30.721294, 22.635105>,  <27.858288, 30.936403, 22.826454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133871, 30.721294, 22.635105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.376295, 30.447762, 22.472591>,  <27.521749, 30.283642, 22.375084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.376295, 30.447762, 22.472591>,  <27.133871, 30.721294, 22.635105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376295, 30.447762, 22.472591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371862, -0.695110, 0.615257,
		-0.703148, -0.221796, -0.675566,
		0.606054, -0.683834, -0.406287,
		27.558113, 30.242613, 22.350706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700375, 30.049967, 22.555027>,  <27.133871, 30.721294, 22.635105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700375, 30.049967, 22.555027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.082018, 29.930691, 22.566036>,  <27.311005, 29.859125, 22.572641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.082018, 29.930691, 22.566036>,  <26.700375, 30.049967, 22.555027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082018, 29.930691, 22.566036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270136, -0.817374, 0.508847,
		-0.129239, -0.492931, -0.860417,
		0.954109, -0.298193, 0.027522,
		27.368250, 29.841232, 22.574293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642134, 29.324858, 22.445597>,  <26.700375, 30.049967, 22.555027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642134, 29.324858, 22.445597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.020678, 29.382893, 22.561081>,  <27.247805, 29.417713, 22.630371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.020678, 29.382893, 22.561081>,  <26.642134, 29.324858, 22.445597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020678, 29.382893, 22.561081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016163, -0.871144, 0.490762,
		0.322713, -0.469103, -0.822070,
		0.946359, 0.145088, 0.288711,
		27.304585, 29.426418, 22.647694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984125, 28.664183, 22.302448>,  <26.642134, 29.324858, 22.445597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984125, 28.664183, 22.302448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.194695, 28.876549, 22.568081>,  <27.321037, 29.003969, 22.727461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.194695, 28.876549, 22.568081>,  <26.984125, 28.664183, 22.302448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194695, 28.876549, 22.568081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007838, -0.784067, 0.620627,
		0.850186, -0.321508, -0.416914,
		0.526425, 0.530916, 0.664082,
		27.352621, 29.035824, 22.767305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631046, 28.212664, 22.415546>,  <26.984125, 28.664183, 22.302448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631046, 28.212664, 22.415546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.606201, 28.455517, 22.732414>,  <27.591293, 28.601229, 22.922535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.606201, 28.455517, 22.732414>,  <27.631046, 28.212664, 22.415546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606201, 28.455517, 22.732414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382016, -0.718799, 0.580854,
		0.922066, 0.338700, -0.187287,
		-0.062113, 0.607132, 0.792169,
		27.587566, 28.637657, 22.970064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266745, 28.168894, 22.707214>,  <27.631046, 28.212664, 22.415546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266745, 28.168894, 22.707214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.015354, 28.300747, 22.989025>,  <27.864519, 28.379858, 23.158112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.015354, 28.300747, 22.989025>,  <28.266745, 28.168894, 22.707214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015354, 28.300747, 22.989025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436476, -0.600257, 0.670209,
		0.643820, 0.728721, 0.233371,
		-0.628478, 0.329633, 0.704527,
		27.826811, 28.399637, 23.200382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715054, 28.340942, 23.347937>,  <28.266745, 28.168894, 22.707214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715054, 28.340942, 23.347937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.333757, 28.294090, 23.459373>,  <28.104980, 28.265980, 23.526236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.333757, 28.294090, 23.459373>,  <28.715054, 28.340942, 23.347937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333757, 28.294090, 23.459373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299518, -0.488999, 0.819249,
		0.040271, 0.864384, 0.501216,
		-0.953241, -0.117131, 0.278591,
		28.047785, 28.258951, 23.542952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784323, 28.394012, 24.068264>,  <28.715054, 28.340942, 23.347937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784323, 28.394012, 24.068264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431803, 28.212746, 24.014668>,  <28.220291, 28.103985, 23.982510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.431803, 28.212746, 24.014668>,  <28.784323, 28.394012, 24.068264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431803, 28.212746, 24.014668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172886, -0.573072, 0.801061,
		-0.439801, 0.682809, 0.583393,
		-0.881298, -0.453168, -0.133990,
		28.167414, 28.076796, 23.974470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498541, 28.372553, 24.708071>,  <28.784323, 28.394012, 24.068264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498541, 28.372553, 24.708071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.300373, 28.095818, 24.497959>,  <28.181473, 27.929777, 24.371891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.300373, 28.095818, 24.497959>,  <28.498541, 28.372553, 24.708071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300373, 28.095818, 24.497959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010412, -0.599933, 0.799983,
		-0.868592, 0.401795, 0.290014,
		-0.495418, -0.691839, -0.525280,
		28.151747, 27.888266, 24.340376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943743, 28.050867, 25.131971>,  <28.498541, 28.372553, 24.708071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943743, 28.050867, 25.131971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.038715, 27.790527, 24.843521>,  <28.095699, 27.634323, 24.670450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.038715, 27.790527, 24.843521>,  <27.943743, 28.050867, 25.131971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038715, 27.790527, 24.843521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068832, -0.729217, 0.680812,
		-0.968962, -0.211284, -0.128340,
		0.237432, -0.650847, -0.721127,
		28.109945, 27.595274, 24.627184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728014, 27.368021, 25.354305>,  <27.943743, 28.050867, 25.131971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728014, 27.368021, 25.354305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.998791, 27.269753, 25.076775>,  <28.161257, 27.210791, 24.910257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.998791, 27.269753, 25.076775>,  <27.728014, 27.368021, 25.354305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998791, 27.269753, 25.076775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298032, -0.770429, 0.563575,
		-0.672996, -0.588291, -0.448319,
		0.676944, -0.245670, -0.693825,
		28.201874, 27.196051, 24.868628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834501, 26.700850, 25.454052>,  <27.728014, 27.368021, 25.354305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834501, 26.700850, 25.454052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.125673, 26.739021, 25.182461>,  <28.300377, 26.761925, 25.019506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.125673, 26.739021, 25.182461>,  <27.834501, 26.700850, 25.454052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125673, 26.739021, 25.182461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429205, -0.835668, 0.342698,
		-0.534697, -0.540880, -0.649266,
		0.727930, 0.095429, -0.678978,
		28.344051, 26.767651, 24.978767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848810, 26.173120, 25.034645>,  <27.834501, 26.700850, 25.454052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848810, 26.173120, 25.034645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.216587, 26.328541, 25.010468>,  <28.437254, 26.421793, 24.995960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.216587, 26.328541, 25.010468>,  <27.848810, 26.173120, 25.034645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216587, 26.328541, 25.010468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381722, -0.845029, 0.374451,
		0.094417, -0.367359, -0.925274,
		0.919442, 0.388552, -0.060444,
		28.492420, 26.445107, 24.992334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198700, 25.610334, 24.870127>,  <27.848810, 26.173120, 25.034645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198700, 25.610334, 24.870127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484577, 25.863056, 24.990150>,  <28.656103, 26.014690, 25.062164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.484577, 25.863056, 24.990150>,  <28.198700, 25.610334, 24.870127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484577, 25.863056, 24.990150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435762, -0.737779, 0.515552,
		0.547108, -0.237706, -0.802601,
		0.714692, 0.631806, 0.300062,
		28.698984, 26.052597, 25.080170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.038870, 25.384848, 24.516329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045660, 25.608559, 24.847851>,  <29.049734, 25.742785, 25.046764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045660, 25.608559, 24.847851>,  <29.038870, 25.384848, 24.516329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045660, 25.608559, 24.847851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238824, -0.807201, 0.539805,
		0.970914, 0.188777, -0.147270,
		0.016974, 0.559277, 0.828807,
		29.050753, 25.776342, 25.096493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774681, 25.291468, 24.811308>,  <29.038870, 25.384848, 24.516329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774681, 25.291468, 24.811308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523317, 25.407940, 25.099838>,  <29.372499, 25.477823, 25.272957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.523317, 25.407940, 25.099838>,  <29.774681, 25.291468, 24.811308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523317, 25.407940, 25.099838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359632, -0.713495, 0.601323,
		0.689757, 0.637291, 0.343651,
		-0.628411, 0.291179, 0.721328,
		29.334793, 25.495293, 25.316236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194717, 25.225569, 25.476896>,  <29.774681, 25.291468, 24.811308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194717, 25.225569, 25.476896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815418, 25.258400, 25.599594>,  <29.587839, 25.278099, 25.673214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815418, 25.258400, 25.599594>,  <30.194717, 25.225569, 25.476896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815418, 25.258400, 25.599594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172232, -0.678621, 0.714009,
		0.266769, 0.729888, 0.629363,
		-0.948246, 0.082079, 0.306746,
		29.530945, 25.283024, 25.691618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290680, 25.209108, 26.120951>,  <30.194717, 25.225569, 25.476896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290680, 25.209108, 26.120951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904570, 25.117424, 26.070824>,  <29.672903, 25.062414, 26.040747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904570, 25.117424, 26.070824>,  <30.290680, 25.209108, 26.120951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904570, 25.117424, 26.070824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086215, -0.732366, 0.675431,
		-0.246593, 0.641173, 0.726697,
		-0.965276, -0.229209, -0.125318,
		29.614986, 25.048662, 26.033228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956209, 25.258537, 26.730000>,  <30.290680, 25.209108, 26.120951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956209, 25.258537, 26.730000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715872, 25.024021, 26.512650>,  <29.571671, 24.883312, 26.382240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.715872, 25.024021, 26.512650>,  <29.956209, 25.258537, 26.730000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715872, 25.024021, 26.512650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205154, -0.770085, 0.604053,
		-0.772593, 0.251465, 0.582980,
		-0.600843, -0.586288, -0.543373,
		29.535620, 24.848135, 26.349638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501032, 24.976398, 27.131638>,  <29.956209, 25.258537, 26.730000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501032, 24.976398, 27.131638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451895, 24.713989, 26.833767>,  <29.422413, 24.556543, 26.655045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451895, 24.713989, 26.833767>,  <29.501032, 24.976398, 27.131638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451895, 24.713989, 26.833767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016393, -0.748917, 0.662462,
		-0.992291, 0.093587, 0.081245,
		-0.122843, -0.656022, -0.744677,
		29.415041, 24.517183, 26.610363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920366, 24.494934, 27.364300>,  <29.501032, 24.976398, 27.131638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920366, 24.494934, 27.364300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125708, 24.297268, 27.083652>,  <29.248913, 24.178669, 26.915264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125708, 24.297268, 27.083652>,  <28.920366, 24.494934, 27.364300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125708, 24.297268, 27.083652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057286, -0.835478, 0.546529,
		-0.856262, -0.240371, -0.457206,
		0.513355, -0.494163, -0.701618,
		29.279713, 24.149019, 26.873167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562092, 23.838911, 27.240480>,  <28.920366, 24.494934, 27.364300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562092, 23.838911, 27.240480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944960, 23.780647, 27.140396>,  <29.174681, 23.745689, 27.080345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.944960, 23.780647, 27.140396>,  <28.562092, 23.838911, 27.240480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944960, 23.780647, 27.140396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019681, -0.894964, 0.445705,
		-0.288852, -0.421692, -0.859500,
		0.957172, -0.145659, -0.250213,
		29.232111, 23.736950, 27.065332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715231, 23.063421, 27.024673>,  <28.562092, 23.838911, 27.240480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715231, 23.063421, 27.024673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079115, 23.205391, 27.110886>,  <29.297445, 23.290573, 27.162613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.079115, 23.205391, 27.110886>,  <28.715231, 23.063421, 27.024673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079115, 23.205391, 27.110886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251241, -0.883728, 0.394845,
		0.330612, -0.305044, -0.893109,
		0.909711, 0.354926, 0.215532,
		29.352028, 23.311869, 27.175545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164062, 22.529415, 26.777040>,  <28.715231, 23.063421, 27.024673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164062, 22.529415, 26.777040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365652, 22.761421, 27.033039>,  <29.486607, 22.900625, 27.186638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.365652, 22.761421, 27.033039>,  <29.164062, 22.529415, 26.777040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365652, 22.761421, 27.033039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255898, -0.807978, 0.530743,
		0.824940, -0.103707, -0.555624,
		0.503974, 0.580014, 0.639995,
		29.516844, 22.935425, 27.225039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745453, 22.181332, 26.857193>,  <29.164062, 22.529415, 26.777040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745453, 22.181332, 26.857193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757662, 22.414238, 27.182163>,  <29.764986, 22.553982, 27.377146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.757662, 22.414238, 27.182163>,  <29.745453, 22.181332, 26.857193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757662, 22.414238, 27.182163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377033, -0.759467, 0.530146,
		0.925697, 0.290131, -0.242713,
		0.030521, 0.582266, 0.812425,
		29.766819, 22.588917, 27.425890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345434, 21.951452, 27.286020>,  <29.745453, 22.181332, 26.857193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345434, 21.951452, 27.286020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.080660, 22.131916, 27.525452>,  <29.921795, 22.240194, 27.669111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.080660, 22.131916, 27.525452>,  <30.345434, 21.951452, 27.286020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080660, 22.131916, 27.525452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173025, -0.685038, 0.707661,
		0.729317, 0.571996, 0.375390,
		-0.661936, 0.451157, 0.598580,
		29.882078, 22.267263, 27.705025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684380, 22.066147, 27.950838>,  <30.345434, 21.951452, 27.286020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684380, 22.066147, 27.950838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293453, 22.044338, 28.032700>,  <30.058897, 22.031254, 28.081816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.293453, 22.044338, 28.032700>,  <30.684380, 22.066147, 27.950838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293453, 22.044338, 28.032700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186833, -0.677023, 0.711852,
		0.099745, 0.733940, 0.671851,
		-0.977315, -0.054521, 0.204654,
		30.000259, 22.027983, 28.094095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699509, 22.172255, 28.653126>,  <30.684380, 22.066147, 27.950838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699509, 22.172255, 28.653126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331448, 22.024544, 28.601040>,  <30.110611, 21.935917, 28.569788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331448, 22.024544, 28.601040>,  <30.699509, 22.172255, 28.653126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331448, 22.024544, 28.601040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183821, -0.701016, 0.689047,
		-0.345730, 0.610092, 0.712922,
		-0.920152, -0.369275, -0.130214,
		30.055403, 21.913761, 28.561975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332598, 22.152884, 29.371323>,  <30.699509, 22.172255, 28.653126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332598, 22.152884, 29.371323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147661, 21.901337, 29.121277>,  <30.036699, 21.750408, 28.971249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147661, 21.901337, 29.121277>,  <30.332598, 22.152884, 29.371323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147661, 21.901337, 29.121277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191519, -0.617523, 0.762879,
		-0.865771, 0.472433, 0.165067,
		-0.462342, -0.628865, -0.625114,
		30.008959, 21.712677, 28.933743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804718, 21.760876, 29.817036>,  <30.332598, 22.152884, 29.371323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804718, 21.760876, 29.817036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787966, 21.553616, 29.475330>,  <29.777914, 21.429260, 29.270308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.787966, 21.553616, 29.475330>,  <29.804718, 21.760876, 29.817036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787966, 21.553616, 29.475330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211181, -0.831107, 0.514455,
		-0.976549, 0.201950, -0.074615,
		-0.041881, -0.518148, -0.854265,
		29.775402, 21.398170, 29.219051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159554, 21.417849, 29.892609>,  <29.804718, 21.760876, 29.817036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159554, 21.417849, 29.892609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366013, 21.197403, 29.630352>,  <29.489887, 21.065136, 29.472998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.366013, 21.197403, 29.630352>,  <29.159554, 21.417849, 29.892609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366013, 21.197403, 29.630352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243637, -0.828339, 0.504476,
		-0.821119, -0.100643, -0.561813,
		0.516143, -0.551113, -0.655644,
		29.520857, 21.032070, 29.433659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.734009, 20.769987, 29.780245>,  <29.159554, 21.417849, 29.892609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.734009, 20.769987, 29.780245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102165, 20.674885, 29.656082>,  <29.323059, 20.617825, 29.581585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.102165, 20.674885, 29.656082>,  <28.734009, 20.769987, 29.780245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102165, 20.674885, 29.656082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110129, -0.919378, 0.377645,
		-0.375170, -0.313396, -0.872371,
		0.920391, -0.237755, -0.310409,
		29.378283, 20.603558, 29.562960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747267, 20.114206, 29.667973>,  <28.734009, 20.769987, 29.780245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747267, 20.114206, 29.667973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138958, 20.181217, 29.713665>,  <29.373972, 20.221424, 29.741081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.138958, 20.181217, 29.713665>,  <28.747267, 20.114206, 29.667973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138958, 20.181217, 29.713665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061548, -0.782364, 0.619773,
		0.193200, -0.599868, -0.776423,
		0.979227, 0.167527, 0.114232,
		29.432726, 20.231476, 29.747934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128328, 19.510990, 29.518345>,  <28.747267, 20.114206, 29.667973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128328, 19.510990, 29.518345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387743, 19.725739, 29.734184>,  <29.543392, 19.854588, 29.863688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387743, 19.725739, 29.734184>,  <29.128328, 19.510990, 29.518345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387743, 19.725739, 29.734184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058569, -0.741991, 0.667847,
		0.758927, -0.401519, -0.512652,
		0.648537, 0.536873, 0.539600,
		29.582304, 19.886801, 29.896065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649996, 19.110254, 29.700863>,  <29.128328, 19.510990, 29.518345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649996, 19.110254, 29.700863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716309, 19.381805, 29.986980>,  <29.756096, 19.544737, 30.158651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.716309, 19.381805, 29.986980>,  <29.649996, 19.110254, 29.700863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716309, 19.381805, 29.986980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016176, -0.727103, 0.686338,
		0.986030, -0.102210, -0.131521,
		0.165780, 0.678877, 0.715292,
		29.766043, 19.585468, 30.201569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265570, 18.981384, 30.048758>,  <29.649996, 19.110254, 29.700863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265570, 18.981384, 30.048758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042032, 19.173946, 30.318851>,  <29.907909, 19.289484, 30.480907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.042032, 19.173946, 30.318851>,  <30.265570, 18.981384, 30.048758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042032, 19.173946, 30.318851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047867, -0.794166, 0.605812,
		0.827890, 0.370877, 0.420773,
		-0.558845, 0.481404, 0.675235,
		29.874378, 19.318367, 30.521421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480774, 18.937325, 30.826443>,  <30.265570, 18.981384, 30.048758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480774, 18.937325, 30.826443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083651, 18.985001, 30.830853>,  <29.845377, 19.013607, 30.833498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083651, 18.985001, 30.830853>,  <30.480774, 18.937325, 30.826443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083651, 18.985001, 30.830853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092672, -0.823662, 0.559457,
		0.075762, 0.554413, 0.828786,
		-0.992810, 0.119191, 0.011024,
		29.785807, 19.020758, 30.834160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123573, 18.749498, 30.922218>,  <30.480774, 18.937325, 30.826443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123573, 18.749498, 30.922218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.441174, 18.697903, 31.159847>,  <31.631733, 18.666945, 31.302425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.441174, 18.697903, 31.159847>,  <31.123573, 18.749498, 30.922218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441174, 18.697903, 31.159847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449146, 0.783022, -0.430284,
		-0.409671, 0.608472, 0.679655,
		0.794001, -0.128989, 0.594074,
		31.679375, 18.659206, 31.338070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.379440, 19.258387, 31.542065>,  <31.123573, 18.749498, 30.922218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.379440, 19.258387, 31.542065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705843, 19.068016, 31.410839>,  <31.901686, 18.953794, 31.332104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.705843, 19.068016, 31.410839>,  <31.379440, 19.258387, 31.542065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705843, 19.068016, 31.410839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377364, 0.868524, -0.321346,
		0.437867, 0.138421, 0.888320,
		0.816008, -0.475927, -0.328063,
		31.950645, 18.925238, 31.312420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969065, 19.588539, 31.883648>,  <31.379440, 19.258387, 31.542065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969065, 19.588539, 31.883648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075241, 19.404171, 31.544922>,  <32.138947, 19.293550, 31.341686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.075241, 19.404171, 31.544922>,  <31.969065, 19.588539, 31.883648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075241, 19.404171, 31.544922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548132, 0.794710, -0.260742,
		0.793153, -0.394954, 0.463594,
		0.265442, -0.460920, -0.846814,
		32.154873, 19.265896, 31.290878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582211, 19.856594, 31.787872>,  <31.969065, 19.588539, 31.883648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582211, 19.856594, 31.787872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506092, 19.695827, 31.429600>,  <32.460419, 19.599367, 31.214636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506092, 19.695827, 31.429600>,  <32.582211, 19.856594, 31.787872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506092, 19.695827, 31.429600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378241, 0.811904, -0.444687,
		0.905936, -0.423407, -0.002483,
		-0.190300, -0.401919, -0.895682,
		32.449001, 19.575253, 31.160894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117046, 20.003935, 31.355957>,  <32.582211, 19.856594, 31.787872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117046, 20.003935, 31.355957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828991, 19.931950, 31.087921>,  <32.656158, 19.888758, 30.927099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.828991, 19.931950, 31.087921>,  <33.117046, 20.003935, 31.355957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828991, 19.931950, 31.087921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416714, 0.660006, -0.625094,
		0.554756, -0.729387, -0.400300,
		-0.720136, -0.179963, -0.670088,
		32.612949, 19.877960, 30.886894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407368, 20.086357, 30.704990>,  <33.117046, 20.003935, 31.355957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407368, 20.086357, 30.704990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034092, 20.107372, 30.562778>,  <32.810127, 20.119982, 30.477451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034092, 20.107372, 30.562778>,  <33.407368, 20.086357, 30.704990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034092, 20.107372, 30.562778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311562, 0.611359, -0.727440,
		0.179136, -0.789607, -0.586882,
		-0.933188, 0.052539, -0.355528,
		32.754135, 20.123135, 30.456120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456978, 19.935007, 30.015379>,  <33.407368, 20.086357, 30.704990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456978, 19.935007, 30.015379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113811, 20.135712, 30.059578>,  <32.907909, 20.256134, 30.086098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113811, 20.135712, 30.059578>,  <33.456978, 19.935007, 30.015379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113811, 20.135712, 30.059578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151910, 0.453174, -0.878383,
		-0.490815, -0.736796, -0.465009,
		-0.857919, 0.501763, 0.110497,
		32.856438, 20.286240, 30.092728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110252, 19.939409, 29.409584>,  <33.456978, 19.935007, 30.015379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110252, 19.939409, 29.409584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934704, 20.249062, 29.592060>,  <32.829372, 20.434853, 29.701546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.934704, 20.249062, 29.592060>,  <33.110252, 19.939409, 29.409584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934704, 20.249062, 29.592060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189377, 0.416606, -0.889143,
		-0.878365, -0.476616, -0.036236,
		-0.438876, 0.774130, 0.456192,
		32.803040, 20.481300, 29.728918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477886, 20.071396, 29.022118>,  <33.110252, 19.939409, 29.409584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477886, 20.071396, 29.022118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551140, 20.411343, 29.219780>,  <32.595093, 20.615311, 29.338377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551140, 20.411343, 29.219780>,  <32.477886, 20.071396, 29.022118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551140, 20.411343, 29.219780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276843, 0.526897, -0.803578,
		-0.943302, 0.010362, 0.331773,
		0.183137, 0.849866, 0.494154,
		32.606079, 20.666302, 29.368027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022842, 20.572603, 28.765574>,  <32.477886, 20.071396, 29.022118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022842, 20.572603, 28.765574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284245, 20.806351, 28.958008>,  <32.441086, 20.946598, 29.073469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.284245, 20.806351, 28.958008>,  <32.022842, 20.572603, 28.765574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284245, 20.806351, 28.958008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214338, 0.752437, -0.622814,
		-0.725939, 0.303899, 0.616975,
		0.653507, 0.584366, 0.481087,
		32.480297, 20.981661, 29.102333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746628, 21.175966, 29.077467>,  <32.022842, 20.572603, 28.765574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746628, 21.175966, 29.077467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114746, 21.292610, 28.973145>,  <32.335617, 21.362597, 28.910551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.114746, 21.292610, 28.973145>,  <31.746628, 21.175966, 29.077467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114746, 21.292610, 28.973145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390922, 0.659360, -0.642203,
		-0.015307, 0.692971, 0.720803,
		0.920297, 0.291608, -0.260804,
		32.390835, 21.380093, 28.894903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773170, 21.956335, 29.090347>,  <31.746628, 21.175966, 29.077467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773170, 21.956335, 29.090347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107037, 21.882500, 28.882786>,  <32.307358, 21.838198, 28.758249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.107037, 21.882500, 28.882786>,  <31.773170, 21.956335, 29.090347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107037, 21.882500, 28.882786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213857, 0.759614, -0.614208,
		0.507542, 0.623629, 0.594548,
		0.834665, -0.184588, -0.518904,
		32.357437, 21.827124, 28.727116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125599, 22.551815, 29.048979>,  <31.773170, 21.956335, 29.090347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125599, 22.551815, 29.048979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313618, 22.351532, 28.758228>,  <32.426430, 22.231363, 28.583778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.313618, 22.351532, 28.758228>,  <32.125599, 22.551815, 29.048979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313618, 22.351532, 28.758228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363405, 0.640698, -0.676345,
		0.804358, 0.582064, 0.119200,
		0.470047, -0.500706, -0.726876,
		32.454632, 22.201321, 28.540165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246529, 23.082142, 28.573273>,  <32.125599, 22.551815, 29.048979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246529, 23.082142, 28.573273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.311661, 22.758202, 28.347839>,  <32.350739, 22.563837, 28.212580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.311661, 22.758202, 28.347839>,  <32.246529, 23.082142, 28.573273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311661, 22.758202, 28.347839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279485, 0.509952, -0.813533,
		0.946242, 0.289980, -0.143307,
		0.162829, -0.809852, -0.563584,
		32.360508, 22.515245, 28.178764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752747, 23.280010, 28.075129>,  <32.246529, 23.082142, 28.573273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752747, 23.280010, 28.075129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578613, 22.954536, 27.921032>,  <32.474133, 22.759253, 27.828575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.578613, 22.954536, 27.921032>,  <32.752747, 23.280010, 28.075129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578613, 22.954536, 27.921032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010837, 0.432621, -0.901511,
		0.900206, -0.388279, -0.197150,
		-0.435329, -0.813682, -0.385240,
		32.448013, 22.710432, 27.805460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113079, 23.132723, 27.412170>,  <32.752747, 23.280010, 28.075129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113079, 23.132723, 27.412170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743336, 22.980114, 27.410965>,  <32.521492, 22.888548, 27.410242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743336, 22.980114, 27.410965>,  <33.113079, 23.132723, 27.412170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743336, 22.980114, 27.410965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169156, 0.416881, -0.893083,
		0.341988, -0.825015, -0.449882,
		-0.924354, -0.381524, -0.003012,
		32.466030, 22.865656, 27.410061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080776, 22.916521, 26.730583>,  <33.113079, 23.132723, 27.412170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080776, 22.916521, 26.730583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.697216, 22.933182, 26.842850>,  <32.467079, 22.943178, 26.910210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.697216, 22.933182, 26.842850>,  <33.080776, 22.916521, 26.730583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697216, 22.933182, 26.842850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267307, 0.199152, -0.942807,
		-0.095165, -0.979083, -0.179833,
		-0.958901, 0.041652, 0.280668,
		32.409546, 22.945677, 26.927050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712219, 22.580673, 26.199989>,  <33.080776, 22.916521, 26.730583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712219, 22.580673, 26.199989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.430344, 22.802250, 26.377331>,  <32.261219, 22.935196, 26.483736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.430344, 22.802250, 26.377331>,  <32.712219, 22.580673, 26.199989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430344, 22.802250, 26.377331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344766, 0.278799, -0.896330,
		-0.620121, -0.784487, -0.005487,
		-0.704689, 0.553942, 0.443353,
		32.218937, 22.968431, 26.510336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151554, 22.622114, 25.615431>,  <32.712219, 22.580673, 26.199989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151554, 22.622114, 25.615431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060581, 22.895954, 25.892445>,  <32.005997, 23.060257, 26.058653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.060581, 22.895954, 25.892445>,  <32.151554, 22.622114, 25.615431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060581, 22.895954, 25.892445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386618, 0.589238, -0.709454,
		-0.893757, -0.429096, 0.130669,
		-0.227429, 0.684599, 0.692532,
		31.992353, 23.101334, 26.100204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350393, 22.729105, 25.648525>,  <32.151554, 22.622114, 25.615431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350393, 22.729105, 25.648525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548672, 23.050049, 25.781494>,  <31.667639, 23.242615, 25.861275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.548672, 23.050049, 25.781494>,  <31.350393, 22.729105, 25.648525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548672, 23.050049, 25.781494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582606, 0.591062, -0.557867,
		-0.644091, 0.082863, 0.760448,
		0.495698, 0.802359, 0.332421,
		31.697382, 23.290756, 25.881220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803299, 23.216675, 25.568827>,  <31.350393, 22.729105, 25.648525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803299, 23.216675, 25.568827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138510, 23.431061, 25.609722>,  <31.339636, 23.559692, 25.634260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.138510, 23.431061, 25.609722>,  <30.803299, 23.216675, 25.568827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138510, 23.431061, 25.609722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402615, 0.733889, -0.547090,
		-0.368252, 0.417314, 0.830806,
		0.838028, 0.535963, 0.102239,
		31.389917, 23.591850, 25.640394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.281044, 35.998066, 15.789737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621084, 36.066662, 15.590569>,  <21.825108, 36.107819, 15.471069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621084, 36.066662, 15.590569>,  <21.281044, 35.998066, 15.789737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621084, 36.066662, 15.590569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526408, -0.303757, 0.794120,
		-0.015062, -0.937188, -0.348498,
		0.850099, 0.171491, -0.497919,
		21.876114, 36.118111, 15.441194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.714783, 35.468464, 15.874731>,  <21.281044, 35.998066, 15.789737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.714783, 35.468464, 15.874731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958706, 35.770840, 15.779490>,  <22.105059, 35.952267, 15.722346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.958706, 35.770840, 15.779490>,  <21.714783, 35.468464, 15.874731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958706, 35.770840, 15.779490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548649, -0.185841, 0.815136,
		0.571944, -0.627710, -0.528073,
		0.609807, 0.755939, -0.238101,
		22.141647, 35.997620, 15.708060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.326445, 35.242378, 16.003428>,  <21.714783, 35.468464, 15.874731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.326445, 35.242378, 16.003428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378447, 35.638584, 16.021191>,  <22.409647, 35.876308, 16.031849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378447, 35.638584, 16.021191>,  <22.326445, 35.242378, 16.003428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378447, 35.638584, 16.021191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602512, -0.114490, 0.789855,
		0.787450, -0.075930, -0.611684,
		0.130005, 0.990519, 0.044406,
		22.417448, 35.935741, 16.034513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012098, 35.371376, 16.201242>,  <22.326445, 35.242378, 16.003428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012098, 35.371376, 16.201242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.871284, 35.740341, 16.264778>,  <22.786797, 35.961720, 16.302900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.871284, 35.740341, 16.264778>,  <23.012098, 35.371376, 16.201242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.871284, 35.740341, 16.264778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355672, -0.025141, 0.934273,
		0.865776, 0.385392, -0.319225,
		-0.352035, 0.922411, 0.158840,
		22.765675, 36.017063, 16.312429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.419561, 35.600769, 16.708904>,  <23.012098, 35.371376, 16.201242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.419561, 35.600769, 16.708904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.132088, 35.877617, 16.735645>,  <22.959604, 36.043724, 16.751690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.132088, 35.877617, 16.735645>,  <23.419561, 35.600769, 16.708904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.132088, 35.877617, 16.735645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198998, 0.112606, 0.973509,
		0.666253, 0.712949, -0.218657,
		-0.718685, 0.692115, 0.066851,
		22.916483, 36.085251, 16.755701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.760040, 36.257309, 17.089848>,  <23.419561, 35.600769, 16.708904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.760040, 36.257309, 17.089848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364071, 36.227203, 17.137821>,  <23.126490, 36.209141, 17.166605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.364071, 36.227203, 17.137821>,  <23.760040, 36.257309, 17.089848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.364071, 36.227203, 17.137821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109437, 0.130798, 0.985350,
		-0.089846, 0.988548, -0.121243,
		-0.989925, -0.075262, 0.119936,
		23.067093, 36.204624, 17.173801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.582623, 36.640266, 17.757996>,  <23.760040, 36.257309, 17.089848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.582623, 36.640266, 17.757996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232725, 36.452518, 17.709801>,  <23.022787, 36.339870, 17.680883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.232725, 36.452518, 17.709801>,  <23.582623, 36.640266, 17.757996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.232725, 36.452518, 17.709801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108659, -0.052324, 0.992701,
		-0.472246, 0.881451, -0.005231,
		-0.874744, -0.469367, -0.120487,
		22.970303, 36.311707, 17.673655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.285120, 36.960133, 18.327627>,  <23.582623, 36.640266, 17.757996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.285120, 36.960133, 18.327627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088543, 36.628918, 18.219677>,  <22.970596, 36.430187, 18.154907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.088543, 36.628918, 18.219677>,  <23.285120, 36.960133, 18.327627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.088543, 36.628918, 18.219677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190720, -0.200034, 0.961048,
		-0.849770, 0.523772, -0.059618,
		-0.491444, -0.828039, -0.269877,
		22.941111, 36.380505, 18.138714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555262, 36.932297, 18.645058>,  <23.285120, 36.960133, 18.327627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555262, 36.932297, 18.645058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684126, 36.561192, 18.569725>,  <22.761444, 36.338528, 18.524527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.684126, 36.561192, 18.569725>,  <22.555262, 36.932297, 18.645058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684126, 36.561192, 18.569725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152287, -0.247134, 0.956939,
		-0.934355, -0.279609, -0.220904,
		0.322162, -0.927762, -0.188330,
		22.780775, 36.282864, 18.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015621, 36.650837, 18.872396>,  <22.555262, 36.932297, 18.645058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015621, 36.650837, 18.872396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299480, 36.369324, 18.859211>,  <22.469797, 36.200417, 18.851299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299480, 36.369324, 18.859211>,  <22.015621, 36.650837, 18.872396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299480, 36.369324, 18.859211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261541, -0.306590, 0.915204,
		-0.654213, -0.640851, -0.401640,
		0.709649, -0.703784, -0.032966,
		22.512375, 36.158188, 18.849321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.657551, 35.925209, 19.002413>,  <22.015621, 36.650837, 18.872396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.657551, 35.925209, 19.002413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046133, 35.901035, 19.094170>,  <22.279282, 35.886532, 19.149223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046133, 35.901035, 19.094170>,  <21.657551, 35.925209, 19.002413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046133, 35.901035, 19.094170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234510, -0.390402, 0.890276,
		0.035750, -0.918659, -0.393431,
		0.971456, -0.060436, 0.229392,
		22.337570, 35.882904, 19.162987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.728289, 35.333317, 19.396305>,  <21.657551, 35.925209, 19.002413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.728289, 35.333317, 19.396305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071812, 35.509983, 19.500141>,  <22.277925, 35.615982, 19.562443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.071812, 35.509983, 19.500141>,  <21.728289, 35.333317, 19.396305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071812, 35.509983, 19.500141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191676, -0.192897, 0.962315,
		0.475093, -0.876199, -0.081006,
		0.858806, 0.441662, 0.259590,
		22.329454, 35.642483, 19.578018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.055052, 34.843018, 19.774197>,  <21.728289, 35.333317, 19.396305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.055052, 34.843018, 19.774197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.241829, 35.179565, 19.883053>,  <22.353895, 35.381496, 19.948366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.241829, 35.179565, 19.883053>,  <22.055052, 34.843018, 19.774197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.241829, 35.179565, 19.883053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080619, -0.265963, 0.960606,
		0.880606, -0.470486, -0.056358,
		0.466941, 0.841372, 0.272139,
		22.381910, 35.431976, 19.964695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667484, 34.698425, 20.323036>,  <22.055052, 34.843018, 19.774197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667484, 34.698425, 20.323036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545475, 35.077061, 20.364861>,  <22.472269, 35.304241, 20.389956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.545475, 35.077061, 20.364861>,  <22.667484, 34.698425, 20.323036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.545475, 35.077061, 20.364861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069037, -0.087528, 0.993767,
		0.949839, 0.310343, -0.038651,
		-0.305025, 0.946587, 0.104562,
		22.453968, 35.361038, 20.396229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063473, 34.944450, 20.834953>,  <22.667484, 34.698425, 20.323036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063473, 34.944450, 20.834953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.760153, 35.204861, 20.848541>,  <22.578161, 35.361107, 20.856693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.760153, 35.204861, 20.848541>,  <23.063473, 34.944450, 20.834953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.760153, 35.204861, 20.848541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088570, -0.154507, 0.984014,
		0.645863, 0.743167, 0.174823,
		-0.758298, 0.651023, 0.033968,
		22.532663, 35.400169, 20.858732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.206604, 35.231880, 21.474913>,  <23.063473, 34.944450, 20.834953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.206604, 35.231880, 21.474913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837791, 35.354038, 21.379753>,  <22.616505, 35.427334, 21.322659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.837791, 35.354038, 21.379753>,  <23.206604, 35.231880, 21.474913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.837791, 35.354038, 21.379753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258437, -0.028055, 0.965621,
		0.288221, 0.951812, 0.104793,
		-0.922030, 0.305395, -0.237898,
		22.561182, 35.445656, 21.308384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.127575, 35.836399, 21.926151>,  <23.206604, 35.231880, 21.474913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.127575, 35.836399, 21.926151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.770189, 35.708664, 21.799820>,  <22.555758, 35.632023, 21.724022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.770189, 35.708664, 21.799820>,  <23.127575, 35.836399, 21.926151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.770189, 35.708664, 21.799820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361729, 0.094815, 0.927449,
		-0.266224, 0.942886, -0.200227,
		-0.893464, -0.319337, -0.315827,
		22.502150, 35.612862, 21.705072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641022, 36.271706, 22.212687>,  <23.127575, 35.836399, 21.926151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641022, 36.271706, 22.212687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402412, 35.966217, 22.113979>,  <22.259247, 35.782925, 22.054754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402412, 35.966217, 22.113979>,  <22.641022, 36.271706, 22.212687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402412, 35.966217, 22.113979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370811, -0.010428, 0.928650,
		-0.711801, 0.645464, -0.276975,
		-0.596522, -0.763719, -0.246768,
		22.223455, 35.737103, 22.039949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834377, 36.422485, 22.301853>,  <22.641022, 36.271706, 22.212687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834377, 36.422485, 22.301853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.915224, 36.034721, 22.357563>,  <21.963732, 35.802063, 22.390989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.915224, 36.034721, 22.357563>,  <21.834377, 36.422485, 22.301853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915224, 36.034721, 22.357563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494922, 0.021613, 0.868669,
		-0.845104, -0.244502, -0.475413,
		0.202116, -0.969408, 0.139274,
		21.975859, 35.743900, 22.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305733, 36.253239, 22.712904>,  <21.834377, 36.422485, 22.301853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305733, 36.253239, 22.712904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.541111, 35.930950, 22.739868>,  <21.682339, 35.737576, 22.756046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.541111, 35.930950, 22.739868>,  <21.305733, 36.253239, 22.712904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541111, 35.930950, 22.739868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047915, 0.048478, 0.997674,
		-0.807116, -0.590306, -0.010079,
		0.588445, -0.805722, 0.067412,
		21.717644, 35.689232, 22.760092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.962435, 35.872681, 23.256105>,  <21.305733, 36.253239, 22.712904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.962435, 35.872681, 23.256105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342222, 35.754211, 23.214550>,  <21.570095, 35.683128, 23.189617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.342222, 35.754211, 23.214550>,  <20.962435, 35.872681, 23.256105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342222, 35.754211, 23.214550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107630, -0.003692, 0.994184,
		-0.294836, -0.955127, 0.028372,
		0.949467, -0.296175, -0.103889,
		21.627062, 35.665359, 23.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.604130, 36.178116, 22.639116>,  <20.962435, 35.872681, 23.256105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.604130, 36.178116, 22.639116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.339405, 36.455479, 22.753090>,  <20.180571, 36.621899, 22.821474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.339405, 36.455479, 22.753090>,  <20.604130, 36.178116, 22.639116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.339405, 36.455479, 22.753090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263148, 0.141021, -0.954393,
		-0.701967, -0.706609, 0.089140,
		-0.661812, 0.693409, 0.284935,
		20.140862, 36.663502, 22.838570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939098, 36.015163, 22.313898>,  <20.604130, 36.178116, 22.639116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939098, 36.015163, 22.313898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.953699, 36.402901, 22.411098>,  <19.962460, 36.635544, 22.469419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.953699, 36.402901, 22.411098>,  <19.939098, 36.015163, 22.313898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953699, 36.402901, 22.411098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109322, 0.245578, -0.963193,
		-0.993336, 0.008594, 0.114934,
		0.036503, 0.969339, 0.243002,
		19.964649, 36.693703, 22.483999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415335, 36.340523, 22.045158>,  <19.939098, 36.015163, 22.313898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415335, 36.340523, 22.045158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.619066, 36.674931, 22.126793>,  <19.741304, 36.875576, 22.175774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.619066, 36.674931, 22.126793>,  <19.415335, 36.340523, 22.045158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.619066, 36.674931, 22.126793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375435, 0.429255, -0.821455,
		-0.774360, 0.341769, 0.532504,
		0.509328, 0.836023, 0.204086,
		19.771864, 36.925739, 22.188019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922630, 36.965912, 21.938564>,  <19.415335, 36.340523, 22.045158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922630, 36.965912, 21.938564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.304726, 37.076633, 21.896809>,  <19.533983, 37.143066, 21.871756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.304726, 37.076633, 21.896809>,  <18.922630, 36.965912, 21.938564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.304726, 37.076633, 21.896809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256609, 0.599693, -0.757972,
		-0.147206, 0.750832, 0.643880,
		0.955240, 0.276803, -0.104392,
		19.591297, 37.159676, 21.865492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817038, 37.663761, 21.710440>,  <18.922630, 36.965912, 21.938564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817038, 37.663761, 21.710440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.200151, 37.584892, 21.626755>,  <19.430019, 37.537571, 21.576544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.200151, 37.584892, 21.626755>,  <18.817038, 37.663761, 21.710440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200151, 37.584892, 21.626755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158956, 0.243163, -0.956872,
		0.239540, 0.949734, 0.201556,
		0.957786, -0.197171, -0.209214,
		19.487488, 37.525742, 21.563992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174891, 38.309605, 21.282475>,  <18.817038, 37.663761, 21.710440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.174891, 38.309605, 21.282475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373787, 37.969524, 21.213287>,  <19.493124, 37.765476, 21.171774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373787, 37.969524, 21.213287>,  <19.174891, 38.309605, 21.282475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373787, 37.969524, 21.213287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148580, 0.279861, -0.948473,
		0.854796, 0.445919, 0.265480,
		0.497240, -0.850196, -0.172970,
		19.522959, 37.714466, 21.161396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555511, 38.455135, 20.698738>,  <19.174891, 38.309605, 21.282475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555511, 38.455135, 20.698738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.606258, 38.058727, 20.715641>,  <19.636707, 37.820881, 20.725782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.606258, 38.058727, 20.715641>,  <19.555511, 38.455135, 20.698738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.606258, 38.058727, 20.715641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148529, -0.023139, -0.988637,
		0.980736, 0.131704, 0.144260,
		0.126869, -0.991019, 0.042255,
		19.644320, 37.761421, 20.728317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.149780, 38.222290, 20.179405>,  <19.555511, 38.455135, 20.698738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.149780, 38.222290, 20.179405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928762, 37.894039, 20.237732>,  <19.796152, 37.697086, 20.272728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928762, 37.894039, 20.237732>,  <20.149780, 38.222290, 20.179405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928762, 37.894039, 20.237732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030677, -0.154804, -0.987469,
		0.832918, -0.550094, 0.060362,
		-0.552545, -0.820629, 0.145814,
		19.762999, 37.647850, 20.281477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281380, 37.716961, 19.598534>,  <20.149780, 38.222290, 20.179405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281380, 37.716961, 19.598534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931591, 37.584251, 19.740082>,  <19.721718, 37.504623, 19.825010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.931591, 37.584251, 19.740082>,  <20.281380, 37.716961, 19.598534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931591, 37.584251, 19.740082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248976, -0.319099, -0.914433,
		0.416308, -0.887750, 0.196438,
		-0.874470, -0.331777, 0.353871,
		19.669250, 37.484718, 19.846243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229622, 37.095963, 19.414454>,  <20.281380, 37.716961, 19.598534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229622, 37.095963, 19.414454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.842892, 37.176140, 19.477795>,  <19.610853, 37.224247, 19.515799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.842892, 37.176140, 19.477795>,  <20.229622, 37.095963, 19.414454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.842892, 37.176140, 19.477795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230586, -0.418056, -0.878669,
		-0.109922, -0.886032, 0.450405,
		-0.966823, 0.200442, 0.158353,
		19.552845, 37.236271, 19.525301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804899, 36.470558, 19.251699>,  <20.229622, 37.095963, 19.414454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804899, 36.470558, 19.251699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.568119, 36.791878, 19.225460>,  <19.426050, 36.984669, 19.209717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.568119, 36.791878, 19.225460>,  <19.804899, 36.470558, 19.251699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.568119, 36.791878, 19.225460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191259, -0.219067, -0.956781,
		-0.782953, -0.553821, 0.283315,
		-0.591950, 0.803301, -0.065596,
		19.390533, 37.032867, 19.205782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.128620, 36.174561, 18.949484>,  <19.804899, 36.470558, 19.251699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.128620, 36.174561, 18.949484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.122759, 36.565224, 18.863766>,  <19.119242, 36.799622, 18.812334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.122759, 36.565224, 18.863766>,  <19.128620, 36.174561, 18.949484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122759, 36.565224, 18.863766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076474, -0.214785, -0.973663,
		-0.996964, 0.002121, 0.077836,
		-0.014653, 0.976659, -0.214295,
		19.118362, 36.858223, 18.799477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732382, 36.148560, 18.318117>,  <19.128620, 36.174561, 18.949484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732382, 36.148560, 18.318117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.842035, 36.531487, 18.354774>,  <18.907827, 36.761242, 18.376768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.842035, 36.531487, 18.354774>,  <18.732382, 36.148560, 18.318117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.842035, 36.531487, 18.354774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256301, 0.164574, -0.952484,
		-0.926909, 0.237621, 0.290476,
		0.274135, 0.957315, 0.091643,
		18.924276, 36.818680, 18.382267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.189081, 36.481667, 17.913809>,  <18.732382, 36.148560, 18.318117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.189081, 36.481667, 17.913809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.523075, 36.698372, 17.952366>,  <18.723471, 36.828396, 17.975500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.523075, 36.698372, 17.952366>,  <18.189081, 36.481667, 17.913809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523075, 36.698372, 17.952366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085369, 0.300585, -0.949927,
		-0.543612, 0.784944, 0.297234,
		0.834984, 0.541766, 0.096392,
		18.773571, 36.860901, 17.981283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.024469, 37.066708, 17.498047>,  <18.189081, 36.481667, 17.913809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.024469, 37.066708, 17.498047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423038, 37.051590, 17.528286>,  <18.662180, 37.042519, 17.546429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.423038, 37.051590, 17.528286>,  <18.024469, 37.066708, 17.498047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.423038, 37.051590, 17.528286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079048, 0.100156, -0.991827,
		0.029909, 0.994254, 0.102785,
		0.996422, -0.037790, 0.075598,
		18.721966, 37.040253, 17.550966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316996, 37.629917, 17.063602>,  <18.024469, 37.066708, 17.498047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316996, 37.629917, 17.063602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.618343, 37.371979, 17.115150>,  <18.799152, 37.217216, 17.146078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.618343, 37.371979, 17.115150>,  <18.316996, 37.629917, 17.063602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618343, 37.371979, 17.115150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238369, 0.085149, -0.967435,
		0.612876, 0.759553, 0.217860,
		0.753368, -0.644848, 0.128868,
		18.844355, 37.178524, 17.153811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754871, 37.921078, 16.742502>,  <18.316996, 37.629917, 17.063602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754871, 37.921078, 16.742502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.881006, 37.541798, 16.757931>,  <18.956688, 37.314232, 16.767187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.881006, 37.541798, 16.757931>,  <18.754871, 37.921078, 16.742502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881006, 37.541798, 16.757931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358449, 0.081378, -0.929996,
		0.878679, 0.307087, 0.365541,
		0.315337, -0.948196, 0.038569,
		18.975607, 37.257339, 16.769501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.353653, 37.889748, 16.555237>,  <18.754871, 37.921078, 16.742502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.353653, 37.889748, 16.555237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.234163, 37.517525, 16.470551>,  <19.162470, 37.294189, 16.419739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.234163, 37.517525, 16.470551>,  <19.353653, 37.889748, 16.555237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.234163, 37.517525, 16.470551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423394, 0.069592, -0.903269,
		0.855278, -0.359468, 0.373205,
		-0.298725, -0.930559, -0.211717,
		19.144547, 37.238358, 16.407036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927401, 37.617794, 16.224691>,  <19.353653, 37.889748, 16.555237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927401, 37.617794, 16.224691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632393, 37.368950, 16.119591>,  <19.455387, 37.219643, 16.056530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.632393, 37.368950, 16.119591>,  <19.927401, 37.617794, 16.224691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.632393, 37.368950, 16.119591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452044, -0.165726, -0.876465,
		0.501716, -0.765186, 0.403449,
		-0.737521, -0.622113, -0.262750,
		19.411137, 37.182316, 16.040766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282160, 37.130783, 15.908874>,  <19.927401, 37.617794, 16.224691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282160, 37.130783, 15.908874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.908991, 37.091496, 15.770303>,  <19.685089, 37.067924, 15.687160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.908991, 37.091496, 15.770303>,  <20.282160, 37.130783, 15.908874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908991, 37.091496, 15.770303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357678, -0.141802, -0.923016,
		0.041531, -0.985011, 0.167419,
		-0.932921, -0.098216, -0.346427,
		19.629114, 37.062031, 15.666374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250731, 36.533318, 15.441910>,  <20.282160, 37.130783, 15.908874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250731, 36.533318, 15.441910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.926891, 36.758457, 15.375268>,  <19.732588, 36.893539, 15.335283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.926891, 36.758457, 15.375268>,  <20.250731, 36.533318, 15.441910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926891, 36.758457, 15.375268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275629, 0.113931, -0.954489,
		-0.518251, -0.818671, -0.247376,
		-0.809596, 0.562848, -0.166604,
		19.684013, 36.927311, 15.325287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.019129, 27.460327, 23.840034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376034, 27.636940, 23.877811>,  <27.590176, 27.742908, 23.900476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376034, 27.636940, 23.877811>,  <27.019129, 27.460327, 23.840034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376034, 27.636940, 23.877811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330161, 0.780686, -0.530588,
		-0.308001, 0.442242, 0.842352,
		0.892260, 0.441534, 0.094441,
		27.643711, 27.769400, 23.906143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834995, 28.174343, 24.072571>,  <27.019129, 27.460327, 23.840034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834995, 28.174343, 24.072571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202154, 28.190594, 23.914677>,  <27.422449, 28.200344, 23.819941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202154, 28.190594, 23.914677>,  <26.834995, 28.174343, 24.072571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202154, 28.190594, 23.914677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267085, 0.798946, -0.538842,
		0.293480, 0.600029, 0.744201,
		0.917897, 0.040626, -0.394733,
		27.477524, 28.202782, 23.796257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990042, 28.848553, 24.025253>,  <26.834995, 28.174343, 24.072571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990042, 28.848553, 24.025253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258104, 28.701622, 23.767273>,  <27.418941, 28.613462, 23.612484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258104, 28.701622, 23.767273>,  <26.990042, 28.848553, 24.025253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258104, 28.701622, 23.767273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075675, 0.830603, -0.551698,
		0.738352, 0.418531, 0.528837,
		0.670157, -0.367328, -0.644950,
		27.459152, 28.591423, 23.573788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355286, 29.436449, 23.968035>,  <26.990042, 28.848553, 24.025253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355286, 29.436449, 23.968035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440981, 29.196911, 23.659363>,  <27.492397, 29.053188, 23.474159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440981, 29.196911, 23.659363>,  <27.355286, 29.436449, 23.968035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440981, 29.196911, 23.659363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069580, 0.797370, -0.599467,
		0.974301, 0.074734, 0.212493,
		0.214236, -0.598846, -0.771678,
		27.505251, 29.017258, 23.427860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947243, 29.655394, 23.728363>,  <27.355286, 29.436449, 23.968035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947243, 29.655394, 23.728363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769815, 29.474930, 23.418602>,  <27.663359, 29.366652, 23.232746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769815, 29.474930, 23.418602>,  <27.947243, 29.655394, 23.728363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769815, 29.474930, 23.418602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272356, 0.755340, -0.596057,
		0.853854, -0.475306, -0.212170,
		-0.443570, -0.451160, -0.774403,
		27.636744, 29.339582, 23.186281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445803, 29.610985, 23.201193>,  <27.947243, 29.655394, 23.728363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445803, 29.610985, 23.201193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090034, 29.550655, 23.028595>,  <27.876574, 29.514458, 22.925037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090034, 29.550655, 23.028595>,  <28.445803, 29.610985, 23.201193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090034, 29.550655, 23.028595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298612, 0.522984, -0.798323,
		0.346070, -0.838892, -0.420113,
		-0.889419, -0.150825, -0.431492,
		27.823208, 29.505407, 22.899147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570139, 29.440914, 22.458153>,  <28.445803, 29.610985, 23.201193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570139, 29.440914, 22.458153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196796, 29.573708, 22.512760>,  <27.972792, 29.653383, 22.545525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196796, 29.573708, 22.512760>,  <28.570139, 29.440914, 22.458153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196796, 29.573708, 22.512760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106020, 0.618312, -0.778749,
		-0.342942, -0.712375, -0.612301,
		-0.933354, 0.331982, 0.136519,
		27.916790, 29.673302, 22.553717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218933, 29.282892, 21.805847>,  <28.570139, 29.440914, 22.458153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218933, 29.282892, 21.805847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057610, 29.596851, 21.994007>,  <27.960815, 29.785227, 22.106903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057610, 29.596851, 21.994007>,  <28.218933, 29.282892, 21.805847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057610, 29.596851, 21.994007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055056, 0.533944, -0.843725,
		-0.913407, -0.314381, -0.258557,
		-0.403306, 0.784900, 0.470400,
		27.936617, 29.832321, 22.135128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967133, 29.737490, 21.265331>,  <28.218933, 29.282892, 21.805847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967133, 29.737490, 21.265331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964205, 29.982422, 21.581558>,  <27.962448, 30.129381, 21.771296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964205, 29.982422, 21.581558>,  <27.967133, 29.737490, 21.265331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964205, 29.982422, 21.581558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146658, 0.782698, -0.604877,
		-0.989160, 0.111517, -0.095530,
		-0.007318, 0.612330, 0.790568,
		27.962009, 30.166121, 21.818729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558720, 30.332066, 21.017607>,  <27.967133, 29.737490, 21.265331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558720, 30.332066, 21.017607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733112, 30.479485, 21.346020>,  <27.837748, 30.567936, 21.543068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733112, 30.479485, 21.346020>,  <27.558720, 30.332066, 21.017607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733112, 30.479485, 21.346020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119705, 0.880448, -0.458783,
		-0.891959, 0.298303, 0.339743,
		0.435982, 0.368547, 0.821032,
		27.863907, 30.590048, 21.592329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323744, 30.968904, 20.995218>,  <27.558720, 30.332066, 21.017607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323744, 30.968904, 20.995218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650265, 30.956390, 21.225929>,  <27.846176, 30.948881, 21.364357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650265, 30.956390, 21.225929>,  <27.323744, 30.968904, 20.995218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650265, 30.956390, 21.225929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338972, 0.834464, -0.434473,
		-0.467708, 0.550173, 0.691779,
		0.816300, -0.031287, 0.576780,
		27.895155, 30.947004, 21.398964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654907, 31.477751, 20.634748>,  <27.323744, 30.968904, 20.995218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654907, 31.477751, 20.634748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870771, 31.400921, 20.962620>,  <28.000290, 31.354822, 21.159342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870771, 31.400921, 20.962620>,  <27.654907, 31.477751, 20.634748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870771, 31.400921, 20.962620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513858, 0.846377, -0.139984,
		-0.666871, 0.496742, 0.555456,
		0.539661, -0.192074, 0.819679,
		28.032669, 31.343298, 21.208523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639320, 32.063992, 21.114172>,  <27.654907, 31.477751, 20.634748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639320, 32.063992, 21.114172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977983, 31.851261, 21.106915>,  <28.181181, 31.723621, 21.102560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977983, 31.851261, 21.106915>,  <27.639320, 32.063992, 21.114172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977983, 31.851261, 21.106915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524646, 0.839953, -0.138658,
		0.088980, 0.107878, 0.990174,
		0.846658, -0.531828, -0.018141,
		28.231981, 31.691713, 21.101473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513477, 32.507259, 21.822157>,  <27.639320, 32.063992, 21.114172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513477, 32.507259, 21.822157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217264, 32.767895, 21.756382>,  <27.039536, 32.924278, 21.716917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217264, 32.767895, 21.756382>,  <27.513477, 32.507259, 21.822157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217264, 32.767895, 21.756382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323898, -0.560466, -0.762212,
		-0.588814, -0.511181, 0.626093,
		-0.740532, 0.651592, -0.164440,
		26.995104, 32.963371, 21.707050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208986, 33.009140, 22.236603>,  <27.513477, 32.507259, 21.822157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208986, 33.009140, 22.236603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062857, 33.259312, 22.512394>,  <26.975178, 33.409412, 22.677868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062857, 33.259312, 22.512394>,  <27.208986, 33.009140, 22.236603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062857, 33.259312, 22.512394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235376, -0.654542, 0.718452,
		0.900630, 0.424756, 0.091911,
		-0.365326, 0.625425, 0.689478,
		26.953259, 33.446938, 22.719236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747337, 33.047066, 22.745687>,  <27.208986, 33.009140, 22.236603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747337, 33.047066, 22.745687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409678, 33.163448, 22.925800>,  <27.207081, 33.233276, 23.033867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.409678, 33.163448, 22.925800>,  <27.747337, 33.047066, 22.745687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409678, 33.163448, 22.925800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227167, -0.566651, 0.792024,
		0.485595, 0.770877, 0.412244,
		-0.844152, 0.290955, 0.450281,
		27.156431, 33.250736, 23.060884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970478, 33.183807, 23.448591>,  <27.747337, 33.047066, 22.745687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970478, 33.183807, 23.448591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575504, 33.120884, 23.442543>,  <27.338520, 33.083130, 23.438913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575504, 33.120884, 23.442543>,  <27.970478, 33.183807, 23.448591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575504, 33.120884, 23.442543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083002, -0.597645, 0.797453,
		-0.134485, 0.786177, 0.603191,
		-0.987433, -0.157311, -0.015120,
		27.279274, 33.073692, 23.438007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823166, 33.123131, 24.116869>,  <27.970478, 33.183807, 23.448591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823166, 33.123131, 24.116869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497395, 32.953053, 23.958923>,  <27.301931, 32.851006, 23.864157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497395, 32.953053, 23.958923>,  <27.823166, 33.123131, 24.116869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497395, 32.953053, 23.958923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075805, -0.596694, 0.798880,
		-0.575292, 0.680563, 0.453733,
		-0.814428, -0.425195, -0.394864,
		27.253067, 32.825493, 23.840464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371361, 33.143276, 24.677448>,  <27.823166, 33.123131, 24.116869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371361, 33.143276, 24.677448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222727, 32.849770, 24.449936>,  <27.133547, 32.673668, 24.313429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222727, 32.849770, 24.449936>,  <27.371361, 33.143276, 24.677448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.222727, 32.849770, 24.449936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086245, -0.582716, 0.808086,
		-0.924384, 0.349329, 0.153246,
		-0.371587, -0.733765, -0.568781,
		27.111250, 32.629639, 24.279301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791656, 32.948338, 25.033512>,  <27.371361, 33.143276, 24.677448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791656, 32.948338, 25.033512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907217, 32.643772, 24.801380>,  <26.976553, 32.461033, 24.662102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.907217, 32.643772, 24.801380>,  <26.791656, 32.948338, 25.033512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907217, 32.643772, 24.801380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181883, -0.638792, 0.747572,
		-0.939923, -0.110422, -0.323036,
		0.288901, -0.761415, -0.580331,
		26.993887, 32.415348, 24.627281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464207, 32.392216, 25.363802>,  <26.791656, 32.948338, 25.033512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464207, 32.392216, 25.363802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705290, 32.209488, 25.102097>,  <26.849939, 32.099850, 24.945072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705290, 32.209488, 25.102097>,  <26.464207, 32.392216, 25.363802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705290, 32.209488, 25.102097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020741, -0.810673, 0.585132,
		-0.797695, -0.366232, -0.479121,
		0.602704, -0.456819, -0.654266,
		26.886101, 32.072441, 24.905817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166405, 31.805990, 25.206923>,  <26.464207, 32.392216, 25.363802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166405, 31.805990, 25.206923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543427, 31.717224, 25.107048>,  <26.769640, 31.663963, 25.047123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543427, 31.717224, 25.107048>,  <26.166405, 31.805990, 25.206923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.543427, 31.717224, 25.107048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057881, -0.844637, 0.532201,
		-0.328998, -0.487177, -0.808962,
		0.942555, -0.221916, -0.249686,
		26.826193, 31.650650, 25.032143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135069, 31.044140, 25.129467>,  <26.166405, 31.805990, 25.206923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135069, 31.044140, 25.129467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510286, 31.169823, 25.187904>,  <26.735416, 31.245234, 25.222967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510286, 31.169823, 25.187904>,  <26.135069, 31.044140, 25.129467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510286, 31.169823, 25.187904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200565, -0.836146, 0.510523,
		0.282568, -0.449592, -0.847362,
		0.938045, 0.314209, 0.146096,
		26.791700, 31.264086, 25.231733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562910, 30.564150, 24.986940>,  <26.135069, 31.044140, 25.129467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562910, 30.564150, 24.986940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768255, 30.784496, 25.250153>,  <26.891462, 30.916704, 25.408081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768255, 30.784496, 25.250153>,  <26.562910, 30.564150, 24.986940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768255, 30.784496, 25.250153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335880, -0.834588, 0.436633,
		0.789712, -0.003131, -0.613470,
		0.513362, 0.550866, 0.658032,
		26.922264, 30.949757, 25.447563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084057, 30.107355, 25.166903>,  <26.562910, 30.564150, 24.986940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084057, 30.107355, 25.166903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134686, 30.403362, 25.431129>,  <27.165062, 30.580967, 25.589666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134686, 30.403362, 25.431129>,  <27.084057, 30.107355, 25.166903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134686, 30.403362, 25.431129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404572, -0.646533, 0.646774,
		0.905705, 0.185384, -0.381224,
		0.126572, 0.740019, 0.660569,
		27.172657, 30.625368, 25.629301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713120, 30.027451, 25.387653>,  <27.084057, 30.107355, 25.166903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713120, 30.027451, 25.387653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511843, 30.224129, 25.671917>,  <27.391077, 30.342136, 25.842474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511843, 30.224129, 25.671917>,  <27.713120, 30.027451, 25.387653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511843, 30.224129, 25.671917> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211035, -0.727538, 0.652804,
		0.838011, 0.478459, 0.262325,
		-0.503191, 0.491697, 0.710657,
		27.360886, 30.371637, 25.885115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089712, 29.926640, 26.067568>,  <27.713120, 30.027451, 25.387653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089712, 29.926640, 26.067568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712397, 30.029533, 26.151505>,  <27.486008, 30.091269, 26.201866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712397, 30.029533, 26.151505>,  <28.089712, 29.926640, 26.067568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712397, 30.029533, 26.151505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025165, -0.574887, 0.817846,
		0.331012, 0.776747, 0.535812,
		-0.943291, 0.257233, 0.209841,
		27.429409, 30.106703, 26.214457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126625, 30.168774, 26.730719>,  <28.089712, 29.926640, 26.067568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126625, 30.168774, 26.730719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744223, 30.062439, 26.681099>,  <27.514782, 29.998638, 26.651327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744223, 30.062439, 26.681099>,  <28.126625, 30.168774, 26.730719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.744223, 30.062439, 26.681099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117433, -0.734301, 0.668589,
		-0.268822, 0.624607, 0.733213,
		-0.956004, -0.265835, -0.124047,
		27.457422, 29.982689, 26.643885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.262775, 30.920666, 26.872440>,  <28.126625, 30.168774, 26.730719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.262775, 30.920666, 26.872440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618969, 30.907581, 27.053974>,  <28.832685, 30.899731, 27.162893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618969, 30.907581, 27.053974>,  <28.262775, 30.920666, 26.872440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618969, 30.907581, 27.053974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355743, 0.671923, -0.649590,
		-0.283692, 0.739899, 0.609974,
		0.890486, -0.032711, 0.453833,
		28.886114, 30.897768, 27.190125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413998, 31.577032, 27.079832>,  <28.262775, 30.920666, 26.872440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413998, 31.577032, 27.079832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770601, 31.395836, 27.078526>,  <28.984564, 31.287117, 27.077742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770601, 31.395836, 27.078526>,  <28.413998, 31.577032, 27.079832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770601, 31.395836, 27.078526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392649, 0.776306, -0.493128,
		0.225918, 0.438346, 0.869951,
		0.891509, -0.452992, -0.003265,
		29.038054, 31.259939, 27.077545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975529, 32.139618, 27.173069>,  <28.413998, 31.577032, 27.079832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975529, 32.139618, 27.173069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135954, 31.811703, 27.009560>,  <29.232208, 31.614954, 26.911455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135954, 31.811703, 27.009560>,  <28.975529, 32.139618, 27.173069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135954, 31.811703, 27.009560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335990, 0.546777, -0.766907,
		0.852210, 0.170233, 0.494732,
		0.401061, -0.819790, -0.408772,
		29.256271, 31.565765, 26.886929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631201, 32.421600, 26.958757>,  <28.975529, 32.139618, 27.173069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631201, 32.421600, 26.958757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608124, 32.079468, 26.752815>,  <29.594276, 31.874187, 26.629250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608124, 32.079468, 26.752815>,  <29.631201, 32.421600, 26.958757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608124, 32.079468, 26.752815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533042, 0.409658, -0.740302,
		0.844119, -0.317151, 0.432294,
		-0.057695, -0.855334, -0.514854,
		29.590815, 31.822868, 26.598358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313421, 32.258972, 26.713240>,  <29.631201, 32.421600, 26.958757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313421, 32.258972, 26.713240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040388, 32.089043, 26.475380>,  <29.876568, 31.987085, 26.332664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040388, 32.089043, 26.475380>,  <30.313421, 32.258972, 26.713240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040388, 32.089043, 26.475380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255301, 0.623804, -0.738708,
		0.684769, -0.656041, -0.317336,
		-0.682578, -0.424828, -0.594650,
		29.835613, 31.961596, 26.296986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700077, 32.109798, 26.140142>,  <30.313421, 32.258972, 26.713240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700077, 32.109798, 26.140142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328890, 32.087864, 25.992699>,  <30.106178, 32.074703, 25.904232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328890, 32.087864, 25.992699>,  <30.700077, 32.109798, 26.140142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328890, 32.087864, 25.992699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267226, 0.591511, -0.760727,
		0.259749, -0.804431, -0.534249,
		-0.927966, -0.054833, -0.368609,
		30.050501, 32.071415, 25.882116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850864, 31.907076, 25.443485>,  <30.700077, 32.109798, 26.140142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850864, 31.907076, 25.443485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477585, 32.050652, 25.450424>,  <30.253616, 32.136795, 25.454588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477585, 32.050652, 25.450424>,  <30.850864, 31.907076, 25.443485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477585, 32.050652, 25.450424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202337, 0.564725, -0.800091,
		-0.296980, -0.743135, -0.599628,
		-0.933201, 0.358938, 0.017348,
		30.197624, 32.158333, 25.455629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683527, 31.831133, 24.776211>,  <30.850864, 31.907076, 25.443485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683527, 31.831133, 24.776211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411697, 32.085804, 24.921989>,  <30.248600, 32.238605, 25.009457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411697, 32.085804, 24.921989>,  <30.683527, 31.831133, 24.776211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411697, 32.085804, 24.921989> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013127, 0.486154, -0.873775,
		-0.733490, -0.598578, -0.322020,
		-0.679573, 0.636678, 0.364446,
		30.207825, 32.276806, 25.031322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174427, 31.729897, 24.352106>,  <30.683527, 31.831133, 24.776211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174427, 31.729897, 24.352106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174904, 32.090698, 24.524796>,  <30.175190, 32.307178, 24.628408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174904, 32.090698, 24.524796>,  <30.174427, 31.729897, 24.352106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174904, 32.090698, 24.524796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052864, 0.431177, -0.900717,
		-0.998601, -0.021751, 0.048196,
		0.001190, 0.902005, 0.431723,
		30.175261, 32.361301, 24.654312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880917, 32.245258, 23.844038>,  <30.174427, 31.729897, 24.352106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880917, 32.245258, 23.844038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999826, 32.522873, 24.106316>,  <30.071173, 32.689442, 24.263681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999826, 32.522873, 24.106316>,  <29.880917, 32.245258, 23.844038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999826, 32.522873, 24.106316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034130, 0.694026, -0.719140,
		-0.954181, 0.191405, 0.230005,
		0.297276, 0.694040, 0.655694,
		30.089010, 32.731087, 24.303024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439480, 32.839554, 23.780766>,  <29.880917, 32.245258, 23.844038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439480, 32.839554, 23.780766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781988, 32.974648, 23.937092>,  <29.987494, 33.055702, 24.030888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781988, 32.974648, 23.937092>,  <29.439480, 32.839554, 23.780766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781988, 32.974648, 23.937092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105485, 0.626342, -0.772378,
		-0.505640, 0.702591, 0.500694,
		0.856272, 0.337730, 0.390816,
		30.038870, 33.075966, 24.054337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456934, 33.538635, 23.716988>,  <29.439480, 32.839554, 23.780766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456934, 33.538635, 23.716988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839600, 33.423553, 23.734978>,  <30.069199, 33.354504, 23.745771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839600, 33.423553, 23.734978>,  <29.456934, 33.538635, 23.716988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839600, 33.423553, 23.734978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169700, 0.425308, -0.888996,
		0.236636, 0.858103, 0.455700,
		0.956663, -0.287701, 0.044977,
		30.126598, 33.337242, 23.748470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.118196, 28.674679, 30.173708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.513863, 28.617828, 30.159019>,  <28.751263, 28.583717, 30.150208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.513863, 28.617828, 30.159019>,  <28.118196, 28.674679, 30.173708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513863, 28.617828, 30.159019> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099583, 0.833487, -0.543492,
		0.107851, 0.533947, 0.838611,
		0.989167, -0.142127, -0.036720,
		28.810614, 28.575190, 30.148003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465334, 29.278296, 30.439028>,  <28.118196, 28.674679, 30.173708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465334, 29.278296, 30.439028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.694426, 29.075626, 30.181263>,  <28.831881, 28.954025, 30.026604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.694426, 29.075626, 30.181263>,  <28.465334, 29.278296, 30.439028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694426, 29.075626, 30.181263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077537, 0.816071, -0.572727,
		0.816071, 0.278050, 0.506672,
		0.572727, -0.506672, -0.644413,
		28.866243, 28.923624, 29.987940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093636, 29.673086, 30.267649>,  <28.465334, 29.278296, 30.439028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093636, 29.673086, 30.267649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.025869, 29.416908, 29.968014>,  <28.985210, 29.263203, 29.788233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.025869, 29.416908, 29.968014>,  <29.093636, 29.673086, 30.267649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025869, 29.416908, 29.968014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253794, 0.706088, -0.661081,
		0.952306, -0.302111, 0.042918,
		-0.169415, -0.640444, -0.749086,
		28.975044, 29.224775, 29.743288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639345, 29.896738, 29.850592>,  <29.093636, 29.673086, 30.267649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639345, 29.896738, 29.850592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.381308, 29.694157, 29.621731>,  <29.226484, 29.572609, 29.484415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.381308, 29.694157, 29.621731>,  <29.639345, 29.896738, 29.850592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381308, 29.694157, 29.621731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173210, 0.632374, -0.755051,
		0.744211, -0.586183, -0.320219,
		-0.645096, -0.506451, -0.572152,
		29.187778, 29.542221, 29.450085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986507, 29.766350, 29.226730>,  <29.639345, 29.896738, 29.850592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986507, 29.766350, 29.226730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597752, 29.721352, 29.144005>,  <29.364498, 29.694353, 29.094370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.597752, 29.721352, 29.144005>,  <29.986507, 29.766350, 29.226730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597752, 29.721352, 29.144005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114466, 0.541843, -0.832649,
		0.205729, -0.832917, -0.513736,
		-0.971892, -0.112495, -0.206813,
		29.306185, 29.687603, 29.081961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020744, 29.656395, 28.444895>,  <29.986507, 29.766350, 29.226730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020744, 29.656395, 28.444895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.635521, 29.738625, 28.514473>,  <29.404387, 29.787962, 28.556221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.635521, 29.738625, 28.514473>,  <30.020744, 29.656395, 28.444895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635521, 29.738625, 28.514473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046885, 0.508082, -0.860031,
		-0.265180, -0.836416, -0.479675,
		-0.963059, 0.205573, 0.173948,
		29.346603, 29.800297, 28.566658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.693415, 29.436052, 27.814417>,  <30.020744, 29.656395, 28.444895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.693415, 29.436052, 27.814417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.474083, 29.702442, 28.016731>,  <29.342484, 29.862276, 28.138119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.474083, 29.702442, 28.016731>,  <29.693415, 29.436052, 27.814417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474083, 29.702442, 28.016731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011781, 0.598603, -0.800959,
		-0.836181, -0.445146, -0.320385,
		-0.548327, 0.665973, 0.505784,
		29.309586, 29.902233, 28.168467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072433, 29.393200, 27.508514>,  <29.693415, 29.436052, 27.814417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072433, 29.393200, 27.508514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.109489, 29.755756, 27.673378>,  <29.131723, 29.973289, 27.772297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.109489, 29.755756, 27.673378>,  <29.072433, 29.393200, 27.508514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109489, 29.755756, 27.673378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098419, 0.403576, -0.909638,
		-0.990824, 0.124835, -0.051818,
		0.092642, 0.906390, 0.412159,
		29.137281, 30.027674, 27.797026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.647514, 29.719091, 27.024509>,  <29.072433, 29.393200, 27.508514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.647514, 29.719091, 27.024509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.853773, 29.980515, 27.246128>,  <28.977528, 30.137369, 27.379099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.853773, 29.980515, 27.246128>,  <28.647514, 29.719091, 27.024509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853773, 29.980515, 27.246128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241550, 0.509529, -0.825854,
		-0.822047, 0.559679, 0.104870,
		0.515647, 0.653559, 0.554047,
		29.008467, 30.176582, 27.412342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978830, 29.988932, 27.398750>,  <28.647514, 29.719091, 27.024509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978830, 29.988932, 27.398750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.664762, 29.855556, 27.190010>,  <27.476322, 29.775532, 27.064766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.664762, 29.855556, 27.190010>,  <27.978830, 29.988932, 27.398750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664762, 29.855556, 27.190010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044458, -0.870848, 0.489537,
		-0.617683, 0.361170, 0.698588,
		-0.785170, -0.333436, -0.521851,
		27.429211, 29.755526, 27.033455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404182, 29.838900, 27.829659>,  <27.978830, 29.988932, 27.398750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404182, 29.838900, 27.829659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.377481, 29.616322, 27.498379>,  <27.361462, 29.482775, 27.299610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.377481, 29.616322, 27.498379>,  <27.404182, 29.838900, 27.829659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377481, 29.616322, 27.498379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151809, -0.814723, 0.559625,
		-0.986153, 0.163085, -0.030088,
		-0.066753, -0.556444, -0.828200,
		27.357456, 29.449389, 27.249918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981497, 29.279421, 28.041269>,  <27.404182, 29.838900, 27.829659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981497, 29.279421, 28.041269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.144403, 29.122852, 27.711197>,  <27.242147, 29.028912, 27.513153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.144403, 29.122852, 27.711197>,  <26.981497, 29.279421, 28.041269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144403, 29.122852, 27.711197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018927, -0.899696, 0.436107,
		-0.913117, -0.193227, -0.359001,
		0.407259, -0.391421, -0.825184,
		27.266582, 29.005426, 27.463642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597605, 28.620316, 27.827951>,  <26.981497, 29.279421, 28.041269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597605, 28.620316, 27.827951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.954800, 28.602367, 27.648815>,  <27.169117, 28.591599, 27.541334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.954800, 28.602367, 27.648815>,  <26.597605, 28.620316, 27.827951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954800, 28.602367, 27.648815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065299, -0.971574, 0.227554,
		-0.445319, -0.232447, -0.864673,
		0.892988, -0.044872, -0.447839,
		27.222696, 28.588905, 27.514463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.431547, 28.132231, 27.330111>,  <26.597605, 28.620316, 27.827951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.431547, 28.132231, 27.330111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.824816, 28.123653, 27.402683>,  <27.060776, 28.118507, 27.446228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.824816, 28.123653, 27.402683>,  <26.431547, 28.132231, 27.330111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824816, 28.123653, 27.402683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090617, -0.919555, 0.382369,
		0.158640, -0.392375, -0.906022,
		0.983169, -0.021442, 0.181434,
		27.119766, 28.117220, 27.457113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691002, 27.451397, 27.099155>,  <26.431547, 28.132231, 27.330111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691002, 27.451397, 27.099155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.953003, 27.591476, 27.366985>,  <27.110203, 27.675524, 27.527683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.953003, 27.591476, 27.366985>,  <26.691002, 27.451397, 27.099155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953003, 27.591476, 27.366985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034073, -0.871530, 0.489157,
		0.754859, -0.343213, -0.558921,
		0.655002, 0.350201, 0.669576,
		27.149504, 27.696537, 27.567858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185322, 26.869419, 27.115095>,  <26.691002, 27.451397, 27.099155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185322, 26.869419, 27.115095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.242285, 27.106701, 27.432037>,  <27.276463, 27.249069, 27.622204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.242285, 27.106701, 27.432037>,  <27.185322, 26.869419, 27.115095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242285, 27.106701, 27.432037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173467, -0.803084, 0.570058,
		0.974489, 0.056268, -0.217265,
		0.142406, 0.593204, 0.792357,
		27.285007, 27.284662, 27.669744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840397, 26.673752, 27.442335>,  <27.185322, 26.869419, 27.115095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840397, 26.673752, 27.442335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645903, 26.865295, 27.734711>,  <27.529207, 26.980223, 27.910135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.645903, 26.865295, 27.734711>,  <27.840397, 26.673752, 27.442335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645903, 26.865295, 27.734711> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138246, -0.783786, 0.605448,
		0.862823, 0.395439, 0.314903,
		-0.486234, 0.478861, 0.730937,
		27.500032, 27.008953, 27.953991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234446, 26.753138, 28.040094>,  <27.840397, 26.673752, 27.442335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234446, 26.753138, 28.040094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.854786, 26.776211, 28.163895>,  <27.626989, 26.790054, 28.238174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.854786, 26.776211, 28.163895>,  <28.234446, 26.753138, 28.040094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854786, 26.776211, 28.163895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171325, -0.730127, 0.661485,
		0.264130, 0.680872, 0.683116,
		-0.949148, 0.057684, 0.309499,
		27.570042, 26.793516, 28.256744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344303, 26.478884, 28.628069>,  <28.234446, 26.753138, 28.040094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344303, 26.478884, 28.628069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.944483, 26.482494, 28.616642>,  <27.704590, 26.484661, 28.609785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.944483, 26.482494, 28.616642>,  <28.344303, 26.478884, 28.628069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944483, 26.482494, 28.616642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024960, -0.778324, 0.627366,
		-0.016572, 0.627797, 0.778200,
		-0.999551, 0.009028, -0.028568,
		27.644617, 26.485203, 28.608072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.025814, 26.532990, 29.280481>,  <28.344303, 26.478884, 28.628069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.025814, 26.532990, 29.280481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.729980, 26.353882, 29.079475>,  <27.552481, 26.246418, 28.958872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.729980, 26.353882, 29.079475>,  <28.025814, 26.532990, 29.280481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729980, 26.353882, 29.079475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007357, -0.741184, 0.671261,
		-0.673026, 0.500150, 0.544872,
		-0.739582, -0.447767, -0.502516,
		27.508106, 26.219551, 28.928720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618868, 26.228384, 29.853418>,  <28.025814, 26.532990, 29.280481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618868, 26.228384, 29.853418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500956, 26.056599, 29.511971>,  <27.430208, 25.953527, 29.307102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.500956, 26.056599, 29.511971>,  <27.618868, 26.228384, 29.853418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500956, 26.056599, 29.511971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238152, -0.832105, 0.500883,
		-0.925412, 0.350942, 0.143011,
		-0.294782, -0.429465, -0.853618,
		27.412521, 25.927759, 29.255886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864449, 25.855450, 29.799417>,  <27.618868, 26.228384, 29.853418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864449, 25.855450, 29.799417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.096642, 25.657921, 29.540443>,  <27.235958, 25.539404, 29.385059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.096642, 25.657921, 29.540443>,  <26.864449, 25.855450, 29.799417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096642, 25.657921, 29.540443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324156, -0.869538, 0.372594,
		-0.746967, -0.006414, -0.664829,
		0.580485, -0.493824, -0.647438,
		27.270786, 25.509773, 29.346212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.519146, 25.285536, 29.630041>,  <26.864449, 25.855450, 29.799417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.519146, 25.285536, 29.630041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.886274, 25.179878, 29.511497>,  <27.106552, 25.116484, 29.440371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.886274, 25.179878, 29.511497>,  <26.519146, 25.285536, 29.630041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886274, 25.179878, 29.511497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187225, -0.946290, 0.263595,
		-0.350070, -0.186447, -0.917981,
		0.917822, -0.264146, -0.296360,
		27.161621, 25.100634, 29.422590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.309994, 24.467388, 26.948683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941376, 24.537048, 27.087494>,  <34.720203, 24.578844, 27.170780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941376, 24.537048, 27.087494>,  <35.309994, 24.467388, 26.948683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941376, 24.537048, 27.087494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175779, 0.609807, -0.772811,
		-0.346207, -0.773179, -0.531352,
		-0.921543, 0.174152, 0.347028,
		34.664913, 24.589294, 27.191603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872597, 24.322975, 26.373219>,  <35.309994, 24.467388, 26.948683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872597, 24.322975, 26.373219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665894, 24.551769, 26.628029>,  <34.541874, 24.689045, 26.780914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665894, 24.551769, 26.628029>,  <34.872597, 24.322975, 26.373219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665894, 24.551769, 26.628029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278201, 0.591504, -0.756787,
		-0.809673, -0.568293, -0.146536,
		-0.516754, 0.571984, 0.637025,
		34.510868, 24.723364, 26.819136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153755, 24.464689, 26.054802>,  <34.872597, 24.322975, 26.373219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153755, 24.464689, 26.054802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187195, 24.745903, 26.337292>,  <34.207260, 24.914631, 26.506786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.187195, 24.745903, 26.337292>,  <34.153755, 24.464689, 26.054802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187195, 24.745903, 26.337292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318616, 0.690362, -0.649527,
		-0.944190, -0.170714, 0.281712,
		0.083600, 0.703035, 0.706225,
		34.212276, 24.956814, 26.549160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536118, 24.851271, 26.073753>,  <34.153755, 24.464689, 26.054802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536118, 24.851271, 26.073753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795380, 25.110222, 26.234150>,  <33.950935, 25.265593, 26.330389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795380, 25.110222, 26.234150>,  <33.536118, 24.851271, 26.073753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795380, 25.110222, 26.234150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335859, 0.715617, -0.612446,
		-0.683442, 0.262283, 0.681260,
		0.648155, 0.647379, 0.400993,
		33.989826, 25.304436, 26.354448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224556, 25.454414, 26.240984>,  <33.536118, 24.851271, 26.073753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224556, 25.454414, 26.240984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604591, 25.577477, 26.220268>,  <33.832611, 25.651314, 26.207840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604591, 25.577477, 26.220268>,  <33.224556, 25.454414, 26.240984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604591, 25.577477, 26.220268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299945, 0.855086, -0.422919,
		-0.085830, 0.417343, 0.904687,
		0.950087, 0.307655, -0.051788,
		33.889618, 25.669773, 26.204731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326107, 26.048517, 26.670923>,  <33.224556, 25.454414, 26.240984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326107, 26.048517, 26.670923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614853, 26.069759, 26.394924>,  <33.788101, 26.082504, 26.229324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.614853, 26.069759, 26.394924>,  <33.326107, 26.048517, 26.670923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614853, 26.069759, 26.394924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374189, 0.868684, -0.324609,
		0.582152, 0.492512, 0.646940,
		0.721860, 0.053106, -0.689998,
		33.831409, 26.085691, 26.187925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479107, 26.764130, 26.702433>,  <33.326107, 26.048517, 26.670923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479107, 26.764130, 26.702433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.669117, 26.652695, 26.368549>,  <33.783123, 26.585833, 26.168221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.669117, 26.652695, 26.368549>,  <33.479107, 26.764130, 26.702433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669117, 26.652695, 26.368549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219831, 0.880917, -0.419117,
		0.852069, 0.382587, 0.357218,
		0.475028, -0.278589, -0.834707,
		33.811626, 26.569118, 26.118137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765324, 27.333675, 26.438667>,  <33.479107, 26.764130, 26.702433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765324, 27.333675, 26.438667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831081, 27.111786, 26.112415>,  <33.870537, 26.978653, 25.916664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831081, 27.111786, 26.112415>,  <33.765324, 27.333675, 26.438667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831081, 27.111786, 26.112415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192618, 0.792910, -0.578094,
		0.967404, 0.252144, 0.023504,
		0.164399, -0.554723, -0.815632,
		33.880402, 26.945370, 25.867725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986641, 27.806696, 25.962334>,  <33.765324, 27.333675, 26.438667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986641, 27.806696, 25.962334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839199, 27.508614, 25.740055>,  <33.750732, 27.329765, 25.606688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.839199, 27.508614, 25.740055>,  <33.986641, 27.806696, 25.962334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839199, 27.508614, 25.740055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348990, 0.664999, -0.660289,
		0.861588, -0.049456, -0.505193,
		-0.368608, -0.745205, -0.555696,
		33.728615, 27.285051, 25.573347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926792, 28.142353, 25.330860>,  <33.986641, 27.806696, 25.962334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926792, 28.142353, 25.330860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736595, 27.792755, 25.290791>,  <33.622475, 27.582996, 25.266748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736595, 27.792755, 25.290791>,  <33.926792, 28.142353, 25.330860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736595, 27.792755, 25.290791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346870, 0.290914, -0.891656,
		0.808446, -0.389230, -0.441491,
		-0.475495, -0.873996, -0.100176,
		33.593948, 27.530556, 25.260738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987411, 28.076712, 24.629332>,  <33.926792, 28.142353, 25.330860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987411, 28.076712, 24.629332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670689, 27.860050, 24.742222>,  <33.480656, 27.730053, 24.809956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.670689, 27.860050, 24.742222>,  <33.987411, 28.076712, 24.629332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670689, 27.860050, 24.742222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518332, 0.351514, -0.779596,
		0.323055, -0.763584, -0.559084,
		-0.791813, -0.541643, 0.282232,
		33.433147, 27.697554, 24.826889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697639, 27.799366, 24.041941>,  <33.987411, 28.076712, 24.629332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697639, 27.799366, 24.041941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390831, 27.807304, 24.298466>,  <33.206745, 27.812067, 24.452381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.390831, 27.807304, 24.298466>,  <33.697639, 27.799366, 24.041941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390831, 27.807304, 24.298466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489991, 0.627170, -0.605448,
		-0.414225, -0.778630, -0.471331,
		-0.767024, 0.019844, 0.641311,
		33.160725, 27.813257, 24.490860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096001, 27.650311, 23.628277>,  <33.697639, 27.799366, 24.041941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096001, 27.650311, 23.628277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970413, 27.834518, 23.960384>,  <32.895061, 27.945044, 24.159649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970413, 27.834518, 23.960384>,  <33.096001, 27.650311, 23.628277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970413, 27.834518, 23.960384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346485, 0.758598, -0.551794,
		-0.883952, -0.460921, -0.078612,
		-0.313969, 0.460522, 0.830267,
		32.876221, 27.972675, 24.209465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394505, 27.793749, 23.509172>,  <33.096001, 27.650311, 23.628277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394505, 27.793749, 23.509172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535603, 28.050594, 23.781425>,  <32.620262, 28.204702, 23.944777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535603, 28.050594, 23.781425>,  <32.394505, 27.793749, 23.509172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535603, 28.050594, 23.781425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336172, 0.765789, -0.548229,
		-0.873246, -0.035424, 0.485990,
		0.352745, 0.642115, 0.680631,
		32.641426, 28.243229, 23.985615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805033, 27.582983, 23.785599>,  <32.394505, 27.793749, 23.509172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805033, 27.582983, 23.785599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496443, 27.359509, 23.663815>,  <31.311289, 27.225424, 23.590744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.496443, 27.359509, 23.663815>,  <31.805033, 27.582983, 23.785599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496443, 27.359509, 23.663815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165514, -0.638264, 0.751814,
		-0.614356, 0.529612, 0.584874,
		-0.771474, -0.558687, -0.304463,
		31.265001, 27.191902, 23.572475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491392, 27.429115, 24.362387>,  <31.805033, 27.582983, 23.785599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491392, 27.429115, 24.362387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360748, 27.148369, 24.109180>,  <31.282362, 26.979921, 23.957256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.360748, 27.148369, 24.109180>,  <31.491392, 27.429115, 24.362387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360748, 27.148369, 24.109180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074374, -0.686756, 0.723073,
		-0.942228, 0.189084, 0.276502,
		-0.326611, -0.701865, -0.633018,
		31.262766, 26.937809, 23.919275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958725, 27.027058, 24.710060>,  <31.491392, 27.429115, 24.362387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958725, 27.027058, 24.710060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048672, 26.791210, 24.399761>,  <31.102640, 26.649702, 24.213581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.048672, 26.791210, 24.399761>,  <30.958725, 27.027058, 24.710060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048672, 26.791210, 24.399761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096785, -0.805715, 0.584342,
		-0.969571, -0.056318, -0.238245,
		0.224867, -0.589619, -0.775747,
		31.116133, 26.614325, 24.167036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718756, 26.372293, 24.871046>,  <30.958725, 27.027058, 24.710060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718756, 26.372293, 24.871046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946140, 26.257355, 24.562687>,  <31.082571, 26.188391, 24.377672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.946140, 26.257355, 24.562687>,  <30.718756, 26.372293, 24.871046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946140, 26.257355, 24.562687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023790, -0.930889, 0.364526,
		-0.822365, -0.225559, -0.522340,
		0.568463, -0.287347, -0.770897,
		31.116678, 26.171150, 24.331417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410591, 25.709988, 24.491093>,  <30.718756, 26.372293, 24.871046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410591, 25.709988, 24.491093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.803312, 25.728462, 24.417412>,  <31.038944, 25.739548, 24.373203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.803312, 25.728462, 24.417412>,  <30.410591, 25.709988, 24.491093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803312, 25.728462, 24.417412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098403, -0.953328, 0.285451,
		-0.162420, -0.298382, -0.940525,
		0.981803, 0.046187, -0.184201,
		31.097853, 25.742319, 24.362152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669355, 25.128294, 23.980467>,  <30.410591, 25.709988, 24.491093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669355, 25.128294, 23.980467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972311, 25.250549, 24.211273>,  <31.154085, 25.323902, 24.349756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972311, 25.250549, 24.211273>,  <30.669355, 25.128294, 23.980467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972311, 25.250549, 24.211273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274655, -0.950830, 0.143135,
		0.592391, 0.050071, -0.804093,
		0.757388, 0.305640, 0.577016,
		31.199528, 25.342241, 24.384378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161552, 24.604525, 23.820011>,  <30.669355, 25.128294, 23.980467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161552, 24.604525, 23.820011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298071, 24.778671, 24.153233>,  <31.379982, 24.883160, 24.353165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.298071, 24.778671, 24.153233>,  <31.161552, 24.604525, 23.820011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298071, 24.778671, 24.153233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341716, -0.883094, 0.321521,
		0.875642, 0.174933, -0.450166,
		0.341294, 0.435366, 0.833051,
		31.400459, 24.909281, 24.403149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729280, 24.303221, 24.033678>,  <31.161552, 24.604525, 23.820011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729280, 24.303221, 24.033678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638218, 24.480301, 24.380592>,  <31.583580, 24.586550, 24.588741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.638218, 24.480301, 24.380592>,  <31.729280, 24.303221, 24.033678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638218, 24.480301, 24.380592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407513, -0.765610, 0.497770,
		0.884367, 0.466752, -0.006110,
		-0.227657, 0.442702, 0.867287,
		31.569921, 24.613111, 24.640779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147522, 23.961914, 24.423458>,  <31.729280, 24.303221, 24.033678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147522, 23.961914, 24.423458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907660, 24.130623, 24.695492>,  <31.763741, 24.231848, 24.858711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.907660, 24.130623, 24.695492>,  <32.147522, 23.961914, 24.423458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907660, 24.130623, 24.695492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199768, -0.744034, 0.637578,
		0.774919, 0.518189, 0.361911,
		-0.599660, 0.421773, 0.680084,
		31.727762, 24.257154, 24.899517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495895, 24.118814, 25.097843>,  <32.147522, 23.961914, 24.423458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495895, 24.118814, 25.097843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.116173, 24.092667, 25.220840>,  <31.888340, 24.076979, 25.294640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.116173, 24.092667, 25.220840>,  <32.495895, 24.118814, 25.097843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116173, 24.092667, 25.220840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285465, -0.588916, 0.756100,
		0.131662, 0.805546, 0.577720,
		-0.949302, -0.065369, 0.307493,
		31.831383, 24.073055, 25.313087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489437, 24.359932, 25.774061>,  <32.495895, 24.118814, 25.097843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489437, 24.359932, 25.774061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177032, 24.119709, 25.705536>,  <31.989590, 23.975574, 25.664421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177032, 24.119709, 25.705536>,  <32.489437, 24.359932, 25.774061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177032, 24.119709, 25.705536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263920, -0.566008, 0.781013,
		-0.566008, 0.564768, 0.600559,
		-0.781013, -0.600559, -0.171312,
		31.942728, 23.939541, 25.654142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156776, 24.345589, 26.461205>,  <32.489437, 24.359932, 25.774061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156776, 24.345589, 26.461205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007961, 24.021988, 26.279171>,  <31.918673, 23.827827, 26.169950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.007961, 24.021988, 26.279171>,  <32.156776, 24.345589, 26.461205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007961, 24.021988, 26.279171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041384, -0.504245, 0.862568,
		-0.927294, 0.302077, 0.221079,
		-0.372040, -0.809003, -0.455082,
		31.896349, 23.779287, 26.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772137, 24.155199, 26.918423>,  <32.156776, 24.345589, 26.461205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772137, 24.155199, 26.918423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824133, 23.835430, 26.683807>,  <31.855331, 23.643568, 26.543039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824133, 23.835430, 26.683807>,  <31.772137, 24.155199, 26.918423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824133, 23.835430, 26.683807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050198, -0.596103, 0.801338,
		-0.990244, -0.074723, -0.117617,
		0.129991, -0.799424, -0.586536,
		31.863131, 23.595604, 26.507847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222479, 23.607571, 27.020670>,  <31.772137, 24.155199, 26.918423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222479, 23.607571, 27.020670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528952, 23.393097, 26.878983>,  <31.712835, 23.264412, 26.793970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.528952, 23.393097, 26.878983>,  <31.222479, 23.607571, 27.020670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528952, 23.393097, 26.878983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070009, -0.617570, 0.783394,
		-0.638804, -0.575420, -0.510707,
		0.766177, -0.536189, -0.354222,
		31.758806, 23.232241, 26.772717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514914, 23.517647, 26.623428>,  <31.222479, 23.607571, 27.020670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514914, 23.517647, 26.623428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136553, 23.581745, 26.736275>,  <29.909536, 23.620203, 26.803984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.136553, 23.581745, 26.736275>,  <30.514914, 23.517647, 26.623428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136553, 23.581745, 26.736275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114099, 0.649692, -0.751586,
		-0.303727, -0.743117, -0.596261,
		-0.945902, 0.160244, 0.282118,
		29.852781, 23.629818, 26.820910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008841, 23.464697, 26.036819>,  <30.514914, 23.517647, 26.623428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008841, 23.464697, 26.036819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812702, 23.681488, 26.309826>,  <29.695019, 23.811562, 26.473629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.812702, 23.681488, 26.309826>,  <30.008841, 23.464697, 26.036819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812702, 23.681488, 26.309826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154440, 0.716693, -0.680073,
		-0.857736, -0.438877, -0.267723,
		-0.490344, 0.541976, 0.682514,
		29.665600, 23.844080, 26.514580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462740, 23.696671, 25.618038>,  <30.008841, 23.464697, 26.036819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462740, 23.696671, 25.618038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412901, 23.943966, 25.928459>,  <29.382998, 24.092342, 26.114712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412901, 23.943966, 25.928459>,  <29.462740, 23.696671, 25.618038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412901, 23.943966, 25.928459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307785, 0.719483, -0.622585,
		-0.943262, -0.316431, 0.100638,
		-0.124598, 0.618236, 0.776054,
		29.375521, 24.129436, 26.161276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778208, 24.073074, 25.564432>,  <29.462740, 23.696671, 25.618038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778208, 24.073074, 25.564432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003035, 24.301052, 25.804180>,  <29.137930, 24.437838, 25.948029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003035, 24.301052, 25.804180>,  <28.778208, 24.073074, 25.564432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003035, 24.301052, 25.804180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330749, 0.819093, -0.468713,
		-0.758081, 0.065206, 0.648892,
		0.562066, 0.569943, 0.599372,
		29.171654, 24.472034, 25.983992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400457, 24.625908, 25.811209>,  <28.778208, 24.073074, 25.564432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400457, 24.625908, 25.811209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.767820, 24.768860, 25.879101>,  <28.988237, 24.854631, 25.919836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.767820, 24.768860, 25.879101>,  <28.400457, 24.625908, 25.811209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767820, 24.768860, 25.879101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235545, 0.838598, -0.491195,
		-0.317878, 0.411138, 0.854353,
		0.918407, 0.357379, 0.169730,
		29.043343, 24.876074, 25.930019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.347601, 25.312925, 26.159533>,  <28.400457, 24.625908, 25.811209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.347601, 25.312925, 26.159533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.711452, 25.306625, 25.993484>,  <28.929764, 25.302845, 25.893856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.711452, 25.306625, 25.993484>,  <28.347601, 25.312925, 26.159533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711452, 25.306625, 25.993484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180431, 0.885125, -0.428950,
		0.374192, 0.465086, 0.802294,
		0.909629, -0.015751, -0.415122,
		28.984341, 25.301901, 25.868948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553097, 25.986763, 26.235075>,  <28.347601, 25.312925, 26.159533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553097, 25.986763, 26.235075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.806332, 25.827175, 25.969738>,  <28.958273, 25.731422, 25.810535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.806332, 25.827175, 25.969738>,  <28.553097, 25.986763, 26.235075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806332, 25.827175, 25.969738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153187, 0.775421, -0.612582,
		0.758771, 0.489433, 0.429793,
		0.633088, -0.398971, -0.663342,
		28.996258, 25.707483, 25.770735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143389, 26.363865, 26.178532>,  <28.553097, 25.986763, 26.235075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143389, 26.363865, 26.178532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082973, 26.190495, 25.823154>,  <29.046724, 26.086473, 25.609928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082973, 26.190495, 25.823154>,  <29.143389, 26.363865, 26.178532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082973, 26.190495, 25.823154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062414, 0.901142, -0.429008,
		0.986555, -0.009346, -0.163160,
		-0.151040, -0.433424, -0.888443,
		29.037661, 26.060467, 25.556622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634974, 26.777403, 25.675148>,  <29.143389, 26.363865, 26.178532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634974, 26.777403, 25.675148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.336615, 26.581551, 25.494530>,  <29.157598, 26.464039, 25.386158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.336615, 26.581551, 25.494530>,  <29.634974, 26.777403, 25.675148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336615, 26.581551, 25.494530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185836, 0.804004, -0.564838,
		0.639607, -0.337399, -0.690698,
		-0.745901, -0.489632, -0.451546,
		29.112844, 26.434662, 25.359066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.556456, 27.139208, 25.090603>,  <29.634974, 26.777403, 25.675148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.556456, 27.139208, 25.090603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.224199, 26.917572, 25.068623>,  <29.024845, 26.784590, 25.055433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.224199, 26.917572, 25.068623>,  <29.556456, 27.139208, 25.090603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224199, 26.917572, 25.068623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365472, 0.617003, -0.696949,
		0.420077, -0.558832, -0.715012,
		-0.830642, -0.554089, -0.054952,
		28.975006, 26.751345, 25.052137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396479, 27.124184, 24.392214>,  <29.556456, 27.139208, 25.090603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396479, 27.124184, 24.392214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.069727, 26.990005, 24.579910>,  <28.873676, 26.909498, 24.692528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.069727, 26.990005, 24.579910>,  <29.396479, 27.124184, 24.392214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069727, 26.990005, 24.579910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576583, 0.451926, -0.680672,
		0.016267, -0.826582, -0.562581,
		-0.816877, -0.335447, 0.469241,
		28.824663, 26.889372, 24.720682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957975, 26.793592, 23.912659>,  <29.396479, 27.124184, 24.392214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957975, 26.793592, 23.912659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.727703, 26.930828, 24.209545>,  <28.589540, 27.013170, 24.387676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.727703, 26.930828, 24.209545>,  <28.957975, 26.793592, 23.912659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727703, 26.930828, 24.209545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484849, 0.587691, -0.647720,
		-0.658419, -0.732741, -0.171975,
		-0.575679, 0.343089, 0.742215,
		28.554998, 27.033754, 24.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300949, 26.715219, 23.662815>,  <28.957975, 26.793592, 23.912659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300949, 26.715219, 23.662815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.282280, 26.997524, 23.945580>,  <28.271078, 27.166906, 24.115238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.282280, 26.997524, 23.945580>,  <28.300949, 26.715219, 23.662815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282280, 26.997524, 23.945580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434796, 0.622772, -0.650467,
		-0.899319, -0.337721, 0.277796,
		-0.046673, 0.705762, 0.706910,
		28.268278, 27.209253, 24.157652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573511, 26.983320, 23.603600>,  <28.300949, 26.715219, 23.662815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573511, 26.983320, 23.603600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.765142, 27.255325, 23.825615>,  <27.880121, 27.418530, 23.958824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.765142, 27.255325, 23.825615>,  <27.573511, 26.983320, 23.603600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765142, 27.255325, 23.825615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411862, 0.732542, -0.541989,
		-0.775149, 0.031055, 0.631015,
		0.479076, 0.680014, 0.555038,
		27.908865, 27.459330, 23.992126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.318211, 31.741634, 28.938425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666195, 31.678261, 29.125214>,  <36.874985, 31.640238, 29.237288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.666195, 31.678261, 29.125214>,  <36.318211, 31.741634, 28.938425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666195, 31.678261, 29.125214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486852, 0.125484, -0.864424,
		0.078356, 0.979363, 0.186299,
		0.869963, -0.158433, 0.466973,
		36.927185, 31.630732, 29.265305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714344, 32.336960, 28.879919>,  <36.318211, 31.741634, 28.938425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714344, 32.336960, 28.879919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.934059, 32.004471, 28.914204>,  <37.065887, 31.804977, 28.934774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.934059, 32.004471, 28.914204>,  <36.714344, 32.336960, 28.879919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934059, 32.004471, 28.914204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514226, 0.255387, -0.818748,
		0.658674, 0.493805, 0.567719,
		0.549290, -0.831225, 0.085710,
		37.098846, 31.755104, 28.939917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387012, 32.544151, 28.835510>,  <36.714344, 32.336960, 28.879919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387012, 32.544151, 28.835510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.414165, 32.153198, 28.755402>,  <37.430458, 31.918625, 28.707336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.414165, 32.153198, 28.755402>,  <37.387012, 32.544151, 28.835510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414165, 32.153198, 28.755402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603473, 0.200071, -0.771875,
		0.794489, -0.068463, 0.603407,
		0.067879, -0.977386, -0.200270,
		37.434528, 31.859982, 28.695320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069958, 32.445320, 28.898056>,  <37.387012, 32.544151, 28.835510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069958, 32.445320, 28.898056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.904858, 32.158379, 28.673546>,  <37.805798, 31.986212, 28.538839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.904858, 32.158379, 28.673546>,  <38.069958, 32.445320, 28.898056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904858, 32.158379, 28.673546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648143, 0.201635, -0.734339,
		0.639958, -0.666889, 0.381725,
		-0.412753, -0.717358, -0.561277,
		37.781033, 31.943171, 28.505163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610992, 31.987730, 28.609581>,  <38.069958, 32.445320, 28.898056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610992, 31.987730, 28.609581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311161, 31.896603, 28.360989>,  <38.131264, 31.841927, 28.211834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.311161, 31.896603, 28.360989>,  <38.610992, 31.987730, 28.609581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311161, 31.896603, 28.360989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618231, 0.094500, -0.780295,
		0.236495, -0.969107, 0.070009,
		-0.749574, -0.227818, -0.621481,
		38.086288, 31.828257, 28.174545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817028, 31.408266, 28.121862>,  <38.610992, 31.987730, 28.609581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817028, 31.408266, 28.121862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529606, 31.633316, 27.958336>,  <38.357155, 31.768347, 27.860220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.529606, 31.633316, 27.958336>,  <38.817028, 31.408266, 28.121862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529606, 31.633316, 27.958336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571847, 0.143416, -0.807726,
		-0.395817, -0.814177, -0.424789,
		-0.718554, 0.562626, -0.408818,
		38.314041, 31.802103, 27.835690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868767, 31.204037, 27.441103>,  <38.817028, 31.408266, 28.121862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868767, 31.204037, 27.441103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649681, 31.538494, 27.429287>,  <38.518230, 31.739168, 27.422197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.649681, 31.538494, 27.429287>,  <38.868767, 31.204037, 27.441103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649681, 31.538494, 27.429287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357016, 0.201637, -0.912076,
		-0.756671, -0.510102, -0.408956,
		-0.547712, 0.836145, -0.029542,
		38.485367, 31.789337, 27.420424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670353, 31.231638, 26.795319>,  <38.868767, 31.204037, 27.441103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670353, 31.231638, 26.795319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628002, 31.611053, 26.914692>,  <38.602592, 31.838703, 26.986317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.628002, 31.611053, 26.914692>,  <38.670353, 31.231638, 26.795319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628002, 31.611053, 26.914692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348256, 0.316484, -0.882358,
		-0.931401, 0.010512, -0.363843,
		-0.105875, 0.948539, 0.298435,
		38.596241, 31.895615, 27.004223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166229, 31.548380, 26.336073>,  <38.670353, 31.231638, 26.795319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166229, 31.548380, 26.336073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409668, 31.832005, 26.478535>,  <38.555729, 32.002178, 26.564013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409668, 31.832005, 26.478535>,  <38.166229, 31.548380, 26.336073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409668, 31.832005, 26.478535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288284, 0.220593, -0.931789,
		-0.739261, 0.669754, -0.070160,
		0.608592, 0.709062, 0.356155,
		38.592247, 32.044724, 26.585381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095631, 32.256611, 25.945728>,  <38.166229, 31.548380, 26.336073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095631, 32.256611, 25.945728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440819, 32.277630, 26.146732>,  <38.647934, 32.290241, 26.267336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.440819, 32.277630, 26.146732>,  <38.095631, 32.256611, 25.945728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440819, 32.277630, 26.146732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435587, 0.426577, -0.792651,
		-0.256013, 0.902923, 0.345235,
		0.862972, 0.052549, 0.502511,
		38.699711, 32.293396, 26.297485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410660, 32.803955, 25.605291>,  <38.095631, 32.256611, 25.945728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410660, 32.803955, 25.605291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708786, 32.612457, 25.790897>,  <38.887661, 32.497559, 25.902260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.708786, 32.612457, 25.790897>,  <38.410660, 32.803955, 25.605291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708786, 32.612457, 25.790897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614848, 0.224425, -0.756039,
		0.257815, 0.848784, 0.461624,
		0.745314, -0.478747, 0.464013,
		38.932381, 32.468834, 25.930101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927265, 32.984627, 25.228975>,  <38.410660, 32.803955, 25.605291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927265, 32.984627, 25.228975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115204, 32.704353, 25.443745>,  <39.227966, 32.536190, 25.572607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115204, 32.704353, 25.443745>,  <38.927265, 32.984627, 25.228975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115204, 32.704353, 25.443745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691016, -0.086556, -0.717638,
		0.549312, 0.708202, 0.443516,
		0.469844, -0.700684, 0.536925,
		39.256157, 32.494148, 25.604822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682781, 33.162365, 25.238974>,  <38.927265, 32.984627, 25.228975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682781, 33.162365, 25.238974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635143, 32.766651, 25.272747>,  <39.606560, 32.529221, 25.293011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.635143, 32.766651, 25.272747>,  <39.682781, 33.162365, 25.238974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635143, 32.766651, 25.272747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524331, -0.134877, -0.840765,
		0.843146, -0.055856, 0.534776,
		-0.119091, -0.989287, 0.084434,
		39.599415, 32.469864, 25.298077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245872, 32.950199, 24.966843>,  <39.682781, 33.162365, 25.238974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245872, 32.950199, 24.966843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027100, 32.615326, 24.967369>,  <39.895836, 32.414402, 24.967684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027100, 32.615326, 24.967369>,  <40.245872, 32.950199, 24.966843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027100, 32.615326, 24.967369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404370, -0.265548, -0.875197,
		0.733045, -0.478138, 0.483766,
		-0.546928, -0.837179, 0.001314,
		39.863022, 32.364174, 24.967764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721298, 32.479210, 24.656120>,  <40.245872, 32.950199, 24.966843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.721298, 32.479210, 24.656120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355461, 32.317554, 24.650543>,  <40.135960, 32.220562, 24.647196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355461, 32.317554, 24.650543>,  <40.721298, 32.479210, 24.656120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355461, 32.317554, 24.650543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155943, -0.320674, -0.934264,
		0.373098, -0.856646, 0.356309,
		-0.914593, -0.404136, -0.013945,
		40.081085, 32.196312, 24.646360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782440, 31.747995, 24.247854>,  <40.721298, 32.479210, 24.656120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782440, 31.747995, 24.247854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.394165, 31.839546, 24.218529>,  <40.161198, 31.894478, 24.200933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.394165, 31.839546, 24.218529>,  <40.782440, 31.747995, 24.247854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394165, 31.839546, 24.218529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005661, -0.326736, -0.945099,
		-0.240265, -0.916984, 0.318455,
		-0.970691, 0.228877, -0.073313,
		40.102959, 31.908211, 24.196535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448116, 31.123850, 24.106590>,  <40.782440, 31.747995, 24.247854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448116, 31.123850, 24.106590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201439, 31.414299, 23.984982>,  <40.053432, 31.588570, 23.912016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.201439, 31.414299, 23.984982>,  <40.448116, 31.123850, 24.106590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201439, 31.414299, 23.984982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002155, -0.384649, -0.923060,
		-0.787199, -0.569902, 0.235647,
		-0.616695, 0.726125, -0.304024,
		40.016430, 31.632137, 23.893774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972980, 30.848917, 23.676792>,  <40.448116, 31.123850, 24.106590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.972980, 30.848917, 23.676792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947102, 31.233562, 23.570126>,  <39.931576, 31.464350, 23.506126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.947102, 31.233562, 23.570126>,  <39.972980, 30.848917, 23.676792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947102, 31.233562, 23.570126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160990, -0.273782, -0.948222,
		-0.984833, -0.018413, 0.172523,
		-0.064693, 0.961615, -0.266665,
		39.927692, 31.522047, 23.490126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230637, 30.857073, 23.299309>,  <39.972980, 30.848917, 23.676792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230637, 30.857073, 23.299309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490597, 31.142952, 23.195900>,  <39.646572, 31.314480, 23.133854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.490597, 31.142952, 23.195900>,  <39.230637, 30.857073, 23.299309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490597, 31.142952, 23.195900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284899, -0.086257, -0.954669,
		-0.704597, 0.694096, 0.147557,
		0.649904, 0.714696, -0.258524,
		39.685570, 31.357361, 23.118343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866920, 31.225826, 22.741247>,  <39.230637, 30.857073, 23.299309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866920, 31.225826, 22.741247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243706, 31.353783, 22.700508>,  <39.469776, 31.430557, 22.676065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243706, 31.353783, 22.700508>,  <38.866920, 31.225826, 22.741247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243706, 31.353783, 22.700508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166642, 0.182181, -0.969041,
		-0.291432, 0.929774, 0.224916,
		0.941965, 0.319890, -0.101846,
		39.526295, 31.449749, 22.669954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771656, 31.769773, 22.402782>,  <38.866920, 31.225826, 22.741247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771656, 31.769773, 22.402782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.149933, 31.662373, 22.329491>,  <39.376900, 31.597933, 22.285515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.149933, 31.662373, 22.329491>,  <38.771656, 31.769773, 22.402782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149933, 31.662373, 22.329491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173135, 0.061017, -0.983006,
		0.275119, 0.961345, 0.011216,
		0.945692, -0.268501, -0.183229,
		39.433640, 31.581821, 22.274523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109432, 31.496336, 22.885992>,  <38.771656, 31.769773, 22.402782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109432, 31.496336, 22.885992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889236, 31.817509, 22.977440>,  <37.757118, 32.010212, 23.032309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.889236, 31.817509, 22.977440>,  <38.109432, 31.496336, 22.885992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.889236, 31.817509, 22.977440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367950, -0.479162, 0.796879,
		0.749385, 0.354550, 0.559210,
		-0.550486, 0.802931, 0.228620,
		37.724091, 32.058388, 23.046026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209667, 31.562864, 23.641567>,  <38.109432, 31.496336, 22.885992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209667, 31.562864, 23.641567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864681, 31.724731, 23.519981>,  <37.657688, 31.821852, 23.447031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.864681, 31.724731, 23.519981>,  <38.209667, 31.562864, 23.641567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864681, 31.724731, 23.519981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435548, -0.287562, 0.852999,
		0.257772, 0.868074, 0.424265,
		-0.862468, 0.404667, -0.303963,
		37.605942, 31.846132, 23.428793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924931, 31.792122, 24.277006>,  <38.209667, 31.562864, 23.641567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924931, 31.792122, 24.277006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.613548, 31.776115, 24.026436>,  <37.426720, 31.766512, 23.876093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.613548, 31.776115, 24.026436>,  <37.924931, 31.792122, 24.277006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613548, 31.776115, 24.026436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566793, -0.384031, 0.728879,
		-0.269734, 0.922452, 0.276270,
		-0.778453, -0.040015, -0.626426,
		37.380013, 31.764111, 23.838509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407974, 32.127262, 24.639130>,  <37.924931, 31.792122, 24.277006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407974, 32.127262, 24.639130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222645, 31.894611, 24.371685>,  <37.111446, 31.755020, 24.211218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.222645, 31.894611, 24.371685>,  <37.407974, 32.127262, 24.639130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222645, 31.894611, 24.371685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580241, -0.371157, 0.724957,
		-0.669816, 0.723843, -0.165520,
		-0.463321, -0.581630, -0.668611,
		37.083649, 31.720123, 24.171103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616261, 32.272358, 24.767992>,  <37.407974, 32.127262, 24.639130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616261, 32.272358, 24.767992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669655, 31.923012, 24.580627>,  <36.701691, 31.713404, 24.468208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.669655, 31.923012, 24.580627>,  <36.616261, 32.272358, 24.767992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669655, 31.923012, 24.580627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653197, -0.432990, 0.621171,
		-0.745328, 0.223048, -0.628280,
		0.133488, -0.873367, -0.468414,
		36.709702, 31.661001, 24.440104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946789, 31.936340, 24.796980>,  <36.616261, 32.272358, 24.767992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946789, 31.936340, 24.796980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201702, 31.648289, 24.687229>,  <36.354649, 31.475458, 24.621380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201702, 31.648289, 24.687229>,  <35.946789, 31.936340, 24.796980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201702, 31.648289, 24.687229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492872, -0.654579, 0.573239,
		-0.592407, -0.230085, -0.772085,
		0.637285, -0.720130, -0.274375,
		36.392887, 31.432249, 24.604916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558533, 31.260374, 24.659065>,  <35.946789, 31.936340, 24.796980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558533, 31.260374, 24.659065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935154, 31.152042, 24.739197>,  <36.161125, 31.087044, 24.787277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.935154, 31.152042, 24.739197>,  <35.558533, 31.260374, 24.659065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935154, 31.152042, 24.739197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333140, -0.660340, 0.673029,
		-0.049989, -0.700430, -0.711969,
		0.941551, -0.270830, 0.200331,
		36.217621, 31.070793, 24.799295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474129, 30.518261, 24.754133>,  <35.558533, 31.260374, 24.659065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474129, 30.518261, 24.754133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.826283, 30.613152, 24.918404>,  <36.037575, 30.670086, 25.016966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.826283, 30.613152, 24.918404>,  <35.474129, 30.518261, 24.754133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826283, 30.613152, 24.918404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205551, -0.589505, 0.781174,
		0.427410, -0.772145, -0.470227,
		0.880380, 0.237226, 0.410675,
		36.090397, 30.684319, 25.041607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885727, 29.849344, 24.883451>,  <35.474129, 30.518261, 24.754133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885727, 29.849344, 24.883451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.032276, 30.140812, 25.114902>,  <36.120205, 30.315693, 25.253773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.032276, 30.140812, 25.114902>,  <35.885727, 29.849344, 24.883451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032276, 30.140812, 25.114902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197990, -0.546575, 0.813668,
		0.909159, -0.412670, -0.055982,
		0.366375, 0.728670, 0.578628,
		36.142189, 30.359413, 25.288490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360218, 29.462589, 25.479366>,  <35.885727, 29.849344, 24.883451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360218, 29.462589, 25.479366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231907, 29.826580, 25.584473>,  <36.154922, 30.044975, 25.647535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.231907, 29.826580, 25.584473>,  <36.360218, 29.462589, 25.479366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231907, 29.826580, 25.584473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146843, -0.321851, 0.935334,
		0.935703, 0.261447, 0.236866,
		-0.320776, 0.909977, 0.262765,
		36.135674, 30.099573, 25.663301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602978, 29.475378, 26.212406>,  <36.360218, 29.462589, 25.479366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602978, 29.475378, 26.212406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.326744, 29.762028, 26.173336>,  <36.161003, 29.934017, 26.149893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.326744, 29.762028, 26.173336>,  <36.602978, 29.475378, 26.212406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326744, 29.762028, 26.173336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222995, -0.082501, 0.971322,
		0.688013, 0.692564, 0.216778,
		-0.690588, 0.716623, -0.097676,
		36.119568, 29.977015, 26.144033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747284, 29.887339, 26.745134>,  <36.602978, 29.475378, 26.212406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747284, 29.887339, 26.745134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.372208, 29.969864, 26.633293>,  <36.147163, 30.019379, 26.566189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.372208, 29.969864, 26.633293>,  <36.747284, 29.887339, 26.745134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372208, 29.969864, 26.633293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303165, -0.092521, 0.948436,
		0.169804, 0.974102, 0.149302,
		-0.937688, 0.206311, -0.279603,
		36.090900, 30.031757, 26.549412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469727, 30.301147, 27.215849>,  <36.747284, 29.887339, 26.745134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469727, 30.301147, 27.215849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.154884, 30.119282, 27.049122>,  <35.965977, 30.010162, 26.949085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.154884, 30.119282, 27.049122>,  <36.469727, 30.301147, 27.215849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154884, 30.119282, 27.049122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354522, -0.219516, 0.908915,
		-0.504750, 0.863188, 0.011595,
		-0.787110, -0.454664, -0.416820,
		35.918751, 29.982883, 26.924076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893227, 30.494431, 27.699202>,  <36.469727, 30.301147, 27.215849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893227, 30.494431, 27.699202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745453, 30.190392, 27.485374>,  <35.656788, 30.007967, 27.357079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.745453, 30.190392, 27.485374>,  <35.893227, 30.494431, 27.699202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745453, 30.190392, 27.485374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541393, -0.291492, 0.788623,
		-0.755255, 0.580759, -0.303824,
		-0.369438, -0.760099, -0.534569,
		35.634621, 29.962362, 27.325005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197464, 30.510115, 27.656731>,  <35.893227, 30.494431, 27.699202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197464, 30.510115, 27.656731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.291157, 30.123344, 27.616348>,  <35.347374, 29.891283, 27.592119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.291157, 30.123344, 27.616348>,  <35.197464, 30.510115, 27.656731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291157, 30.123344, 27.616348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501107, -0.209068, 0.839751,
		-0.833082, -0.146108, -0.533503,
		0.234233, -0.966924, -0.100955,
		35.361427, 29.833267, 27.586061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684795, 30.219193, 27.975731>,  <35.197464, 30.510115, 27.656731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684795, 30.219193, 27.975731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.895126, 29.884621, 27.913910>,  <35.021324, 29.683878, 27.876818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.895126, 29.884621, 27.913910>,  <34.684795, 30.219193, 27.975731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895126, 29.884621, 27.913910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477738, -0.440753, 0.759936,
		-0.703753, -0.325763, -0.631356,
		0.525831, -0.836430, -0.154552,
		35.052876, 29.633692, 27.867544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203403, 29.676908, 28.128275>,  <34.684795, 30.219193, 27.975731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203403, 29.676908, 28.128275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563702, 29.503513, 28.139210>,  <34.779881, 29.399477, 28.145771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563702, 29.503513, 28.139210>,  <34.203403, 29.676908, 28.128275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563702, 29.503513, 28.139210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322056, -0.624320, 0.711691,
		-0.291440, -0.649857, -0.701960,
		0.900746, -0.433485, 0.027339,
		34.833927, 29.373468, 28.147411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085114, 28.973480, 28.166941>,  <34.203403, 29.676908, 28.128275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085114, 28.973480, 28.166941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.458286, 29.047787, 28.290314>,  <34.682190, 29.092371, 28.364338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.458286, 29.047787, 28.290314>,  <34.085114, 28.973480, 28.166941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458286, 29.047787, 28.290314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179819, -0.501765, 0.846107,
		0.311939, -0.844821, -0.434708,
		0.932930, 0.185765, 0.308435,
		34.738167, 29.103516, 28.382845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284031, 28.374300, 28.522274>,  <34.085114, 28.973480, 28.166941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284031, 28.374300, 28.522274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.568451, 28.628181, 28.643314>,  <34.739101, 28.780510, 28.715939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.568451, 28.628181, 28.643314>,  <34.284031, 28.374300, 28.522274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568451, 28.628181, 28.643314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115464, -0.529906, 0.840159,
		0.693600, -0.562453, -0.450073,
		0.711046, 0.634702, 0.302599,
		34.781765, 28.818592, 28.734095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837067, 27.956112, 28.813593>,  <34.284031, 28.374300, 28.522274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837067, 27.956112, 28.813593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914776, 28.316216, 28.969433>,  <34.961403, 28.532278, 29.062937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.914776, 28.316216, 28.969433>,  <34.837067, 27.956112, 28.813593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914776, 28.316216, 28.969433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055549, -0.406626, 0.911904,
		0.979374, -0.155516, -0.129005,
		0.194273, 0.900261, 0.389600,
		34.973057, 28.586294, 29.086313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420841, 27.835884, 29.267754>,  <34.837067, 27.956112, 28.813593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420841, 27.835884, 29.267754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239422, 28.170052, 29.391930>,  <35.130569, 28.370552, 29.466434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.239422, 28.170052, 29.391930>,  <35.420841, 27.835884, 29.267754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239422, 28.170052, 29.391930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296151, -0.187259, 0.936605,
		0.840588, 0.516733, -0.162478,
		-0.453549, 0.835416, 0.310439,
		35.103355, 28.420677, 29.485062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.002951, 23.822931, 28.823359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.261818, 24.081902, 28.984364>,  <27.417137, 24.237284, 29.080967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.261818, 24.081902, 28.984364>,  <27.002951, 23.822931, 28.823359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261818, 24.081902, 28.984364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385935, -0.733567, 0.559404,
		0.657443, -0.206684, -0.724604,
		0.647166, 0.647426, 0.402512,
		27.455967, 24.276129, 29.105118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643009, 23.465528, 28.709078>,  <27.002951, 23.822931, 28.823359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643009, 23.465528, 28.709078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.711199, 23.730247, 29.001095>,  <27.752113, 23.889078, 29.176306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.711199, 23.730247, 29.001095>,  <27.643009, 23.465528, 28.709078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711199, 23.730247, 29.001095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263122, -0.744559, 0.613513,
		0.949582, 0.087503, -0.301061,
		0.170474, 0.661797, 0.730043,
		27.762341, 23.928787, 29.220108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195316, 23.134033, 29.018284>,  <27.643009, 23.465528, 28.709078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195316, 23.134033, 29.018284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.054974, 23.413498, 29.267689>,  <27.970768, 23.581177, 29.417332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.054974, 23.413498, 29.267689>,  <28.195316, 23.134033, 29.018284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054974, 23.413498, 29.267689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207777, -0.591160, 0.779332,
		0.913086, 0.402987, 0.062247,
		-0.350859, 0.698664, 0.623511,
		27.949717, 23.623096, 29.454742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680351, 23.274395, 29.594715>,  <28.195316, 23.134033, 29.018284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680351, 23.274395, 29.594715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.325514, 23.376320, 29.748669>,  <28.112612, 23.437475, 29.841040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.325514, 23.376320, 29.748669>,  <28.680351, 23.274395, 29.594715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325514, 23.376320, 29.748669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175507, -0.584995, 0.791819,
		0.426921, 0.769967, 0.474224,
		-0.887094, 0.254814, 0.384882,
		28.059385, 23.452765, 29.864134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783875, 23.425087, 30.284174>,  <28.680351, 23.274395, 29.594715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783875, 23.425087, 30.284174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388498, 23.364498, 30.281616>,  <28.151272, 23.328144, 30.280081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.388498, 23.364498, 30.281616>,  <28.783875, 23.425087, 30.284174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388498, 23.364498, 30.281616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066681, -0.472243, 0.878943,
		-0.136156, 0.868356, 0.476885,
		-0.988441, -0.151473, -0.006396,
		28.091967, 23.319056, 30.279697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576225, 23.406162, 30.952690>,  <28.783875, 23.425087, 30.284174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576225, 23.406162, 30.952690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.276493, 23.197948, 30.788960>,  <28.096653, 23.073021, 30.690722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.276493, 23.197948, 30.788960>,  <28.576225, 23.406162, 30.952690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.276493, 23.197948, 30.788960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090301, -0.692686, 0.715564,
		-0.656010, 0.499232, 0.566056,
		-0.749331, -0.520532, -0.409328,
		28.051693, 23.041788, 30.666161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161842, 23.136040, 31.599922>,  <28.576225, 23.406162, 30.952690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161842, 23.136040, 31.599922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.063890, 22.922050, 31.276482>,  <28.005119, 22.793657, 31.082417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.063890, 22.922050, 31.276482>,  <28.161842, 23.136040, 31.599922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063890, 22.922050, 31.276482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100675, -0.815455, 0.569998,
		-0.964313, 0.220986, 0.145829,
		-0.244879, -0.534975, -0.808602,
		27.990427, 22.761559, 31.033901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526102, 22.682501, 31.792351>,  <28.161842, 23.136040, 31.599922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.526102, 22.682501, 31.792351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.693996, 22.513641, 31.470951>,  <27.794733, 22.412325, 31.278111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.693996, 22.513641, 31.470951>,  <27.526102, 22.682501, 31.792351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693996, 22.513641, 31.470951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189998, -0.906509, 0.377017,
		-0.887537, -0.005585, -0.460703,
		0.419737, -0.422149, -0.803499,
		27.819918, 22.386997, 31.229900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064264, 22.125532, 31.562841>,  <27.526102, 22.682501, 31.792351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064264, 22.125532, 31.562841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.419886, 22.034191, 31.404129>,  <27.633259, 21.979385, 31.308901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.419886, 22.034191, 31.404129>,  <27.064264, 22.125532, 31.562841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419886, 22.034191, 31.404129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061889, -0.918709, 0.390056,
		-0.453598, -0.322225, -0.830915,
		0.889055, -0.228353, -0.396783,
		27.686602, 21.965685, 31.285093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102680, 21.345568, 31.402983>,  <27.064264, 22.125532, 31.562841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102680, 21.345568, 31.402983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493422, 21.431042, 31.406979>,  <27.727865, 21.482327, 31.409376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.493422, 21.431042, 31.406979>,  <27.102680, 21.345568, 31.402983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493422, 21.431042, 31.406979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203528, -0.942765, 0.264141,
		0.065859, -0.255993, -0.964433,
		0.976851, 0.213685, 0.009988,
		27.786476, 21.495148, 31.409975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353472, 20.773045, 31.154997>,  <27.102680, 21.345568, 31.402983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353472, 20.773045, 31.154997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.664492, 20.956608, 31.326958>,  <27.851105, 21.066746, 31.430134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.664492, 20.956608, 31.326958>,  <27.353472, 20.773045, 31.154997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664492, 20.956608, 31.326958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346421, -0.883180, 0.316204,
		0.524790, -0.096937, -0.845694,
		0.777552, 0.458907, 0.429903,
		27.897757, 21.094280, 31.455929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889135, 20.298279, 31.175488>,  <27.353472, 20.773045, 31.154997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889135, 20.298279, 31.175488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.977692, 20.556793, 31.467598>,  <28.030825, 20.711903, 31.642864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.977692, 20.556793, 31.467598>,  <27.889135, 20.298279, 31.175488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977692, 20.556793, 31.467598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512747, -0.714132, 0.476556,
		0.829504, 0.268942, -0.489482,
		0.221389, 0.646285, 0.730275,
		28.044107, 20.750679, 31.686680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643818, 20.588923, 31.284739>,  <27.889135, 20.298279, 31.175488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643818, 20.588923, 31.284739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.412376, 20.520672, 31.603764>,  <28.273512, 20.479721, 31.795179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.412376, 20.520672, 31.603764>,  <28.643818, 20.588923, 31.284739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412376, 20.520672, 31.603764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669441, -0.657948, 0.344896,
		0.465907, 0.733479, 0.494914,
		-0.578601, -0.170627, 0.797563,
		28.238796, 20.469484, 31.843033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010483, 20.635872, 31.900244>,  <28.643818, 20.588923, 31.284739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010483, 20.635872, 31.900244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698360, 20.393257, 31.961220>,  <28.511087, 20.247688, 31.997805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.698360, 20.393257, 31.961220>,  <29.010483, 20.635872, 31.900244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698360, 20.393257, 31.961220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623867, -0.737860, 0.257591,
		-0.043759, 0.296101, 0.954154,
		-0.780304, -0.606537, 0.152439,
		28.464270, 20.211296, 32.006950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301571, 20.237661, 31.282059>,  <29.010483, 20.635872, 31.900244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301571, 20.237661, 31.282059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499029, 19.971531, 31.058041>,  <29.617504, 19.811852, 30.923630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.499029, 19.971531, 31.058041>,  <29.301571, 20.237661, 31.282059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499029, 19.971531, 31.058041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302608, 0.735149, -0.606617,
		0.815318, 0.129979, 0.564236,
		0.493645, -0.665328, -0.560047,
		29.647123, 19.771933, 30.890026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853262, 20.548840, 31.103235>,  <29.301571, 20.237661, 31.282059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853262, 20.548840, 31.103235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.811790, 20.259277, 30.830410>,  <29.786907, 20.085539, 30.666716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.811790, 20.259277, 30.830410>,  <29.853262, 20.548840, 31.103235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811790, 20.259277, 30.830410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071442, 0.678566, -0.731057,
		0.992042, -0.124523, -0.018635,
		-0.103678, -0.723907, -0.682062,
		29.780687, 20.042105, 30.625792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291159, 20.700245, 30.622156>,  <29.853262, 20.548840, 31.103235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291159, 20.700245, 30.622156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079395, 20.438370, 30.406338>,  <29.952337, 20.281244, 30.276846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.079395, 20.438370, 30.406338>,  <30.291159, 20.700245, 30.622156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079395, 20.438370, 30.406338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065431, 0.602580, -0.795372,
		0.845841, -0.456378, -0.276173,
		-0.529407, -0.654688, -0.539549,
		29.920574, 20.241962, 30.244473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671915, 20.442928, 29.907286>,  <30.291159, 20.700245, 30.622156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671915, 20.442928, 29.907286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289595, 20.369888, 29.815113>,  <30.060202, 20.326065, 29.759809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289595, 20.369888, 29.815113>,  <30.671915, 20.442928, 29.907286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289595, 20.369888, 29.815113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098744, 0.538860, -0.836588,
		0.276930, -0.822367, -0.497014,
		-0.955803, -0.182599, -0.230430,
		30.002853, 20.315109, 29.745983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728003, 20.398546, 29.213482>,  <30.671915, 20.442928, 29.907286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728003, 20.398546, 29.213482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345791, 20.474655, 29.303600>,  <30.116463, 20.520321, 29.357672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.345791, 20.474655, 29.303600>,  <30.728003, 20.398546, 29.213482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345791, 20.474655, 29.303600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045990, 0.658493, -0.751180,
		-0.291284, -0.728137, -0.620460,
		-0.955530, 0.190272, 0.225296,
		30.059132, 20.531736, 29.371189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330967, 20.311098, 28.607637>,  <30.728003, 20.398546, 29.213482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330967, 20.311098, 28.607637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094410, 20.524296, 28.849686>,  <29.952477, 20.652214, 28.994915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.094410, 20.524296, 28.849686>,  <30.330967, 20.311098, 28.607637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094410, 20.524296, 28.849686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040734, 0.729710, -0.682543,
		-0.805356, -0.428299, -0.409832,
		-0.591390, 0.532996, 0.605122,
		29.916992, 20.684195, 29.031221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724834, 20.585546, 28.243053>,  <30.330967, 20.311098, 28.607637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724834, 20.585546, 28.243053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749287, 20.828957, 28.559525>,  <29.763958, 20.975002, 28.749407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749287, 20.828957, 28.559525>,  <29.724834, 20.585546, 28.243053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749287, 20.828957, 28.559525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055967, 0.793503, -0.605987,
		-0.996559, -0.007235, 0.082566,
		0.061132, 0.608523, 0.791178,
		29.767626, 21.011513, 28.796877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170666, 21.082569, 28.130135>,  <29.724834, 20.585546, 28.243053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170666, 21.082569, 28.130135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416903, 21.275307, 28.379574>,  <29.564644, 21.390949, 28.529238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416903, 21.275307, 28.379574>,  <29.170666, 21.082569, 28.130135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416903, 21.275307, 28.379574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212136, 0.863411, -0.457733,
		-0.758977, 0.149489, 0.633725,
		0.615591, 0.481845, 0.623597,
		29.601580, 21.419861, 28.566652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.821348, 21.597218, 28.313663>,  <29.170666, 21.082569, 28.130135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.821348, 21.597218, 28.313663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.189533, 21.715797, 28.415539>,  <29.410444, 21.786945, 28.476664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.189533, 21.715797, 28.415539>,  <28.821348, 21.597218, 28.313663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189533, 21.715797, 28.415539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144015, 0.863076, -0.484106,
		-0.363327, 0.408923, 0.837123,
		0.920463, 0.296448, 0.254688,
		29.465672, 21.804731, 28.491945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748741, 22.247862, 28.423800>,  <28.821348, 21.597218, 28.313663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748741, 22.247862, 28.423800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.135872, 22.191746, 28.340252>,  <29.368151, 22.158075, 28.290123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.135872, 22.191746, 28.340252>,  <28.748741, 22.247862, 28.423800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135872, 22.191746, 28.340252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010175, 0.851274, -0.524623,
		0.251403, 0.505620, 0.825315,
		0.967829, -0.140289, -0.208869,
		29.426220, 22.149658, 28.277592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105724, 22.867140, 28.612867>,  <28.748741, 22.247862, 28.423800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105724, 22.867140, 28.612867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.353952, 22.689640, 28.354263>,  <29.502890, 22.583139, 28.199100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.353952, 22.689640, 28.354263>,  <29.105724, 22.867140, 28.612867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353952, 22.689640, 28.354263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186981, 0.884430, -0.427576,
		0.761531, 0.144456, 0.631825,
		0.620571, -0.443751, -0.646510,
		29.540123, 22.556515, 28.160311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774704, 23.325659, 28.449123>,  <29.105724, 22.867140, 28.612867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774704, 23.325659, 28.449123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777033, 23.097630, 28.120495>,  <29.778429, 22.960812, 27.923317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777033, 23.097630, 28.120495>,  <29.774704, 23.325659, 28.449123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777033, 23.097630, 28.120495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065791, 0.819589, -0.569162,
		0.997817, 0.057365, -0.032734,
		0.005821, -0.570073, -0.821574,
		29.778780, 22.926607, 27.874023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277424, 23.577208, 28.063166>,  <29.774704, 23.325659, 28.449123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277424, 23.577208, 28.063166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.043303, 23.385635, 27.801464>,  <29.902830, 23.270693, 27.644444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.043303, 23.385635, 27.801464>,  <30.277424, 23.577208, 28.063166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043303, 23.385635, 27.801464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019923, 0.815158, -0.578896,
		0.810565, -0.325799, -0.486662,
		-0.585310, -0.478928, -0.654248,
		29.867712, 23.241957, 27.605188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573732, 23.579344, 27.338310>,  <30.277424, 23.577208, 28.063166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573732, 23.579344, 27.338310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179049, 23.523277, 27.305428>,  <29.942238, 23.489637, 27.285698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.179049, 23.523277, 27.305428>,  <30.573732, 23.579344, 27.338310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179049, 23.523277, 27.305428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042749, 0.711996, -0.700881,
		0.156772, -0.688051, -0.708525,
		-0.986709, -0.140168, -0.082208,
		29.883036, 23.481226, 27.280766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174566, 22.992434, 27.397604>,  <30.573732, 23.579344, 27.338310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174566, 22.992434, 27.397604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540697, 22.956589, 27.240559>,  <31.760376, 22.935081, 27.146332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.540697, 22.956589, 27.240559>,  <31.174566, 22.992434, 27.397604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540697, 22.956589, 27.240559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282051, -0.553213, 0.783839,
		-0.287440, -0.828206, -0.481095,
		0.915328, -0.089614, -0.392612,
		31.815296, 22.929705, 27.122774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288755, 22.254278, 27.378363>,  <31.174566, 22.992434, 27.397604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288755, 22.254278, 27.378363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644764, 22.436611, 27.374763>,  <31.858368, 22.546011, 27.372604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644764, 22.436611, 27.374763>,  <31.288755, 22.254278, 27.378363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644764, 22.436611, 27.374763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330777, -0.632010, 0.700821,
		0.313772, -0.626720, -0.713280,
		0.890019, 0.455835, -0.008997,
		31.911770, 22.573362, 27.372065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814772, 21.772081, 27.143993>,  <31.288755, 22.254278, 27.378363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814772, 21.772081, 27.143993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988733, 22.047558, 27.376049>,  <32.093109, 22.212845, 27.515282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.988733, 22.047558, 27.376049>,  <31.814772, 21.772081, 27.143993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988733, 22.047558, 27.376049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357050, -0.723334, 0.591019,
		0.826664, -0.049898, -0.560479,
		0.434904, 0.688693, 0.580138,
		32.119205, 22.254166, 27.550091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414436, 21.427803, 27.424795>,  <31.814772, 21.772081, 27.143993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414436, 21.427803, 27.424795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402824, 21.755524, 27.653847>,  <32.395855, 21.952156, 27.791277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.402824, 21.755524, 27.653847>,  <32.414436, 21.427803, 27.424795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402824, 21.755524, 27.653847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591163, -0.447872, 0.670774,
		0.806029, 0.357991, -0.471337,
		-0.029032, 0.819300, 0.572629,
		32.394115, 22.001314, 27.825636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037746, 21.472092, 27.611340>,  <32.414436, 21.427803, 27.424795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037746, 21.472092, 27.611340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857006, 21.700813, 27.885235>,  <32.748562, 21.838047, 28.049572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857006, 21.700813, 27.885235>,  <33.037746, 21.472092, 27.611340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857006, 21.700813, 27.885235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491456, -0.481032, 0.726002,
		0.744512, 0.664567, -0.063660,
		-0.451855, 0.571803, 0.684739,
		32.721451, 21.872355, 28.090656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477299, 21.646650, 28.119474>,  <33.037746, 21.472092, 27.611340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477299, 21.646650, 28.119474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113136, 21.670677, 28.283203>,  <32.894638, 21.685093, 28.381441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113136, 21.670677, 28.283203>,  <33.477299, 21.646650, 28.119474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113136, 21.670677, 28.283203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316307, -0.536643, 0.782281,
		0.266651, 0.841669, 0.469565,
		-0.910411, 0.060069, 0.409322,
		32.840012, 21.688698, 28.406000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576099, 21.813711, 28.758196>,  <33.477299, 21.646650, 28.119474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576099, 21.813711, 28.758196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200958, 21.675209, 28.767551>,  <32.975876, 21.592108, 28.773165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.200958, 21.675209, 28.767551>,  <33.576099, 21.813711, 28.758196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200958, 21.675209, 28.767551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243856, -0.609543, 0.754315,
		-0.246929, 0.713137, 0.656096,
		-0.937849, -0.346255, 0.023389,
		32.919605, 21.571333, 28.774569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670479, 22.373106, 29.189737>,  <33.576099, 21.813711, 28.758196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670479, 22.373106, 29.189737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858288, 22.671623, 29.378456>,  <33.970974, 22.850733, 29.491688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858288, 22.671623, 29.378456>,  <33.670479, 22.373106, 29.189737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858288, 22.671623, 29.378456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036342, 0.517575, -0.854866,
		-0.882171, 0.418527, 0.215893,
		0.469525, 0.746292, 0.471799,
		33.999146, 22.895512, 29.519997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289665, 23.032196, 29.172409>,  <33.670479, 22.373106, 29.189737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289665, 23.032196, 29.172409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664463, 23.164940, 29.216068>,  <33.889343, 23.244585, 29.242264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664463, 23.164940, 29.216068>,  <33.289665, 23.032196, 29.172409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664463, 23.164940, 29.216068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144102, 0.651770, -0.744601,
		-0.318242, 0.681958, 0.658526,
		0.936994, 0.331858, 0.109149,
		33.945560, 23.264498, 29.248814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298561, 23.860178, 29.168129>,  <33.289665, 23.032196, 29.172409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298561, 23.860178, 29.168129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662754, 23.725651, 29.071869>,  <33.881271, 23.644936, 29.014112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.662754, 23.725651, 29.071869>,  <33.298561, 23.860178, 29.168129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662754, 23.725651, 29.071869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047406, 0.662961, -0.747151,
		0.410821, 0.668860, 0.619558,
		0.910483, -0.336316, -0.240650,
		33.935898, 23.624756, 28.999674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719936, 24.436502, 28.888401>,  <33.298561, 23.860178, 29.168129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719936, 24.436502, 28.888401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944206, 24.136539, 28.747955>,  <34.078770, 23.956562, 28.663687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944206, 24.136539, 28.747955>,  <33.719936, 24.436502, 28.888401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944206, 24.136539, 28.747955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177586, 0.523069, -0.833584,
		0.808768, 0.405017, 0.426445,
		0.560676, -0.749906, -0.351116,
		34.112408, 23.911568, 28.642620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280697, 24.813072, 28.731176>,  <33.719936, 24.436502, 28.888401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280697, 24.813072, 28.731176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341427, 24.451855, 28.570450>,  <34.377865, 24.235125, 28.474014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.341427, 24.451855, 28.570450>,  <34.280697, 24.813072, 28.731176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341427, 24.451855, 28.570450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539156, 0.416390, -0.732073,
		0.828408, -0.105493, 0.550102,
		0.151828, -0.903045, -0.401817,
		34.386974, 24.180941, 28.449905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996342, 24.750069, 28.514465>,  <34.280697, 24.813072, 28.731176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996342, 24.750069, 28.514465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772049, 24.495193, 28.302967>,  <34.637474, 24.342268, 28.176069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772049, 24.495193, 28.302967>,  <34.996342, 24.750069, 28.514465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772049, 24.495193, 28.302967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342061, 0.403277, -0.848742,
		0.754038, -0.656780, -0.008174,
		-0.560733, -0.637187, -0.528744,
		34.603828, 24.304037, 28.144344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326340, 24.612461, 27.875933>,  <34.996342, 24.750069, 28.514465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326340, 24.612461, 27.875933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944332, 24.531166, 27.789562>,  <34.715126, 24.482389, 27.737740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944332, 24.531166, 27.789562>,  <35.326340, 24.612461, 27.875933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944332, 24.531166, 27.789562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083373, 0.514768, -0.853266,
		0.284569, -0.832891, -0.474671,
		-0.955023, -0.203238, -0.215927,
		34.657825, 24.470194, 27.724785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.353685, 23.141207, 33.575935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.084650, 22.910107, 33.390968>,  <29.923229, 22.771446, 33.279987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.084650, 22.910107, 33.390968>,  <30.353685, 23.141207, 33.575935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084650, 22.910107, 33.390968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416734, 0.812080, -0.408483,
		0.611520, -0.082037, -0.786964,
		-0.672589, -0.577751, -0.462416,
		29.882874, 22.736782, 33.252243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299814, 23.362547, 32.818939>,  <30.353685, 23.141207, 33.575935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299814, 23.362547, 32.818939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.957724, 23.181324, 32.919598>,  <29.752470, 23.072590, 32.979992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.957724, 23.181324, 32.919598>,  <30.299814, 23.362547, 32.818939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957724, 23.181324, 32.919598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517469, 0.773235, -0.366515,
		-0.028531, -0.443673, -0.895734,
		-0.855226, -0.453058, 0.251648,
		29.701157, 23.045406, 32.995090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047590, 23.202530, 32.201218>,  <30.299814, 23.362547, 32.818939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047590, 23.202530, 32.201218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765539, 23.221058, 32.484245>,  <29.596308, 23.232174, 32.654060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.765539, 23.221058, 32.484245>,  <30.047590, 23.202530, 32.201218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765539, 23.221058, 32.484245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388712, 0.809315, -0.440354,
		-0.593040, -0.585546, -0.552667,
		-0.705129, 0.046319, 0.707565,
		29.554001, 23.234953, 32.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441036, 23.262575, 31.791008>,  <30.047590, 23.202530, 32.201218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441036, 23.262575, 31.791008> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376415, 23.406219, 32.158691>,  <29.337643, 23.492407, 32.379299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376415, 23.406219, 32.158691>,  <29.441036, 23.262575, 31.791008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376415, 23.406219, 32.158691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327803, 0.859028, -0.393212,
		-0.930831, -0.364842, -0.021058,
		-0.161550, 0.359111, 0.919207,
		29.327950, 23.513952, 32.434452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803165, 23.594942, 31.718809>,  <29.441036, 23.262575, 31.791008>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803165, 23.594942, 31.718809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927517, 23.734631, 32.072395>,  <29.002129, 23.818443, 32.284546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.927517, 23.734631, 32.072395>,  <28.803165, 23.594942, 31.718809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927517, 23.734631, 32.072395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376843, 0.899114, -0.222673,
		-0.872550, -0.263892, 0.411118,
		0.310881, 0.349220, 0.883968,
		29.020781, 23.839397, 32.337585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255697, 23.999979, 32.018135>,  <28.803165, 23.594942, 31.718809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255697, 23.999979, 32.018135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.575277, 24.135757, 32.216713>,  <28.767025, 24.217224, 32.335857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.575277, 24.135757, 32.216713>,  <28.255697, 23.999979, 32.018135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575277, 24.135757, 32.216713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246429, 0.937780, -0.244627,
		-0.548590, 0.073108, 0.832889,
		0.798951, 0.339448, 0.496441,
		28.814962, 24.237593, 32.365646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024288, 24.668568, 32.302769>,  <28.255697, 23.999979, 32.018135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024288, 24.668568, 32.302769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.423223, 24.673016, 32.331581>,  <28.662584, 24.675684, 32.348869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.423223, 24.673016, 32.331581>,  <28.024288, 24.668568, 32.302769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423223, 24.673016, 32.331581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014530, 0.938133, -0.345971,
		-0.071423, 0.346097, 0.935476,
		0.997340, 0.011118, 0.072033,
		28.722425, 24.676352, 32.353191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171249, 25.238390, 32.592594>,  <28.024288, 24.668568, 32.302769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171249, 25.238390, 32.592594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.531620, 25.162651, 32.436398>,  <28.747843, 25.117208, 32.342682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.531620, 25.162651, 32.436398>,  <28.171249, 25.238390, 32.592594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531620, 25.162651, 32.436398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098903, 0.965702, -0.240081,
		0.422554, 0.177674, 0.888752,
		0.900925, -0.189348, -0.390489,
		28.801897, 25.105846, 32.319252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635977, 25.776701, 32.799065>,  <28.171249, 25.238390, 32.592594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635977, 25.776701, 32.799065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.788107, 25.668297, 32.445362>,  <28.879385, 25.603254, 32.233143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.788107, 25.668297, 32.445362>,  <28.635977, 25.776701, 32.799065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788107, 25.668297, 32.445362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080912, 0.962187, -0.260096,
		0.921307, 0.027374, 0.387872,
		0.380325, -0.271012, -0.884254,
		28.902205, 25.586994, 32.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319267, 26.181166, 32.622650>,  <28.635977, 25.776701, 32.799065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319267, 26.181166, 32.622650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237484, 26.031639, 32.260777>,  <29.188414, 25.941923, 32.043652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237484, 26.031639, 32.260777>,  <29.319267, 26.181166, 32.622650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237484, 26.031639, 32.260777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420539, 0.801029, -0.426028,
		0.883936, -0.467561, -0.006573,
		-0.204459, -0.373817, -0.904686,
		29.176146, 25.919495, 31.989370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.932339, 26.319447, 32.219677>,  <29.319267, 26.181166, 32.622650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.932339, 26.319447, 32.219677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.634825, 26.246365, 31.962490>,  <29.456316, 26.202515, 31.808178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.634825, 26.246365, 31.962490>,  <29.932339, 26.319447, 32.219677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634825, 26.246365, 31.962490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259068, 0.807933, -0.529272,
		0.616174, -0.560236, -0.553594,
		-0.743783, -0.182705, -0.642966,
		29.411690, 26.191553, 31.769600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192081, 26.520367, 31.570114>,  <29.932339, 26.319447, 32.219677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192081, 26.520367, 31.570114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.800436, 26.498650, 31.491741>,  <29.565449, 26.485619, 31.444717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.800436, 26.498650, 31.491741>,  <30.192081, 26.520367, 31.570114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800436, 26.498650, 31.491741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076158, 0.795584, -0.601037,
		0.188513, -0.603405, -0.774832,
		-0.979113, -0.054293, -0.195932,
		29.506702, 26.482361, 31.432962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748997, 26.325697, 31.087540>,  <30.192081, 26.520367, 31.570114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748997, 26.325697, 31.087540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096741, 26.487621, 31.200916>,  <31.305387, 26.584776, 31.268942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.096741, 26.487621, 31.200916>,  <30.748997, 26.325697, 31.087540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096741, 26.487621, 31.200916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190863, -0.804103, 0.563019,
		0.455831, -0.435369, -0.776319,
		0.869361, 0.404812, 0.283440,
		31.357550, 26.609064, 31.285948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233494, 25.802238, 30.981094>,  <30.748997, 26.325697, 31.087540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233494, 25.802238, 30.981094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.357189, 26.069607, 31.251675>,  <31.431406, 26.230028, 31.414022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.357189, 26.069607, 31.251675>,  <31.233494, 25.802238, 30.981094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357189, 26.069607, 31.251675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222038, -0.742403, 0.632089,
		0.924701, -0.045267, -0.377994,
		0.309236, 0.668423, 0.676450,
		31.449961, 26.270134, 31.454609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929558, 25.564260, 31.255220>,  <31.233494, 25.802238, 30.981094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929558, 25.564260, 31.255220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.796179, 25.800381, 31.549255>,  <31.716150, 25.942053, 31.725677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.796179, 25.800381, 31.549255>,  <31.929558, 25.564260, 31.255220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796179, 25.800381, 31.549255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376936, -0.631205, 0.677864,
		0.864136, 0.503115, -0.012031,
		-0.333449, 0.590301, 0.735089,
		31.696144, 25.977470, 31.769783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465424, 25.654913, 31.695576>,  <31.929558, 25.564260, 31.255220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465424, 25.654913, 31.695576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131310, 25.724129, 31.904324>,  <31.930840, 25.765657, 32.029572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.131310, 25.724129, 31.904324>,  <32.465424, 25.654913, 31.695576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131310, 25.724129, 31.904324> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341955, -0.579762, 0.739556,
		0.430533, 0.796200, 0.425097,
		-0.835289, 0.173039, 0.521871,
		31.880722, 25.776041, 32.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707561, 25.665365, 32.314430>,  <32.465424, 25.654913, 31.695576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707561, 25.665365, 32.314430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318382, 25.611977, 32.389854>,  <32.084873, 25.579943, 32.435108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.318382, 25.611977, 32.389854>,  <32.707561, 25.665365, 32.314430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318382, 25.611977, 32.389854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227264, -0.699563, 0.677468,
		0.041485, 0.701994, 0.710973,
		-0.972949, -0.133474, 0.188559,
		32.026497, 25.571934, 32.446423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571751, 25.668550, 33.168602>,  <32.707561, 25.665365, 32.314430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571751, 25.668550, 33.168602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.274784, 25.461647, 32.998302>,  <32.096603, 25.337505, 32.896122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.274784, 25.461647, 32.998302>,  <32.571751, 25.668550, 33.168602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274784, 25.461647, 32.998302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044992, -0.672566, 0.738668,
		-0.668426, 0.529245, 0.522596,
		-0.742417, -0.517257, -0.425749,
		32.052059, 25.306469, 32.870579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077152, 25.569349, 33.699856>,  <32.571751, 25.668550, 33.168602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077152, 25.569349, 33.699856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970808, 25.310360, 33.414173>,  <31.907000, 25.154966, 33.242764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.970808, 25.310360, 33.414173>,  <32.077152, 25.569349, 33.699856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970808, 25.310360, 33.414173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003749, -0.740173, 0.672406,
		-0.964003, 0.181447, 0.194359,
		-0.265865, -0.647473, -0.714209,
		31.891048, 25.116117, 33.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785294, 25.014652, 34.014854>,  <32.077152, 25.569349, 33.699856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785294, 25.014652, 34.014854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819815, 24.829132, 33.662163>,  <31.840527, 24.717819, 33.450550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819815, 24.829132, 33.662163>,  <31.785294, 25.014652, 34.014854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819815, 24.829132, 33.662163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068473, -0.880173, 0.469688,
		-0.993913, -0.100908, -0.044201,
		0.086300, -0.463802, -0.881726,
		31.845705, 24.689991, 33.397644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292791, 24.388447, 33.974110>,  <31.785294, 25.014652, 34.014854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292791, 24.388447, 33.974110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571587, 24.313274, 33.697304>,  <31.738863, 24.268171, 33.531219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.571587, 24.313274, 33.697304>,  <31.292791, 24.388447, 33.974110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571587, 24.313274, 33.697304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139223, -0.911217, 0.387685,
		-0.703438, -0.366557, -0.608943,
		0.696988, -0.187933, -0.692018,
		31.780684, 24.256895, 33.489697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237354, 23.658527, 33.830120>,  <31.292791, 24.388447, 33.974110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237354, 23.658527, 33.830120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604156, 23.733677, 33.689373>,  <31.824238, 23.778767, 33.604927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604156, 23.733677, 33.689373>,  <31.237354, 23.658527, 33.830120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604156, 23.733677, 33.689373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298680, -0.908087, 0.293544,
		-0.264374, -0.374275, -0.888833,
		0.917004, 0.187872, -0.351864,
		31.879257, 23.790039, 33.583813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497911, 23.174757, 33.436646>,  <31.237354, 23.658527, 33.830120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497911, 23.174757, 33.436646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866278, 23.326481, 33.472511>,  <32.087296, 23.417515, 33.494030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.866278, 23.326481, 33.472511>,  <31.497911, 23.174757, 33.436646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866278, 23.326481, 33.472511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352991, -0.909208, 0.220768,
		0.165264, -0.171657, -0.971196,
		0.920916, 0.379308, 0.089666,
		32.142551, 23.440273, 33.499413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920546, 22.822163, 33.001560>,  <31.497911, 23.174757, 33.436646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920546, 22.822163, 33.001560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134144, 22.974804, 33.303349>,  <32.262302, 23.066389, 33.484421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.134144, 22.974804, 33.303349>,  <31.920546, 22.822163, 33.001560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134144, 22.974804, 33.303349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283267, -0.921527, 0.265608,
		0.796624, 0.071884, -0.600186,
		0.533995, 0.381603, 0.754473,
		32.294342, 23.089285, 33.529690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536533, 22.391010, 33.037975>,  <31.920546, 22.822163, 33.001560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536533, 22.391010, 33.037975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.508347, 22.561363, 33.398788>,  <32.491432, 22.663574, 33.615276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.508347, 22.561363, 33.398788>,  <32.536533, 22.391010, 33.037975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508347, 22.561363, 33.398788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142017, -0.890784, 0.431666,
		0.987352, 0.158523, 0.002291,
		-0.070470, 0.425881, 0.902031,
		32.487206, 22.689127, 33.669399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080997, 22.110022, 33.444302>,  <32.536533, 22.391010, 33.037975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080997, 22.110022, 33.444302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815384, 22.253780, 33.706566>,  <32.656013, 22.340034, 33.863926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815384, 22.253780, 33.706566>,  <33.080997, 22.110022, 33.444302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815384, 22.253780, 33.706566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172258, -0.779780, 0.601889,
		0.727586, 0.512620, 0.455894,
		-0.664037, 0.359395, 0.655660,
		32.616173, 22.361599, 33.903263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448555, 22.263578, 32.710938>,  <33.080997, 22.110022, 33.444302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448555, 22.263578, 32.710938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629032, 21.986698, 32.485626>,  <33.737320, 21.820570, 32.350441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629032, 21.986698, 32.485626>,  <33.448555, 22.263578, 32.710938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629032, 21.986698, 32.485626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105025, 0.667974, -0.736736,
		0.886223, 0.273255, 0.374086,
		0.451197, -0.692201, -0.563275,
		33.764393, 21.779037, 32.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088764, 22.515478, 32.540848>,  <33.448555, 22.263578, 32.710938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088764, 22.515478, 32.540848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028049, 22.232109, 32.265137>,  <33.991623, 22.062088, 32.099712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.028049, 22.232109, 32.265137>,  <34.088764, 22.515478, 32.540848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028049, 22.232109, 32.265137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072905, 0.687431, -0.722581,
		0.985721, -0.159927, -0.052693,
		-0.151783, -0.708422, -0.689275,
		33.982513, 22.019583, 32.058353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577763, 22.644083, 31.993279>,  <34.088764, 22.515478, 32.540848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577763, 22.644083, 31.993279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.333588, 22.403519, 31.787106>,  <34.187084, 22.259180, 31.663403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.333588, 22.403519, 31.787106>,  <34.577763, 22.644083, 31.993279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333588, 22.403519, 31.787106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274354, 0.449913, -0.849887,
		0.743032, -0.660213, -0.109643,
		-0.610437, -0.601412, -0.515432,
		34.150455, 22.223095, 31.632477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885906, 22.665695, 31.420492>,  <34.577763, 22.644083, 31.993279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885906, 22.665695, 31.420492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526985, 22.530720, 31.306660>,  <34.311634, 22.449734, 31.238361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526985, 22.530720, 31.306660>,  <34.885906, 22.665695, 31.420492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526985, 22.530720, 31.306660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195178, 0.274956, -0.941438,
		0.395925, -0.900297, -0.180857,
		-0.897301, -0.337440, -0.284580,
		34.257793, 22.429489, 31.221285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984604, 22.291355, 30.783875>,  <34.885906, 22.665695, 31.420492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984604, 22.291355, 30.783875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600395, 22.402466, 30.790089>,  <34.369869, 22.469133, 30.793818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.600395, 22.402466, 30.790089>,  <34.984604, 22.291355, 30.783875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600395, 22.402466, 30.790089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065601, 0.280401, -0.957639,
		-0.270367, -0.918812, -0.287553,
		-0.960520, 0.277778, 0.015536,
		34.312241, 22.485800, 30.794750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650536, 21.957140, 30.115753>,  <34.984604, 22.291355, 30.783875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650536, 21.957140, 30.115753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423183, 22.268970, 30.220985>,  <34.286774, 22.456068, 30.284124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.423183, 22.268970, 30.220985>,  <34.650536, 21.957140, 30.115753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423183, 22.268970, 30.220985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095207, 0.379920, -0.920107,
		-0.817242, -0.497919, -0.290158,
		-0.568376, 0.779575, 0.263081,
		34.252670, 22.502844, 30.299910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185352, 22.009277, 29.623116>,  <34.650536, 21.957140, 30.115753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185352, 22.009277, 29.623116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211426, 22.374340, 29.784512>,  <34.227070, 22.593378, 29.881350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211426, 22.374340, 29.784512>,  <34.185352, 22.009277, 29.623116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211426, 22.374340, 29.784512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087181, 0.397597, -0.913409,
		-0.994058, 0.094715, -0.053650,
		0.065183, 0.912659, 0.403491,
		34.230980, 22.648138, 29.905560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450867, 21.733280, 29.504972>,  <34.185352, 22.009277, 29.623116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450867, 21.733280, 29.504972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169895, 21.478348, 29.378227>,  <33.001312, 21.325388, 29.302179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.169895, 21.478348, 29.378227>,  <33.450867, 21.733280, 29.504972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169895, 21.478348, 29.378227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019385, -0.427890, 0.903623,
		-0.711491, 0.640872, 0.288207,
		-0.702428, -0.637332, -0.316863,
		32.959167, 21.287148, 29.283169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894463, 21.672894, 30.081343>,  <33.450867, 21.733280, 29.504972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894463, 21.672894, 30.081343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803959, 21.359112, 29.850365>,  <32.749657, 21.170843, 29.711779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.803959, 21.359112, 29.850365>,  <32.894463, 21.672894, 30.081343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803959, 21.359112, 29.850365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366100, -0.480867, 0.796705,
		-0.902650, 0.391666, -0.178386,
		-0.226262, -0.784452, -0.577443,
		32.736080, 21.123775, 29.677132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220249, 21.451473, 30.323952>,  <32.894463, 21.672894, 30.081343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220249, 21.451473, 30.323952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400856, 21.154175, 30.126480>,  <32.509220, 20.975796, 30.007998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.400856, 21.154175, 30.126480>,  <32.220249, 21.451473, 30.323952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400856, 21.154175, 30.126480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375348, -0.660168, 0.650610,
		-0.809473, -0.108460, -0.577052,
		0.451516, -0.743246, -0.493678,
		32.536312, 20.931200, 29.978376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754864, 20.937883, 30.179625>,  <32.220249, 21.451473, 30.323952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754864, 20.937883, 30.179625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099419, 20.735050, 30.167789>,  <32.306152, 20.613350, 30.160688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.099419, 20.735050, 30.167789>,  <31.754864, 20.937883, 30.179625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099419, 20.735050, 30.167789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387904, -0.694306, 0.606193,
		-0.327932, -0.510691, -0.794767,
		0.861389, -0.507083, -0.029586,
		32.357834, 20.582926, 30.158915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544910, 20.207077, 30.079739>,  <31.754864, 20.937883, 30.179625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544910, 20.207077, 30.079739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.925161, 20.181480, 30.201206>,  <32.153313, 20.166122, 30.274088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.925161, 20.181480, 30.201206>,  <31.544910, 20.207077, 30.079739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925161, 20.181480, 30.201206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204874, -0.864387, 0.459197,
		0.233105, -0.498738, -0.834818,
		0.950625, -0.063991, 0.303671,
		32.210350, 20.162283, 30.292307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693834, 19.529829, 30.035387>,  <31.544910, 20.207077, 30.079739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693834, 19.529829, 30.035387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984816, 19.632778, 30.289810>,  <32.159405, 19.694548, 30.442465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984816, 19.632778, 30.289810>,  <31.693834, 19.529829, 30.035387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984816, 19.632778, 30.289810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088637, -0.883971, 0.459063,
		0.680408, -0.390325, -0.620235,
		0.727454, 0.257374, 0.636058,
		32.203053, 19.709990, 30.480627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142654, 18.993515, 29.991749>,  <31.693834, 19.529829, 30.035387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142654, 18.993515, 29.991749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240593, 19.183437, 30.329887>,  <32.299358, 19.297390, 30.532770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240593, 19.183437, 30.329887>,  <32.142654, 18.993515, 29.991749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240593, 19.183437, 30.329887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034258, -0.867103, 0.496950,
		0.968956, -0.150638, -0.196044,
		0.244850, 0.474806, 0.845344,
		32.314049, 19.325880, 30.583490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627281, 18.661860, 30.283909>,  <32.142654, 18.993515, 29.991749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627281, 18.661860, 30.283909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458733, 18.855095, 30.590912>,  <32.357601, 18.971037, 30.775114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.458733, 18.855095, 30.590912>,  <32.627281, 18.661860, 30.283909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458733, 18.855095, 30.590912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151053, -0.871875, 0.465851,
		0.894218, 0.080364, 0.440359,
		-0.421376, 0.483090, 0.767507,
		32.332321, 19.000021, 30.821163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929401, 18.278376, 30.777624>,  <32.627281, 18.661860, 30.283909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929401, 18.278376, 30.777624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625137, 18.478073, 30.943588>,  <32.442577, 18.597891, 31.043167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625137, 18.478073, 30.943588>,  <32.929401, 18.278376, 30.777624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625137, 18.478073, 30.943588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367139, -0.857977, 0.359282,
		0.535353, 0.120962, 0.835922,
		-0.760661, 0.499242, 0.414911,
		32.396938, 18.627846, 31.068062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.407190, 30.615229, 20.284971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042322, 30.614410, 20.448895>,  <29.823402, 30.613920, 20.547249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.042322, 30.614410, 20.448895>,  <30.407190, 30.615229, 20.284971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042322, 30.614410, 20.448895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260703, -0.774451, 0.576420,
		0.316197, 0.632631, 0.706964,
		-0.912169, -0.002046, 0.409808,
		29.768671, 30.613796, 20.571836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532578, 30.738989, 21.005646>,  <30.407190, 30.615229, 20.284971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532578, 30.738989, 21.005646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181150, 30.553989, 20.957951>,  <29.970295, 30.442989, 20.929335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181150, 30.553989, 20.957951>,  <30.532578, 30.738989, 21.005646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181150, 30.553989, 20.957951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221643, -0.615935, 0.755975,
		-0.423078, 0.637746, 0.643649,
		-0.878567, -0.462496, -0.119237,
		29.917580, 30.415241, 20.922180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352146, 30.558031, 21.637859>,  <30.532578, 30.738989, 21.005646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352146, 30.558031, 21.637859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117439, 30.324795, 21.413109>,  <29.976614, 30.184853, 21.278257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.117439, 30.324795, 21.413109>,  <30.352146, 30.558031, 21.637859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117439, 30.324795, 21.413109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193542, -0.774765, 0.601897,
		-0.786284, 0.244428, 0.567461,
		-0.586769, -0.583090, -0.561879,
		29.941408, 30.149868, 21.244545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946478, 30.228518, 22.142681>,  <30.352146, 30.558031, 21.637859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946478, 30.228518, 22.142681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920946, 30.005611, 21.811531>,  <29.905626, 29.871868, 21.612841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920946, 30.005611, 21.811531>,  <29.946478, 30.228518, 22.142681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920946, 30.005611, 21.811531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115718, -0.828106, 0.548498,
		-0.991229, -0.060790, 0.117343,
		-0.063830, -0.557266, -0.827877,
		29.901798, 29.838432, 21.563168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488384, 29.683336, 22.228827>,  <29.946478, 30.228518, 22.142681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488384, 29.683336, 22.228827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694599, 29.550011, 21.913074>,  <29.818329, 29.470015, 21.723623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694599, 29.550011, 21.913074>,  <29.488384, 29.683336, 22.228827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694599, 29.550011, 21.913074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012639, -0.924098, 0.381946,
		-0.856773, -0.186930, -0.480621,
		0.515539, -0.333316, -0.789380,
		29.849260, 29.450016, 21.676260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203653, 29.051455, 22.182028>,  <29.488384, 29.683336, 22.228827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203653, 29.051455, 22.182028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532606, 29.042786, 21.954617>,  <29.729977, 29.037584, 21.818171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532606, 29.042786, 21.954617>,  <29.203653, 29.051455, 22.182028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532606, 29.042786, 21.954617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235171, -0.896962, 0.374372,
		-0.518060, -0.441577, -0.732546,
		0.822380, -0.021673, -0.568526,
		29.779320, 29.036283, 21.784060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.213030, 28.351170, 21.955826>,  <29.203653, 29.051455, 22.182028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.213030, 28.351170, 21.955826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592604, 28.474155, 21.927582>,  <29.820349, 28.547947, 21.910635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592604, 28.474155, 21.927582>,  <29.213030, 28.351170, 21.955826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592604, 28.474155, 21.927582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307779, -0.853198, 0.421100,
		0.069229, -0.421330, -0.904261,
		0.948936, 0.307465, -0.070610,
		29.877285, 28.566395, 21.906399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636034, 27.753946, 21.775370>,  <29.213030, 28.351170, 21.955826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636034, 27.753946, 21.775370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881281, 28.019157, 21.947174>,  <30.028429, 28.178284, 22.050257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881281, 28.019157, 21.947174>,  <29.636034, 27.753946, 21.775370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881281, 28.019157, 21.947174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476721, -0.744065, 0.468086,
		0.629938, -0.082235, -0.772280,
		0.613119, 0.663027, 0.429512,
		30.065216, 28.218065, 22.076027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274405, 27.463297, 21.833305>,  <29.636034, 27.753946, 21.775370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274405, 27.463297, 21.833305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295586, 27.759171, 22.101654>,  <30.308294, 27.936695, 22.262663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295586, 27.759171, 22.101654>,  <30.274405, 27.463297, 21.833305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295586, 27.759171, 22.101654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565610, -0.575875, 0.590300,
		0.822971, 0.348193, -0.448865,
		0.052951, 0.739682, 0.670870,
		30.311472, 27.981075, 22.302916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924976, 27.323488, 22.023098>,  <30.274405, 27.463297, 21.833305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924976, 27.323488, 22.023098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763229, 27.575211, 22.288567>,  <30.666182, 27.726244, 22.447847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763229, 27.575211, 22.288567>,  <30.924976, 27.323488, 22.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763229, 27.575211, 22.288567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400774, -0.530345, 0.747070,
		0.822111, 0.568074, -0.037754,
		-0.404369, 0.629305, 0.663672,
		30.641918, 27.764002, 22.487669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427082, 27.421274, 22.420998>,  <30.924976, 27.323488, 22.023098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427082, 27.421274, 22.420998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131227, 27.548923, 22.658012>,  <30.953714, 27.625513, 22.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131227, 27.548923, 22.658012>,  <31.427082, 27.421274, 22.420998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131227, 27.548923, 22.658012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373647, -0.537558, 0.755923,
		0.559756, 0.780507, 0.278358,
		-0.739636, 0.319125, 0.592535,
		30.909336, 27.644661, 22.835773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737373, 27.803234, 23.051945>,  <31.427082, 27.421274, 22.420998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737373, 27.803234, 23.051945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386236, 27.630375, 23.134541>,  <31.175554, 27.526659, 23.184097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386236, 27.630375, 23.134541>,  <31.737373, 27.803234, 23.051945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386236, 27.630375, 23.134541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444086, -0.572955, 0.688847,
		-0.179375, 0.696399, 0.694876,
		-0.877845, -0.432147, 0.206488,
		31.122883, 27.500731, 23.196487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849508, 28.423792, 23.454292>,  <31.737373, 27.803234, 23.051945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849508, 28.423792, 23.454292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146046, 28.558598, 23.686440>,  <32.323967, 28.639481, 23.825727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146046, 28.558598, 23.686440>,  <31.849508, 28.423792, 23.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146046, 28.558598, 23.686440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012156, 0.857887, -0.513695,
		-0.671015, 0.387880, 0.631893,
		0.741344, 0.337015, 0.580370,
		32.368450, 28.659702, 23.860550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750875, 29.055910, 23.561293>,  <31.849508, 28.423792, 23.454292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750875, 29.055910, 23.561293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140656, 29.050346, 23.650959>,  <32.374523, 29.047009, 23.704760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140656, 29.050346, 23.650959>,  <31.750875, 29.055910, 23.561293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140656, 29.050346, 23.650959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121405, 0.872324, -0.473616,
		-0.188958, 0.488731, 0.851726,
		0.974451, -0.013910, 0.224167,
		32.432991, 29.046173, 23.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920328, 29.739647, 23.948544>,  <31.750875, 29.055910, 23.561293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920328, 29.739647, 23.948544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240482, 29.587101, 23.763527>,  <32.432575, 29.495573, 23.652517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240482, 29.587101, 23.763527>,  <31.920328, 29.739647, 23.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240482, 29.587101, 23.763527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057315, 0.816708, -0.574198,
		0.596738, 0.433070, 0.675540,
		0.800387, -0.381365, -0.462539,
		32.480598, 29.472692, 23.624765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424793, 30.296442, 23.908159>,  <31.920328, 29.739647, 23.948544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424793, 30.296442, 23.908159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536484, 30.031734, 23.629852>,  <32.603500, 29.872910, 23.462868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536484, 30.031734, 23.629852>,  <32.424793, 30.296442, 23.908159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536484, 30.031734, 23.629852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292616, 0.748767, -0.594746,
		0.914553, -0.037523, 0.402722,
		0.279229, -0.661770, -0.695767,
		32.620251, 29.833204, 23.421122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135033, 30.242678, 23.979301>,  <32.424793, 30.296442, 23.908159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135033, 30.242678, 23.979301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045490, 30.148979, 23.600880>,  <32.991764, 30.092760, 23.373827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045490, 30.148979, 23.600880>,  <33.135033, 30.242678, 23.979301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045490, 30.148979, 23.600880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429780, 0.847488, -0.311533,
		0.874745, -0.476333, -0.089038,
		-0.223852, -0.234245, -0.946055,
		32.978336, 30.078705, 23.317062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702080, 30.404736, 23.688028>,  <33.135033, 30.242678, 23.979301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702080, 30.404736, 23.688028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485893, 30.382710, 23.352203>,  <33.356182, 30.369493, 23.150707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485893, 30.382710, 23.352203>,  <33.702080, 30.404736, 23.688028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485893, 30.382710, 23.352203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379215, 0.874812, -0.301496,
		0.751064, -0.481322, -0.451921,
		-0.540462, -0.055068, -0.839564,
		33.323753, 30.366190, 23.100334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106285, 30.308853, 23.024576>,  <33.702080, 30.404736, 23.688028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106285, 30.308853, 23.024576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775856, 30.495064, 22.897518>,  <33.577599, 30.606791, 22.821283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775856, 30.495064, 22.897518>,  <34.106285, 30.308853, 23.024576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775856, 30.495064, 22.897518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550377, 0.787621, -0.277016,
		0.121225, -0.403658, -0.906843,
		-0.826069, 0.465525, -0.317643,
		33.528034, 30.634722, 22.802225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317471, 30.729147, 22.568134>,  <34.106285, 30.308853, 23.024576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317471, 30.729147, 22.568134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949104, 30.883171, 22.592293>,  <33.728085, 30.975586, 22.606787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949104, 30.883171, 22.592293>,  <34.317471, 30.729147, 22.568134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949104, 30.883171, 22.592293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341915, 0.872477, -0.349109,
		-0.187122, -0.300849, -0.935134,
		-0.920912, 0.385062, 0.060395,
		33.672832, 30.998690, 22.610411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095829, 30.943342, 21.886423>,  <34.317471, 30.729147, 22.568134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095829, 30.943342, 21.886423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891602, 31.145645, 22.164566>,  <33.769066, 31.267027, 22.331451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891602, 31.145645, 22.164566>,  <34.095829, 30.943342, 21.886423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891602, 31.145645, 22.164566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365015, 0.859715, -0.357286,
		-0.778511, 0.071396, -0.623557,
		-0.510573, 0.505759, 0.695359,
		33.738430, 31.297373, 22.373173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655334, 31.388420, 21.493534>,  <34.095829, 30.943342, 21.886423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655334, 31.388420, 21.493534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694408, 31.532776, 21.864525>,  <33.717854, 31.619389, 22.087120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694408, 31.532776, 21.864525>,  <33.655334, 31.388420, 21.493534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694408, 31.532776, 21.864525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276331, 0.885456, -0.373643,
		-0.956085, 0.292791, -0.013228,
		0.097687, 0.360890, 0.927478,
		33.723713, 31.641043, 22.142769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313660, 32.116459, 21.514759>,  <33.655334, 31.388420, 21.493534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313660, 32.116459, 21.514759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563824, 32.105022, 21.826668>,  <33.713921, 32.098160, 22.013813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563824, 32.105022, 21.826668>,  <33.313660, 32.116459, 21.514759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563824, 32.105022, 21.826668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337489, 0.910933, -0.237281,
		-0.703538, 0.411563, 0.579354,
		0.625408, -0.028589, 0.779774,
		33.751446, 32.096447, 22.060600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384274, 32.774773, 21.873425>,  <33.313660, 32.116459, 21.514759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384274, 32.774773, 21.873425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686527, 32.619896, 22.084743>,  <33.867878, 32.526970, 22.211535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686527, 32.619896, 22.084743>,  <33.384274, 32.774773, 21.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686527, 32.619896, 22.084743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467514, 0.883736, -0.020999,
		-0.458745, 0.262854, 0.848800,
		0.755635, -0.387193, 0.528298,
		33.913219, 32.503738, 22.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515499, 33.231113, 22.333487>,  <33.384274, 32.774773, 21.873425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515499, 33.231113, 22.333487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853603, 33.018650, 22.310154>,  <34.056465, 32.891171, 22.296154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853603, 33.018650, 22.310154>,  <33.515499, 33.231113, 22.333487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853603, 33.018650, 22.310154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532910, 0.845960, 0.018939,
		0.039288, -0.047095, 0.998118,
		0.845259, -0.531163, -0.058333,
		34.107182, 32.859303, 22.292654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880981, 33.492134, 22.896793>,  <33.515499, 33.231113, 22.333487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880981, 33.492134, 22.896793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125969, 33.330242, 22.625183>,  <34.272961, 33.233105, 22.462217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125969, 33.330242, 22.625183>,  <33.880981, 33.492134, 22.896793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125969, 33.330242, 22.625183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535368, 0.844373, -0.020398,
		0.581606, -0.351035, 0.733832,
		0.612467, -0.404733, -0.679025,
		34.309708, 33.208820, 22.421476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269737, 33.588043, 23.502895>,  <33.880981, 33.492134, 22.896793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269737, 33.588043, 23.502895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284466, 33.909519, 23.740459>,  <33.293301, 34.102406, 23.882998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284466, 33.909519, 23.740459>,  <33.269737, 33.588043, 23.502895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284466, 33.909519, 23.740459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092648, -0.589010, 0.802798,
		0.995018, -0.084582, 0.052774,
		0.036818, 0.803687, 0.593912,
		33.295513, 34.150627, 23.918633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741917, 33.467182, 24.030760>,  <33.269737, 33.588043, 23.502895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741917, 33.467182, 24.030760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453949, 33.709667, 24.165951>,  <33.281170, 33.855156, 24.247065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453949, 33.709667, 24.165951>,  <33.741917, 33.467182, 24.030760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453949, 33.709667, 24.165951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071422, -0.549076, 0.832715,
		0.690374, 0.575348, 0.438587,
		-0.719918, 0.606210, 0.337975,
		33.237972, 33.891529, 24.267344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877701, 33.848526, 24.625801>,  <33.741917, 33.467182, 24.030760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877701, 33.848526, 24.625801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477749, 33.842308, 24.625435>,  <33.237778, 33.838577, 24.625216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477749, 33.842308, 24.625435>,  <33.877701, 33.848526, 24.625801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477749, 33.842308, 24.625435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005978, -0.437384, 0.899255,
		-0.014382, 0.899140, 0.437424,
		-0.999879, -0.015548, -0.000915,
		33.177784, 33.837643, 24.625160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618065, 34.158161, 25.344767>,  <33.877701, 33.848526, 24.625801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618065, 34.158161, 25.344767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334827, 33.925613, 25.184456>,  <33.164886, 33.786087, 25.088268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334827, 33.925613, 25.184456>,  <33.618065, 34.158161, 25.344767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334827, 33.925613, 25.184456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141736, -0.439006, 0.887234,
		-0.691751, 0.685046, 0.228456,
		-0.708090, -0.581365, -0.400779,
		33.122402, 33.751205, 25.064222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014721, 34.267643, 25.734030>,  <33.618065, 34.158161, 25.344767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014721, 34.267643, 25.734030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985142, 33.906380, 25.564873>,  <32.967396, 33.689621, 25.463379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985142, 33.906380, 25.564873>,  <33.014721, 34.267643, 25.734030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985142, 33.906380, 25.564873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194797, -0.402802, 0.894318,
		-0.978052, 0.148513, -0.146146,
		-0.073950, -0.903158, -0.422891,
		32.962955, 33.635433, 25.438005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585331, 33.975372, 26.132362>,  <33.014721, 34.267643, 25.734030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585331, 33.975372, 26.132362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705181, 33.660480, 25.916775>,  <32.777092, 33.471546, 25.787422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705181, 33.660480, 25.916775>,  <32.585331, 33.975372, 26.132362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705181, 33.660480, 25.916775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294149, -0.613629, 0.732759,
		-0.907578, -0.061019, -0.415425,
		0.299629, -0.787233, -0.538968,
		32.795071, 33.424309, 25.755085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880898, 33.596001, 25.964804>,  <32.585331, 33.975372, 26.132362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880898, 33.596001, 25.964804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204659, 33.361938, 25.944977>,  <32.398914, 33.221500, 25.933081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204659, 33.361938, 25.944977>,  <31.880898, 33.596001, 25.964804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204659, 33.361938, 25.944977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375483, -0.580575, 0.722458,
		-0.451530, -0.566147, -0.689636,
		0.809403, -0.585158, -0.049568,
		32.447479, 33.186390, 25.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617188, 32.930241, 26.169598>,  <31.880898, 33.596001, 25.964804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617188, 32.930241, 26.169598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014538, 32.914413, 26.212749>,  <32.252949, 32.904919, 26.238640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014538, 32.914413, 26.212749>,  <31.617188, 32.930241, 26.169598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014538, 32.914413, 26.212749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101344, -0.744131, 0.660302,
		0.054152, -0.666861, -0.743212,
		0.993377, -0.039563, 0.107879,
		32.312550, 32.902546, 26.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828003, 32.256702, 26.217543>,  <31.617188, 32.930241, 26.169598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828003, 32.256702, 26.217543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155151, 32.433983, 26.364326>,  <32.351440, 32.540352, 26.452396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155151, 32.433983, 26.364326>,  <31.828003, 32.256702, 26.217543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155151, 32.433983, 26.364326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042130, -0.682158, 0.729990,
		0.573857, -0.581578, -0.576589,
		0.817871, 0.443202, 0.366959,
		32.400513, 32.566944, 26.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426109, 31.727909, 26.262398>,  <31.828003, 32.256702, 26.217543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426109, 31.727909, 26.262398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487133, 32.026730, 26.521206>,  <32.523746, 32.206024, 26.676491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487133, 32.026730, 26.521206>,  <32.426109, 31.727909, 26.262398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487133, 32.026730, 26.521206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071581, -0.644613, 0.761151,
		0.985698, -0.162438, -0.044870,
		0.152563, 0.747053, 0.647021,
		32.532902, 32.250847, 26.715313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832237, 31.436764, 26.789888>,  <32.426109, 31.727909, 26.262398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832237, 31.436764, 26.789888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731838, 31.793381, 26.940701>,  <32.671597, 32.007351, 27.031189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.731838, 31.793381, 26.940701>,  <32.832237, 31.436764, 26.789888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731838, 31.793381, 26.940701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137463, -0.418384, 0.897808,
		0.958177, 0.173522, 0.227568,
		-0.251000, 0.891541, 0.377033,
		32.656540, 32.060844, 27.053810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318764, 31.660614, 27.352612>,  <32.832237, 31.436764, 26.789888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318764, 31.660614, 27.352612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954662, 31.820698, 27.395069>,  <32.736202, 31.916748, 27.420544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954662, 31.820698, 27.395069>,  <33.318764, 31.660614, 27.352612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954662, 31.820698, 27.395069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130016, -0.519675, 0.844413,
		0.393101, 0.754832, 0.525071,
		-0.910257, 0.400207, 0.106144,
		32.681583, 31.940760, 27.426912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433109, 31.871916, 28.032042>,  <33.318764, 31.660614, 27.352612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433109, 31.871916, 28.032042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042393, 31.912647, 27.956665>,  <32.807964, 31.937086, 27.911440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042393, 31.912647, 27.956665>,  <33.433109, 31.871916, 28.032042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042393, 31.912647, 27.956665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213815, -0.515789, 0.829605,
		-0.012719, 0.850643, 0.525590,
		-0.976791, 0.101827, -0.188441,
		32.749355, 31.943195, 27.900133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139801, 31.839474, 28.723738>,  <33.433109, 31.871916, 28.032042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139801, 31.839474, 28.723738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828957, 31.791367, 28.476631>,  <32.642448, 31.762503, 28.328367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828957, 31.791367, 28.476631>,  <33.139801, 31.839474, 28.723738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828957, 31.791367, 28.476631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435994, -0.605011, 0.666237,
		-0.453883, 0.787081, 0.417723,
		-0.777110, -0.120269, -0.617767,
		32.595825, 31.755285, 28.291302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536373, 31.929415, 29.118450>,  <33.139801, 31.839474, 28.723738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536373, 31.929415, 29.118450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440941, 31.690590, 28.812092>,  <32.383682, 31.547295, 28.628277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440941, 31.690590, 28.812092>,  <32.536373, 31.929415, 29.118450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440941, 31.690590, 28.812092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466210, -0.621424, 0.629666,
		-0.851897, 0.507293, -0.130098,
		-0.238579, -0.597064, -0.765895,
		32.369366, 31.511471, 28.582323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008457, 31.569578, 29.401724>,  <32.536373, 31.929415, 29.118450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008457, 31.569578, 29.401724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099827, 31.369354, 29.067715>,  <32.154648, 31.249220, 28.867310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099827, 31.369354, 29.067715>,  <32.008457, 31.569578, 29.401724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099827, 31.369354, 29.067715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408816, -0.827731, 0.384356,
		-0.883568, 0.253576, -0.393708,
		0.228421, -0.500559, -0.835023,
		32.168354, 31.219187, 28.817207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422153, 31.154234, 29.071161>,  <32.008457, 31.569578, 29.401724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422153, 31.154234, 29.071161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750429, 30.960007, 28.950699>,  <31.947395, 30.843472, 28.878422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750429, 30.960007, 28.950699>,  <31.422153, 31.154234, 29.071161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750429, 30.960007, 28.950699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453693, -0.874183, 0.173109,
		-0.347322, -0.005436, -0.937730,
		0.820689, -0.485566, -0.301157,
		31.996635, 30.814337, 28.860352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178604, 30.543182, 28.799746>,  <31.422153, 31.154234, 29.071161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178604, 30.543182, 28.799746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562763, 30.489719, 28.897541>,  <31.793259, 30.457642, 28.956219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.562763, 30.489719, 28.897541>,  <31.178604, 30.543182, 28.799746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562763, 30.489719, 28.897541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199616, -0.942217, 0.269034,
		0.194404, -0.307183, -0.931582,
		0.960396, -0.133658, 0.244490,
		31.850882, 30.449621, 28.970888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431759, 30.008053, 28.452436>,  <31.178604, 30.543182, 28.799746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431759, 30.008053, 28.452436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664618, 30.033260, 28.776691>,  <31.804333, 30.048386, 28.971245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664618, 30.033260, 28.776691>,  <31.431759, 30.008053, 28.452436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664618, 30.033260, 28.776691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201718, -0.954629, 0.219075,
		0.787664, -0.291054, -0.543023,
		0.582148, 0.063020, 0.810637,
		31.839262, 30.052166, 29.019882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869080, 29.389803, 28.478010>,  <31.431759, 30.008053, 28.452436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869080, 29.389803, 28.478010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897009, 29.554520, 28.841450>,  <31.913767, 29.653349, 29.059513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897009, 29.554520, 28.841450>,  <31.869080, 29.389803, 28.478010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897009, 29.554520, 28.841450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082298, -0.910095, 0.406146,
		0.994159, 0.046417, -0.097436,
		0.069824, 0.411792, 0.908599,
		31.917955, 29.678057, 29.114029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386757, 29.080921, 28.869335>,  <31.869080, 29.389803, 28.478010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386757, 29.080921, 28.869335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158184, 29.230137, 29.161720>,  <32.021038, 29.319666, 29.337151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158184, 29.230137, 29.161720>,  <32.386757, 29.080921, 28.869335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158184, 29.230137, 29.161720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149077, -0.828705, 0.539467,
		0.806994, 0.417239, 0.417938,
		-0.571434, 0.373041, 0.730960,
		31.986753, 29.342049, 29.381008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652912, 28.653889, 29.451633>,  <32.386757, 29.080921, 28.869335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652912, 28.653889, 29.451633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327541, 28.834877, 29.597847>,  <32.132320, 28.943470, 29.685575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327541, 28.834877, 29.597847>,  <32.652912, 28.653889, 29.451633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327541, 28.834877, 29.597847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043355, -0.673830, 0.737614,
		0.580053, 0.584145, 0.567726,
		-0.813424, 0.452469, 0.365532,
		32.083515, 28.970617, 29.707506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716927, 28.506031, 30.111923>,  <32.652912, 28.653889, 29.451633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716927, 28.506031, 30.111923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338036, 28.626526, 30.068085>,  <32.110699, 28.698822, 30.041780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338036, 28.626526, 30.068085>,  <32.716927, 28.506031, 30.111923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338036, 28.626526, 30.068085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292152, -0.670576, 0.681890,
		0.131916, 0.677926, 0.723197,
		-0.947230, 0.301236, -0.109598,
		32.053867, 28.716896, 30.035206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580528, 28.596704, 30.801170>,  <32.716927, 28.506031, 30.111923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580528, 28.596704, 30.801170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270512, 28.531494, 30.556965>,  <32.084499, 28.492367, 30.410440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270512, 28.531494, 30.556965>,  <32.580528, 28.596704, 30.801170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270512, 28.531494, 30.556965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277700, -0.779978, 0.560818,
		-0.567617, 0.604199, 0.559245,
		-0.775044, -0.163028, -0.610515,
		32.037998, 28.482586, 30.373810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021301, 28.486977, 31.312895>,  <32.580528, 28.596704, 30.801170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021301, 28.486977, 31.312895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894461, 28.326801, 30.969013>,  <31.818356, 28.230696, 30.762684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894461, 28.326801, 30.969013>,  <32.021301, 28.486977, 31.312895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894461, 28.326801, 30.969013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398090, -0.766564, 0.503890,
		-0.860796, 0.502026, 0.083669,
		-0.317103, -0.400438, -0.859706,
		31.799330, 28.206669, 30.711102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243004, 28.312311, 31.415516>,  <32.021301, 28.486977, 31.312895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243004, 28.312311, 31.415516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427137, 28.083298, 31.144135>,  <31.537617, 27.945890, 30.981306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427137, 28.083298, 31.144135>,  <31.243004, 28.312311, 31.415516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427137, 28.083298, 31.144135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290135, -0.819303, 0.494535,
		-0.838998, -0.030806, -0.543262,
		0.460331, -0.572533, -0.678456,
		31.565237, 27.911537, 30.940599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776642, 27.783987, 31.327986>,  <31.243004, 28.312311, 31.415516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776642, 27.783987, 31.327986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116943, 27.631424, 31.183350>,  <31.321125, 27.539886, 31.096569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116943, 27.631424, 31.183350>,  <30.776642, 27.783987, 31.327986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116943, 27.631424, 31.183350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156367, -0.840536, 0.518699,
		-0.501764, -0.384744, -0.774729,
		0.850754, -0.381407, -0.361589,
		31.372169, 27.517002, 31.074873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652719, 27.081312, 31.006107>,  <30.776642, 27.783987, 31.327986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652719, 27.081312, 31.006107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044220, 27.080200, 31.088120>,  <31.279119, 27.079533, 31.137327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044220, 27.080200, 31.088120>,  <30.652719, 27.081312, 31.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044220, 27.080200, 31.088120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119844, -0.819103, 0.560988,
		0.166383, -0.573639, -0.802032,
		0.978751, -0.002780, 0.205032,
		31.337845, 27.079367, 31.149630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071211, 26.706854, 30.783503>,  <30.652719, 27.081312, 31.006107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071211, 26.706854, 30.783503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711496, 26.765347, 30.948380>,  <29.495668, 26.800442, 31.047306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711496, 26.765347, 30.948380>,  <30.071211, 26.706854, 30.783503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711496, 26.765347, 30.948380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090278, 0.860090, -0.502090,
		-0.427942, -0.488734, -0.760266,
		-0.899286, 0.146230, 0.412190,
		29.441711, 26.809216, 31.072037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545967, 26.794004, 30.249180>,  <30.071211, 26.706854, 30.783503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545967, 26.794004, 30.249180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357082, 26.960411, 30.560036>,  <29.243752, 27.060255, 30.746550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357082, 26.960411, 30.560036>,  <29.545967, 26.794004, 30.249180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357082, 26.960411, 30.560036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350120, 0.720580, -0.598482,
		-0.808971, -0.554702, -0.194609,
		-0.472210, 0.416017, 0.777140,
		29.215420, 27.085217, 30.793179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906551, 26.860876, 30.055735>,  <29.545967, 26.794004, 30.249180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906551, 26.860876, 30.055735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961056, 27.128456, 30.348019>,  <28.993757, 27.289005, 30.523390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961056, 27.128456, 30.348019>,  <28.906551, 26.860876, 30.055735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961056, 27.128456, 30.348019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345198, 0.723424, -0.597910,
		-0.928586, -0.170769, 0.329493,
		0.136259, 0.668951, 0.730710,
		29.001934, 27.329142, 30.567232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323227, 27.316868, 30.095343>,  <28.906551, 26.860876, 30.055735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323227, 27.316868, 30.095343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604534, 27.535370, 30.277340>,  <28.773319, 27.666471, 30.386538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.604534, 27.535370, 30.277340>,  <28.323227, 27.316868, 30.095343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.604534, 27.535370, 30.277340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259286, 0.793000, -0.551292,
		-0.661956, 0.269732, 0.699327,
		0.703267, 0.546257, 0.454994,
		28.815514, 27.699247, 30.413837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054878, 27.909452, 30.033092>,  <28.323227, 27.316868, 30.095343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054878, 27.909452, 30.033092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429983, 28.003601, 30.135235>,  <28.655046, 28.060089, 30.196520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429983, 28.003601, 30.135235>,  <28.054878, 27.909452, 30.033092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429983, 28.003601, 30.135235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041413, 0.805836, -0.590689,
		-0.344804, 0.543350, 0.765429,
		0.937761, 0.235370, 0.255354,
		28.711311, 28.074213, 30.211842>
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
