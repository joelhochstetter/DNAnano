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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<37.880020, 47.176716, 55.775826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171432, 46.939987, 55.913803>,  <38.346279, 46.797951, 55.996590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171432, 46.939987, 55.913803>,  <37.880020, 47.176716, 55.775826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171432, 46.939987, 55.913803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357967, -0.100406, -0.928320,
		0.584034, 0.799791, 0.138704,
		0.728536, -0.591821, 0.344940,
		38.389992, 46.762440, 56.017284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556038, 47.313560, 55.441601>,  <37.880020, 47.176716, 55.775826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556038, 47.313560, 55.441601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590874, 46.938988, 55.577549>,  <38.611774, 46.714245, 55.659119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590874, 46.938988, 55.577549>,  <38.556038, 47.313560, 55.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590874, 46.938988, 55.577549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472822, -0.261432, -0.841482,
		0.876843, 0.233984, 0.419997,
		0.087093, -0.936432, 0.339867,
		38.617001, 46.658058, 55.679508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316986, 47.115726, 55.307877>,  <38.556038, 47.313560, 55.441601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316986, 47.115726, 55.307877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175812, 46.750031, 55.387482>,  <39.091106, 46.530613, 55.435246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.175812, 46.750031, 55.387482>,  <39.316986, 47.115726, 55.307877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175812, 46.750031, 55.387482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747427, -0.403439, -0.527815,
		0.562837, -0.037541, 0.825715,
		-0.352940, -0.914236, 0.199011,
		39.069931, 46.475761, 55.447186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876297, 46.578571, 55.435665>,  <39.316986, 47.115726, 55.307877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876297, 46.578571, 55.435665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558807, 46.356934, 55.335274>,  <39.368313, 46.223953, 55.275040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558807, 46.356934, 55.335274>,  <39.876297, 46.578571, 55.435665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558807, 46.356934, 55.335274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568646, -0.529399, -0.629585,
		0.215980, -0.642433, 0.735277,
		-0.793721, -0.554091, -0.250977,
		39.320690, 46.190708, 55.259979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119663, 45.936779, 55.542725>,  <39.876297, 46.578571, 55.435665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119663, 45.936779, 55.542725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829155, 45.896534, 55.270721>,  <39.654850, 45.872387, 55.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829155, 45.896534, 55.270721>,  <40.119663, 45.936779, 55.542725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829155, 45.896534, 55.270721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665456, -0.350900, -0.658815,
		-0.172329, -0.930992, 0.321802,
		-0.726272, -0.100612, -0.680005,
		39.611275, 45.866352, 55.066719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214931, 45.254311, 55.189312>,  <40.119663, 45.936779, 55.542725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214931, 45.254311, 55.189312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004852, 45.484509, 54.938560>,  <39.878807, 45.622627, 54.788109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004852, 45.484509, 54.938560>,  <40.214931, 45.254311, 55.189312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004852, 45.484509, 54.938560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645899, -0.210047, -0.733958,
		-0.554063, -0.790371, -0.261396,
		-0.525194, 0.575495, -0.626879,
		39.847294, 45.657158, 54.750496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216637, 44.874187, 54.647011>,  <40.214931, 45.254311, 55.189312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216637, 44.874187, 54.647011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101463, 45.223804, 54.490475>,  <40.032360, 45.433575, 54.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.101463, 45.223804, 54.490475>,  <40.216637, 44.874187, 54.647011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101463, 45.223804, 54.490475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434119, -0.245123, -0.866866,
		-0.853603, -0.419486, -0.308859,
		-0.287929, 0.874040, -0.391344,
		40.015083, 45.486015, 54.373070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046047, 44.736015, 53.969173>,  <40.216637, 44.874187, 54.647011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046047, 44.736015, 53.969173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063812, 45.133434, 53.927433>,  <40.074471, 45.371887, 53.902390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063812, 45.133434, 53.927433>,  <40.046047, 44.736015, 53.969173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063812, 45.133434, 53.927433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337963, -0.113238, -0.934322,
		-0.940111, 0.006228, -0.340811,
		0.044412, 0.993548, -0.104352,
		40.077137, 45.431499, 53.896126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643387, 44.870304, 53.354778>,  <40.046047, 44.736015, 53.969173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643387, 44.870304, 53.354778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896019, 45.176643, 53.403084>,  <40.047600, 45.360447, 53.432068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896019, 45.176643, 53.403084>,  <39.643387, 44.870304, 53.354778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896019, 45.176643, 53.403084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232785, -0.038737, -0.971756,
		-0.739535, 0.641859, -0.202743,
		0.631584, 0.765844, 0.120767,
		40.085495, 45.406395, 53.439316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464138, 45.359734, 52.835693>,  <39.643387, 44.870304, 53.354778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464138, 45.359734, 52.835693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824265, 45.501461, 52.936798>,  <40.040340, 45.586498, 52.997459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824265, 45.501461, 52.936798>,  <39.464138, 45.359734, 52.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824265, 45.501461, 52.936798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262862, 0.020201, -0.964622,
		-0.346889, 0.934907, -0.074949,
		0.900317, 0.354318, 0.252759,
		40.094360, 45.607758, 53.012627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636757, 45.952217, 52.405979>,  <39.464138, 45.359734, 52.835693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636757, 45.952217, 52.405979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983086, 45.806755, 52.543449>,  <40.190884, 45.719479, 52.625931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.983086, 45.806755, 52.543449>,  <39.636757, 45.952217, 52.405979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983086, 45.806755, 52.543449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353873, -0.040542, -0.934414,
		0.353738, 0.930651, 0.093586,
		0.865819, -0.363655, 0.343674,
		40.242832, 45.697659, 52.646553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090900, 46.297832, 52.091846>,  <39.636757, 45.952217, 52.405979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090900, 46.297832, 52.091846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320175, 45.982796, 52.182320>,  <40.457741, 45.793774, 52.236603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.320175, 45.982796, 52.182320>,  <40.090900, 46.297832, 52.091846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320175, 45.982796, 52.182320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277710, -0.072986, -0.957888,
		0.770933, 0.611861, 0.176888,
		0.573184, -0.787591, 0.226187,
		40.492130, 45.746517, 52.250175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666473, 46.412140, 51.744057>,  <40.090900, 46.297832, 52.091846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666473, 46.412140, 51.744057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659721, 46.018501, 51.814789>,  <40.655670, 45.782318, 51.857227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659721, 46.018501, 51.814789>,  <40.666473, 46.412140, 51.744057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659721, 46.018501, 51.814789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291277, -0.174027, -0.940677,
		0.956490, 0.035629, 0.289582,
		-0.016880, -0.984096, 0.176832,
		40.654659, 45.723274, 51.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291798, 46.157345, 51.523312>,  <40.666473, 46.412140, 51.744057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291798, 46.157345, 51.523312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040993, 45.845848, 51.515152>,  <40.890511, 45.658951, 51.510258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040993, 45.845848, 51.515152>,  <41.291798, 46.157345, 51.523312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040993, 45.845848, 51.515152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437253, -0.330148, -0.836548,
		0.644721, -0.533445, 0.547514,
		-0.627013, -0.778742, -0.020397,
		40.852890, 45.612225, 51.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661961, 45.748100, 51.282768>,  <41.291798, 46.157345, 51.523312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661961, 45.748100, 51.282768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304260, 45.577938, 51.227127>,  <41.089642, 45.475842, 51.193741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304260, 45.577938, 51.227127>,  <41.661961, 45.748100, 51.282768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304260, 45.577938, 51.227127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302913, -0.346449, -0.887816,
		0.329487, -0.836066, 0.438672,
		-0.894250, -0.425403, -0.139105,
		41.035984, 45.450317, 51.185394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796276, 44.976967, 51.108551>,  <41.661961, 45.748100, 51.282768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796276, 44.976967, 51.108551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452049, 45.124683, 50.968239>,  <41.245514, 45.213314, 50.884052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452049, 45.124683, 50.968239>,  <41.796276, 44.976967, 51.108551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452049, 45.124683, 50.968239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207325, -0.375080, -0.903510,
		-0.465234, -0.850256, 0.246217,
		-0.860566, 0.369296, -0.350779,
		41.193878, 45.235474, 50.863007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609394, 44.507111, 50.697521>,  <41.796276, 44.976967, 51.108551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609394, 44.507111, 50.697521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380066, 44.811161, 50.575211>,  <41.242470, 44.993591, 50.501823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380066, 44.811161, 50.575211>,  <41.609394, 44.507111, 50.697521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380066, 44.811161, 50.575211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209027, -0.225159, -0.951636,
		-0.792217, -0.609512, -0.029799,
		-0.573324, 0.760130, -0.305780,
		41.208069, 45.039200, 50.483479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008911, 44.255852, 50.347935>,  <41.609394, 44.507111, 50.697521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008911, 44.255852, 50.347935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084427, 44.628010, 50.222252>,  <41.129738, 44.851303, 50.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084427, 44.628010, 50.222252>,  <41.008911, 44.255852, 50.347935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084427, 44.628010, 50.222252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085557, -0.334331, -0.938564,
		-0.978283, 0.150312, -0.142721,
		0.188794, 0.930392, -0.314210,
		41.141064, 44.907127, 50.127991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930401, 44.130421, 49.670250>,  <41.008911, 44.255852, 50.347935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930401, 44.130421, 49.670250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018806, 44.520466, 49.663181>,  <41.071850, 44.754494, 49.658939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.018806, 44.520466, 49.663181>,  <40.930401, 44.130421, 49.670250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018806, 44.520466, 49.663181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055599, -0.030688, -0.997982,
		-0.973685, 0.219584, -0.060998,
		0.221013, 0.975111, -0.017672,
		41.085110, 44.813000, 49.657879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570511, 44.441017, 49.187595>,  <40.930401, 44.130421, 49.670250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570511, 44.441017, 49.187595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889366, 44.681465, 49.210297>,  <41.080681, 44.825733, 49.223919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889366, 44.681465, 49.210297>,  <40.570511, 44.441017, 49.187595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889366, 44.681465, 49.210297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128283, -0.076761, -0.988762,
		-0.590011, 0.795462, -0.138303,
		0.797139, 0.601122, 0.056755,
		41.128510, 44.861801, 49.227322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483871, 44.911163, 48.573380>,  <40.570511, 44.441017, 49.187595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483871, 44.911163, 48.573380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854012, 44.894669, 48.724129>,  <41.076096, 44.884773, 48.814579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854012, 44.894669, 48.724129>,  <40.483871, 44.911163, 48.573380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854012, 44.894669, 48.724129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342752, -0.333836, -0.878109,
		0.162024, 0.941729, -0.294780,
		0.925348, -0.041238, 0.376869,
		41.131615, 44.882298, 48.837189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922138, 45.263443, 48.128643>,  <40.483871, 44.911163, 48.573380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922138, 45.263443, 48.128643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181862, 45.023209, 48.315273>,  <41.337696, 44.879066, 48.427254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.181862, 45.023209, 48.315273>,  <40.922138, 45.263443, 48.128643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181862, 45.023209, 48.315273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525114, -0.089742, -0.846287,
		0.550138, 0.794509, 0.257105,
		0.649309, -0.600585, 0.466578,
		41.376656, 44.843033, 48.455246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499893, 45.515812, 47.854076>,  <40.922138, 45.263443, 48.128643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499893, 45.515812, 47.854076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540596, 45.145897, 48.000721>,  <41.565018, 44.923946, 48.088707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.540596, 45.145897, 48.000721>,  <41.499893, 45.515812, 47.854076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.540596, 45.145897, 48.000721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482370, -0.276440, -0.831204,
		0.870038, 0.261421, 0.417963,
		0.101753, -0.924792, 0.366615,
		41.571121, 44.868458, 48.110706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165112, 45.346172, 47.809925>,  <41.499893, 45.515812, 47.854076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165112, 45.346172, 47.809925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961998, 45.001850, 47.823647>,  <41.840130, 44.795258, 47.831879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961998, 45.001850, 47.823647>,  <42.165112, 45.346172, 47.809925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961998, 45.001850, 47.823647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263713, -0.193222, -0.945051,
		0.820128, -0.470837, 0.325119,
		-0.507785, -0.860801, 0.034301,
		41.809662, 44.743610, 47.833939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653671, 44.939934, 47.575829>,  <42.165112, 45.346172, 47.809925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653671, 44.939934, 47.575829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338509, 44.694832, 47.551373>,  <42.149410, 44.547771, 47.536701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338509, 44.694832, 47.551373>,  <42.653671, 44.939934, 47.575829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338509, 44.694832, 47.551373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308896, -0.307394, -0.900051,
		0.532714, -0.728042, 0.431474,
		-0.787908, -0.612750, -0.061136,
		42.102135, 44.511005, 47.533031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943104, 44.356113, 47.192215>,  <42.653671, 44.939934, 47.575829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943104, 44.356113, 47.192215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546646, 44.363552, 47.139618>,  <42.308773, 44.368015, 47.108059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.546646, 44.363552, 47.139618>,  <42.943104, 44.356113, 47.192215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.546646, 44.363552, 47.139618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124298, -0.218643, -0.967856,
		-0.046746, -0.975628, 0.214395,
		-0.991143, 0.018594, -0.131489,
		42.249302, 44.369129, 47.100170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.854080, 43.825996, 46.756382>,  <42.943104, 44.356113, 47.192215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.854080, 43.825996, 46.756382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510292, 44.026901, 46.718346>,  <42.304020, 44.147442, 46.695522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510292, 44.026901, 46.718346>,  <42.854080, 43.825996, 46.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510292, 44.026901, 46.718346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032614, -0.131768, -0.990744,
		-0.510140, -0.854619, 0.096870,
		-0.859473, 0.502259, -0.095093,
		42.252449, 44.177578, 46.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344223, 43.419228, 46.320553>,  <42.854080, 43.825996, 46.756382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344223, 43.419228, 46.320553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259392, 43.809757, 46.303509>,  <42.208492, 44.044075, 46.293282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259392, 43.809757, 46.303509>,  <42.344223, 43.419228, 46.320553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259392, 43.809757, 46.303509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011098, -0.046008, -0.998879,
		-0.977190, -0.211365, 0.020592,
		-0.212076, 0.976324, -0.042613,
		42.195770, 44.102654, 46.290726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738541, 43.539642, 45.807514>,  <42.344223, 43.419228, 46.320553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738541, 43.539642, 45.807514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890015, 43.906281, 45.858829>,  <41.980900, 44.126263, 45.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890015, 43.906281, 45.858829>,  <41.738541, 43.539642, 45.807514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890015, 43.906281, 45.858829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048414, 0.158044, -0.986245,
		-0.924260, 0.367262, 0.104224,
		0.378682, 0.916592, 0.128293,
		42.003620, 44.181259, 45.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216499, 43.942505, 45.484623>,  <41.738541, 43.539642, 45.807514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216499, 43.942505, 45.484623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556442, 44.152977, 45.496468>,  <41.760406, 44.279259, 45.503574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556442, 44.152977, 45.496468>,  <41.216499, 43.942505, 45.484623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556442, 44.152977, 45.496468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002150, 0.059643, -0.998217,
		-0.527009, 0.848278, 0.051820,
		0.849857, 0.526181, 0.029609,
		41.811398, 44.310833, 45.505352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010807, 44.475311, 44.987942>,  <41.216499, 43.942505, 45.484623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010807, 44.475311, 44.987942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407898, 44.452648, 45.030441>,  <41.646152, 44.439049, 45.055939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407898, 44.452648, 45.030441>,  <41.010807, 44.475311, 44.987942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407898, 44.452648, 45.030441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118061, 0.284593, -0.951351,
		0.023665, 0.956973, 0.289211,
		0.992724, -0.056659, 0.106246,
		41.705715, 44.435650, 45.062317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327702, 45.096874, 44.727020>,  <41.010807, 44.475311, 44.987942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327702, 45.096874, 44.727020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604439, 44.809944, 44.694038>,  <41.770481, 44.637787, 44.674248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604439, 44.809944, 44.694038>,  <41.327702, 45.096874, 44.727020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604439, 44.809944, 44.694038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246176, 0.341692, -0.906997,
		0.678782, 0.607205, 0.412986,
		0.691847, -0.717321, -0.082455,
		41.811993, 44.594749, 44.669300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826900, 45.340027, 44.268192>,  <41.327702, 45.096874, 44.727020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826900, 45.340027, 44.268192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979607, 44.970512, 44.256367>,  <42.071232, 44.748802, 44.249271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979607, 44.970512, 44.256367>,  <41.826900, 45.340027, 44.268192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979607, 44.970512, 44.256367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134819, 0.087302, -0.987017,
		0.914374, 0.372823, 0.157873,
		0.381765, -0.923786, -0.029563,
		42.094135, 44.693375, 44.247498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485394, 45.377987, 43.874199>,  <41.826900, 45.340027, 44.268192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485394, 45.377987, 43.874199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333168, 45.008999, 43.848217>,  <42.241833, 44.787605, 43.832626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333168, 45.008999, 43.848217>,  <42.485394, 45.377987, 43.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333168, 45.008999, 43.848217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103009, 0.027518, -0.994300,
		0.919001, -0.385082, 0.084551,
		-0.380560, -0.922472, -0.064956,
		42.219002, 44.732258, 43.828732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818077, 45.108887, 43.379543>,  <42.485394, 45.377987, 43.874199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818077, 45.108887, 43.379543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519630, 44.843918, 43.406403>,  <42.340561, 44.684937, 43.422516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.519630, 44.843918, 43.406403>,  <42.818077, 45.108887, 43.379543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.519630, 44.843918, 43.406403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044208, -0.149911, -0.987710,
		0.664346, -0.733979, 0.141136,
		-0.746117, -0.662420, 0.067145,
		42.295795, 44.645191, 43.426544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888905, 44.364162, 42.947979>,  <42.818077, 45.108887, 43.379543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888905, 44.364162, 42.947979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497459, 44.435135, 42.989616>,  <42.262592, 44.477718, 43.014599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497459, 44.435135, 42.989616>,  <42.888905, 44.364162, 42.947979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497459, 44.435135, 42.989616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138043, -0.191243, -0.971787,
		-0.152511, -0.965374, 0.211645,
		-0.978614, 0.177424, 0.104097,
		42.203876, 44.488365, 43.020844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.634254, 43.804729, 42.516457>,  <42.888905, 44.364162, 42.947979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.634254, 43.804729, 42.516457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348175, 44.079224, 42.569496>,  <42.176529, 44.243919, 42.601318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.348175, 44.079224, 42.569496>,  <42.634254, 43.804729, 42.516457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.348175, 44.079224, 42.569496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183459, -0.001253, -0.983027,
		-0.674418, -0.727382, 0.126792,
		-0.715194, 0.686232, 0.132600,
		42.133617, 44.285091, 42.609276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035751, 43.660057, 42.105335>,  <42.634254, 43.804729, 42.516457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035751, 43.660057, 42.105335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942986, 44.037907, 42.198208>,  <41.887325, 44.264614, 42.253929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942986, 44.037907, 42.198208>,  <42.035751, 43.660057, 42.105335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942986, 44.037907, 42.198208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320091, 0.151285, -0.935230,
		-0.918563, -0.291211, 0.267279,
		-0.231914, 0.944621, 0.232179,
		41.873413, 44.321293, 42.267860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410191, 43.702618, 41.795586>,  <42.035751, 43.660057, 42.105335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410191, 43.702618, 41.795586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510712, 44.084511, 41.859245>,  <41.571022, 44.313648, 41.897442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510712, 44.084511, 41.859245>,  <41.410191, 43.702618, 41.795586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510712, 44.084511, 41.859245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207661, 0.213779, -0.954555,
		-0.945370, 0.206830, 0.251983,
		0.251300, 0.954735, 0.159149,
		41.586102, 44.370930, 41.906990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807400, 44.158642, 41.633232>,  <41.410191, 43.702618, 41.795586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807400, 44.158642, 41.633232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143166, 44.373226, 41.598389>,  <41.344627, 44.501976, 41.577484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143166, 44.373226, 41.598389>,  <40.807400, 44.158642, 41.633232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143166, 44.373226, 41.598389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243489, 0.227917, -0.942744,
		-0.485893, 0.812565, 0.321940,
		0.839417, 0.536462, -0.087107,
		41.394989, 44.534164, 41.572258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.593338, 44.658115, 41.160995>,  <40.807400, 44.158642, 41.633232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.593338, 44.658115, 41.160995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992439, 44.682396, 41.149647>,  <41.231899, 44.696964, 41.142838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992439, 44.682396, 41.149647>,  <40.593338, 44.658115, 41.160995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992439, 44.682396, 41.149647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041344, 0.224475, -0.973602,
		-0.052726, 0.972588, 0.226480,
		0.997753, 0.060698, -0.028375,
		41.291763, 44.700603, 41.141132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747478, 45.352982, 40.828796>,  <40.593338, 44.658115, 41.160995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747478, 45.352982, 40.828796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073471, 45.127148, 40.776550>,  <41.269066, 44.991650, 40.745205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073471, 45.127148, 40.776550>,  <40.747478, 45.352982, 40.828796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073471, 45.127148, 40.776550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075936, 0.119399, -0.989938,
		0.574496, 0.816695, 0.054435,
		0.814977, -0.564582, -0.130611,
		41.317963, 44.957771, 40.737366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076763, 45.696724, 40.291695>,  <40.747478, 45.352982, 40.828796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076763, 45.696724, 40.291695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289436, 45.357944, 40.291977>,  <41.417038, 45.154678, 40.292145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289436, 45.357944, 40.291977>,  <41.076763, 45.696724, 40.291695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289436, 45.357944, 40.291977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026044, 0.015520, -0.999540,
		0.846544, 0.531455, 0.030310,
		0.531681, -0.846945, 0.000703,
		41.448940, 45.103863, 40.292187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724464, 45.801361, 40.045185>,  <41.076763, 45.696724, 40.291695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724464, 45.801361, 40.045185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635094, 45.416893, 39.980408>,  <41.581470, 45.186211, 39.941540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635094, 45.416893, 39.980408>,  <41.724464, 45.801361, 40.045185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635094, 45.416893, 39.980408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262380, 0.100702, -0.959696,
		0.938742, -0.256916, 0.229693,
		-0.223431, -0.961173, -0.161943,
		41.568066, 45.128540, 39.931824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247608, 45.524994, 39.671070>,  <41.724464, 45.801361, 40.045185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247608, 45.524994, 39.671070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971764, 45.241543, 39.611362>,  <41.806255, 45.071472, 39.575539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971764, 45.241543, 39.611362>,  <42.247608, 45.524994, 39.671070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971764, 45.241543, 39.611362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142888, 0.068930, -0.987336,
		0.709943, -0.702207, 0.053720,
		-0.689611, -0.708629, -0.149273,
		41.764881, 45.028954, 39.566582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550724, 45.037441, 39.245632>,  <42.247608, 45.524994, 39.671070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550724, 45.037441, 39.245632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163643, 44.971634, 39.169228>,  <41.931393, 44.932152, 39.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163643, 44.971634, 39.169228>,  <42.550724, 45.037441, 39.245632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163643, 44.971634, 39.169228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168658, 0.140631, -0.975591,
		0.187363, -0.976298, -0.108342,
		-0.967703, -0.164517, -0.191009,
		41.873333, 44.922279, 39.111923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537334, 44.696960, 38.635784>,  <42.550724, 45.037441, 39.245632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537334, 44.696960, 38.635784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154007, 44.804180, 38.675320>,  <41.924011, 44.868511, 38.699039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154007, 44.804180, 38.675320>,  <42.537334, 44.696960, 38.635784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154007, 44.804180, 38.675320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091232, 0.040721, -0.994997,
		-0.270732, -0.962544, -0.014569,
		-0.958322, 0.268048, 0.098839,
		41.866508, 44.884594, 38.704971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264584, 44.270618, 38.112682>,  <42.537334, 44.696960, 38.635784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264584, 44.270618, 38.112682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989655, 44.542778, 38.214386>,  <41.824699, 44.706074, 38.275410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.989655, 44.542778, 38.214386>,  <42.264584, 44.270618, 38.112682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989655, 44.542778, 38.214386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174306, 0.185318, -0.967096,
		-0.705130, -0.709024, -0.008775,
		-0.687320, 0.680399, 0.254260,
		41.783459, 44.746899, 38.290665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675549, 44.131470, 37.803120>,  <42.264584, 44.270618, 38.112682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675549, 44.131470, 37.803120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644966, 44.525894, 37.862225>,  <41.626617, 44.762550, 37.897686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.644966, 44.525894, 37.862225>,  <41.675549, 44.131470, 37.803120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644966, 44.525894, 37.862225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125749, 0.137473, -0.982491,
		-0.989112, -0.093698, 0.113486,
		-0.076456, 0.986064, 0.147758,
		41.622028, 44.821712, 37.906551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080284, 44.321278, 37.461998>,  <41.675549, 44.131470, 37.803120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080284, 44.321278, 37.461998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279999, 44.665527, 37.502056>,  <41.399830, 44.872078, 37.526093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279999, 44.665527, 37.502056>,  <41.080284, 44.321278, 37.461998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279999, 44.665527, 37.502056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141343, 0.194944, -0.970577,
		-0.854829, 0.470444, 0.218977,
		0.499290, 0.860628, 0.100150,
		41.429787, 44.923714, 37.532101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722382, 44.742992, 36.972450>,  <41.080284, 44.321278, 37.461998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722382, 44.742992, 36.972450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049774, 44.952324, 37.067284>,  <41.246212, 45.077923, 37.124184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049774, 44.952324, 37.067284>,  <40.722382, 44.742992, 36.972450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049774, 44.952324, 37.067284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132540, 0.229538, -0.964233,
		-0.559030, 0.820634, 0.118511,
		0.818485, 0.523328, 0.237085,
		41.295319, 45.109322, 37.138409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686527, 45.409557, 36.623302>,  <40.722382, 44.742992, 36.972450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686527, 45.409557, 36.623302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078415, 45.350533, 36.677513>,  <41.313549, 45.315117, 36.710037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.078415, 45.350533, 36.677513>,  <40.686527, 45.409557, 36.623302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078415, 45.350533, 36.677513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163532, 0.198156, -0.966432,
		0.115754, 0.968999, 0.218270,
		0.979724, -0.147563, 0.135525,
		41.372334, 45.306263, 36.718170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048527, 45.937836, 36.202019>,  <40.686527, 45.409557, 36.623302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048527, 45.937836, 36.202019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344406, 45.678158, 36.272888>,  <41.521935, 45.522350, 36.315411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344406, 45.678158, 36.272888>,  <41.048527, 45.937836, 36.202019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344406, 45.678158, 36.272888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298195, 0.080185, -0.951131,
		0.603264, 0.756382, 0.252900,
		0.739697, -0.649197, 0.177176,
		41.566315, 45.483398, 36.326042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607800, 46.106274, 35.845715>,  <41.048527, 45.937836, 36.202019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607800, 46.106274, 35.845715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652832, 45.711849, 35.894711>,  <41.679852, 45.475193, 35.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.652832, 45.711849, 35.894711>,  <41.607800, 46.106274, 35.845715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652832, 45.711849, 35.894711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370552, -0.072716, -0.925961,
		0.921964, 0.149633, 0.357201,
		0.112581, -0.986064, 0.122488,
		41.686607, 45.416031, 35.931458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218750, 45.989109, 35.491798>,  <41.607800, 46.106274, 35.845715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218750, 45.989109, 35.491798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012878, 45.646160, 35.493946>,  <41.889355, 45.440392, 35.495235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012878, 45.646160, 35.493946>,  <42.218750, 45.989109, 35.491798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012878, 45.646160, 35.493946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289832, -0.179871, -0.940024,
		0.806912, -0.482251, 0.341067,
		-0.514676, -0.857368, 0.005368,
		41.858475, 45.388950, 35.495556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.672028, 45.479240, 35.369362>,  <42.218750, 45.989109, 35.491798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.672028, 45.479240, 35.369362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319084, 45.318836, 35.270859>,  <42.107319, 45.222595, 35.211758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319084, 45.318836, 35.270859>,  <42.672028, 45.479240, 35.369362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319084, 45.318836, 35.270859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313554, -0.110779, -0.943086,
		0.350904, -0.909352, 0.223484,
		-0.882355, -0.401007, -0.246258,
		42.054379, 45.198536, 35.196980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898201, 45.091797, 34.887970>,  <42.672028, 45.479240, 35.369362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898201, 45.091797, 34.887970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502228, 45.115826, 34.836716>,  <42.264645, 45.130241, 34.805965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.502228, 45.115826, 34.836716>,  <42.898201, 45.091797, 34.887970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502228, 45.115826, 34.836716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132526, 0.076007, -0.988261,
		-0.049627, -0.995296, -0.083203,
		-0.989936, 0.060071, -0.128131,
		42.205246, 45.133846, 34.798275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841412, 44.477951, 34.535881>,  <42.898201, 45.091797, 34.887970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841412, 44.477951, 34.535881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515312, 44.697052, 34.460693>,  <42.319653, 44.828514, 34.415581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515312, 44.697052, 34.460693>,  <42.841412, 44.477951, 34.535881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515312, 44.697052, 34.460693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256991, 0.051317, -0.965050,
		-0.518964, -0.835064, -0.182604,
		-0.815250, 0.547754, -0.187973,
		42.270737, 44.861378, 34.404301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541641, 44.137238, 34.029850>,  <42.841412, 44.477951, 34.535881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541641, 44.137238, 34.029850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433731, 44.521553, 34.004215>,  <42.368984, 44.752140, 33.988834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433731, 44.521553, 34.004215>,  <42.541641, 44.137238, 34.029850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433731, 44.521553, 34.004215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478175, 0.075900, -0.874979,
		-0.835804, -0.266698, -0.479901,
		-0.269780, 0.960787, -0.064090,
		42.352798, 44.809788, 33.984989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534561, 44.260262, 33.360870>,  <42.541641, 44.137238, 34.029850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534561, 44.260262, 33.360870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541161, 44.639477, 33.487961>,  <42.545120, 44.867008, 33.564213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541161, 44.639477, 33.487961>,  <42.534561, 44.260262, 33.360870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541161, 44.639477, 33.487961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541574, 0.258643, -0.799876,
		-0.840491, 0.185266, -0.509167,
		0.016497, 0.948040, 0.317722,
		42.546108, 44.923889, 33.583279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269062, 44.711292, 32.775379>,  <42.534561, 44.260262, 33.360870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269062, 44.711292, 32.775379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466736, 44.982948, 32.992470>,  <42.585339, 45.145943, 33.122726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466736, 44.982948, 32.992470>,  <42.269062, 44.711292, 32.775379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466736, 44.982948, 32.992470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461233, 0.324364, -0.825864,
		-0.736918, 0.658452, -0.152946,
		0.494182, 0.679139, 0.542729,
		42.614990, 45.186691, 33.155289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336781, 45.208427, 32.324989>,  <42.269062, 44.711292, 32.775379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336781, 45.208427, 32.324989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618690, 45.313343, 32.588654>,  <42.787838, 45.376293, 32.746853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618690, 45.313343, 32.588654>,  <42.336781, 45.208427, 32.324989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618690, 45.313343, 32.588654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536144, 0.411548, -0.737006,
		-0.464589, 0.872829, 0.149421,
		0.704774, 0.262293, 0.659163,
		42.830124, 45.392033, 32.786404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537132, 45.917809, 32.172455>,  <42.336781, 45.208427, 32.324989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537132, 45.917809, 32.172455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848015, 45.771786, 32.377464>,  <43.034546, 45.684174, 32.500469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848015, 45.771786, 32.377464>,  <42.537132, 45.917809, 32.172455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848015, 45.771786, 32.377464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622102, 0.323446, -0.713002,
		0.094512, 0.872994, 0.478487,
		0.777211, -0.365055, 0.512522,
		43.081177, 45.662270, 32.531219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.095757, 46.475826, 32.294815>,  <42.537132, 45.917809, 32.172455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.095757, 46.475826, 32.294815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313934, 46.147957, 32.364819>,  <43.444839, 45.951237, 32.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313934, 46.147957, 32.364819>,  <43.095757, 46.475826, 32.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313934, 46.147957, 32.364819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570805, 0.210376, -0.793678,
		0.613739, 0.532802, 0.582621,
		0.545442, -0.819673, 0.175010,
		43.477566, 45.902054, 32.417320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.412556, 44.685841, 32.234825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.013107, 44.669880, 32.221222>,  <45.773438, 44.660305, 32.213058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.013107, 44.669880, 32.221222>,  <46.412556, 44.685841, 32.234825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013107, 44.669880, 32.221222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041139, 0.194207, 0.980098,
		-0.032499, 0.980149, -0.195581,
		-0.998625, -0.039898, -0.034011,
		45.713520, 44.657909, 32.211018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096989, 45.360447, 32.457226>,  <46.412556, 44.685841, 32.234825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096989, 45.360447, 32.457226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.834641, 45.062622, 32.506973>,  <45.677231, 44.883926, 32.536823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.834641, 45.062622, 32.506973>,  <46.096989, 45.360447, 32.457226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834641, 45.062622, 32.506973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016692, 0.179021, 0.983704,
		-0.754690, 0.643106, -0.129843,
		-0.655870, -0.744558, 0.124370,
		45.637878, 44.839256, 32.544285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.653122, 45.537441, 33.020164>,  <46.096989, 45.360447, 32.457226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.653122, 45.537441, 33.020164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606606, 45.140400, 33.006168>,  <45.578697, 44.902176, 32.997772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.606606, 45.140400, 33.006168>,  <45.653122, 45.537441, 33.020164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606606, 45.140400, 33.006168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243274, -0.005686, 0.969941,
		-0.962961, 0.121308, -0.240812,
		-0.116292, -0.992599, -0.034986,
		45.571716, 44.842621, 32.995674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007172, 45.370831, 33.364449>,  <45.653122, 45.537441, 33.020164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007172, 45.370831, 33.364449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.245781, 45.051167, 33.394108>,  <45.388947, 44.859367, 33.411903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.245781, 45.051167, 33.394108>,  <45.007172, 45.370831, 33.364449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245781, 45.051167, 33.394108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297103, -0.134048, 0.945389,
		-0.745582, -0.585976, -0.317396,
		0.596522, -0.799164, 0.074152,
		45.424736, 44.811417, 33.416355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.575081, 44.917980, 33.801334>,  <45.007172, 45.370831, 33.364449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.575081, 44.917980, 33.801334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.940727, 44.756039, 33.792587>,  <45.160114, 44.658875, 33.787338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.940727, 44.756039, 33.792587>,  <44.575081, 44.917980, 33.801334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940727, 44.756039, 33.792587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118662, -0.318721, 0.940391,
		-0.387697, -0.857033, -0.339390,
		0.914117, -0.404860, -0.021870,
		45.214962, 44.634583, 33.786026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513470, 44.207005, 34.071350>,  <44.575081, 44.917980, 33.801334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513470, 44.207005, 34.071350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.888947, 44.327969, 34.137569>,  <45.114231, 44.400547, 34.177299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.888947, 44.327969, 34.137569>,  <44.513470, 44.207005, 34.071350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888947, 44.327969, 34.137569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054805, -0.343183, 0.937668,
		0.340376, -0.889253, -0.305569,
		0.938691, 0.302413, 0.165547,
		45.170555, 44.418694, 34.187233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.744694, 43.723465, 34.445896>,  <44.513470, 44.207005, 34.071350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.744694, 43.723465, 34.445896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.035103, 43.991688, 34.506874>,  <45.209351, 44.152622, 34.543461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.035103, 43.991688, 34.506874>,  <44.744694, 43.723465, 34.445896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035103, 43.991688, 34.506874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022884, -0.245116, 0.969224,
		0.687288, -0.700192, -0.193306,
		0.726025, 0.670559, 0.152442,
		45.252911, 44.192856, 34.552608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213173, 43.428299, 34.910381>,  <44.744694, 43.723465, 34.445896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213173, 43.428299, 34.910381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.320404, 43.813087, 34.931351>,  <45.384743, 44.043961, 34.943932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.320404, 43.813087, 34.931351>,  <45.213173, 43.428299, 34.910381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.320404, 43.813087, 34.931351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043359, -0.066412, 0.996850,
		0.962421, -0.264960, -0.059514,
		0.268077, 0.961970, 0.052428,
		45.400826, 44.101677, 34.947079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865376, 43.459408, 35.203373>,  <45.213173, 43.428299, 34.910381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865376, 43.459408, 35.203373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.730171, 43.825592, 35.290714>,  <45.649048, 44.045303, 35.343121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.730171, 43.825592, 35.290714>,  <45.865376, 43.459408, 35.203373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730171, 43.825592, 35.290714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245681, -0.138141, 0.959457,
		0.908511, 0.377950, -0.178219,
		-0.338008, 0.915462, 0.218358,
		45.628769, 44.100231, 35.356220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328228, 43.755955, 35.701477>,  <45.865376, 43.459408, 35.203373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328228, 43.755955, 35.701477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.996490, 43.970387, 35.764488>,  <45.797447, 44.099045, 35.802296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.996490, 43.970387, 35.764488>,  <46.328228, 43.755955, 35.701477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996490, 43.970387, 35.764488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147690, -0.061580, 0.987115,
		0.538871, 0.841919, -0.028103,
		-0.829340, 0.536078, 0.157526,
		45.747688, 44.131210, 35.811745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450909, 44.206276, 36.218628>,  <46.328228, 43.755955, 35.701477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450909, 44.206276, 36.218628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.050949, 44.211842, 36.219292>,  <45.810974, 44.215183, 36.219692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.050949, 44.211842, 36.219292>,  <46.450909, 44.206276, 36.218628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.050949, 44.211842, 36.219292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000985, -0.188164, 0.982137,
		0.013983, 0.982039, 0.188159,
		-0.999902, 0.013918, 0.001663,
		45.750980, 44.216019, 36.219791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.208725, 44.729713, 36.619659>,  <46.450909, 44.206276, 36.218628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.208725, 44.729713, 36.619659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.880562, 44.501175, 36.628609>,  <45.683666, 44.364052, 36.633980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.880562, 44.501175, 36.628609>,  <46.208725, 44.729713, 36.619659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880562, 44.501175, 36.628609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048526, 0.108567, 0.992904,
		-0.569720, 0.813497, -0.116794,
		-0.820405, -0.571345, 0.022377,
		45.634441, 44.329773, 36.635323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679661, 45.125278, 37.000271>,  <46.208725, 44.729713, 36.619659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.679661, 45.125278, 37.000271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.540871, 44.751064, 37.026756>,  <45.457596, 44.526535, 37.042648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.540871, 44.751064, 37.026756>,  <45.679661, 45.125278, 37.000271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540871, 44.751064, 37.026756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130910, 0.118219, 0.984321,
		-0.928695, 0.332862, -0.163489,
		-0.346971, -0.935536, 0.066215,
		45.436779, 44.470402, 37.046619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041985, 45.088001, 37.491543>,  <45.679661, 45.125278, 37.000271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041985, 45.088001, 37.491543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188187, 44.715710, 37.496414>,  <45.275906, 44.492336, 37.499336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.188187, 44.715710, 37.496414>,  <45.041985, 45.088001, 37.491543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188187, 44.715710, 37.496414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204533, -0.067545, 0.976526,
		-0.908060, -0.359414, -0.215053,
		0.365503, -0.930730, 0.012178,
		45.297836, 44.436489, 37.500069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598186, 44.705505, 37.874344>,  <45.041985, 45.088001, 37.491543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598186, 44.705505, 37.874344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.924660, 44.474415, 37.870842>,  <45.120544, 44.335762, 37.868740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.924660, 44.474415, 37.870842>,  <44.598186, 44.705505, 37.874344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924660, 44.474415, 37.870842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032478, -0.060997, 0.997609,
		-0.576878, -0.813949, -0.068548,
		0.816185, -0.577725, -0.008753,
		45.169514, 44.301098, 37.868217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421520, 44.018883, 38.152279>,  <44.598186, 44.705505, 37.874344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421520, 44.018883, 38.152279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.818260, 44.020828, 38.203197>,  <45.056305, 44.021996, 38.233749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.818260, 44.020828, 38.203197>,  <44.421520, 44.018883, 38.152279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818260, 44.020828, 38.203197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127319, 0.004277, 0.991853,
		0.004277, -0.999979, 0.004861,
		-0.991853, -0.004861, -0.127298,
		45.115814, 44.022285, 38.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.370403, 43.830284, 38.825066>,  <44.421520, 44.018883, 38.152279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.370403, 43.830284, 38.825066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.753754, 43.913219, 38.746555>,  <44.983765, 43.962982, 38.699448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.753754, 43.913219, 38.746555>,  <44.370403, 43.830284, 38.825066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753754, 43.913219, 38.746555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200675, -0.000178, 0.979658,
		0.203091, -0.978268, -0.041779,
		0.958375, 0.207343, -0.196278,
		45.041267, 43.975422, 38.687672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803837, 43.302132, 39.037720>,  <44.370403, 43.830284, 38.825066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803837, 43.302132, 39.037720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.026863, 43.634129, 39.043793>,  <45.160679, 43.833328, 39.047436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.026863, 43.634129, 39.043793>,  <44.803837, 43.302132, 39.037720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026863, 43.634129, 39.043793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048811, 0.014524, 0.998702,
		0.828696, -0.557585, 0.048611,
		0.557567, 0.829993, 0.015181,
		45.194134, 43.883125, 39.048347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299637, 43.232784, 39.502888>,  <44.803837, 43.302132, 39.037720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299637, 43.232784, 39.502888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.295822, 43.631451, 39.470470>,  <45.293533, 43.870651, 39.451019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.295822, 43.631451, 39.470470>,  <45.299637, 43.232784, 39.502888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.295822, 43.631451, 39.470470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004595, 0.081005, 0.996703,
		0.999944, 0.009874, 0.003808,
		-0.009533, 0.996665, -0.081045,
		45.292961, 43.930450, 39.446156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.924686, 43.511665, 39.796642>,  <45.299637, 43.232784, 39.502888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.924686, 43.511665, 39.796642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.625557, 43.775753, 39.824547>,  <45.446079, 43.934204, 39.841290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.625557, 43.775753, 39.824547>,  <45.924686, 43.511665, 39.796642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.625557, 43.775753, 39.824547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108133, 0.017453, 0.993983,
		0.655029, 0.750870, -0.084443,
		-0.747826, 0.660219, 0.069762,
		45.401211, 43.973820, 39.845474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180840, 43.958977, 40.237492>,  <45.924686, 43.511665, 39.796642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180840, 43.958977, 40.237492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.785637, 44.020454, 40.243393>,  <45.548515, 44.057343, 40.246933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.785637, 44.020454, 40.243393>,  <46.180840, 43.958977, 40.237492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.785637, 44.020454, 40.243393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015865, 0.006021, 0.999856,
		0.153586, 0.988100, -0.008388,
		-0.988008, 0.153697, 0.014752,
		45.489235, 44.066563, 40.247818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.090706, 44.435555, 40.840927>,  <46.180840, 43.958977, 40.237492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.090706, 44.435555, 40.840927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.730637, 44.296791, 40.735596>,  <45.514595, 44.213531, 40.672398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.730637, 44.296791, 40.735596>,  <46.090706, 44.435555, 40.840927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.730637, 44.296791, 40.735596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274309, -0.018041, 0.961472,
		-0.338294, 0.937725, -0.078920,
		-0.900173, -0.346909, -0.263329,
		45.460587, 44.192719, 40.656597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629295, 44.884647, 41.109612>,  <46.090706, 44.435555, 40.840927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629295, 44.884647, 41.109612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.400398, 44.562794, 41.046234>,  <45.263062, 44.369682, 41.008205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.400398, 44.562794, 41.046234>,  <45.629295, 44.884647, 41.109612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400398, 44.562794, 41.046234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268054, 0.000925, 0.963403,
		-0.775040, 0.593771, -0.216215,
		-0.572241, -0.804633, -0.158446,
		45.228725, 44.321404, 40.998699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.964897, 45.026230, 41.457493>,  <45.629295, 44.884647, 41.109612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.964897, 45.026230, 41.457493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.996056, 44.628689, 41.426010>,  <45.014748, 44.390163, 41.407120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.996056, 44.628689, 41.426010>,  <44.964897, 45.026230, 41.457493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996056, 44.628689, 41.426010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361545, -0.101730, 0.926788,
		-0.929095, -0.043733, -0.367245,
		0.077891, -0.993850, -0.078705,
		45.019424, 44.330532, 41.402397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308445, 44.855213, 41.690540>,  <44.964897, 45.026230, 41.457493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308445, 44.855213, 41.690540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542442, 44.531803, 41.716019>,  <44.682842, 44.337757, 41.731308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.542442, 44.531803, 41.716019>,  <44.308445, 44.855213, 41.690540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542442, 44.531803, 41.716019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339545, -0.172831, 0.924575,
		-0.736537, -0.562502, -0.375638,
		0.584998, -0.808530, 0.063698,
		44.717941, 44.289246, 41.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918056, 44.355591, 41.919140>,  <44.308445, 44.855213, 41.690540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918056, 44.355591, 41.919140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.292351, 44.248371, 42.010826>,  <44.516930, 44.184040, 42.065838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.292351, 44.248371, 42.010826>,  <43.918056, 44.355591, 41.919140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.292351, 44.248371, 42.010826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272553, -0.137087, 0.952325,
		-0.223852, -0.953601, -0.201336,
		0.935738, -0.268054, 0.229219,
		44.573071, 44.167957, 42.079594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756798, 43.796730, 42.203983>,  <43.918056, 44.355591, 41.919140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756798, 43.796730, 42.203983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.124321, 43.897690, 42.325367>,  <44.344833, 43.958267, 42.398197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.124321, 43.897690, 42.325367>,  <43.756798, 43.796730, 42.203983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124321, 43.897690, 42.325367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302234, -0.044579, 0.952191,
		0.253859, -0.966596, 0.035323,
		0.918809, 0.252398, 0.303455,
		44.399963, 43.973408, 42.416405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022312, 43.262222, 42.577221>,  <43.756798, 43.796730, 42.203983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022312, 43.262222, 42.577221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212433, 43.594368, 42.693558>,  <44.326508, 43.793655, 42.763359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.212433, 43.594368, 42.693558>,  <44.022312, 43.262222, 42.577221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.212433, 43.594368, 42.693558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273434, -0.174786, 0.945877,
		0.836253, -0.529105, 0.143972,
		0.475304, 0.830360, 0.290840,
		44.355022, 43.843475, 42.780811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.323013, 43.120209, 43.316132>,  <44.022312, 43.262222, 42.577221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.323013, 43.120209, 43.316132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340607, 43.516739, 43.266582>,  <44.351162, 43.754658, 43.236851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.340607, 43.516739, 43.266582>,  <44.323013, 43.120209, 43.316132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340607, 43.516739, 43.266582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203426, 0.130285, 0.970383,
		0.978102, -0.017479, 0.207390,
		0.043982, 0.991323, -0.123876,
		44.353802, 43.814137, 43.229420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787018, 43.304340, 43.862030>,  <44.323013, 43.120209, 43.316132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787018, 43.304340, 43.862030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.605759, 43.643776, 43.752815>,  <44.497005, 43.847439, 43.687286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.605759, 43.643776, 43.752815>,  <44.787018, 43.304340, 43.862030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605759, 43.643776, 43.752815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121163, 0.244818, 0.961968,
		0.883165, 0.468993, -0.008120,
		-0.453144, 0.848593, -0.273039,
		44.469814, 43.898354, 43.670902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044418, 43.812454, 44.271198>,  <44.787018, 43.304340, 43.862030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044418, 43.812454, 44.271198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.702599, 43.973965, 44.140533>,  <44.497505, 44.070869, 44.062134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.702599, 43.973965, 44.140533>,  <45.044418, 43.812454, 44.271198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.702599, 43.973965, 44.140533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138954, 0.428291, 0.892894,
		0.500433, 0.808415, -0.309891,
		-0.854552, 0.403773, -0.326663,
		44.446232, 44.095097, 44.042534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036861, 44.480152, 44.446049>,  <45.044418, 43.812454, 44.271198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036861, 44.480152, 44.446049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.645187, 44.427464, 44.384274>,  <44.410183, 44.395851, 44.347210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.645187, 44.427464, 44.384274>,  <45.036861, 44.480152, 44.446049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645187, 44.427464, 44.384274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195994, 0.415678, 0.888143,
		-0.052796, 0.899922, -0.432842,
		-0.979183, -0.131725, -0.154433,
		44.351433, 44.387947, 44.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645233, 45.099739, 44.504883>,  <45.036861, 44.480152, 44.446049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645233, 45.099739, 44.504883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.395172, 44.799992, 44.592178>,  <44.245136, 44.620144, 44.644554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.395172, 44.799992, 44.592178>,  <44.645233, 45.099739, 44.504883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395172, 44.799992, 44.592178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097796, 0.352616, 0.930644,
		-0.774349, 0.560455, -0.293726,
		-0.625156, -0.749368, 0.218238,
		44.207626, 44.575180, 44.657650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219181, 45.449173, 44.925880>,  <44.645233, 45.099739, 44.504883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219181, 45.449173, 44.925880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.179535, 45.056946, 44.993607>,  <44.155746, 44.821609, 45.034241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.179535, 45.056946, 44.993607>,  <44.219181, 45.449173, 44.925880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.179535, 45.056946, 44.993607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176077, 0.150184, 0.972852,
		-0.979374, 0.126238, 0.157769,
		-0.099116, -0.980565, 0.169314,
		44.149799, 44.762775, 45.044399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622299, 45.373917, 45.434109>,  <44.219181, 45.449173, 44.925880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622299, 45.373917, 45.434109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868469, 45.059635, 45.459156>,  <44.016171, 44.871067, 45.474186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.868469, 45.059635, 45.459156>,  <43.622299, 45.373917, 45.434109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.868469, 45.059635, 45.459156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101913, 0.158104, 0.982149,
		-0.781577, -0.598060, 0.177375,
		0.615428, -0.785701, 0.062620,
		44.053097, 44.823925, 45.477943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421875, 44.878315, 46.057091>,  <43.622299, 45.373917, 45.434109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421875, 44.878315, 46.057091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.800568, 44.775723, 45.979195>,  <44.027782, 44.714165, 45.932457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.800568, 44.775723, 45.979195>,  <43.421875, 44.878315, 46.057091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800568, 44.775723, 45.979195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208324, 0.026630, 0.977697,
		-0.245579, -0.966181, 0.078643,
		0.946727, -0.256486, -0.194739,
		44.084587, 44.698776, 45.920773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572178, 44.465683, 46.622070>,  <43.421875, 44.878315, 46.057091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572178, 44.465683, 46.622070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.943939, 44.541401, 46.495338>,  <44.166996, 44.586830, 46.419300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.943939, 44.541401, 46.495338>,  <43.572178, 44.465683, 46.622070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943939, 44.541401, 46.495338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307930, 0.075527, 0.948407,
		0.203456, -0.979012, 0.011906,
		0.929400, 0.189293, -0.316833,
		44.222759, 44.598190, 46.400288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.101242, 44.135731, 46.974045>,  <43.572178, 44.465683, 46.622070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.101242, 44.135731, 46.974045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.322021, 44.431629, 46.820091>,  <44.454491, 44.609169, 46.727718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.322021, 44.431629, 46.820091>,  <44.101242, 44.135731, 46.974045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322021, 44.431629, 46.820091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428399, 0.144442, 0.891970,
		0.715421, -0.657205, -0.237180,
		0.551948, 0.739742, -0.384883,
		44.487606, 44.653553, 46.704628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818626, 44.039604, 47.234032>,  <44.101242, 44.135731, 46.974045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818626, 44.039604, 47.234032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.787209, 44.421425, 47.119026>,  <44.768356, 44.650517, 47.050022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.787209, 44.421425, 47.119026>,  <44.818626, 44.039604, 47.234032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787209, 44.421425, 47.119026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441405, 0.291892, 0.848505,
		0.893863, -0.060260, -0.444271,
		-0.078548, 0.954551, -0.287510,
		44.763645, 44.707790, 47.032772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467819, 44.341846, 47.448612>,  <44.818626, 44.039604, 47.234032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.467819, 44.341846, 47.448612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.268097, 44.682251, 47.383530>,  <45.148262, 44.886494, 47.344482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.268097, 44.682251, 47.383530>,  <45.467819, 44.341846, 47.448612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.268097, 44.682251, 47.383530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447988, 0.414314, 0.792244,
		0.741619, 0.322684, -0.588113,
		-0.499308, 0.851011, -0.162704,
		45.118305, 44.937553, 47.334717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965305, 44.885811, 47.443241>,  <45.467819, 44.341846, 47.448612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965305, 44.885811, 47.443241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.615471, 45.066872, 47.512764>,  <45.405571, 45.175507, 47.554478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.615471, 45.066872, 47.512764>,  <45.965305, 44.885811, 47.443241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.615471, 45.066872, 47.512764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455956, 0.645840, 0.612368,
		0.164940, 0.614814, -0.771231,
		-0.874585, 0.452652, 0.173803,
		45.353096, 45.202667, 47.564903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153614, 45.589870, 47.393642>,  <45.965305, 44.885811, 47.443241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153614, 45.589870, 47.393642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.802422, 45.555573, 47.582024>,  <45.591705, 45.534992, 47.695053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.802422, 45.555573, 47.582024>,  <46.153614, 45.589870, 47.393642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802422, 45.555573, 47.582024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276019, 0.713119, 0.644418,
		-0.391101, 0.695779, -0.602438,
		-0.877983, -0.085748, 0.470950,
		45.539028, 45.529846, 47.723309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119671, 46.316399, 47.717796>,  <46.153614, 45.589870, 47.393642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119671, 46.316399, 47.717796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.857422, 46.074745, 47.898979>,  <45.700073, 45.929752, 48.007690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.857422, 46.074745, 47.898979>,  <46.119671, 46.316399, 47.717796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857422, 46.074745, 47.898979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018608, 0.586769, 0.809541,
		-0.754856, 0.539185, -0.373460,
		-0.655627, -0.604137, 0.452959,
		45.660732, 45.893505, 48.034866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666515, 46.787605, 48.061550>,  <46.119671, 46.316399, 47.717796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666515, 46.787605, 48.061550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.644791, 46.434387, 48.248009>,  <45.631756, 46.222458, 48.359882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.644791, 46.434387, 48.248009>,  <45.666515, 46.787605, 48.061550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644791, 46.434387, 48.248009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204289, 0.447131, 0.870827,
		-0.977403, 0.142520, 0.156113,
		-0.054307, -0.883041, 0.466143,
		45.628498, 46.169476, 48.387852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491684, 46.986927, 48.696545>,  <45.666515, 46.787605, 48.061550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491684, 46.986927, 48.696545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.575203, 46.602959, 48.771339>,  <45.625313, 46.372578, 48.816216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.575203, 46.602959, 48.771339>,  <45.491684, 46.986927, 48.696545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575203, 46.602959, 48.771339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075213, 0.206396, 0.975573,
		-0.975063, -0.189631, 0.115293,
		0.208795, -0.959917, 0.186987,
		45.637840, 46.314983, 48.827435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.109489, 46.728130, 49.203316>,  <45.491684, 46.986927, 48.696545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.109489, 46.728130, 49.203316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.435699, 46.497078, 49.217476>,  <45.631428, 46.358444, 49.225971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.435699, 46.497078, 49.217476>,  <45.109489, 46.728130, 49.203316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.435699, 46.497078, 49.217476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034069, 0.108981, 0.993460,
		-0.577714, -0.808988, 0.108556,
		0.815528, -0.577634, 0.035398,
		45.680359, 46.323788, 49.228096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.102814, 46.307259, 49.854904>,  <45.109489, 46.728130, 49.203316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.102814, 46.307259, 49.854904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.483238, 46.331085, 49.733620>,  <45.711494, 46.345383, 49.660851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.483238, 46.331085, 49.733620>,  <45.102814, 46.307259, 49.854904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483238, 46.331085, 49.733620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294331, 0.124172, 0.947603,
		0.094085, -0.990472, 0.100566,
		0.951061, 0.059556, -0.303209,
		45.768555, 46.348957, 49.642658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424400, 45.904289, 50.383198>,  <45.102814, 46.307259, 49.854904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424400, 45.904289, 50.383198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.711639, 46.129227, 50.219193>,  <45.883984, 46.264191, 50.120789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.711639, 46.129227, 50.219193>,  <45.424400, 45.904289, 50.383198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711639, 46.129227, 50.219193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347325, 0.220948, 0.911344,
		0.603079, -0.796839, -0.036654,
		0.718096, 0.562343, -0.410011,
		45.927067, 46.297928, 50.096188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011627, 45.572575, 50.641384>,  <45.424400, 45.904289, 50.383198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011627, 45.572575, 50.641384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.115829, 45.944893, 50.538811>,  <46.178349, 46.168285, 50.477268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.115829, 45.944893, 50.538811>,  <46.011627, 45.572575, 50.641384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115829, 45.944893, 50.538811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376338, 0.146698, 0.914795,
		0.889105, -0.334812, -0.312079,
		0.260503, 0.930796, -0.256432,
		46.193981, 46.224133, 50.461880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.768383, 45.695545, 50.834763>,  <46.011627, 45.572575, 50.641384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.768383, 45.695545, 50.834763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.613541, 46.062172, 50.794666>,  <46.520638, 46.282150, 50.770607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.613541, 46.062172, 50.794666>,  <46.768383, 45.695545, 50.834763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.613541, 46.062172, 50.794666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492241, 0.297362, 0.818092,
		0.779648, 0.267344, -0.566283,
		-0.387104, 0.916571, -0.100240,
		46.497410, 46.337143, 50.764595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272915, 46.263477, 50.762634>,  <46.768383, 45.695545, 50.834763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272915, 46.263477, 50.762634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.961807, 46.469223, 50.907135>,  <46.775143, 46.592670, 50.993835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.961807, 46.469223, 50.907135>,  <47.272915, 46.263477, 50.762634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.961807, 46.469223, 50.907135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553800, 0.288964, 0.780901,
		0.297279, 0.807423, -0.509602,
		-0.777773, 0.514362, 0.361248,
		46.728474, 46.623531, 51.015511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589325, 46.814594, 51.012695>,  <47.272915, 46.263477, 50.762634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589325, 46.814594, 51.012695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.223457, 46.827682, 51.173847>,  <47.003937, 46.835537, 51.270538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.223457, 46.827682, 51.173847>,  <47.589325, 46.814594, 51.012695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223457, 46.827682, 51.173847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381204, 0.401267, 0.832868,
		-0.134410, 0.915377, -0.379499,
		-0.914668, 0.032720, 0.402880,
		46.949059, 46.837498, 51.294712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.429893, 47.559254, 51.323479>,  <47.589325, 46.814594, 51.012695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.429893, 47.559254, 51.323479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.187607, 47.316597, 51.529427>,  <47.042233, 47.171005, 51.652996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.187607, 47.316597, 51.529427>,  <47.429893, 47.559254, 51.323479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.187607, 47.316597, 51.529427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336407, 0.391156, 0.856637,
		-0.721064, 0.692089, -0.032853,
		-0.605720, -0.606639, 0.514872,
		47.005890, 47.134605, 51.683887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.417679, 47.957455, 51.950142>,  <47.429893, 47.559254, 51.323479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.417679, 47.957455, 51.950142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.234703, 47.612610, 52.037331>,  <47.124920, 47.405701, 52.089645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.234703, 47.612610, 52.037331>,  <47.417679, 47.957455, 51.950142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234703, 47.612610, 52.037331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046605, 0.221540, 0.974037,
		-0.888020, 0.455719, -0.061162,
		-0.457437, -0.862114, 0.217971,
		47.097473, 47.353977, 52.102722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936119, 48.080906, 52.478313>,  <47.417679, 47.957455, 51.950142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936119, 48.080906, 52.478313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.034172, 47.693123, 52.481529>,  <47.093002, 47.460453, 52.483459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.034172, 47.693123, 52.481529>,  <46.936119, 48.080906, 52.478313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.034172, 47.693123, 52.481529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057265, 0.022753, 0.998100,
		-0.967797, -0.244207, 0.061093,
		0.245133, -0.969456, 0.008036,
		47.107712, 47.402287, 52.483940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.595016, 47.828152, 52.981804>,  <46.936119, 48.080906, 52.478313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.595016, 47.828152, 52.981804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.887268, 47.557724, 52.943638>,  <47.062618, 47.395466, 52.920738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.887268, 47.557724, 52.943638>,  <46.595016, 47.828152, 52.981804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887268, 47.557724, 52.943638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163776, 0.037867, 0.985771,
		-0.662839, -0.735862, 0.138391,
		0.730631, -0.676072, -0.095417,
		47.106457, 47.354904, 52.915012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575184, 47.385334, 53.517979>,  <46.595016, 47.828152, 52.981804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575184, 47.385334, 53.517979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.953751, 47.374031, 53.389297>,  <47.180893, 47.367249, 53.312088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.953751, 47.374031, 53.389297>,  <46.575184, 47.385334, 53.517979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953751, 47.374031, 53.389297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322926, 0.073567, 0.943561,
		-0.002997, -0.996890, 0.078750,
		0.946419, -0.028258, -0.321702,
		47.237675, 47.365555, 53.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988281, 46.913830, 54.051640>,  <46.575184, 47.385334, 53.517979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988281, 46.913830, 54.051640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.275383, 47.100060, 53.844536>,  <47.447643, 47.211796, 53.720272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.275383, 47.100060, 53.844536>,  <46.988281, 46.913830, 54.051640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275383, 47.100060, 53.844536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500641, 0.171736, 0.848449,
		0.483935, -0.868186, -0.109822,
		0.717751, 0.465575, -0.517758,
		47.490707, 47.239731, 53.689209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.544189, 46.515999, 54.263489>,  <46.988281, 46.913830, 54.051640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.544189, 46.515999, 54.263489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.694359, 46.858559, 54.121712>,  <47.784462, 47.064095, 54.036648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.694359, 46.858559, 54.121712>,  <47.544189, 46.515999, 54.263489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.694359, 46.858559, 54.121712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576180, 0.083893, 0.813005,
		0.725996, -0.509445, -0.461947,
		0.375428, 0.856404, -0.354438,
		47.806988, 47.115479, 54.015381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.247581, 46.509014, 54.308887>,  <47.544189, 46.515999, 54.263489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.247581, 46.509014, 54.308887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.162086, 46.899399, 54.291870>,  <48.110790, 47.133629, 54.281658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.162086, 46.899399, 54.291870>,  <48.247581, 46.509014, 54.308887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.162086, 46.899399, 54.291870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621341, 0.169427, 0.765004,
		0.753824, 0.137077, -0.642619,
		-0.213742, 0.975963, -0.042546,
		48.097965, 47.192188, 54.279106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.908424, 46.804478, 54.265682>,  <48.247581, 46.509014, 54.308887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.908424, 46.804478, 54.265682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.652596, 47.090302, 54.379063>,  <48.499096, 47.261795, 54.447090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.652596, 47.090302, 54.379063>,  <48.908424, 46.804478, 54.265682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.652596, 47.090302, 54.379063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648701, 0.303840, 0.697760,
		0.412468, 0.630146, -0.657865,
		-0.639576, 0.714561, 0.283452,
		48.460724, 47.304668, 54.464100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.309605, 47.539787, 54.317978>,  <48.908424, 46.804478, 54.265682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.309605, 47.539787, 54.317978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.990074, 47.551636, 54.558311>,  <48.798355, 47.558746, 54.702511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.990074, 47.551636, 54.558311>,  <49.309605, 47.539787, 54.317978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.990074, 47.551636, 54.558311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573253, 0.340271, 0.745383,
		-0.182365, 0.939861, -0.288799,
		-0.798827, 0.029623, 0.600832,
		48.750427, 47.560524, 54.738560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.419033, 48.130630, 54.657040>,  <49.309605, 47.539787, 54.317978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.419033, 48.130630, 54.657040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.119339, 47.975342, 54.871674>,  <48.939522, 47.882168, 55.000454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.119339, 47.975342, 54.871674>,  <49.419033, 48.130630, 54.657040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.119339, 47.975342, 54.871674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536434, 0.119450, 0.835446,
		-0.388432, 0.913793, 0.118757,
		-0.749239, -0.388219, 0.536588,
		48.894566, 47.858875, 55.032650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.224953, 48.676014, 55.045483>,  <49.419033, 48.130630, 54.657040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.224953, 48.676014, 55.045483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.150063, 48.327072, 55.226120>,  <49.105129, 48.117706, 55.334503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<49.150063, 48.327072, 55.226120>,  <49.224953, 48.676014, 55.045483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.150063, 48.327072, 55.226120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544221, 0.290609, 0.787000,
		-0.817784, 0.393113, 0.420347,
		-0.187224, -0.872358, 0.451596,
		49.093895, 48.065365, 55.361599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<48.933014, 47.066196, 55.828480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.857079, 47.439369, 55.706108>,  <48.811516, 47.663273, 55.632687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.857079, 47.439369, 55.706108>,  <48.933014, 47.066196, 55.828480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.857079, 47.439369, 55.706108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666884, -0.351211, -0.657204,
		-0.720574, 0.079256, 0.688833,
		-0.189838, 0.932936, -0.305929,
		48.800129, 47.719250, 55.614330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.154236, 47.264988, 55.862694>,  <48.933014, 47.066196, 55.828480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.154236, 47.264988, 55.862694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.353661, 47.480003, 55.590668>,  <48.473316, 47.609013, 55.427452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.353661, 47.480003, 55.590668>,  <48.154236, 47.264988, 55.862694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.353661, 47.480003, 55.590668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580512, -0.375594, -0.722450,
		-0.643773, 0.754973, 0.124789,
		0.498560, 0.537535, -0.680068,
		48.503227, 47.641266, 55.386646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640602, 47.665417, 55.404655>,  <48.154236, 47.264988, 55.862694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640602, 47.665417, 55.404655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.983849, 47.649910, 55.199856>,  <48.189796, 47.640606, 55.076977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.983849, 47.649910, 55.199856>,  <47.640602, 47.665417, 55.404655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.983849, 47.649910, 55.199856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500532, -0.285511, -0.817283,
		-0.114497, 0.957591, -0.264405,
		0.858113, -0.038767, -0.511995,
		48.241283, 47.638279, 55.046257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536869, 48.087723, 54.772823>,  <47.640602, 47.665417, 55.404655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536869, 48.087723, 54.772823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.862450, 47.874931, 54.679459>,  <48.057796, 47.747257, 54.623440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.862450, 47.874931, 54.679459>,  <47.536869, 48.087723, 54.772823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.862450, 47.874931, 54.679459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335471, -0.102395, -0.936469,
		0.474285, 0.840541, -0.261809,
		0.813949, -0.531983, -0.233413,
		48.106636, 47.715336, 54.609436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.866550, 48.446140, 54.175991>,  <47.536869, 48.087723, 54.772823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.866550, 48.446140, 54.175991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.970116, 48.060608, 54.201237>,  <48.032257, 47.829288, 54.216385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.970116, 48.060608, 54.201237>,  <47.866550, 48.446140, 54.175991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.970116, 48.060608, 54.201237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336866, -0.151349, -0.929309,
		0.905253, 0.219352, -0.363870,
		0.258918, -0.963835, 0.063117,
		48.047791, 47.771458, 54.220173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.267117, 48.293236, 53.603848>,  <47.866550, 48.446140, 54.175991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.267117, 48.293236, 53.603848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.132706, 47.938583, 53.730949>,  <48.052059, 47.725792, 53.807209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.132706, 47.938583, 53.730949>,  <48.267117, 48.293236, 53.603848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.132706, 47.938583, 53.730949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319252, -0.210174, -0.924070,
		0.886095, -0.411956, -0.212436,
		-0.336027, -0.886634, 0.317752,
		48.031898, 47.672592, 53.826275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.497124, 47.812637, 53.176605>,  <48.267117, 48.293236, 53.603848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.497124, 47.812637, 53.176605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.172226, 47.636658, 53.329811>,  <47.977287, 47.531071, 53.421734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.172226, 47.636658, 53.329811>,  <48.497124, 47.812637, 53.176605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.172226, 47.636658, 53.329811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265374, -0.306023, -0.914290,
		0.519451, -0.844272, 0.131815,
		-0.812248, -0.439949, 0.383011,
		47.928551, 47.504673, 53.444714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.463623, 47.228642, 52.858589>,  <48.497124, 47.812637, 53.176605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.463623, 47.228642, 52.858589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.095718, 47.289978, 53.003101>,  <47.874977, 47.326782, 53.089809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.095718, 47.289978, 53.003101>,  <48.463623, 47.228642, 52.858589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.095718, 47.289978, 53.003101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391040, -0.279394, -0.876942,
		-0.033534, -0.947853, 0.316939,
		-0.919763, 0.153343, 0.361279,
		47.819790, 47.335979, 53.111485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.067192, 46.555954, 52.740883>,  <48.463623, 47.228642, 52.858589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.067192, 46.555954, 52.740883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.767555, 46.814560, 52.798668>,  <47.587772, 46.969723, 52.833340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.767555, 46.814560, 52.798668>,  <48.067192, 46.555954, 52.740883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.767555, 46.814560, 52.798668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515690, -0.432204, -0.739772,
		-0.415833, -0.628664, 0.657165,
		-0.749097, 0.646515, 0.144471,
		47.542828, 47.008514, 52.842007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.380531, 46.130009, 52.780479>,  <48.067192, 46.555954, 52.740883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.380531, 46.130009, 52.780479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.334984, 46.509384, 52.662155>,  <47.307655, 46.737007, 52.591160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.334984, 46.509384, 52.662155>,  <47.380531, 46.130009, 52.780479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.334984, 46.509384, 52.662155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451935, -0.314605, -0.834732,
		-0.884753, 0.038632, 0.464457,
		-0.113873, 0.948436, -0.295807,
		47.300823, 46.793915, 52.573414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.751541, 46.127926, 52.385010>,  <47.380531, 46.130009, 52.780479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.751541, 46.127926, 52.385010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.838333, 46.511932, 52.314247>,  <46.890408, 46.742336, 52.271790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.838333, 46.511932, 52.314247>,  <46.751541, 46.127926, 52.385010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838333, 46.511932, 52.314247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488351, -0.050162, -0.871204,
		-0.845242, 0.275423, 0.457940,
		0.216978, 0.960014, -0.176902,
		46.903427, 46.799938, 52.261177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086430, 46.434669, 52.262344>,  <46.751541, 46.127926, 52.385010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086430, 46.434669, 52.262344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.375992, 46.642555, 52.080860>,  <46.549728, 46.767288, 51.971970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.375992, 46.642555, 52.080860>,  <46.086430, 46.434669, 52.262344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375992, 46.642555, 52.080860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527681, -0.006535, -0.849418,
		-0.444421, 0.854314, 0.269514,
		0.723908, 0.519716, -0.453709,
		46.593163, 46.798470, 51.944748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766117, 47.020164, 51.878815>,  <46.086430, 46.434669, 52.262344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766117, 47.020164, 51.878815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.120354, 46.938225, 51.712074>,  <46.332897, 46.889061, 51.612030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.120354, 46.938225, 51.712074>,  <45.766117, 47.020164, 51.878815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.120354, 46.938225, 51.712074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440754, -0.087539, -0.893349,
		0.146509, 0.974871, -0.167811,
		0.885591, -0.204847, -0.416853,
		46.386032, 46.876770, 51.587017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699581, 47.357346, 51.291489>,  <45.766117, 47.020164, 51.878815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699581, 47.357346, 51.291489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019531, 47.127205, 51.223183>,  <46.211502, 46.989120, 51.182198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019531, 47.127205, 51.223183>,  <45.699581, 47.357346, 51.291489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019531, 47.127205, 51.223183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269690, -0.090393, -0.958695,
		0.536154, 0.812893, -0.227471,
		0.799879, -0.575355, -0.170765,
		46.259495, 46.954597, 51.171955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072929, 47.589909, 50.711288>,  <45.699581, 47.357346, 51.291489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072929, 47.589909, 50.711288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.207504, 47.213791, 50.731918>,  <46.288250, 46.988121, 50.744297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.207504, 47.213791, 50.731918>,  <46.072929, 47.589909, 50.711288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207504, 47.213791, 50.731918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055821, -0.074580, -0.995651,
		0.940051, 0.332092, -0.077580,
		0.336433, -0.940294, 0.051572,
		46.308434, 46.931702, 50.747391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405792, 47.470615, 50.060547>,  <46.072929, 47.589909, 50.711288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405792, 47.470615, 50.060547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.353218, 47.098221, 50.196777>,  <46.321674, 46.874786, 50.278515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.353218, 47.098221, 50.196777>,  <46.405792, 47.470615, 50.060547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353218, 47.098221, 50.196777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319798, -0.285370, -0.903489,
		0.938325, -0.227666, -0.260220,
		-0.131435, -0.930985, 0.340577,
		46.313789, 46.818924, 50.298950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.835861, 47.063797, 49.678371>,  <46.405792, 47.470615, 50.060547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.835861, 47.063797, 49.678371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.544411, 46.821472, 49.806175>,  <46.369541, 46.676075, 49.882858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.544411, 46.821472, 49.806175>,  <46.835861, 47.063797, 49.678371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544411, 46.821472, 49.806175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023902, -0.443727, -0.895843,
		0.684492, -0.660374, 0.308832,
		-0.728629, -0.605815, 0.319512,
		46.325821, 46.639729, 49.902027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019779, 46.365646, 49.361115>,  <46.835861, 47.063797, 49.678371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019779, 46.365646, 49.361115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.632126, 46.343796, 49.457275>,  <46.399532, 46.330685, 49.514973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.632126, 46.343796, 49.457275>,  <47.019779, 46.365646, 49.361115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632126, 46.343796, 49.457275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200271, -0.394188, -0.896943,
		0.143762, -0.917405, 0.371081,
		-0.969135, -0.054629, 0.240399,
		46.341385, 46.327408, 49.529396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773914, 45.679771, 49.231014>,  <47.019779, 46.365646, 49.361115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773914, 45.679771, 49.231014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.437851, 45.896694, 49.228836>,  <46.236214, 46.026848, 49.227528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.437851, 45.896694, 49.228836>,  <46.773914, 45.679771, 49.231014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437851, 45.896694, 49.228836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325451, -0.512183, -0.794827,
		-0.433830, -0.666012, 0.606812,
		-0.840163, 0.542307, -0.005446,
		46.185802, 46.059387, 49.227203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127113, 45.167400, 49.147465>,  <46.773914, 45.679771, 49.231014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127113, 45.167400, 49.147465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974625, 45.520199, 49.036652>,  <45.883129, 45.731880, 48.970165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974625, 45.520199, 49.036652>,  <46.127113, 45.167400, 49.147465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974625, 45.520199, 49.036652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429459, -0.434321, -0.791789,
		-0.818678, -0.182876, 0.544356,
		-0.381224, 0.881999, -0.277031,
		45.860256, 45.784798, 48.953541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546776, 44.977467, 48.942085>,  <46.127113, 45.167400, 49.147465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546776, 44.977467, 48.942085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.577209, 45.334087, 48.763489>,  <45.595470, 45.548058, 48.656330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.577209, 45.334087, 48.763489>,  <45.546776, 44.977467, 48.942085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577209, 45.334087, 48.763489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390476, -0.385379, -0.836069,
		-0.917464, 0.237954, 0.318808,
		0.076084, 0.891550, -0.446487,
		45.600033, 45.601551, 48.629543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951084, 45.005695, 48.659557>,  <45.546776, 44.977467, 48.942085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951084, 45.005695, 48.659557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.159004, 45.292778, 48.474213>,  <45.283756, 45.465027, 48.363007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.159004, 45.292778, 48.474213>,  <44.951084, 45.005695, 48.659557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159004, 45.292778, 48.474213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383551, -0.288593, -0.877270,
		-0.763346, 0.633728, 0.125267,
		0.519799, 0.717707, -0.463363,
		45.314945, 45.508091, 48.335205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443745, 45.475075, 48.393089>,  <44.951084, 45.005695, 48.659557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443745, 45.475075, 48.393089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786629, 45.499855, 48.188599>,  <44.992359, 45.514725, 48.065903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.786629, 45.499855, 48.188599>,  <44.443745, 45.475075, 48.393089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786629, 45.499855, 48.188599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460782, -0.351000, -0.815156,
		-0.229941, 0.934324, -0.272335,
		0.857209, 0.061951, -0.511229,
		45.043793, 45.518440, 48.035229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249428, 45.811855, 47.767857>,  <44.443745, 45.475075, 48.393089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249428, 45.811855, 47.767857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.591896, 45.616367, 47.700771>,  <44.797375, 45.499073, 47.660519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.591896, 45.616367, 47.700771>,  <44.249428, 45.811855, 47.767857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591896, 45.616367, 47.700771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374363, -0.363004, -0.853277,
		0.356133, 0.793334, -0.493751,
		0.856167, -0.488722, -0.167717,
		44.848747, 45.469749, 47.650455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411621, 46.012951, 47.140766>,  <44.249428, 45.811855, 47.767857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411621, 46.012951, 47.140766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.620636, 45.677406, 47.201778>,  <44.746044, 45.476078, 47.238388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.620636, 45.677406, 47.201778>,  <44.411621, 46.012951, 47.140766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620636, 45.677406, 47.201778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190472, -0.289229, -0.938119,
		0.831068, 0.461150, -0.310912,
		0.522538, -0.838861, 0.152533,
		44.777397, 45.425747, 47.247540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945442, 45.912846, 46.604645>,  <44.411621, 46.012951, 47.140766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945442, 45.912846, 46.604645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.831985, 45.557621, 46.749367>,  <44.763912, 45.344486, 46.836201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.831985, 45.557621, 46.749367>,  <44.945442, 45.912846, 46.604645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831985, 45.557621, 46.749367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122344, -0.340699, -0.932178,
		0.951093, -0.308670, -0.012012,
		-0.283643, -0.888058, 0.361801,
		44.746891, 45.291203, 46.857906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.416538, 45.420300, 46.225208>,  <44.945442, 45.912846, 46.604645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.416538, 45.420300, 46.225208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.119255, 45.187927, 46.357967>,  <44.940887, 45.048504, 46.437622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.119255, 45.187927, 46.357967>,  <45.416538, 45.420300, 46.225208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119255, 45.187927, 46.357967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193859, -0.287814, -0.937860,
		0.640362, -0.761365, 0.101285,
		-0.743206, -0.580935, 0.331902,
		44.896294, 45.013645, 46.457539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348354, 44.905888, 45.801231>,  <45.416538, 45.420300, 46.225208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348354, 44.905888, 45.801231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.004723, 44.820549, 45.987339>,  <44.798546, 44.769344, 46.099003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.004723, 44.820549, 45.987339>,  <45.348354, 44.905888, 45.801231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004723, 44.820549, 45.987339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364386, -0.383447, -0.848641,
		0.359460, -0.898583, 0.251669,
		-0.859076, -0.213348, 0.465265,
		44.747002, 44.756546, 46.126919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.219296, 44.151604, 45.727097>,  <45.348354, 44.905888, 45.801231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.219296, 44.151604, 45.727097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.872604, 44.346985, 45.767498>,  <44.664589, 44.464214, 45.791737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.872604, 44.346985, 45.767498>,  <45.219296, 44.151604, 45.727097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872604, 44.346985, 45.767498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291747, -0.332220, -0.896947,
		-0.404561, -0.806874, 0.430448,
		-0.866726, 0.488451, 0.101000,
		44.612587, 44.493519, 45.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.585785, 43.575291, 32.878838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547745, 43.971081, 32.922451>,  <45.524921, 44.208557, 32.948620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.547745, 43.971081, 32.922451>,  <45.585785, 43.575291, 32.878838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547745, 43.971081, 32.922451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169670, 0.091813, -0.981215,
		-0.980901, -0.111818, 0.159153,
		-0.095105, 0.989478, 0.109032,
		45.519215, 44.267925, 32.955162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889149, 43.753586, 32.651203>,  <45.585785, 43.575291, 32.878838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889149, 43.753586, 32.651203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112831, 44.082882, 32.612091>,  <45.247040, 44.280460, 32.588623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.112831, 44.082882, 32.612091>,  <44.889149, 43.753586, 32.651203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112831, 44.082882, 32.612091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262971, 0.064296, -0.962659,
		-0.786214, 0.564040, 0.252443,
		0.559209, 0.823241, -0.097776,
		45.280594, 44.329853, 32.582760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448231, 44.202454, 32.205215>,  <44.889149, 43.753586, 32.651203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448231, 44.202454, 32.205215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844009, 44.258949, 32.192314>,  <45.081478, 44.292847, 32.184574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.844009, 44.258949, 32.192314>,  <44.448231, 44.202454, 32.205215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844009, 44.258949, 32.192314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011636, -0.144410, -0.989450,
		-0.144410, 0.979386, -0.141243,
		0.989450, 0.141243, -0.032251,
		45.140842, 44.301323, 32.182640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160530, 44.815815, 32.504349>,  <44.448231, 44.202454, 32.205215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160530, 44.815815, 32.504349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937782, 45.147552, 32.486103>,  <43.804134, 45.346596, 32.475155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.937782, 45.147552, 32.486103>,  <44.160530, 44.815815, 32.504349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.937782, 45.147552, 32.486103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469127, -0.268725, 0.841253,
		0.685433, 0.489866, 0.538714,
		-0.556868, 0.829348, -0.045616,
		43.770721, 45.396358, 32.472420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079987, 45.123501, 33.221863>,  <44.160530, 44.815815, 32.504349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079987, 45.123501, 33.221863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780876, 45.306171, 33.029083>,  <43.601410, 45.415775, 32.913414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.780876, 45.306171, 33.029083>,  <44.079987, 45.123501, 33.221863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.780876, 45.306171, 33.029083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587178, -0.116029, 0.801099,
		0.309927, 0.882032, 0.354916,
		-0.747775, 0.456681, -0.481949,
		43.556545, 45.443176, 32.884499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683380, 45.512054, 33.692089>,  <44.079987, 45.123501, 33.221863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683380, 45.512054, 33.692089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410873, 45.496223, 33.399704>,  <43.247372, 45.486725, 33.224274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.410873, 45.496223, 33.399704>,  <43.683380, 45.512054, 33.692089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410873, 45.496223, 33.399704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729534, -0.045808, 0.682409,
		-0.060491, 0.998166, 0.002335,
		-0.681265, -0.039576, -0.730967,
		43.206493, 45.484352, 33.180412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275799, 46.130116, 33.704975>,  <43.683380, 45.512054, 33.692089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275799, 46.130116, 33.704975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073441, 45.816608, 33.560875>,  <42.952026, 45.628506, 33.474415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073441, 45.816608, 33.560875>,  <43.275799, 46.130116, 33.704975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073441, 45.816608, 33.560875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633410, 0.054038, 0.771927,
		-0.585544, 0.618700, -0.523783,
		-0.505896, -0.783767, -0.360249,
		42.921673, 45.581478, 33.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649956, 46.190197, 33.931305>,  <43.275799, 46.130116, 33.704975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649956, 46.190197, 33.931305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589493, 45.816040, 33.803436>,  <42.553215, 45.591545, 33.726715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.589493, 45.816040, 33.803436>,  <42.649956, 46.190197, 33.931305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589493, 45.816040, 33.803436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615676, -0.163919, 0.770762,
		-0.773366, 0.313320, -0.551122,
		-0.151156, -0.935394, -0.319673,
		42.544147, 45.535423, 33.707535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871147, 46.026615, 33.984409>,  <42.649956, 46.190197, 33.931305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871147, 46.026615, 33.984409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046112, 45.667145, 33.997364>,  <42.151089, 45.451462, 34.005135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.046112, 45.667145, 33.997364>,  <41.871147, 46.026615, 33.984409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046112, 45.667145, 33.997364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486690, -0.206296, 0.848867,
		-0.756179, -0.387062, -0.527614,
		0.437408, -0.898680, 0.032383,
		42.177334, 45.397541, 34.007080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259121, 45.718090, 34.277313>,  <41.871147, 46.026615, 33.984409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259121, 45.718090, 34.277313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546913, 45.440811, 34.294445>,  <41.719589, 45.274445, 34.304722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546913, 45.440811, 34.294445>,  <41.259121, 45.718090, 34.277313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546913, 45.440811, 34.294445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342316, -0.300292, 0.890306,
		-0.604293, -0.655216, -0.453345,
		0.719478, -0.693193, 0.042827,
		41.762756, 45.232853, 34.307293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959293, 45.041370, 34.485981>,  <41.259121, 45.718090, 34.277313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959293, 45.041370, 34.485981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343109, 45.082844, 34.590702>,  <41.573399, 45.107727, 34.653534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.343109, 45.082844, 34.590702>,  <40.959293, 45.041370, 34.485981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343109, 45.082844, 34.590702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234089, -0.223036, 0.946286,
		0.156503, -0.969281, -0.189740,
		0.959536, 0.103681, 0.261804,
		41.630970, 45.113949, 34.669243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958725, 44.550606, 35.044121>,  <40.959293, 45.041370, 34.485981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958725, 44.550606, 35.044121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312035, 44.734402, 35.081425>,  <41.524021, 44.844677, 35.103809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312035, 44.734402, 35.081425>,  <40.958725, 44.550606, 35.044121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312035, 44.734402, 35.081425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133748, 0.056281, 0.989416,
		0.449375, -0.886399, 0.111167,
		0.883274, 0.459487, 0.093263,
		41.577019, 44.872246, 35.109402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043640, 44.338306, 35.669518>,  <40.958725, 44.550606, 35.044121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043640, 44.338306, 35.669518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305367, 44.635925, 35.615471>,  <41.462402, 44.814499, 35.583042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.305367, 44.635925, 35.615471>,  <41.043640, 44.338306, 35.669518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305367, 44.635925, 35.615471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081054, 0.108641, 0.990771,
		0.751864, -0.659230, 0.010777,
		0.654317, 0.744052, -0.135117,
		41.501663, 44.859142, 35.574936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776310, 44.123604, 36.003239>,  <41.043640, 44.338306, 35.669518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776310, 44.123604, 36.003239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729721, 44.520737, 35.992512>,  <41.701767, 44.759018, 35.986076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.729721, 44.520737, 35.992512>,  <41.776310, 44.123604, 36.003239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729721, 44.520737, 35.992512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007629, 0.027891, 0.999582,
		0.993165, 0.116216, -0.010823,
		-0.116469, 0.992832, -0.026813,
		41.694778, 44.818588, 35.984467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346230, 44.426617, 36.443859>,  <41.776310, 44.123604, 36.003239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346230, 44.426617, 36.443859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121475, 44.756374, 36.416573>,  <41.986622, 44.954231, 36.400200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.121475, 44.756374, 36.416573>,  <42.346230, 44.426617, 36.443859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121475, 44.756374, 36.416573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002418, 0.084102, 0.996454,
		0.827210, 0.559731, -0.049250,
		-0.561888, 0.824396, -0.068217,
		41.952908, 45.003693, 36.396107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621849, 45.039097, 36.880112>,  <42.346230, 44.426617, 36.443859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621849, 45.039097, 36.880112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235619, 45.126392, 36.823483>,  <42.003880, 45.178768, 36.789505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235619, 45.126392, 36.823483>,  <42.621849, 45.039097, 36.880112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235619, 45.126392, 36.823483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126516, 0.081563, 0.988606,
		0.227298, 0.972481, -0.051145,
		-0.965572, 0.218237, -0.141574,
		41.945946, 45.191864, 36.781010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482845, 45.589039, 37.277180>,  <42.621849, 45.039097, 36.880112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482845, 45.589039, 37.277180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120468, 45.427105, 37.227581>,  <41.903042, 45.329945, 37.197823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.120468, 45.427105, 37.227581>,  <42.482845, 45.589039, 37.277180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120468, 45.427105, 37.227581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192329, 0.132571, 0.972335,
		-0.377196, 0.904728, -0.197963,
		-0.905943, -0.404835, -0.124000,
		41.848686, 45.305653, 37.190380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038406, 46.072510, 37.546200>,  <42.482845, 45.589039, 37.277180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038406, 46.072510, 37.546200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839096, 45.725948, 37.559238>,  <41.719509, 45.518009, 37.567062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.839096, 45.725948, 37.559238>,  <42.038406, 46.072510, 37.546200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839096, 45.725948, 37.559238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077044, 0.081690, 0.993675,
		-0.863588, 0.492614, -0.107456,
		-0.498277, -0.866405, 0.032593,
		41.689613, 45.466026, 37.569016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587334, 46.131142, 38.142956>,  <42.038406, 46.072510, 37.546200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587334, 46.131142, 38.142956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602798, 45.738605, 38.067619>,  <41.612080, 45.503082, 38.022419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.602798, 45.738605, 38.067619>,  <41.587334, 46.131142, 38.142956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602798, 45.738605, 38.067619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104896, -0.191427, 0.975885,
		-0.993731, -0.017977, -0.110341,
		0.038666, -0.981342, -0.188341,
		41.614399, 45.444202, 38.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161922, 45.831535, 38.677670>,  <41.587334, 46.131142, 38.142956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161922, 45.831535, 38.677670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331009, 45.498543, 38.534397>,  <41.432461, 45.298748, 38.448433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.331009, 45.498543, 38.534397>,  <41.161922, 45.831535, 38.677670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331009, 45.498543, 38.534397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128970, -0.446460, 0.885460,
		-0.897040, -0.328100, -0.296089,
		0.422712, -0.832480, -0.358177,
		41.457821, 45.248798, 38.426945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678421, 45.335644, 38.888256>,  <41.161922, 45.831535, 38.677670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678421, 45.335644, 38.888256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046135, 45.193863, 38.819809>,  <41.266762, 45.108795, 38.778740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046135, 45.193863, 38.819809>,  <40.678421, 45.335644, 38.888256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046135, 45.193863, 38.819809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010368, -0.412798, 0.910764,
		-0.393455, -0.839026, -0.375804,
		0.919285, -0.354449, -0.171116,
		41.321918, 45.087528, 38.768475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627644, 44.655979, 39.034786>,  <40.678421, 45.335644, 38.888256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627644, 44.655979, 39.034786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016594, 44.742725, 39.069336>,  <41.249962, 44.794773, 39.090065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.016594, 44.742725, 39.069336>,  <40.627644, 44.655979, 39.034786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016594, 44.742725, 39.069336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050609, -0.165384, 0.984930,
		0.227885, -0.962090, -0.149839,
		0.972372, 0.216867, 0.086379,
		41.308304, 44.807785, 39.095249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978508, 44.063507, 39.245213>,  <40.627644, 44.655979, 39.034786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978508, 44.063507, 39.245213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193016, 44.382706, 39.355206>,  <41.321720, 44.574226, 39.421200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.193016, 44.382706, 39.355206>,  <40.978508, 44.063507, 39.245213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193016, 44.382706, 39.355206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081719, -0.275169, 0.957916,
		0.840080, -0.536174, -0.082353,
		0.536271, 0.797997, 0.274979,
		41.353897, 44.622105, 39.437698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103153, 43.891308, 39.891212>,  <40.978508, 44.063507, 39.245213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103153, 43.891308, 39.891212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248062, 44.263958, 39.879662>,  <41.335007, 44.487549, 39.872730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248062, 44.263958, 39.879662>,  <41.103153, 43.891308, 39.891212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248062, 44.263958, 39.879662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109771, -0.011875, 0.993886,
		0.925588, -0.363223, -0.106568,
		0.362268, 0.931626, -0.028880,
		41.356743, 44.543446, 39.870998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522388, 43.896725, 40.457813>,  <41.103153, 43.891308, 39.891212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522388, 43.896725, 40.457813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538139, 44.289165, 40.382030>,  <41.547592, 44.524628, 40.336559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.538139, 44.289165, 40.382030>,  <41.522388, 43.896725, 40.457813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538139, 44.289165, 40.382030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305400, 0.168714, 0.937159,
		0.951410, -0.094767, -0.292983,
		0.039381, 0.981099, -0.189458,
		41.549953, 44.583496, 40.325191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233601, 44.111073, 40.589420>,  <41.522388, 43.896725, 40.457813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233601, 44.111073, 40.589420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943130, 44.380856, 40.642742>,  <41.768848, 44.542725, 40.674736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.943130, 44.380856, 40.642742>,  <42.233601, 44.111073, 40.589420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943130, 44.380856, 40.642742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259823, 0.089706, 0.961481,
		0.636521, 0.732842, -0.240383,
		-0.726177, 0.674460, 0.133309,
		41.725277, 44.583195, 40.682735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593292, 44.736897, 40.957417>,  <42.233601, 44.111073, 40.589420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593292, 44.736897, 40.957417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198845, 44.751156, 41.022282>,  <41.962177, 44.759712, 41.061203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.198845, 44.751156, 41.022282>,  <42.593292, 44.736897, 40.957417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198845, 44.751156, 41.022282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165166, 0.110731, 0.980030,
		0.016977, 0.993211, -0.115081,
		-0.986120, 0.035645, 0.162165,
		41.903008, 44.761848, 41.070930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582779, 45.199646, 41.419655>,  <42.593292, 44.736897, 40.957417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582779, 45.199646, 41.419655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233467, 45.006271, 41.443890>,  <42.023880, 44.890247, 41.458431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233467, 45.006271, 41.443890>,  <42.582779, 45.199646, 41.419655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233467, 45.006271, 41.443890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046377, 0.041300, 0.998070,
		-0.485008, 0.874403, -0.013646,
		-0.873279, -0.483439, 0.060583,
		41.971485, 44.861240, 41.462063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309528, 45.504749, 42.029305>,  <42.582779, 45.199646, 41.419655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309528, 45.504749, 42.029305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084038, 45.175625, 42.000469>,  <41.948742, 44.978149, 41.983170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084038, 45.175625, 42.000469>,  <42.309528, 45.504749, 42.029305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084038, 45.175625, 42.000469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008486, -0.081499, 0.996637,
		-0.825916, 0.562446, 0.038961,
		-0.563730, -0.822808, -0.072084,
		41.914917, 44.928783, 41.978844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639996, 45.520500, 42.513432>,  <42.309528, 45.504749, 42.029305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639996, 45.520500, 42.513432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747177, 45.143375, 42.434128>,  <41.811485, 44.917099, 42.386543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.747177, 45.143375, 42.434128>,  <41.639996, 45.520500, 42.513432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747177, 45.143375, 42.434128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041257, -0.216828, 0.975338,
		-0.962548, -0.253167, -0.096998,
		0.267955, -0.942811, -0.198262,
		41.827564, 44.860531, 42.374649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155323, 45.102604, 42.776447>,  <41.639996, 45.520500, 42.513432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155323, 45.102604, 42.776447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480049, 44.870533, 42.750061>,  <41.674885, 44.731289, 42.734230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.480049, 44.870533, 42.750061>,  <41.155323, 45.102604, 42.776447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480049, 44.870533, 42.750061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116961, -0.272253, 0.955091,
		-0.572083, -0.767640, -0.288877,
		0.811814, -0.580178, -0.065967,
		41.723595, 44.696480, 42.730270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926819, 44.520615, 43.148891>,  <41.155323, 45.102604, 42.776447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926819, 44.520615, 43.148891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326149, 44.517891, 43.125912>,  <41.565746, 44.516258, 43.112125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.326149, 44.517891, 43.125912>,  <40.926819, 44.520615, 43.148891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326149, 44.517891, 43.125912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056687, -0.082975, 0.994938,
		-0.011539, -0.996528, -0.082450,
		0.998325, -0.006807, -0.057448,
		41.625648, 44.515850, 43.108677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.204556, 43.964199, 43.674625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554482, 44.134285, 43.581760>,  <41.764435, 44.236336, 43.526043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554482, 44.134285, 43.581760>,  <41.204556, 43.964199, 43.674625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554482, 44.134285, 43.581760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326123, -0.162493, 0.931257,
		0.358258, -0.890387, -0.280823,
		0.874811, 0.425213, -0.232161,
		41.816925, 44.261848, 43.512112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782803, 43.509880, 43.773487>,  <41.204556, 43.964199, 43.674625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782803, 43.509880, 43.773487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932541, 43.880299, 43.792709>,  <42.022385, 44.102551, 43.804241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932541, 43.880299, 43.792709>,  <41.782803, 43.509880, 43.773487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932541, 43.880299, 43.792709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400122, -0.208061, 0.892532,
		0.836522, -0.314887, -0.448417,
		0.374345, 0.926043, 0.048055,
		42.044846, 44.158112, 43.807125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526817, 43.518673, 44.127113>,  <41.782803, 43.509880, 43.773487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526817, 43.518673, 44.127113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385246, 43.889019, 44.180023>,  <42.300304, 44.111229, 44.211769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385246, 43.889019, 44.180023>,  <42.526817, 43.518673, 44.127113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385246, 43.889019, 44.180023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105801, -0.100888, 0.989256,
		0.929268, 0.364125, -0.062250,
		-0.353932, 0.925870, 0.132277,
		42.279068, 44.166779, 44.219707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204773, 43.952625, 44.068737>,  <42.526817, 43.518673, 44.127113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204773, 43.952625, 44.068737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539421, 44.147461, 44.168987>,  <43.740208, 44.264362, 44.229137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539421, 44.147461, 44.168987>,  <43.204773, 43.952625, 44.068737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539421, 44.147461, 44.168987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292515, -0.010411, -0.956204,
		-0.463148, 0.873290, -0.151192,
		0.836617, 0.487090, 0.250629,
		43.790405, 44.293587, 44.244175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299603, 44.568310, 43.581635>,  <43.204773, 43.952625, 44.068737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299603, 44.568310, 43.581635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647705, 44.437489, 43.728981>,  <43.856567, 44.358994, 43.817387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647705, 44.437489, 43.728981>,  <43.299603, 44.568310, 43.581635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647705, 44.437489, 43.728981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408293, 0.060538, -0.910841,
		0.275595, 0.943064, 0.186218,
		0.870255, -0.327055, 0.368362,
		43.908783, 44.339371, 43.839489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843456, 45.097084, 43.455021>,  <43.299603, 44.568310, 43.581635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843456, 45.097084, 43.455021> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016312, 44.737862, 43.487858>,  <44.120026, 44.522327, 43.507561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016312, 44.737862, 43.487858>,  <43.843456, 45.097084, 43.455021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016312, 44.737862, 43.487858> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413745, 0.116556, -0.902901,
		0.801291, 0.424148, 0.421937,
		0.432143, -0.898061, 0.082093,
		44.145954, 44.468445, 43.512486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478760, 45.057888, 43.105244>,  <43.843456, 45.097084, 43.455021>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478760, 45.057888, 43.105244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448029, 44.660633, 43.140503>,  <44.429592, 44.422279, 43.161659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448029, 44.660633, 43.140503>,  <44.478760, 45.057888, 43.105244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.448029, 44.660633, 43.140503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530652, -0.115578, -0.839673,
		0.844101, -0.017729, 0.535891,
		-0.076824, -0.993140, 0.088152,
		44.424980, 44.362690, 43.166950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143585, 44.867393, 43.018265>,  <44.478760, 45.057888, 43.105244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143585, 44.867393, 43.018265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924294, 44.538586, 42.956654>,  <44.792717, 44.341301, 42.919685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924294, 44.538586, 42.956654>,  <45.143585, 44.867393, 43.018265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924294, 44.538586, 42.956654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478044, -0.156890, -0.864210,
		0.686232, -0.547421, 0.478974,
		-0.548233, -0.822020, -0.154028,
		44.759823, 44.291981, 42.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591946, 44.338905, 42.765194>,  <45.143585, 44.867393, 43.018265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591946, 44.338905, 42.765194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222084, 44.225540, 42.663464>,  <45.000168, 44.157520, 42.602425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222084, 44.225540, 42.663464>,  <45.591946, 44.338905, 42.765194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222084, 44.225540, 42.663464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310885, -0.176143, -0.933983,
		0.219907, -0.942682, 0.250982,
		-0.924657, -0.283415, -0.254330,
		44.944687, 44.140514, 42.587166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.745670, 43.646278, 42.358822>,  <45.591946, 44.338905, 42.765194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.745670, 43.646278, 42.358822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388809, 43.807552, 42.277336>,  <45.174690, 43.904316, 42.228443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388809, 43.807552, 42.277336>,  <45.745670, 43.646278, 42.358822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388809, 43.807552, 42.277336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082462, -0.298033, -0.950987,
		-0.444135, -0.865228, 0.232645,
		-0.892157, 0.403183, -0.203716,
		45.121162, 43.928509, 42.216221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537601, 43.269260, 41.751255>,  <45.745670, 43.646278, 42.358822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537601, 43.269260, 41.751255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265434, 43.562309, 41.758167>,  <45.102135, 43.738136, 41.762314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265434, 43.562309, 41.758167>,  <45.537601, 43.269260, 41.751255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265434, 43.562309, 41.758167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074360, -0.045566, -0.996190,
		-0.729039, -0.679114, 0.085482,
		-0.680421, 0.732617, 0.017280,
		45.061306, 43.782093, 41.763351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.029285, 43.046043, 41.338715>,  <45.537601, 43.269260, 41.751255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.029285, 43.046043, 41.338715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994453, 43.444386, 41.349152>,  <44.973553, 43.683392, 41.355412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994453, 43.444386, 41.349152>,  <45.029285, 43.046043, 41.338715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994453, 43.444386, 41.349152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131701, 0.014450, -0.991184,
		-0.987457, -0.089749, 0.129897,
		-0.087081, 0.995860, 0.026089,
		44.968330, 43.743145, 41.356979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578533, 43.198620, 40.812370>,  <45.029285, 43.046043, 41.338715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578533, 43.198620, 40.812370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767349, 43.546078, 40.872543>,  <44.880638, 43.754551, 40.908649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.767349, 43.546078, 40.872543>,  <44.578533, 43.198620, 40.812370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767349, 43.546078, 40.872543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149999, 0.089017, -0.984671,
		-0.868721, 0.487372, -0.088276,
		0.472043, 0.868645, 0.150436,
		44.908962, 43.806671, 40.917675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.166431, 43.743080, 40.459206>,  <44.578533, 43.198620, 40.812370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.166431, 43.743080, 40.459206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546509, 43.857372, 40.508991>,  <44.774555, 43.925945, 40.538860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.546509, 43.857372, 40.508991>,  <44.166431, 43.743080, 40.459206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546509, 43.857372, 40.508991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085699, 0.144417, -0.985799,
		-0.299644, 0.947367, 0.112738,
		0.950194, 0.285727, 0.124462,
		44.831566, 43.943089, 40.546329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249989, 44.420795, 40.094799>,  <44.166431, 43.743080, 40.459206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249989, 44.420795, 40.094799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621277, 44.285427, 40.156612>,  <44.844048, 44.204205, 40.193699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621277, 44.285427, 40.156612>,  <44.249989, 44.420795, 40.094799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621277, 44.285427, 40.156612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268948, 0.323408, -0.907234,
		0.257053, 0.883672, 0.391212,
		0.928219, -0.338423, 0.154529,
		44.899742, 44.183899, 40.202972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610706, 44.980549, 39.950863>,  <44.249989, 44.420795, 40.094799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610706, 44.980549, 39.950863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826492, 44.649525, 39.888733>,  <44.955963, 44.450909, 39.851456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826492, 44.649525, 39.888733>,  <44.610706, 44.980549, 39.950863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826492, 44.649525, 39.888733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199923, 0.305084, -0.931104,
		0.817931, 0.471242, 0.330029,
		0.539462, -0.827560, -0.155326,
		44.988331, 44.401257, 39.842136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036446, 45.202404, 39.398518>,  <44.610706, 44.980549, 39.950863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036446, 45.202404, 39.398518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133575, 44.814907, 39.418835>,  <45.191853, 44.582409, 39.431026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133575, 44.814907, 39.418835>,  <45.036446, 45.202404, 39.398518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133575, 44.814907, 39.418835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238869, 0.008962, -0.971010,
		0.940202, 0.247915, 0.233578,
		0.242822, -0.968740, 0.050793,
		45.206421, 44.524284, 39.434074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680210, 45.122509, 38.980957>,  <45.036446, 45.202404, 39.398518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680210, 45.122509, 38.980957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530731, 44.752926, 39.013577>,  <45.441044, 44.531178, 39.033150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530731, 44.752926, 39.013577>,  <45.680210, 45.122509, 38.980957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.530731, 44.752926, 39.013577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265062, -0.190630, -0.945200,
		0.888871, -0.331603, 0.316144,
		-0.373698, -0.923959, 0.081550,
		45.418621, 44.475739, 39.038040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182987, 44.672916, 38.729446>,  <45.680210, 45.122509, 38.980957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182987, 44.672916, 38.729446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837021, 44.473270, 38.708305>,  <45.629440, 44.353481, 38.695621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837021, 44.473270, 38.708305>,  <46.182987, 44.672916, 38.729446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.837021, 44.473270, 38.708305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225220, -0.291846, -0.929571,
		0.448541, -0.815908, 0.364835,
		-0.864920, -0.499119, -0.052854,
		45.577545, 44.323536, 38.692448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394936, 44.180756, 38.222294>,  <46.182987, 44.672916, 38.729446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394936, 44.180756, 38.222294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996315, 44.152290, 38.239361>,  <45.757141, 44.135212, 38.249599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996315, 44.152290, 38.239361>,  <46.394936, 44.180756, 38.222294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996315, 44.152290, 38.239361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019567, -0.298155, -0.954317,
		0.080636, -0.951861, 0.295734,
		-0.996552, -0.071166, 0.042667,
		45.697350, 44.130939, 38.252159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.257130, 43.593365, 37.820160>,  <46.394936, 44.180756, 38.222294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.257130, 43.593365, 37.820160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923828, 43.814423, 37.826733>,  <45.723846, 43.947060, 37.830677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923828, 43.814423, 37.826733>,  <46.257130, 43.593365, 37.820160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.923828, 43.814423, 37.826733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130711, -0.168027, -0.977078,
		-0.537220, -0.816300, 0.212246,
		-0.833252, 0.552649, 0.016432,
		45.673851, 43.980217, 37.831661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.728966, 43.191879, 37.527897>,  <46.257130, 43.593365, 37.820160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.728966, 43.191879, 37.527897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606461, 43.571724, 37.501240>,  <45.532959, 43.799629, 37.485245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606461, 43.571724, 37.501240>,  <45.728966, 43.191879, 37.527897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.606461, 43.571724, 37.501240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116854, -0.106981, -0.987370,
		-0.944749, -0.294604, 0.143730,
		-0.306259, 0.949612, -0.066645,
		45.514584, 43.856609, 37.481247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161415, 43.192043, 37.082329>,  <45.728966, 43.191879, 37.527897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161415, 43.192043, 37.082329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242523, 43.583157, 37.061066>,  <45.291187, 43.817825, 37.048309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.242523, 43.583157, 37.061066>,  <45.161415, 43.192043, 37.082329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242523, 43.583157, 37.061066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122060, -0.028626, -0.992110,
		-0.971589, 0.207657, 0.113544,
		0.202769, 0.977783, -0.053159,
		45.303352, 43.876492, 37.045116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.737690, 43.468491, 36.592506>,  <45.161415, 43.192043, 37.082329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.737690, 43.468491, 36.592506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028069, 43.742699, 36.614628>,  <45.202297, 43.907223, 36.627903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028069, 43.742699, 36.614628>,  <44.737690, 43.468491, 36.592506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028069, 43.742699, 36.614628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085918, 0.170184, -0.981660,
		-0.682360, 0.707884, 0.182444,
		0.725950, 0.685520, 0.055307,
		45.245853, 43.948357, 36.631222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.484337, 44.071198, 36.263245>,  <44.737690, 43.468491, 36.592506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.484337, 44.071198, 36.263245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880997, 44.122688, 36.259933>,  <45.118992, 44.153584, 36.257946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880997, 44.122688, 36.259933>,  <44.484337, 44.071198, 36.263245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880997, 44.122688, 36.259933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054572, 0.360531, -0.931150,
		-0.116883, 0.923822, 0.364544,
		0.991645, 0.128729, -0.008275,
		45.178490, 44.161308, 36.257450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569775, 44.684608, 35.852245>,  <44.484337, 44.071198, 36.263245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569775, 44.684608, 35.852245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935295, 44.522148, 35.851448>,  <45.154610, 44.424671, 35.850967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935295, 44.522148, 35.851448>,  <44.569775, 44.684608, 35.852245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935295, 44.522148, 35.851448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214445, 0.486640, -0.846874,
		0.344931, 0.773448, 0.531791,
		0.913803, -0.406153, -0.001995,
		45.209435, 44.400303, 35.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107365, 45.259319, 35.731644>,  <44.569775, 44.684608, 35.852245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107365, 45.259319, 35.731644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241508, 44.903202, 35.608410>,  <45.321995, 44.689533, 35.534470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241508, 44.903202, 35.608410>,  <45.107365, 45.259319, 35.731644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241508, 44.903202, 35.608410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175147, 0.380242, -0.908152,
		0.925667, 0.250593, 0.283449,
		0.335356, -0.890292, -0.308087,
		45.342113, 44.636116, 35.515984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420330, 45.325508, 35.103619>,  <45.107365, 45.259319, 35.731644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420330, 45.325508, 35.103619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470299, 44.929695, 35.074749>,  <45.500282, 44.692207, 35.057426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470299, 44.929695, 35.074749>,  <45.420330, 45.325508, 35.103619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470299, 44.929695, 35.074749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285842, 0.105559, -0.952445,
		0.950099, 0.098354, 0.296039,
		0.124927, -0.989537, -0.072177,
		45.507778, 44.632835, 35.053097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019341, 45.219074, 34.717640>,  <45.420330, 45.325508, 35.103619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019341, 45.219074, 34.717640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791389, 44.892654, 34.679047>,  <45.654617, 44.696804, 34.655891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791389, 44.892654, 34.679047>,  <46.019341, 45.219074, 34.717640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791389, 44.892654, 34.679047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090926, 0.054069, -0.994389,
		0.816683, -0.575453, 0.043387,
		-0.569878, -0.816046, -0.096481,
		45.620426, 44.647842, 34.650101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374935, 44.688461, 34.393894>,  <46.019341, 45.219074, 34.717640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374935, 44.688461, 34.393894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991196, 44.604954, 34.317924>,  <45.760952, 44.554848, 34.272343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991196, 44.604954, 34.317924>,  <46.374935, 44.688461, 34.393894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.991196, 44.604954, 34.317924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163968, 0.135435, -0.977124,
		0.229717, -0.968541, -0.095698,
		-0.959346, -0.208771, -0.189922,
		45.703392, 44.542324, 34.260948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.440018, 44.170994, 33.877529>,  <46.374935, 44.688461, 34.393894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.440018, 44.170994, 33.877529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060799, 44.296703, 33.857822>,  <45.833267, 44.372131, 33.845997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.060799, 44.296703, 33.857822>,  <46.440018, 44.170994, 33.877529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.060799, 44.296703, 33.857822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074109, 0.067578, -0.994958,
		-0.309363, -0.946923, -0.087358,
		-0.948052, 0.314277, -0.049270,
		45.776382, 44.390987, 33.843040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044144, 43.700768, 33.475685>,  <46.440018, 44.170994, 33.877529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044144, 43.700768, 33.475685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848961, 44.048908, 33.449203>,  <45.731850, 44.257793, 33.433315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.848961, 44.048908, 33.449203>,  <46.044144, 43.700768, 33.475685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848961, 44.048908, 33.449203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023101, -0.062947, -0.997749,
		-0.872561, -0.488390, 0.010610,
		-0.487959, 0.870352, -0.066207,
		45.702572, 44.310013, 33.429340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<44.692986, 43.682678, 45.616005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.505890, 44.031200, 45.556622>,  <44.393631, 44.240314, 45.520992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.505890, 44.031200, 45.556622>,  <44.692986, 43.682678, 45.616005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505890, 44.031200, 45.556622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282513, -0.306537, -0.908967,
		-0.837499, -0.383219, 0.389536,
		-0.467740, 0.871309, -0.148460,
		44.365566, 44.292595, 45.512085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072262, 43.489338, 45.345352>,  <44.692986, 43.682678, 45.616005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072262, 43.489338, 45.345352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.100273, 43.877537, 45.253067>,  <44.117081, 44.110458, 45.197697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.100273, 43.877537, 45.253067>,  <44.072262, 43.489338, 45.345352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100273, 43.877537, 45.253067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314888, -0.197948, -0.928257,
		-0.946542, 0.137652, 0.291737,
		0.070028, 0.970499, -0.230711,
		44.121281, 44.168686, 45.183853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489620, 43.528576, 44.903656>,  <44.072262, 43.489338, 45.345352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489620, 43.528576, 44.903656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.722336, 43.844456, 44.825798>,  <43.861965, 44.033985, 44.779083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.722336, 43.844456, 44.825798>,  <43.489620, 43.528576, 44.903656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722336, 43.844456, 44.825798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168637, -0.116988, -0.978711,
		-0.795662, 0.602232, 0.065110,
		0.581794, 0.789703, -0.194641,
		43.896873, 44.081367, 44.767406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757748, 43.778542, 44.776794>,  <43.489620, 43.528576, 44.903656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757748, 43.778542, 44.776794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.479126, 44.061428, 44.728355>,  <42.311954, 44.231159, 44.699291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.479126, 44.061428, 44.728355>,  <42.757748, 43.778542, 44.776794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479126, 44.061428, 44.728355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101748, 0.069715, 0.992365,
		0.710255, 0.703555, 0.023398,
		-0.696552, 0.707213, -0.121100,
		42.270161, 44.273590, 44.692024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008789, 44.430126, 45.127258>,  <42.757748, 43.778542, 44.776794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008789, 44.430126, 45.127258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.610138, 44.460217, 45.114151>,  <42.370949, 44.478271, 45.106289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.610138, 44.460217, 45.114151>,  <43.008789, 44.430126, 45.127258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610138, 44.460217, 45.114151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021582, 0.144933, 0.989206,
		0.079162, 0.986578, -0.142820,
		-0.996628, 0.075225, -0.032766,
		42.311150, 44.482784, 45.104321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791508, 45.137630, 45.438305>,  <43.008789, 44.430126, 45.127258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791508, 45.137630, 45.438305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.477776, 44.890617, 45.461914>,  <42.289536, 44.742409, 45.476078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.477776, 44.890617, 45.461914>,  <42.791508, 45.137630, 45.438305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.477776, 44.890617, 45.461914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081343, 0.196698, 0.977084,
		-0.614993, 0.761551, -0.204508,
		-0.784326, -0.617535, 0.059021,
		42.242477, 44.705357, 45.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431149, 45.396198, 45.989189>,  <42.791508, 45.137630, 45.438305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431149, 45.396198, 45.989189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284462, 45.025990, 45.951389>,  <42.196449, 44.803864, 45.928707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.284462, 45.025990, 45.951389>,  <42.431149, 45.396198, 45.989189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284462, 45.025990, 45.951389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312105, 0.026696, 0.949673,
		-0.876420, 0.377751, -0.298649,
		-0.366713, -0.925522, -0.094501,
		42.174450, 44.748333, 45.923038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.755737, 45.345699, 46.275112>,  <42.431149, 45.396198, 45.989189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.755737, 45.345699, 46.275112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903458, 44.973980, 46.273357>,  <41.992088, 44.750950, 46.272305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.903458, 44.973980, 46.273357>,  <41.755737, 45.345699, 46.275112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.903458, 44.973980, 46.273357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315733, -0.129905, 0.939913,
		-0.874030, -0.345728, -0.341385,
		0.369302, -0.929299, -0.004383,
		42.014248, 44.695190, 46.272041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241905, 44.968327, 46.712826>,  <41.755737, 45.345699, 46.275112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241905, 44.968327, 46.712826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.552559, 44.718384, 46.680859>,  <41.738953, 44.568417, 46.661678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.552559, 44.718384, 46.680859>,  <41.241905, 44.968327, 46.712826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552559, 44.718384, 46.680859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096142, -0.242957, 0.965261,
		-0.622569, -0.741973, -0.248765,
		0.776636, -0.624859, -0.079922,
		41.785549, 44.530926, 46.656883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979332, 44.298626, 46.882759>,  <41.241905, 44.968327, 46.712826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979332, 44.298626, 46.882759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372124, 44.323215, 46.954254>,  <41.607800, 44.337971, 46.997150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.372124, 44.323215, 46.954254>,  <40.979332, 44.298626, 46.882759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372124, 44.323215, 46.954254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173298, -0.084639, 0.981226,
		0.075451, -0.994513, -0.072459,
		0.981975, 0.061477, 0.178733,
		41.666718, 44.341660, 47.007874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104954, 43.733765, 47.390759>,  <40.979332, 44.298626, 46.882759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104954, 43.733765, 47.390759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403763, 43.997234, 47.426762>,  <41.583050, 44.155315, 47.448364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.403763, 43.997234, 47.426762>,  <41.104954, 43.733765, 47.390759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403763, 43.997234, 47.426762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121531, 0.002198, 0.992585,
		0.653595, -0.752423, 0.081692,
		0.747023, 0.658677, 0.090006,
		41.627869, 44.194836, 47.453762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433483, 43.533005, 47.983135>,  <41.104954, 43.733765, 47.390759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433483, 43.533005, 47.983135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.518433, 43.920341, 47.930660>,  <41.569405, 44.152744, 47.899178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.518433, 43.920341, 47.930660>,  <41.433483, 43.533005, 47.983135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518433, 43.920341, 47.930660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045147, 0.143828, 0.988572,
		0.976144, -0.204027, 0.074263,
		0.212376, 0.968342, -0.131185,
		41.582146, 44.210846, 47.891304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759338, 43.626770, 48.585445>,  <41.433483, 43.533005, 47.983135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759338, 43.626770, 48.585445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.697441, 43.991817, 48.434090>,  <41.660305, 44.210846, 48.343277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.697441, 43.991817, 48.434090>,  <41.759338, 43.626770, 48.585445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697441, 43.991817, 48.434090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070471, 0.392226, 0.917166,
		0.985439, 0.115258, -0.125007,
		-0.154742, 0.912620, -0.378392,
		41.651020, 44.265602, 48.320572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248775, 44.088737, 48.922569>,  <41.759338, 43.626770, 48.585445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248775, 44.088737, 48.922569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.959137, 44.327702, 48.784714>,  <41.785355, 44.471081, 48.702000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.959137, 44.327702, 48.784714>,  <42.248775, 44.088737, 48.922569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959137, 44.327702, 48.784714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089232, 0.414354, 0.905731,
		0.683899, 0.686593, -0.246725,
		-0.724100, 0.597412, -0.344642,
		41.741905, 44.506924, 48.681320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.421135, 44.793530, 49.140640>,  <42.248775, 44.088737, 48.922569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.421135, 44.793530, 49.140640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.029907, 44.818260, 49.061077>,  <41.795170, 44.833099, 49.013340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.029907, 44.818260, 49.061077>,  <42.421135, 44.793530, 49.140640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029907, 44.818260, 49.061077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136963, 0.528548, 0.837781,
		0.156929, 0.846649, -0.508487,
		-0.978067, 0.061828, -0.198905,
		41.736488, 44.836807, 49.001408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229427, 45.520287, 49.353214>,  <42.421135, 44.793530, 49.140640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229427, 45.520287, 49.353214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.891640, 45.308884, 49.318459>,  <41.688965, 45.182041, 49.297607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.891640, 45.308884, 49.318459>,  <42.229427, 45.520287, 49.353214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891640, 45.308884, 49.318459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320230, 0.368182, 0.872866,
		-0.429324, 0.764934, -0.480162,
		-0.844472, -0.528505, -0.086885,
		41.638298, 45.150333, 49.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594635, 46.010056, 49.481544>,  <42.229427, 45.520287, 49.353214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594635, 46.010056, 49.481544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428795, 45.655258, 49.562881>,  <41.329292, 45.442379, 49.611683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.428795, 45.655258, 49.562881>,  <41.594635, 46.010056, 49.481544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428795, 45.655258, 49.562881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383103, 0.372814, 0.845128,
		-0.825432, 0.272491, -0.494379,
		-0.414601, -0.886994, 0.203340,
		41.304413, 45.389160, 49.623882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894070, 46.176006, 49.730743>,  <41.594635, 46.010056, 49.481544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894070, 46.176006, 49.730743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.978737, 45.798744, 49.833237>,  <41.029537, 45.572388, 49.894733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.978737, 45.798744, 49.833237>,  <40.894070, 46.176006, 49.730743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978737, 45.798744, 49.833237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370753, 0.165091, 0.913941,
		-0.904288, -0.288455, -0.314732,
		0.211672, -0.943154, 0.256236,
		41.042240, 45.515797, 49.910107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357208, 45.926868, 50.029675>,  <40.894070, 46.176006, 49.730743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357208, 45.926868, 50.029675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.632561, 45.677032, 50.177200>,  <40.797771, 45.527130, 50.265717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.632561, 45.677032, 50.177200>,  <40.357208, 45.926868, 50.029675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632561, 45.677032, 50.177200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383091, 0.118703, 0.916052,
		-0.615937, -0.771877, -0.157563,
		0.688376, -0.624592, 0.368813,
		40.839073, 45.489655, 50.287846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004051, 45.602741, 50.540771>,  <40.357208, 45.926868, 50.029675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004051, 45.602741, 50.540771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371185, 45.479523, 50.640923>,  <40.591465, 45.405590, 50.701015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371185, 45.479523, 50.640923>,  <40.004051, 45.602741, 50.540771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371185, 45.479523, 50.640923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246316, 0.052691, 0.967756,
		-0.311310, -0.949910, -0.027516,
		0.917831, -0.308050, 0.250381,
		40.646534, 45.387108, 50.716038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843704, 45.033665, 51.033634>,  <40.004051, 45.602741, 50.540771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843704, 45.033665, 51.033634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227867, 45.140167, 51.066441>,  <40.458363, 45.204071, 51.086124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.227867, 45.140167, 51.066441>,  <39.843704, 45.033665, 51.033634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227867, 45.140167, 51.066441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061214, -0.085536, 0.994453,
		0.271798, -0.960099, -0.065850,
		0.960405, 0.266259, 0.082020,
		40.515987, 45.220043, 51.091045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096722, 44.580166, 51.605499>,  <39.843704, 45.033665, 51.033634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096722, 44.580166, 51.605499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322487, 44.906345, 51.554153>,  <40.457947, 45.102055, 51.523346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.322487, 44.906345, 51.554153>,  <40.096722, 44.580166, 51.605499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322487, 44.906345, 51.554153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013417, 0.164546, 0.986278,
		0.825385, -0.554943, 0.103812,
		0.564411, 0.815452, -0.128368,
		40.491810, 45.150982, 51.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531662, 44.515682, 52.279720>,  <40.096722, 44.580166, 51.605499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531662, 44.515682, 52.279720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592690, 44.879787, 52.125759>,  <40.629307, 45.098251, 52.033382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592690, 44.879787, 52.125759>,  <40.531662, 44.515682, 52.279720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592690, 44.879787, 52.125759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069585, 0.378597, 0.922942,
		0.985840, -0.167598, -0.005577,
		0.152571, 0.910261, -0.384898,
		40.638462, 45.152866, 52.010288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144379, 44.704624, 52.653683>,  <40.531662, 44.515682, 52.279720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144379, 44.704624, 52.653683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.951691, 45.032852, 52.530651>,  <40.836079, 45.229790, 52.456833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.951691, 45.032852, 52.530651>,  <41.144379, 44.704624, 52.653683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951691, 45.032852, 52.530651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077515, 0.309711, 0.947666,
		0.872891, 0.480351, -0.085587,
		-0.481720, 0.820574, -0.307578,
		40.807175, 45.279026, 52.438377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451305, 45.270660, 52.931229>,  <41.144379, 44.704624, 52.653683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451305, 45.270660, 52.931229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073013, 45.377800, 52.857628>,  <40.846039, 45.442085, 52.813469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.073013, 45.377800, 52.857628>,  <41.451305, 45.270660, 52.931229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073013, 45.377800, 52.857628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125978, 0.219741, 0.967390,
		0.299549, 0.938067, -0.174072,
		-0.945727, 0.267851, -0.183999,
		40.789295, 45.458157, 52.802429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373791, 45.904419, 53.360382>,  <41.451305, 45.270660, 52.931229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373791, 45.904419, 53.360382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000671, 45.801975, 53.258961>,  <40.776798, 45.740509, 53.198109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.000671, 45.801975, 53.258961>,  <41.373791, 45.904419, 53.360382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000671, 45.801975, 53.258961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285156, 0.094264, 0.953835,
		-0.220389, 0.962040, -0.160961,
		-0.932800, -0.256113, -0.253556,
		40.720833, 45.725140, 53.182896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961548, 46.139755, 53.938416>,  <41.373791, 45.904419, 53.360382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961548, 46.139755, 53.938416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655533, 45.967754, 53.746662>,  <40.471924, 45.864555, 53.631611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.655533, 45.967754, 53.746662>,  <40.961548, 46.139755, 53.938416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.655533, 45.967754, 53.746662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588884, 0.165846, 0.791019,
		-0.260636, 0.887464, -0.380100,
		-0.765038, -0.430003, -0.479388,
		40.426022, 45.838753, 53.602844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337490, 46.658031, 53.780991>,  <40.961548, 46.139755, 53.938416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337490, 46.658031, 53.780991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237022, 46.272247, 53.813828>,  <40.176743, 46.040779, 53.833530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.237022, 46.272247, 53.813828>,  <40.337490, 46.658031, 53.780991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237022, 46.272247, 53.813828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509048, 0.203753, 0.836275,
		-0.823277, 0.168255, -0.542130,
		-0.251168, -0.964456, 0.082095,
		40.161671, 45.982910, 53.838455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580524, 46.618999, 53.920319>,  <40.337490, 46.658031, 53.780991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580524, 46.618999, 53.920319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700920, 46.256943, 54.040405>,  <39.773155, 46.039707, 54.112457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.700920, 46.256943, 54.040405>,  <39.580524, 46.618999, 53.920319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700920, 46.256943, 54.040405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617073, 0.055160, 0.784970,
		-0.727068, -0.421519, -0.541935,
		0.300987, -0.905140, 0.300213,
		39.791218, 45.985401, 54.130470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959770, 46.162224, 53.942245>,  <39.580524, 46.618999, 53.920319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959770, 46.162224, 53.942245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246208, 46.033897, 54.190208>,  <39.418072, 45.956902, 54.338985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.246208, 46.033897, 54.190208>,  <38.959770, 46.162224, 53.942245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246208, 46.033897, 54.190208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645243, 0.034450, 0.763201,
		-0.266203, -0.946515, -0.182334,
		0.716099, -0.320816, 0.619902,
		39.461037, 45.937653, 54.376179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556892, 45.804089, 54.296360>,  <38.959770, 46.162224, 53.942245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556892, 45.804089, 54.296360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892387, 45.828365, 54.512814>,  <39.093685, 45.842934, 54.642685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.892387, 45.828365, 54.512814>,  <38.556892, 45.804089, 54.296360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892387, 45.828365, 54.512814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544476, 0.107431, 0.831868,
		-0.007646, -0.992358, 0.123153,
		0.838742, 0.060693, 0.541137,
		39.144009, 45.846573, 54.675156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216393, 45.670582, 54.836033>,  <38.556892, 45.804089, 54.296360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216393, 45.670582, 54.836033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569351, 45.827217, 54.940361>,  <38.781128, 45.921196, 55.002956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.569351, 45.827217, 54.940361>,  <38.216393, 45.670582, 54.836033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569351, 45.827217, 54.940361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388982, 0.295303, 0.872634,
		0.264680, -0.871472, 0.412893,
		0.882404, 0.391577, 0.260826,
		38.834072, 45.944695, 55.018608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366512, 45.383423, 55.539249>,  <38.216393, 45.670582, 54.836033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366512, 45.383423, 55.539249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580193, 45.720085, 55.507637>,  <38.708401, 45.922081, 55.488670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.580193, 45.720085, 55.507637>,  <38.366512, 45.383423, 55.539249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580193, 45.720085, 55.507637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228287, 0.233642, 0.945144,
		0.813950, -0.486855, 0.316951,
		0.534201, 0.841656, -0.079030,
		38.740452, 45.972580, 55.483929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766373, 45.504131, 56.240570>,  <38.366512, 45.383423, 55.539249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766373, 45.504131, 56.240570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730820, 45.858875, 56.059212>,  <38.709488, 46.071724, 55.950397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.730820, 45.858875, 56.059212>,  <38.766373, 45.504131, 56.240570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730820, 45.858875, 56.059212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223820, 0.425775, 0.876710,
		0.970569, 0.179408, 0.160652,
		-0.088887, 0.886865, -0.453399,
		38.704155, 46.124935, 55.923191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299133, 45.917099, 56.524437>,  <38.766373, 45.504131, 56.240570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299133, 45.917099, 56.524437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005280, 46.150307, 56.385643>,  <38.828968, 46.290230, 56.302364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.005280, 46.150307, 56.385643>,  <39.299133, 45.917099, 56.524437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005280, 46.150307, 56.385643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037126, 0.545210, 0.837477,
		0.677446, 0.602357, -0.422175,
		-0.734635, 0.583019, -0.346988,
		38.784889, 46.325211, 56.281548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
