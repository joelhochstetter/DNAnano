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
	<1.738419, 5.264497, 2.800730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.697948, 5.200981, 2.407885>,  <1.673666, 5.162872, 2.172177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.697948, 5.200981, 2.407885>,  <1.738419, 5.264497, 2.800730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.697948, 5.200981, 2.407885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185844, -0.972820, 0.138141,
		-0.977356, -0.168543, 0.127937,
		-0.101177, -0.158790, -0.982115,
		1.667595, 5.153344, 2.113250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.311565, 4.596174, 2.863588>,  <1.738419, 5.264497, 2.800730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.311565, 4.596174, 2.863588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.501263, 4.659000, 2.517080>,  <1.615081, 4.696696, 2.309176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.501263, 4.659000, 2.517080>,  <1.311565, 4.596174, 2.863588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.501263, 4.659000, 2.517080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304506, -0.952492, -0.005995,
		-0.826056, -0.260941, -0.499541,
		0.474245, 0.157065, -0.866269,
		1.643536, 4.706120, 2.257200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107128, 4.123170, 2.292862>,  <1.311565, 4.596174, 2.863588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107128, 4.123170, 2.292862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486889, 4.239716, 2.245968>,  <1.714745, 4.309643, 2.217831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.486889, 4.239716, 2.245968>,  <1.107128, 4.123170, 2.292862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.486889, 4.239716, 2.245968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295168, -0.955309, 0.016128,
		-0.107298, -0.049916, -0.992973,
		0.949401, 0.291363, -0.117237,
		1.771709, 4.327125, 2.210797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.302721, 3.764187, 1.735898>,  <1.107128, 4.123170, 2.292862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.302721, 3.764187, 1.735898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600872, 3.880852, 1.975679>,  <1.779763, 3.950850, 2.119548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.600872, 3.880852, 1.975679>,  <1.302721, 3.764187, 1.735898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.600872, 3.880852, 1.975679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215097, -0.956342, 0.197847,
		0.630988, -0.018530, -0.775572,
		0.745378, 0.291662, 0.599454,
		1.824485, 3.968350, 2.155516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.988646, 3.467917, 1.565099>,  <1.302721, 3.764187, 1.735898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.988646, 3.467917, 1.565099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981434, 3.561783, 1.953863>,  <1.977107, 3.618103, 2.187121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.981434, 3.561783, 1.953863>,  <1.988646, 3.467917, 1.565099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.981434, 3.561783, 1.953863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122276, -0.964253, 0.235085,
		0.992332, 0.123080, -0.011308,
		-0.018030, 0.234665, 0.971909,
		1.976025, 3.632182, 2.245436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.322038, 2.985094, 1.783044>,  <1.988646, 3.467917, 1.565099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.322038, 2.985094, 1.783044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180733, 3.109482, 2.135975>,  <2.095949, 3.184114, 2.347734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.180733, 3.109482, 2.135975>,  <2.322038, 2.985094, 1.783044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.180733, 3.109482, 2.135975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070777, -0.949319, 0.306242,
		0.932843, 0.045736, 0.357370,
		-0.353264, 0.310969, 0.882328,
		2.074754, 3.202772, 2.400673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.599146, 2.637242, 2.309127>,  <2.322038, 2.985094, 1.783044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.599146, 2.637242, 2.309127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236073, 2.746891, 2.436230>,  <2.018229, 2.812680, 2.512491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.236073, 2.746891, 2.436230>,  <2.599146, 2.637242, 2.309127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.236073, 2.746891, 2.436230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196552, -0.946690, 0.255235,
		0.370782, 0.169217, 0.913174,
		-0.907683, 0.274122, 0.317756,
		1.963768, 2.829128, 2.531556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.498436, 2.206790, 2.941433>,  <2.599146, 2.637242, 2.309127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.498436, 2.206790, 2.941433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144676, 2.334126, 2.804907>,  <1.932420, 2.410527, 2.722991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.144676, 2.334126, 2.804907>,  <2.498436, 2.206790, 2.941433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144676, 2.334126, 2.804907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397929, -0.896457, 0.194984,
		-0.243902, 0.308262, 0.919503,
		-0.884401, 0.318340, -0.341314,
		1.879356, 2.429627, 2.702513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.442862, 1.247174, 2.495731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.093102, 1.430218, 2.560249>,  <0.883245, 1.540044, 2.598961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.093102, 1.430218, 2.560249>,  <1.442862, 1.247174, 2.495731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.093102, 1.430218, 2.560249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439633, 0.887872, -0.135672,
		-0.205296, -0.047720, -0.977536,
		-0.874401, 0.457609, 0.161297,
		0.830781, 1.567501, 2.608638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.308826, 1.689930, 1.987258>,  <1.442862, 1.247174, 2.495731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.308826, 1.689930, 1.987258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140457, 1.814114, 2.328184>,  <1.039436, 1.888624, 2.532740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.140457, 1.814114, 2.328184>,  <1.308826, 1.689930, 1.987258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.140457, 1.814114, 2.328184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414882, 0.901459, -0.123467,
		-0.806658, 0.301640, -0.508248,
		-0.420922, 0.310459, 0.852314,
		1.014180, 1.907251, 2.583879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.956724, 2.301384, 1.921711>,  <1.308826, 1.689930, 1.987258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.956724, 2.301384, 1.921711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.070618, 2.279949, 2.304554>,  <1.138954, 2.267088, 2.534260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.070618, 2.279949, 2.304554>,  <0.956724, 2.301384, 1.921711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.070618, 2.279949, 2.304554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412547, 0.908095, -0.071889,
		-0.865292, 0.415321, 0.280673,
		0.284735, -0.053586, 0.957107,
		1.156038, 2.263873, 2.591686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.640126, 2.824017, 2.470202>,  <0.956724, 2.301384, 1.921711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.640126, 2.824017, 2.470202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.018593, 2.741577, 2.570036>,  <1.245673, 2.692114, 2.629936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.018593, 2.741577, 2.570036>,  <0.640126, 2.824017, 2.470202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.018593, 2.741577, 2.570036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219802, 0.975142, -0.028024,
		-0.237605, 0.081375, 0.967947,
		0.946166, -0.206098, 0.249585,
		1.302443, 2.679748, 2.644912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.876071, 3.216693, 3.050077>,  <0.640126, 2.824017, 2.470202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.876071, 3.216693, 3.050077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224358, 3.091362, 2.898457>,  <1.433329, 3.016163, 2.807484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.224358, 3.091362, 2.898457>,  <0.876071, 3.216693, 3.050077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.224358, 3.091362, 2.898457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384461, 0.914313, 0.127363,
		0.306666, -0.256627, 0.916569,
		0.870715, -0.313328, -0.379052,
		1.485572, 2.997364, 2.784741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.434671, 3.575350, 3.485756>,  <0.876071, 3.216693, 3.050077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.434671, 3.575350, 3.485756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629967, 3.464615, 3.154701>,  <1.747144, 3.398174, 2.956069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629967, 3.464615, 3.154701>,  <1.434671, 3.575350, 3.485756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.629967, 3.464615, 3.154701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305136, 0.942648, -0.135303,
		0.817627, -0.186481, 0.544712,
		0.488240, -0.276838, -0.827637,
		1.776439, 3.381563, 2.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.934899, 4.049575, 3.488495>,  <1.434671, 3.575350, 3.485756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.934899, 4.049575, 3.488495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958092, 3.912239, 3.113527>,  <1.972008, 3.829838, 2.888546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.958092, 3.912239, 3.113527>,  <1.934899, 4.049575, 3.488495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.958092, 3.912239, 3.113527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330094, 0.892778, -0.306571,
		0.942166, -0.291661, 0.165099,
		0.057982, -0.343339, -0.937420,
		1.975486, 3.809237, 2.832301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.550973, 4.179987, 3.234657>,  <1.934899, 4.049575, 3.488495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.550973, 4.179987, 3.234657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.351868, 4.121117, 2.892763>,  <2.232404, 4.085794, 2.687627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.351868, 4.121117, 2.892763>,  <2.550973, 4.179987, 3.234657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.351868, 4.121117, 2.892763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319191, 0.885246, -0.338316,
		0.806441, -0.441224, -0.393666,
		-0.497764, -0.147177, -0.854734,
		2.202538, 4.076963, 2.636343>
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
