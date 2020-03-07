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
	<0.254062, 4.851085, 1.019540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.213177, 4.487654, 1.181547>,  <0.188645, 4.269595, 1.278752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.213177, 4.487654, 1.181547>,  <0.254062, 4.851085, 1.019540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.213177, 4.487654, 1.181547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280818, 0.364237, 0.887960,
		-0.954303, 0.204499, 0.217915,
		-0.102214, -0.908577, 0.405019,
		0.182512, 4.215081, 1.303053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.111869, 5.067996, 1.648899>,  <0.254062, 4.851085, 1.019540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.111869, 5.067996, 1.648899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.219894, 4.683971, 1.678154>,  <0.284710, 4.453557, 1.695707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.219894, 4.683971, 1.678154>,  <0.111869, 5.067996, 1.648899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.219894, 4.683971, 1.678154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372560, 0.174239, 0.911504,
		-0.887843, -0.218917, 0.404736,
		0.270065, -0.960061, 0.073138,
		0.300914, 4.395953, 1.700095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.116758, 4.955861, 2.228853>,  <0.111869, 5.067996, 1.648899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.116758, 4.955861, 2.228853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179012, 4.696812, 2.155275>,  <0.356474, 4.541382, 2.111129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.179012, 4.696812, 2.155275>,  <-0.116758, 4.955861, 2.228853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.179012, 4.696812, 2.155275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327704, 0.107555, 0.938638,
		-0.588099, -0.754332, 0.291757,
		0.739425, -0.647623, -0.183944,
		0.400840, 4.502525, 2.100092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.324425, 4.433609, 2.577300>,  <-0.116758, 4.955861, 2.228853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.324425, 4.433609, 2.577300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.067276, 4.490183, 2.519249>,  <0.302296, 4.524127, 2.484418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.067276, 4.490183, 2.519249>,  <-0.324425, 4.433609, 2.577300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.067276, 4.490183, 2.519249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141145, 0.037843, 0.989265,
		0.145409, -0.989224, 0.017095,
		0.979252, 0.141436, -0.145127,
		0.361052, 4.532613, 2.475711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.008685, 3.859939, 2.959441>,  <-0.324425, 4.433609, 2.577300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.008685, 3.859939, 2.959441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.202961, 4.208044, 2.926584>,  <0.319527, 4.416907, 2.906870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.202961, 4.208044, 2.926584>,  <0.008685, 3.859939, 2.959441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.202961, 4.208044, 2.926584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115310, 0.029363, 0.992895,
		0.866492, -0.491711, -0.086089,
		0.485690, 0.870263, -0.082142,
		0.348668, 4.469123, 2.901942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.613401, 3.830304, 3.325501>,  <0.008685, 3.859939, 2.959441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.613401, 3.830304, 3.325501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.543919, 4.224121, 3.316524>,  <0.502229, 4.460411, 3.311137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.543919, 4.224121, 3.316524>,  <0.613401, 3.830304, 3.325501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.543919, 4.224121, 3.316524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189342, 0.055754, 0.980327,
		0.966424, 0.166039, -0.196099,
		-0.173706, 0.984542, -0.022444,
		0.491807, 4.519484, 3.309790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.000440, 4.117195, 3.927804>,  <0.613401, 3.830304, 3.325501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.000440, 4.117195, 3.927804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776054, 4.426476, 3.809498>,  <0.641423, 4.612044, 3.738514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.776054, 4.426476, 3.809498>,  <1.000440, 4.117195, 3.927804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.776054, 4.426476, 3.809498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174408, 0.238873, 0.955260,
		0.809259, 0.587451, 0.000853,
		-0.560965, 0.773202, -0.295766,
		0.607765, 4.658436, 3.720768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.168103, 4.684669, 4.391794>,  <1.000440, 4.117195, 3.927804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.168103, 4.684669, 4.391794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802795, 4.672531, 4.229303>,  <0.583611, 4.665248, 4.131809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.802795, 4.672531, 4.229303>,  <1.168103, 4.684669, 4.391794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.802795, 4.672531, 4.229303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406793, 0.120423, 0.905549,
		0.021440, 0.992259, -0.122323,
		-0.913269, -0.030345, -0.406225,
		0.528815, 4.663428, 4.107436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.549956, 4.483860, 4.905303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.198479, 4.656849, 4.986164>,  <-0.012408, 4.760642, 5.034680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.198479, 4.656849, 4.986164>,  <0.549956, 4.483860, 4.905303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.198479, 4.656849, 4.986164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046074, 0.344651, -0.937599,
		-0.475157, -0.833177, -0.282917,
		-0.878694, 0.432472, 0.202151,
		-0.065130, 4.786590, 5.046810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.110252, 4.097850, 4.472146>,  <0.549956, 4.483860, 4.905303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.110252, 4.097850, 4.472146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.014771, 4.465763, 4.567062>,  <-0.089784, 4.686511, 4.624012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.014771, 4.465763, 4.567062>,  <0.110252, 4.097850, 4.472146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.014771, 4.465763, 4.567062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124932, 0.287442, -0.949615,
		-0.941648, -0.267162, -0.204752,
		-0.312555, 0.919784, 0.237292,
		-0.108537, 4.741698, 4.638250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.320000, 4.290293, 3.941246>,  <0.110251, 4.097850, 4.472146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.320000, 4.290293, 3.941246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.170410, 4.618396, 4.114368>,  <-0.080656, 4.815258, 4.218242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.170410, 4.618396, 4.114368>,  <-0.320000, 4.290293, 3.941246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.170410, 4.618396, 4.114368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357959, 0.302847, -0.883260,
		-0.855574, 0.485244, -0.180362,
		0.373975, 0.820257, 0.432805,
		-0.058218, 4.864473, 4.244210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.574569, 4.920305, 3.753210>,  <-0.320000, 4.290293, 3.941246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.574569, 4.920305, 3.753210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197678, 4.986319, 3.869808>,  <0.028457, 5.025927, 3.939767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.197678, 4.986319, 3.869808>,  <-0.574569, 4.920305, 3.753210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.197678, 4.986319, 3.869808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257837, 0.198194, -0.945642,
		-0.213836, 0.966169, 0.144192,
		0.942228, 0.165035, 0.291496,
		0.084991, 5.035829, 3.957257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.338120, 5.554525, 3.400819>,  <-0.574569, 4.920305, 3.753210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.338120, 5.554525, 3.400819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.029022, 5.324814, 3.508945>,  <0.156437, 5.186987, 3.573822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.029022, 5.324814, 3.508945>,  <-0.338120, 5.554525, 3.400819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.029022, 5.324814, 3.508945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297979, -0.047801, -0.953375,
		0.560423, 0.817264, 0.134185,
		0.772745, -0.574277, 0.270317,
		0.202801, 5.152531, 3.590040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.300999, 5.790404, 3.136363>,  <-0.338120, 5.554525, 3.400819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.300999, 5.790404, 3.136363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.360260, 5.397896, 3.185608>,  <0.395817, 5.162391, 3.215155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.360260, 5.397896, 3.185608>,  <0.300999, 5.790404, 3.136363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.360260, 5.397896, 3.185608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250998, -0.083103, -0.964414,
		0.956583, 0.173781, 0.233985,
		0.148152, -0.981272, 0.123114,
		0.404706, 5.103514, 3.222542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.946999, 5.652815, 2.807278>,  <0.300999, 5.790404, 3.136363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.946999, 5.652815, 2.807278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.730392, 5.317005, 2.824968>,  <0.600428, 5.115519, 2.835582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.730392, 5.317005, 2.824968>,  <0.946999, 5.652815, 2.807278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.730392, 5.317005, 2.824968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058260, -0.089956, -0.994240,
		0.838669, -0.535821, 0.097623,
		-0.541516, -0.839526, 0.044226,
		0.567937, 5.065147, 2.838236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.243393, 5.120827, 2.324284>,  <0.946999, 5.652815, 2.807278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.243393, 5.120827, 2.324284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.860352, 5.028412, 2.393120>,  <0.630526, 4.972963, 2.434422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.860352, 5.028412, 2.393120>,  <1.243393, 5.120827, 2.324284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.860352, 5.028412, 2.393120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207826, 0.140337, -0.968046,
		0.199506, -0.962770, -0.182403,
		-0.957604, -0.231040, 0.172090,
		0.573070, 4.959101, 2.444747>
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
