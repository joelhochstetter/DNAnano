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
	<4.032344, 0.899301, 1.976845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.652078, 0.816444, 2.069215>,  <3.423918, 0.766731, 2.124637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.652078, 0.816444, 2.069215>,  <4.032344, 0.899301, 1.976845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.652078, 0.816444, 2.069215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233830, 0.967662, -0.094628,
		-0.203857, -0.143957, -0.968359,
		-0.950666, -0.207141, 0.230926,
		3.366878, 0.754302, 2.138493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.631118, 1.434371, 1.526021>,  <4.032344, 0.899301, 1.976845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.631118, 1.434371, 1.526021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391324, 1.317272, 1.823993>,  <3.247448, 1.247013, 2.002775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.391324, 1.317272, 1.823993>,  <3.631118, 1.434371, 1.526021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.391324, 1.317272, 1.823993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340521, 0.935564, 0.093629,
		-0.724338, -0.197534, -0.660542,
		-0.599484, -0.292747, 0.744928,
		3.211479, 1.229448, 2.047471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.967102, 1.621297, 1.420292>,  <3.631118, 1.434371, 1.526021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.967102, 1.621297, 1.420292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.045430, 1.619217, 1.812543>,  <3.092427, 1.617969, 2.047893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.045430, 1.619217, 1.812543>,  <2.967102, 1.621297, 1.420292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.045430, 1.619217, 1.812543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253593, 0.965703, 0.055760,
		-0.947283, -0.259599, 0.187785,
		0.195820, -0.005200, 0.980626,
		3.104176, 1.617657, 2.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.359060, 1.937144, 1.744108>,  <2.967102, 1.621297, 1.420292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.359060, 1.937144, 1.744108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.708597, 1.991650, 1.930798>,  <2.918319, 2.024353, 2.042811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.708597, 1.991650, 1.930798>,  <2.359060, 1.937144, 1.744108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.708597, 1.991650, 1.930798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067375, 0.984600, -0.161319,
		-0.481517, 0.109522, 0.869567,
		0.873843, 0.136265, 0.466723,
		2.970750, 2.032529, 2.070814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.332530, 2.612298, 1.934310>,  <2.359060, 1.937144, 1.744108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.332530, 2.612298, 1.934310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.706000, 2.529499, 2.051203>,  <2.930083, 2.479819, 2.121338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.706000, 2.529499, 2.051203>,  <2.332530, 2.612298, 1.934310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.706000, 2.529499, 2.051203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216415, 0.976301, 0.000108,
		-0.285328, 0.063142, 0.956348,
		0.933677, -0.206999, 0.292231,
		2.986104, 2.467399, 2.138872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.648291, 3.078792, 2.514172>,  <2.332530, 2.612298, 1.934310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.648291, 3.078792, 2.514172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922976, 2.953815, 2.251629>,  <3.087788, 2.878830, 2.094103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.922976, 2.953815, 2.251629>,  <2.648291, 3.078792, 2.514172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.922976, 2.953815, 2.251629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205736, 0.949538, -0.236750,
		0.697206, 0.027543, 0.716341,
		0.686714, -0.312441, -0.656357,
		3.128991, 2.860083, 2.054722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.276172, 3.381028, 2.608982>,  <2.648291, 3.078792, 2.514172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.276172, 3.381028, 2.608982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280505, 3.279388, 2.222135>,  <3.283105, 3.218404, 1.990026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.280505, 3.279388, 2.222135>,  <3.276172, 3.381028, 2.608982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.280505, 3.279388, 2.222135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310283, 0.920287, -0.238320,
		0.950582, -0.297498, 0.088813,
		0.010833, -0.254100, -0.967117,
		3.283755, 3.203158, 1.931999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.965058, 3.555478, 2.337995>,  <3.276172, 3.381028, 2.608982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.965058, 3.555478, 2.337995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658402, 3.573807, 2.081819>,  <3.474409, 3.584804, 1.928113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.658402, 3.573807, 2.081819>,  <3.965058, 3.555478, 2.337995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.658402, 3.573807, 2.081819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286643, 0.916962, -0.277520,
		0.574543, -0.396336, -0.716113,
		-0.766639, 0.045822, -0.640441,
		3.428411, 3.587553, 1.889686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.697730, 1.267936, 5.028995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.413815, 1.163280, 4.767385>,  <4.243465, 1.100487, 4.610420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.413815, 1.163280, 4.767385>,  <4.697730, 1.267936, 5.028995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.413815, 1.163280, 4.767385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361793, -0.932049, -0.019778,
		-0.604406, -0.250659, 0.756216,
		-0.709788, -0.261640, -0.654023,
		4.200878, 1.084789, 4.571178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.374745, 0.686294, 5.281160>,  <4.697730, 1.267936, 5.028995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.374745, 0.686294, 5.281160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.347656, 0.690353, 4.882099>,  <4.331403, 0.692789, 4.642663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.347656, 0.690353, 4.882099>,  <4.374745, 0.686294, 5.281160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.347656, 0.690353, 4.882099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310348, -0.950126, -0.030733,
		-0.948207, -0.311701, 0.061196,
		-0.067723, 0.010149, -0.997653,
		4.327339, 0.693398, 4.582803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.901980, 0.152823, 5.018071>,  <4.374745, 0.686294, 5.281160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.901980, 0.152823, 5.018071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189064, 0.248714, 4.756561>,  <4.361315, 0.306249, 4.599655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.189064, 0.248714, 4.756561>,  <3.901980, 0.152823, 5.018071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.189064, 0.248714, 4.756561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549145, -0.772155, 0.319713,
		-0.428172, -0.588478, -0.685830,
		0.717711, 0.239728, -0.653775,
		4.404377, 0.320633, 4.560429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.231667, -0.436058, 4.600325>,  <3.901980, 0.152823, 5.018071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.231667, -0.436058, 4.600325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.499153, -0.149761, 4.680856>,  <4.659645, 0.022017, 4.729174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.499153, -0.149761, 4.680856>,  <4.231667, -0.436058, 4.600325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.499153, -0.149761, 4.680856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646624, -0.693502, 0.317700,
		0.367012, -0.082268, -0.926571,
		0.668715, 0.715743, 0.201327,
		4.699768, 0.064962, 4.741254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.860368, -0.639863, 4.310098>,  <4.231667, -0.436058, 4.600325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.860368, -0.639863, 4.310098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951630, -0.373505, 4.594219>,  <5.006387, -0.213690, 4.764692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.951630, -0.373505, 4.594219>,  <4.860368, -0.639863, 4.310098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.951630, -0.373505, 4.594219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691120, -0.624628, 0.363584,
		0.685784, 0.407951, -0.602724,
		0.228154, 0.665895, 0.710303,
		5.020076, -0.173736, 4.807310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.587656, -0.297858, 4.363944>,  <4.860368, -0.639863, 4.310098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.587656, -0.297858, 4.363944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.409906, -0.350151, 4.718444>,  <5.303257, -0.381527, 4.931144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.409906, -0.350151, 4.718444>,  <5.587656, -0.297858, 4.363944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.409906, -0.350151, 4.718444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673541, -0.701028, 0.234311,
		0.590655, 0.701048, 0.399572,
		-0.444375, -0.130731, 0.886251,
		5.276594, -0.389371, 4.984319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.482651, -0.104211, 3.644619>,  <5.587656, -0.297858, 4.363944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.482651, -0.104211, 3.644619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.293394, -0.428535, 3.506795>,  <5.179840, -0.623130, 3.424101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.293394, -0.428535, 3.506795>,  <5.482651, -0.104211, 3.644619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.293394, -0.428535, 3.506795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170214, 0.467871, -0.867251,
		0.864386, -0.351684, -0.359381,
		-0.473142, -0.810812, -0.344560,
		5.151452, -0.671779, 3.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.900090, -0.592428, 3.155344>,  <5.482651, -0.104211, 3.644619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.900090, -0.592428, 3.155344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.504032, -0.543854, 3.127439>,  <5.266397, -0.514709, 3.110697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.504032, -0.543854, 3.127439>,  <5.900090, -0.592428, 3.155344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.504032, -0.543854, 3.127439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100382, 0.268061, -0.958158,
		-0.097656, -0.955718, -0.277609,
		-0.990145, 0.121436, -0.069760,
		5.206989, -0.507423, 3.106512>
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
