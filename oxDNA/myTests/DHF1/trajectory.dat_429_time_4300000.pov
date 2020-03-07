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
	<2.541972, 2.081964, 2.294444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.685417, 2.433613, 2.420010>,  <2.771484, 2.644602, 2.495349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.685417, 2.433613, 2.420010>,  <2.541972, 2.081964, 2.294444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.685417, 2.433613, 2.420010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836096, 0.152943, 0.526832,
		0.415139, -0.451391, 0.789877,
		0.358613, 0.879122, 0.313913,
		2.793001, 2.697349, 2.514184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.650180, 2.082157, 3.003112>,  <2.541972, 2.081964, 2.294444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.650180, 2.082157, 3.003112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579208, 2.461868, 2.899273>,  <2.536625, 2.689695, 2.836969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.579208, 2.461868, 2.899273>,  <2.650180, 2.082157, 3.003112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.579208, 2.461868, 2.899273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722479, 0.053470, 0.689322,
		0.668239, 0.309860, 0.676346,
		-0.177429, 0.949277, -0.259598,
		2.525980, 2.746652, 2.821393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.709826, 2.575807, 3.571147>,  <2.650180, 2.082157, 3.003112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.709826, 2.575807, 3.571147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.440136, 2.703819, 3.304913>,  <2.278322, 2.780626, 3.145172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.440136, 2.703819, 3.304913>,  <2.709826, 2.575807, 3.571147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.440136, 2.703819, 3.304913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573375, 0.341191, 0.744869,
		0.465472, 0.883838, -0.046542,
		-0.674224, 0.320030, -0.665585,
		2.237869, 2.799828, 3.105237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.667988, 3.218713, 3.656033>,  <2.709826, 2.575807, 3.571147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.667988, 3.218713, 3.656033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.321972, 3.042740, 3.559563>,  <2.114362, 2.937156, 3.501681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.321972, 3.042740, 3.559563>,  <2.667988, 3.218713, 3.656033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.321972, 3.042740, 3.559563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445834, 0.453608, 0.771668,
		-0.230083, 0.775048, -0.588526,
		-0.865040, -0.439933, -0.241176,
		2.062460, 2.910760, 3.487210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.185427, 3.680433, 3.798501>,  <2.667988, 3.218713, 3.656033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.185427, 3.680433, 3.798501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916851, 3.387547, 3.752850>,  <1.755705, 3.211814, 3.725459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.916851, 3.387547, 3.752850>,  <2.185427, 3.680433, 3.798501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.916851, 3.387547, 3.752850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580712, 0.424206, 0.694855,
		-0.460371, 0.532830, -0.710036,
		-0.671441, -0.732217, -0.114129,
		1.715419, 3.167881, 3.718611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.594796, 3.993611, 3.655653>,  <2.185427, 3.680433, 3.798501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.594796, 3.993611, 3.655653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464550, 3.632282, 3.767357>,  <1.386403, 3.415485, 3.834379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464550, 3.632282, 3.767357>,  <1.594796, 3.993611, 3.655653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.464550, 3.632282, 3.767357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564374, 0.422657, 0.709114,
		-0.758589, 0.073291, -0.647434,
		-0.325615, -0.903321, 0.279260,
		1.366866, 3.361286, 3.851135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.868696, 3.967800, 3.534936>,  <1.594796, 3.993611, 3.655653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.868696, 3.967800, 3.534936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.958664, 3.709290, 3.826618>,  <1.012645, 3.554183, 4.001627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.958664, 3.709290, 3.826618>,  <0.868696, 3.967800, 3.534936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.958664, 3.709290, 3.826618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674626, 0.436703, 0.595122,
		-0.703058, -0.625795, -0.337771,
		0.224919, -0.646275, 0.729205,
		1.026140, 3.515407, 4.045380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.260350, 3.658892, 3.853882>,  <0.868696, 3.967800, 3.534936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.260350, 3.658892, 3.853882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547348, 3.669209, 4.132317>,  <0.719547, 3.675398, 4.299377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.547348, 3.669209, 4.132317>,  <0.260350, 3.658892, 3.853882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.547348, 3.669209, 4.132317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655601, 0.362642, 0.662328,
		-0.235348, -0.931572, 0.277101,
		0.717494, 0.025790, 0.696087,
		0.762596, 3.676946, 4.341143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.513244, 4.907162, 4.960629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.687913, 4.675232, 5.235764>,  <0.792715, 4.536074, 5.400844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.687913, 4.675232, 5.235764>,  <0.513244, 4.907162, 4.960629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.687913, 4.675232, 5.235764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014868, -0.759829, -0.649953,
		0.899497, 0.294044, -0.323176,
		0.436673, -0.579826, 0.687836,
		0.818915, 4.501284, 5.442114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.235157, 4.620175, 4.867442>,  <0.513244, 4.907162, 4.960629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.235157, 4.620175, 4.867442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.028053, 4.352112, 5.080162>,  <0.903790, 4.191274, 5.207794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.028053, 4.352112, 5.080162>,  <1.235157, 4.620175, 4.867442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.028053, 4.352112, 5.080162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155383, -0.684931, -0.711847,
		0.841297, -0.285933, 0.458761,
		-0.517760, -0.670159, 0.531801,
		0.872725, 4.151064, 5.239702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.637617, 4.103924, 5.030547>,  <1.235157, 4.620175, 4.867442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.637617, 4.103924, 5.030547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265492, 3.957397, 5.023323>,  <1.042216, 3.869481, 5.018989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.265492, 3.957397, 5.023323>,  <1.637617, 4.103924, 5.030547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.265492, 3.957397, 5.023323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293929, -0.715215, -0.634093,
		0.219364, -0.595214, 0.773046,
		-0.930315, -0.366317, -0.018059,
		0.986397, 3.847502, 5.017905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.604176, 3.329525, 5.288480>,  <1.637617, 4.103924, 5.030547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.604176, 3.329525, 5.288480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340821, 3.433800, 5.006042>,  <1.182808, 3.496365, 4.836580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340821, 3.433800, 5.006042>,  <1.604176, 3.329525, 5.288480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.340821, 3.433800, 5.006042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360528, -0.714264, -0.599872,
		-0.660713, -0.649517, 0.376280,
		-0.658390, 0.260684, -0.706093,
		1.143305, 3.512006, 4.794214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.336658, 2.720442, 4.996352>,  <1.604176, 3.329525, 5.288480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.336658, 2.720442, 4.996352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212326, 2.962921, 4.703529>,  <1.137726, 3.108409, 4.527836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.212326, 2.962921, 4.703529>,  <1.336658, 2.720442, 4.996352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.212326, 2.962921, 4.703529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363442, -0.635870, -0.680866,
		-0.878233, -0.477695, -0.022670,
		-0.310831, 0.606199, -0.732057,
		1.119076, 3.144781, 4.483912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.167142, 2.231229, 4.403956>,  <1.336658, 2.720442, 4.996352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.167142, 2.231229, 4.403956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.236611, 2.591942, 4.245651>,  <1.278292, 2.808369, 4.150668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.236611, 2.591942, 4.245651>,  <1.167142, 2.231229, 4.403956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.236611, 2.591942, 4.245651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146837, -0.421090, -0.895054,
		-0.973795, 0.097332, -0.205547,
		0.173671, 0.901782, -0.395763,
		1.288712, 2.862476, 4.126922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.887764, 2.203652, 3.751918>,  <1.167142, 2.231229, 4.403956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.887764, 2.203652, 3.751918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174327, 2.482605, 3.743729>,  <1.346264, 2.649977, 3.738815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.174327, 2.482605, 3.743729>,  <0.887764, 2.203652, 3.751918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.174327, 2.482605, 3.743729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326650, -0.361201, -0.873403,
		-0.616491, 0.619025, -0.486567,
		0.716407, 0.697382, -0.020472,
		1.389249, 2.691820, 3.737587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.888033, 2.574407, 3.097311>,  <0.887764, 2.203652, 3.751918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.888033, 2.574407, 3.097311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260663, 2.638855, 3.227669>,  <1.484241, 2.677524, 3.305884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.260663, 2.638855, 3.227669>,  <0.888033, 2.574407, 3.097311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.260663, 2.638855, 3.227669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354951, -0.209304, -0.911154,
		-0.078594, 0.964486, -0.252172,
		0.931575, 0.161120, 0.325895,
		1.540135, 2.687191, 3.325437>
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
