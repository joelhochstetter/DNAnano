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
	<-1.061521, 3.788591, 0.717373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.936329, 4.084980, 0.955029>,  <-0.861213, 4.262814, 1.097622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.936329, 4.084980, 0.955029>,  <-1.061521, 3.788591, 0.717373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.936329, 4.084980, 0.955029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852330, 0.056861, -0.519904,
		-0.419018, 0.669123, -0.613757,
		0.312981, 0.740973, 0.594140,
		-0.842435, 4.307272, 1.133271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.000091, 4.500984, 0.431500>,  <-1.061521, 3.788591, 0.717373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.000091, 4.500984, 0.431500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.732764, 4.384968, 0.705502>,  <-0.572368, 4.315358, 0.869902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.732764, 4.384968, 0.705502>,  <-1.000091, 4.500984, 0.431500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.732764, 4.384968, 0.705502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743759, 0.276896, -0.608401,
		-0.013214, 0.916082, 0.400774,
		0.668317, -0.290040, 0.685003,
		-0.532269, 4.297956, 0.911002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.466509, 5.004297, 0.516200>,  <-1.000091, 4.500984, 0.431500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.466509, 5.004297, 0.516200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.320818, 4.652946, 0.640003>,  <-0.233404, 4.442136, 0.714285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.320818, 4.652946, 0.640003>,  <-0.466509, 5.004297, 0.516200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.320818, 4.652946, 0.640003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796027, 0.121122, -0.593018,
		0.483404, 0.462369, 0.743327,
		0.364227, -0.878376, 0.309508,
		-0.211550, 4.389434, 0.732855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.218513, 5.108317, 0.933610>,  <-0.466509, 5.004297, 0.516200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.218513, 5.108317, 0.933610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.230233, 4.753716, 0.748894>,  <0.237265, 4.540954, 0.638064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.230233, 4.753716, 0.748894>,  <0.218513, 5.108317, 0.933610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.230233, 4.753716, 0.748894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733296, 0.333017, -0.592770,
		0.679277, -0.321260, 0.659829,
		0.029301, -0.886505, -0.461790,
		0.239024, 4.487764, 0.610357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.874064, 4.786495, 0.993256>,  <0.218513, 5.108317, 0.933610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.874064, 4.786495, 0.993256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.730530, 4.633293, 0.652775>,  <0.644409, 4.541372, 0.448486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.730530, 4.633293, 0.652775>,  <0.874064, 4.786495, 0.993256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.730530, 4.633293, 0.652775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887770, 0.141599, -0.437966,
		0.288272, -0.912830, 0.289208,
		-0.358837, -0.383003, -0.851202,
		0.622879, 4.518392, 0.397414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.273340, 4.140739, 0.814798>,  <0.874064, 4.786495, 0.993256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.273340, 4.140739, 0.814798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.111379, 4.317310, 0.494499>,  <1.014202, 4.423253, 0.302320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.111379, 4.317310, 0.494499>,  <1.273340, 4.140739, 0.814798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111379, 4.317310, 0.494499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906994, 0.082967, -0.412890,
		-0.115826, -0.893453, -0.433966,
		-0.404902, 0.441428, -0.800747,
		0.989908, 4.449739, 0.254275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.678294, 3.907708, 0.299177>,  <1.273340, 4.140739, 0.814798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.678294, 3.907708, 0.299177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.492811, 4.206779, 0.109039>,  <1.381521, 4.386222, -0.005044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.492811, 4.206779, 0.109039>,  <1.678294, 3.907708, 0.299177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.492811, 4.206779, 0.109039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744551, 0.038046, -0.666480,
		-0.480227, -0.662971, -0.574327,
		-0.463708, 0.747678, -0.475345,
		1.353699, 4.431083, -0.033564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.731112, 3.716625, -0.364657>,  <1.678294, 3.907708, 0.299177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.731112, 3.716625, -0.364657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698599, 4.114948, -0.347870>,  <1.679091, 4.353942, -0.337798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.698599, 4.114948, -0.347870>,  <1.731112, 3.716625, -0.364657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.698599, 4.114948, -0.347870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640608, 0.084454, -0.763210,
		-0.763554, -0.035152, -0.644787,
		-0.081283, 0.995807, 0.041967,
		1.674214, 4.413691, -0.335280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.731059, 5.292541, 5.354738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640137, 5.384720, 4.976273>,  <2.585583, 5.440027, 4.749193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.640137, 5.384720, 4.976273>,  <2.731059, 5.292541, 5.354738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.640137, 5.384720, 4.976273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863275, -0.497307, 0.086268,
		-0.450654, 0.836409, 0.311980,
		-0.227305, 0.230447, -0.946164,
		2.571945, 5.453854, 4.692423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.045240, 5.130566, 5.334038>,  <2.731059, 5.292541, 5.354738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.045240, 5.130566, 5.334038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132328, 5.184689, 4.947403>,  <2.184581, 5.217162, 4.715422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132328, 5.184689, 4.947403>,  <2.045240, 5.130566, 5.334038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.132328, 5.184689, 4.947403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892516, -0.373185, -0.253275,
		-0.394986, 0.917837, 0.039514,
		0.217719, 0.135307, -0.966587,
		2.197644, 5.225281, 4.657427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.557644, 5.448216, 5.034801>,  <2.045240, 5.130566, 5.334038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.557644, 5.448216, 5.034801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.733849, 5.223286, 4.754875>,  <1.839571, 5.088327, 4.586920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.733849, 5.223286, 4.754875>,  <1.557644, 5.448216, 5.034801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.733849, 5.223286, 4.754875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819427, -0.570288, -0.057556,
		-0.366730, 0.598799, -0.712004,
		0.440511, -0.562327, -0.699813,
		1.866002, 5.054587, 4.544931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.276892, 5.594213, 4.347056>,  <1.557644, 5.448216, 5.034801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.276892, 5.594213, 4.347056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.381884, 5.222424, 4.450737>,  <1.444879, 4.999350, 4.512945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.381884, 5.222424, 4.450737>,  <1.276892, 5.594213, 4.347056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.381884, 5.222424, 4.450737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956081, -0.214201, 0.200066,
		-0.130435, -0.300331, -0.944875,
		0.262480, -0.929472, 0.259202,
		1.460627, 4.943582, 4.528498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.711579, 5.239093, 4.196809>,  <1.276892, 5.594213, 4.347056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.711579, 5.239093, 4.196809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.924362, 4.981449, 4.416679>,  <1.052032, 4.826863, 4.548602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.924362, 4.981449, 4.416679>,  <0.711579, 5.239093, 4.196809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.924362, 4.981449, 4.416679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840495, -0.480530, 0.250316,
		0.102905, -0.595158, -0.796993,
		0.531957, -0.644110, 0.549677,
		1.083949, 4.788216, 4.581582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.255828, 4.735623, 4.192754>,  <0.711579, 5.239093, 4.196809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.255828, 4.735623, 4.192754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.515310, 4.635891, 4.480370>,  <0.670999, 4.576052, 4.652939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.515310, 4.635891, 4.480370>,  <0.255828, 4.735623, 4.192754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.515310, 4.635891, 4.480370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706498, -0.548531, 0.447185,
		0.282919, -0.798090, -0.531986,
		0.648704, -0.249330, 0.719039,
		0.709922, 4.561092, 4.696081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.290040, 3.936977, 4.309310>,  <0.255828, 4.735623, 4.192754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.290040, 3.936977, 4.309310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379337, 4.130398, 4.647858>,  <0.432916, 4.246450, 4.850986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.379337, 4.130398, 4.647858>,  <0.290040, 3.936977, 4.309310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.379337, 4.130398, 4.647858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701626, -0.523038, 0.483892,
		0.676670, -0.701860, 0.222508,
		0.223244, 0.483553, 0.846368,
		0.446311, 4.275464, 4.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.038272, 3.408452, 4.837842>,  <0.290040, 3.936977, 4.309310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.038272, 3.408452, 4.837842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.110264, 3.725903, 5.070312>,  <0.153459, 3.916373, 5.209795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.110264, 3.725903, 5.070312>,  <0.038272, 3.408452, 4.837842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.110264, 3.725903, 5.070312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789738, -0.235660, 0.566372,
		0.586447, -0.560912, 0.584343,
		0.179979, 0.793626, 0.581176,
		0.164258, 3.963990, 5.244666>
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
