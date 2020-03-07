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
	<39.931549, 45.056942, 57.672760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259842, 45.272781, 57.597672>,  <40.456818, 45.402283, 57.552620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259842, 45.272781, 57.597672>,  <39.931549, 45.056942, 57.672760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259842, 45.272781, 57.597672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275193, 0.085437, -0.957585,
		-0.500670, 0.837578, 0.218613,
		0.820730, 0.539595, -0.187720,
		40.506062, 45.434662, 57.541355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716885, 45.631245, 57.315639>,  <39.931549, 45.056942, 57.672760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716885, 45.631245, 57.315639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102234, 45.585453, 57.218636>,  <40.333443, 45.557980, 57.160431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102234, 45.585453, 57.218636>,  <39.716885, 45.631245, 57.315639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102234, 45.585453, 57.218636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233325, 0.087993, -0.968409,
		0.132203, 0.989520, 0.058058,
		0.963370, -0.114481, -0.242513,
		40.391243, 45.551109, 57.145882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748638, 46.067192, 56.785763>,  <39.716885, 45.631245, 57.315639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748638, 46.067192, 56.785763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068474, 45.827705, 56.767014>,  <40.260376, 45.684013, 56.755764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068474, 45.827705, 56.767014>,  <39.748638, 46.067192, 56.785763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068474, 45.827705, 56.767014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025517, 0.044115, -0.998701,
		0.600008, 0.799744, 0.019996,
		0.799587, -0.598718, -0.046876,
		40.308350, 45.648090, 56.752949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215714, 46.251602, 56.258652>,  <39.748638, 46.067192, 56.785763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215714, 46.251602, 56.258652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313843, 45.866768, 56.306339>,  <40.372719, 45.635868, 56.334953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313843, 45.866768, 56.306339>,  <40.215714, 46.251602, 56.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313843, 45.866768, 56.306339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017598, -0.118542, -0.992793,
		0.969281, 0.245654, -0.012150,
		0.245324, -0.962082, 0.119223,
		40.387440, 45.578144, 56.342106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646454, 46.126938, 55.720379>,  <40.215714, 46.251602, 56.258652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646454, 46.126938, 55.720379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615921, 45.744591, 55.833870>,  <40.597603, 45.515182, 55.901962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615921, 45.744591, 55.833870>,  <40.646454, 46.126938, 55.720379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615921, 45.744591, 55.833870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104031, -0.290636, -0.951162,
		0.991641, -0.043086, 0.121624,
		-0.076330, -0.955863, 0.283724,
		40.593021, 45.457832, 55.918987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287487, 45.716511, 55.455101>,  <40.646454, 46.126938, 55.720379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287487, 45.716511, 55.455101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960884, 45.492077, 55.509514>,  <40.764923, 45.357418, 55.542164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960884, 45.492077, 55.509514>,  <41.287487, 45.716511, 55.455101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960884, 45.492077, 55.509514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085415, -0.350427, -0.932687,
		0.570988, -0.749922, 0.334050,
		-0.816503, -0.561085, 0.136035,
		40.715935, 45.323750, 55.550323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523598, 45.066616, 55.288982>,  <41.287487, 45.716511, 55.455101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523598, 45.066616, 55.288982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129105, 45.023529, 55.238792>,  <40.892410, 44.997677, 55.208679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.129105, 45.023529, 55.238792>,  <41.523598, 45.066616, 55.288982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129105, 45.023529, 55.238792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151525, -0.284738, -0.946554,
		0.066232, -0.952534, 0.297139,
		-0.986232, -0.107716, -0.125474,
		40.833237, 44.991215, 55.201149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434921, 44.559971, 54.813183>,  <41.523598, 45.066616, 55.288982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434921, 44.559971, 54.813183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070824, 44.724979, 54.798874>,  <40.852364, 44.823986, 54.790287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070824, 44.724979, 54.798874>,  <41.434921, 44.559971, 54.813183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070824, 44.724979, 54.798874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068205, -0.234588, -0.969699,
		-0.408417, -0.880222, 0.241669,
		-0.910244, 0.412525, -0.035774,
		40.797749, 44.848736, 54.788143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048439, 44.118759, 54.463463>,  <41.434921, 44.559971, 54.813183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048439, 44.118759, 54.463463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828079, 44.451126, 54.432274>,  <40.695862, 44.650547, 54.413559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828079, 44.451126, 54.432274>,  <41.048439, 44.118759, 54.463463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828079, 44.451126, 54.432274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269232, -0.265381, -0.925790,
		-0.789950, -0.489026, 0.369909,
		-0.550902, 0.830919, -0.077976,
		40.662807, 44.700401, 54.408882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292072, 43.930073, 54.270130>,  <41.048439, 44.118759, 54.463463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292072, 43.930073, 54.270130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355377, 44.309345, 54.159927>,  <40.393360, 44.536907, 54.093807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355377, 44.309345, 54.159927>,  <40.292072, 43.930073, 54.270130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355377, 44.309345, 54.159927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177362, -0.247184, -0.952598,
		-0.971337, 0.199628, 0.129051,
		0.158266, 0.948182, -0.275505,
		40.402855, 44.593800, 54.077274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832012, 44.110043, 53.821419>,  <40.292072, 43.930073, 54.270130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832012, 44.110043, 53.821419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118446, 44.383770, 53.766380>,  <40.290306, 44.548004, 53.733356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118446, 44.383770, 53.766380>,  <39.832012, 44.110043, 53.821419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118446, 44.383770, 53.766380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028550, -0.168244, -0.985332,
		-0.697429, 0.709510, -0.100940,
		0.716085, 0.684317, -0.137595,
		40.333271, 44.589066, 53.725101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685524, 44.372746, 53.126137>,  <39.832012, 44.110043, 53.821419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685524, 44.372746, 53.126137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045929, 44.524086, 53.211018>,  <40.262173, 44.614891, 53.261944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045929, 44.524086, 53.211018>,  <39.685524, 44.372746, 53.126137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045929, 44.524086, 53.211018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230605, -0.003431, -0.973041,
		-0.367422, 0.925656, -0.090340,
		0.901012, 0.378350, 0.212200,
		40.316231, 44.637592, 53.274677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785076, 45.023773, 52.735527>,  <39.685524, 44.372746, 53.126137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785076, 45.023773, 52.735527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128792, 44.833721, 52.811291>,  <40.335022, 44.719688, 52.856750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128792, 44.833721, 52.811291>,  <39.785076, 45.023773, 52.735527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128792, 44.833721, 52.811291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251280, 0.069589, -0.965410,
		0.445518, 0.877158, 0.179188,
		0.859286, -0.475134, 0.189409,
		40.386578, 44.691181, 52.868114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270679, 45.361320, 52.260780>,  <39.785076, 45.023773, 52.735527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270679, 45.361320, 52.260780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455055, 45.015778, 52.342056>,  <40.565681, 44.808453, 52.390823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455055, 45.015778, 52.342056>,  <40.270679, 45.361320, 52.260780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455055, 45.015778, 52.342056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399623, -0.002383, -0.916676,
		0.792362, 0.503730, 0.344119,
		0.460937, -0.863858, 0.203191,
		40.593338, 44.756618, 52.403015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993187, 45.484287, 52.206635>,  <40.270679, 45.361320, 52.260780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993187, 45.484287, 52.206635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975204, 45.086147, 52.172577>,  <40.964417, 44.847263, 52.152142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.975204, 45.086147, 52.172577>,  <40.993187, 45.484287, 52.206635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.975204, 45.086147, 52.172577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517763, 0.049674, -0.854081,
		0.854342, -0.082475, 0.513125,
		-0.044952, -0.995354, -0.085141,
		40.961720, 44.787540, 52.147034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.606483, 45.391087, 51.861748>,  <40.993187, 45.484287, 52.206635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.606483, 45.391087, 51.861748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430626, 45.031826, 51.864372>,  <41.325111, 44.816269, 51.865948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.430626, 45.031826, 51.864372>,  <41.606483, 45.391087, 51.861748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430626, 45.031826, 51.864372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469988, -0.236268, -0.850464,
		0.765394, -0.370815, 0.525992,
		-0.439640, -0.898150, 0.006559,
		41.298733, 44.762383, 51.866341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093727, 44.914589, 51.970394>,  <41.606483, 45.391087, 51.861748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093727, 44.914589, 51.970394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799026, 44.740810, 51.763145>,  <41.622208, 44.636543, 51.638794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799026, 44.740810, 51.763145>,  <42.093727, 44.914589, 51.970394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799026, 44.740810, 51.763145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619916, -0.128016, -0.774155,
		0.270000, -0.891554, 0.363636,
		-0.736752, -0.434446, -0.518125,
		41.577999, 44.610477, 51.607708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264828, 44.244232, 51.674164>,  <42.093727, 44.914589, 51.970394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264828, 44.244232, 51.674164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986816, 44.414371, 51.442299>,  <41.820007, 44.516453, 51.303181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986816, 44.414371, 51.442299>,  <42.264828, 44.244232, 51.674164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986816, 44.414371, 51.442299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438963, -0.387487, -0.810657,
		-0.569421, -0.817885, 0.082606,
		-0.695033, 0.425344, -0.579665,
		41.778305, 44.541973, 51.268398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204178, 43.720680, 51.171501>,  <42.264828, 44.244232, 51.674164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204178, 43.720680, 51.171501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028801, 44.051842, 51.031597>,  <41.923573, 44.250538, 50.947655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.028801, 44.051842, 51.031597>,  <42.204178, 43.720680, 51.171501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.028801, 44.051842, 51.031597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237383, -0.268670, -0.933523,
		-0.866842, -0.492326, -0.078735,
		-0.438444, 0.827908, -0.349764,
		41.897266, 44.300213, 50.926666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786678, 43.486664, 50.564667>,  <42.204178, 43.720680, 51.171501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786678, 43.486664, 50.564667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877655, 43.874626, 50.529884>,  <41.932240, 44.107403, 50.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877655, 43.874626, 50.529884>,  <41.786678, 43.486664, 50.564667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877655, 43.874626, 50.529884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294209, -0.153566, -0.943323,
		-0.928284, 0.188967, -0.320281,
		0.227441, 0.969902, -0.086957,
		41.945889, 44.165596, 50.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365318, 43.722221, 50.002071>,  <41.786678, 43.486664, 50.564667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365318, 43.722221, 50.002071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657829, 43.992702, 50.037804>,  <41.833336, 44.154991, 50.059242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657829, 43.992702, 50.037804>,  <41.365318, 43.722221, 50.002071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657829, 43.992702, 50.037804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079888, 0.045160, -0.995780,
		-0.677383, 0.735331, -0.020996,
		0.731279, 0.676202, 0.089334,
		41.877213, 44.195564, 50.064606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157944, 44.184166, 49.428806>,  <41.365318, 43.722221, 50.002071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157944, 44.184166, 49.428806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531792, 44.276524, 49.537010>,  <41.756100, 44.331940, 49.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531792, 44.276524, 49.537010>,  <41.157944, 44.184166, 49.428806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531792, 44.276524, 49.537010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187758, 0.325646, -0.926662,
		-0.302052, 0.916866, 0.261002,
		0.934618, 0.230895, 0.270511,
		41.812176, 44.345791, 49.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239998, 44.823551, 49.197723>,  <41.157944, 44.184166, 49.428806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239998, 44.823551, 49.197723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606621, 44.668163, 49.235687>,  <41.826595, 44.574932, 49.258465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606621, 44.668163, 49.235687>,  <41.239998, 44.823551, 49.197723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606621, 44.668163, 49.235687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232740, 0.325192, -0.916560,
		0.325192, 0.862172, 0.388471,
		0.916560, -0.388471, 0.094912,
		41.881588, 44.551620, 49.264160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679043, 45.348858, 48.860283>,  <41.239998, 44.823551, 49.197723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679043, 45.348858, 48.860283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895287, 45.013706, 48.890465>,  <42.025032, 44.812614, 48.908573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.895287, 45.013706, 48.890465>,  <41.679043, 45.348858, 48.860283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.895287, 45.013706, 48.890465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345509, 0.139355, -0.928011,
		0.767047, 0.527765, 0.364833,
		0.540613, -0.837881, 0.075456,
		42.057472, 44.762341, 48.913101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423206, 45.495110, 48.730274>,  <41.679043, 45.348858, 48.860283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423206, 45.495110, 48.730274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404243, 45.102612, 48.655533>,  <42.392868, 44.867111, 48.610687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.404243, 45.102612, 48.655533>,  <42.423206, 45.495110, 48.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404243, 45.102612, 48.655533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589258, 0.123575, -0.798439,
		0.806553, -0.147954, 0.572348,
		-0.047404, -0.981244, -0.186852,
		42.390022, 44.808239, 48.599476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074844, 45.318344, 48.505177>,  <42.423206, 45.495110, 48.730274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074844, 45.318344, 48.505177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827438, 45.039783, 48.359592>,  <42.678993, 44.872646, 48.272243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827438, 45.039783, 48.359592>,  <43.074844, 45.318344, 48.505177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827438, 45.039783, 48.359592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474883, 0.037744, -0.879240,
		0.626040, -0.716660, 0.307364,
		-0.618514, -0.696401, -0.363958,
		42.641884, 44.830864, 48.250404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540207, 44.779087, 48.139721>,  <43.074844, 45.318344, 48.505177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540207, 44.779087, 48.139721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161560, 44.770416, 48.011070>,  <42.934372, 44.765213, 47.933880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161560, 44.770416, 48.011070>,  <43.540207, 44.779087, 48.139721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161560, 44.770416, 48.011070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322114, -0.102011, -0.941189,
		-0.012409, -0.994547, 0.103547,
		-0.946620, -0.021675, -0.321623,
		42.877575, 44.763916, 47.914585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636581, 44.438408, 47.574875>,  <43.540207, 44.779087, 48.139721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636581, 44.438408, 47.574875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251778, 44.534897, 47.523720>,  <43.020897, 44.592789, 47.493027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251778, 44.534897, 47.523720>,  <43.636581, 44.438408, 47.574875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251778, 44.534897, 47.523720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084298, -0.183109, -0.979472,
		-0.259690, -0.953038, 0.155817,
		-0.962006, 0.241224, -0.127891,
		42.963177, 44.607265, 47.485352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312984, 43.918880, 47.190857>,  <43.636581, 44.438408, 47.574875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312984, 43.918880, 47.190857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101524, 44.253952, 47.135994>,  <42.974648, 44.454994, 47.103077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101524, 44.253952, 47.135994>,  <43.312984, 43.918880, 47.190857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101524, 44.253952, 47.135994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006355, -0.165480, -0.986193,
		-0.848814, -0.520483, 0.092805,
		-0.528654, 0.837684, -0.137154,
		42.942928, 44.505257, 47.094849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742844, 43.843987, 46.674740>,  <43.312984, 43.918880, 47.190857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742844, 43.843987, 46.674740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804153, 44.238964, 46.690041>,  <42.840939, 44.475952, 46.699223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804153, 44.238964, 46.690041>,  <42.742844, 43.843987, 46.674740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804153, 44.238964, 46.690041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187319, 0.067039, -0.980009,
		-0.970267, 0.143045, 0.195243,
		0.153275, 0.987443, 0.038251,
		42.850136, 44.535198, 46.701515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374580, 44.051086, 46.051388>,  <42.742844, 43.843987, 46.674740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374580, 44.051086, 46.051388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618523, 44.356819, 46.135170>,  <42.764889, 44.540260, 46.185440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618523, 44.356819, 46.135170>,  <42.374580, 44.051086, 46.051388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618523, 44.356819, 46.135170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022009, 0.247853, -0.968548,
		-0.792207, 0.595284, 0.134332,
		0.609855, 0.764334, 0.209453,
		42.801479, 44.586121, 46.198006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061920, 44.512337, 45.775810>,  <42.374580, 44.051086, 46.051388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061920, 44.512337, 45.775810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436920, 44.650028, 45.796196>,  <42.661922, 44.732643, 45.808430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436920, 44.650028, 45.796196>,  <42.061920, 44.512337, 45.775810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436920, 44.650028, 45.796196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034156, 0.236785, -0.970962,
		-0.346297, 0.908539, 0.233744,
		0.937503, 0.344224, 0.050966,
		42.718170, 44.753296, 45.811485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976883, 45.161980, 45.450405>,  <42.061920, 44.512337, 45.775810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976883, 45.161980, 45.450405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370811, 45.093311, 45.460724>,  <42.607166, 45.052113, 45.466915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.370811, 45.093311, 45.460724>,  <41.976883, 45.161980, 45.450405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370811, 45.093311, 45.460724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050264, 0.139732, -0.988913,
		0.166158, 0.975195, 0.146239,
		0.984817, -0.171667, 0.025800,
		42.666256, 45.041813, 45.468464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202679, 45.628391, 44.980991>,  <41.976883, 45.161980, 45.450405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202679, 45.628391, 44.980991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520912, 45.390354, 45.026428>,  <42.711853, 45.247532, 45.053692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.520912, 45.390354, 45.026428>,  <42.202679, 45.628391, 44.980991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.520912, 45.390354, 45.026428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148239, 0.009419, -0.988907,
		0.587424, 0.803600, 0.095710,
		0.795586, -0.595096, 0.113591,
		42.759586, 45.211826, 45.060505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653721, 45.856663, 44.506104>,  <42.202679, 45.628391, 44.980991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653721, 45.856663, 44.506104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768921, 45.480751, 44.579716>,  <42.838039, 45.255203, 44.623882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.768921, 45.480751, 44.579716>,  <42.653721, 45.856663, 44.506104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768921, 45.480751, 44.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145626, -0.146961, -0.978363,
		0.946494, 0.308566, 0.094533,
		0.287997, -0.939781, 0.184034,
		42.855320, 45.198818, 44.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190613, 45.846100, 44.095055>,  <42.653721, 45.856663, 44.506104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190613, 45.846100, 44.095055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039909, 45.483837, 44.172867>,  <42.949486, 45.266479, 44.219555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039909, 45.483837, 44.172867>,  <43.190613, 45.846100, 44.095055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039909, 45.483837, 44.172867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034758, -0.196040, -0.979980,
		0.925660, -0.375976, 0.042381,
		-0.376758, -0.905655, 0.194535,
		42.926884, 45.212139, 44.231228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583328, 45.467033, 43.646328>,  <43.190613, 45.846100, 44.095055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583328, 45.467033, 43.646328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246788, 45.267334, 43.729164>,  <43.044865, 45.147514, 43.778866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246788, 45.267334, 43.729164>,  <43.583328, 45.467033, 43.646328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246788, 45.267334, 43.729164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000178, -0.383412, -0.923577,
		0.540492, -0.777014, 0.322673,
		-0.841349, -0.499244, 0.207093,
		42.994385, 45.117561, 43.791290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.693447, 44.828625, 43.293419>,  <43.583328, 45.467033, 43.646328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.693447, 44.828625, 43.293419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298820, 44.852928, 43.354080>,  <43.062046, 44.867512, 43.390476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298820, 44.852928, 43.354080>,  <43.693447, 44.828625, 43.293419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298820, 44.852928, 43.354080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162620, -0.276490, -0.947158,
		-0.015621, -0.959094, 0.282656,
		-0.986565, 0.060761, 0.151649,
		43.002850, 44.871155, 43.399574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.395416, 44.213676, 43.055798>,  <43.693447, 44.828625, 43.293419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.395416, 44.213676, 43.055798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084419, 44.463802, 43.082584>,  <42.897820, 44.613876, 43.098656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084419, 44.463802, 43.082584>,  <43.395416, 44.213676, 43.055798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084419, 44.463802, 43.082584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217109, -0.166948, -0.961765,
		-0.590228, -0.762305, 0.265562,
		-0.777493, 0.625316, 0.066966,
		42.851170, 44.651398, 43.102673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940071, 43.895397, 42.645489>,  <43.395416, 44.213676, 43.055798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940071, 43.895397, 42.645489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808487, 44.272224, 42.671692>,  <42.729534, 44.498322, 42.687416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808487, 44.272224, 42.671692>,  <42.940071, 43.895397, 42.645489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808487, 44.272224, 42.671692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217072, -0.007921, -0.976124,
		-0.919056, -0.335329, 0.207102,
		-0.328963, 0.942068, 0.065511,
		42.709797, 44.554844, 42.691345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277306, 43.918427, 42.300758>,  <42.940071, 43.895397, 42.645489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277306, 43.918427, 42.300758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407852, 44.296497, 42.296326>,  <42.486179, 44.523342, 42.293667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407852, 44.296497, 42.296326>,  <42.277306, 43.918427, 42.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407852, 44.296497, 42.296326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206213, 0.059755, -0.976681,
		-0.922477, 0.321036, 0.214410,
		0.326362, 0.945180, -0.011079,
		42.505760, 44.580051, 42.293003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898792, 44.290752, 41.760452>,  <42.277306, 43.918427, 42.300758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898792, 44.290752, 41.760452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212334, 44.530609, 41.824944>,  <42.400459, 44.674522, 41.863640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212334, 44.530609, 41.824944>,  <41.898792, 44.290752, 41.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212334, 44.530609, 41.824944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001266, 0.261191, -0.965286,
		-0.620941, 0.756442, 0.205495,
		0.783857, 0.599645, 0.161227,
		42.447491, 44.710503, 41.873310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664970, 44.853939, 41.377666>,  <41.898792, 44.290752, 41.760452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664970, 44.853939, 41.377666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053421, 44.932915, 41.431232>,  <42.286491, 44.980301, 41.463371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.053421, 44.932915, 41.431232>,  <41.664970, 44.853939, 41.377666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.053421, 44.932915, 41.431232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062166, 0.332482, -0.941058,
		-0.230328, 0.922210, 0.310608,
		0.971125, 0.197443, 0.133911,
		42.344757, 44.992149, 41.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907269, 45.582199, 41.222115>,  <41.664970, 44.853939, 41.377666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907269, 45.582199, 41.222115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246071, 45.373589, 41.180946>,  <42.449352, 45.248421, 41.156246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246071, 45.373589, 41.180946>,  <41.907269, 45.582199, 41.222115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246071, 45.373589, 41.180946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056755, 0.281226, -0.957962,
		0.528549, 0.805556, 0.267798,
		0.847003, -0.521529, -0.102923,
		42.500172, 45.217129, 41.150070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469414, 46.028793, 40.933617>,  <41.907269, 45.582199, 41.222115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469414, 46.028793, 40.933617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586327, 45.650986, 40.873676>,  <42.656475, 45.424301, 40.837711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586327, 45.650986, 40.873676>,  <42.469414, 46.028793, 40.933617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586327, 45.650986, 40.873676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229781, 0.221464, -0.947710,
		0.928317, 0.242566, 0.281762,
		0.292282, -0.944519, -0.149852,
		42.674011, 45.367630, 40.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058792, 46.135342, 40.453674>,  <42.469414, 46.028793, 40.933617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058792, 46.135342, 40.453674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931381, 45.758411, 40.412567>,  <42.854935, 45.532253, 40.387901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931381, 45.758411, 40.412567>,  <43.058792, 46.135342, 40.453674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931381, 45.758411, 40.412567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259215, 0.017690, -0.965658,
		0.911782, -0.334230, 0.238630,
		-0.318530, -0.942326, -0.102767,
		42.835823, 45.475716, 40.381737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506962, 45.949326, 39.982613>,  <43.058792, 46.135342, 40.453674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506962, 45.949326, 39.982613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222359, 45.668270, 39.979752>,  <43.051598, 45.499638, 39.978035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222359, 45.668270, 39.979752>,  <43.506962, 45.949326, 39.982613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222359, 45.668270, 39.979752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093916, -0.085000, -0.991945,
		0.696374, -0.706449, 0.126467,
		-0.711508, -0.702642, -0.007155,
		43.008907, 45.457478, 39.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811050, 45.475788, 39.506744>,  <43.506962, 45.949326, 39.982613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811050, 45.475788, 39.506744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417137, 45.407887, 39.491859>,  <43.180790, 45.367146, 39.482929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.417137, 45.407887, 39.491859>,  <43.811050, 45.475788, 39.506744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.417137, 45.407887, 39.491859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080591, -0.256345, -0.963220,
		0.153975, -0.951562, 0.266125,
		-0.984783, -0.169759, -0.037217,
		43.121704, 45.356960, 39.480694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757961, 44.906334, 39.144817>,  <43.811050, 45.475788, 39.506744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757961, 44.906334, 39.144817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393280, 45.069798, 39.127872>,  <43.174473, 45.167873, 39.117706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.393280, 45.069798, 39.127872>,  <43.757961, 44.906334, 39.144817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.393280, 45.069798, 39.127872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018023, -0.142784, -0.989590,
		-0.410452, -0.901450, 0.137542,
		-0.911705, 0.408658, -0.042359,
		43.119770, 45.192394, 39.115166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429298, 44.432381, 38.873276>,  <43.757961, 44.906334, 39.144817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429298, 44.432381, 38.873276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204773, 44.750938, 38.783226>,  <43.070057, 44.942074, 38.729195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.204773, 44.750938, 38.783226>,  <43.429298, 44.432381, 38.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.204773, 44.750938, 38.783226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010742, -0.279008, -0.960229,
		-0.827536, -0.536567, 0.165165,
		-0.561309, 0.796398, -0.225126,
		43.036381, 44.989857, 38.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188007, 44.281616, 38.312191>,  <43.429298, 44.432381, 38.873276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188007, 44.281616, 38.312191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098259, 44.671173, 38.298416>,  <43.044411, 44.904907, 38.290154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098259, 44.671173, 38.298416>,  <43.188007, 44.281616, 38.312191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098259, 44.671173, 38.298416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055376, -0.022536, -0.998211,
		-0.972929, -0.225877, -0.048874,
		-0.224372, 0.973895, -0.034434,
		43.030949, 44.963341, 38.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608543, 44.449818, 37.809147>,  <43.188007, 44.281616, 38.312191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608543, 44.449818, 37.809147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814690, 44.790092, 37.850571>,  <42.938377, 44.994259, 37.875427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.814690, 44.790092, 37.850571>,  <42.608543, 44.449818, 37.809147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814690, 44.790092, 37.850571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034281, 0.141215, -0.989385,
		-0.856282, 0.506349, 0.101940,
		0.515370, 0.850688, 0.103561,
		42.969299, 45.045300, 37.881638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284885, 44.865887, 37.335773>,  <42.608543, 44.449818, 37.809147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284885, 44.865887, 37.335773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630272, 45.052879, 37.411545>,  <42.837505, 45.165077, 37.457008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630272, 45.052879, 37.411545>,  <42.284885, 44.865887, 37.335773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630272, 45.052879, 37.411545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033622, 0.321375, -0.946355,
		-0.503284, 0.823515, 0.261779,
		0.863467, 0.467484, 0.189431,
		42.889313, 45.193123, 37.468372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178432, 45.515900, 37.071980>,  <42.284885, 44.865887, 37.335773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178432, 45.515900, 37.071980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567360, 45.424995, 37.093693>,  <42.800716, 45.370453, 37.106720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.567360, 45.424995, 37.093693>,  <42.178432, 45.515900, 37.071980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567360, 45.424995, 37.093693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150979, 0.433752, -0.888293,
		0.178329, 0.871900, 0.456058,
		0.972319, -0.227264, 0.054288,
		42.859055, 45.356815, 37.109978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479176, 46.068623, 36.633522>,  <42.178432, 45.515900, 37.071980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.479176, 46.068623, 36.633522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724945, 45.754444, 36.663349>,  <42.872406, 45.565937, 36.681248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724945, 45.754444, 36.663349>,  <42.479176, 46.068623, 36.633522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724945, 45.754444, 36.663349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153659, 0.026422, -0.987771,
		0.773869, 0.618368, 0.136925,
		0.614424, -0.785445, 0.074570,
		42.909271, 45.518810, 36.685719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115406, 46.266449, 36.267349>,  <42.479176, 46.068623, 36.633522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115406, 46.266449, 36.267349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136124, 45.867611, 36.289680>,  <43.148556, 45.628307, 36.303078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.136124, 45.867611, 36.289680>,  <43.115406, 46.266449, 36.267349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136124, 45.867611, 36.289680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234842, -0.042170, -0.971119,
		0.970653, 0.063412, 0.231975,
		0.051798, -0.997096, 0.055824,
		43.151665, 45.568481, 36.306427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722271, 46.141273, 36.000565>,  <43.115406, 46.266449, 36.267349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722271, 46.141273, 36.000565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497101, 45.813011, 35.961288>,  <43.362000, 45.616055, 35.937721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497101, 45.813011, 35.961288>,  <43.722271, 46.141273, 36.000565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497101, 45.813011, 35.961288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228117, -0.040078, -0.972809,
		0.794407, -0.570014, 0.209767,
		-0.562921, -0.820657, -0.098192,
		43.328224, 45.566814, 35.931831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.162983, 45.760212, 35.641487>,  <43.722271, 46.141273, 36.000565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.162983, 45.760212, 35.641487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800331, 45.600803, 35.586067>,  <43.582741, 45.505157, 35.552814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800331, 45.600803, 35.586067>,  <44.162983, 45.760212, 35.641487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800331, 45.600803, 35.586067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243018, -0.224797, -0.943615,
		0.344906, -0.889182, 0.300656,
		-0.906632, -0.398523, -0.138553,
		43.528343, 45.481247, 35.544502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294235, 45.067276, 35.275898>,  <44.162983, 45.760212, 35.641487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294235, 45.067276, 35.275898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912102, 45.148293, 35.189823>,  <43.682819, 45.196903, 35.138180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912102, 45.148293, 35.189823>,  <44.294235, 45.067276, 35.275898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912102, 45.148293, 35.189823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171381, -0.213464, -0.961801,
		-0.240752, -0.955722, 0.169216,
		-0.955336, 0.202555, -0.215185,
		43.625500, 45.209057, 35.125267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142487, 44.599178, 34.821739>,  <44.294235, 45.067276, 35.275898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142487, 44.599178, 34.821739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838905, 44.846500, 34.740074>,  <43.656754, 44.994892, 34.691074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838905, 44.846500, 34.740074>,  <44.142487, 44.599178, 34.821739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838905, 44.846500, 34.740074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122752, -0.172064, -0.977408,
		-0.639465, -0.766873, 0.054691,
		-0.758957, 0.618304, -0.204164,
		43.611217, 45.031990, 34.678825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738705, 44.225143, 34.424625>,  <44.142487, 44.599178, 34.821739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738705, 44.225143, 34.424625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621429, 44.601727, 34.358044>,  <43.551064, 44.827675, 34.318096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.621429, 44.601727, 34.358044>,  <43.738705, 44.225143, 34.424625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621429, 44.601727, 34.358044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108919, -0.205861, -0.972501,
		-0.949831, -0.266994, 0.162898,
		-0.293186, 0.941454, -0.166452,
		43.533474, 44.884163, 34.308109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218025, 44.192226, 33.916584>,  <43.738705, 44.225143, 34.424625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218025, 44.192226, 33.916584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352592, 44.566929, 33.877983>,  <43.433331, 44.791752, 33.854824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.352592, 44.566929, 33.877983>,  <43.218025, 44.192226, 33.916584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352592, 44.566929, 33.877983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171141, -0.039950, -0.984436,
		-0.926032, 0.347694, 0.146878,
		0.336415, 0.936757, -0.096499,
		43.453518, 44.847958, 33.849033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765728, 44.537308, 33.425190>,  <43.218025, 44.192226, 33.916584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765728, 44.537308, 33.425190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078827, 44.785919, 33.437828>,  <43.266685, 44.935085, 33.445412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078827, 44.785919, 33.437828>,  <42.765728, 44.537308, 33.425190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078827, 44.785919, 33.437828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096958, 0.171940, -0.980324,
		-0.614737, 0.764286, 0.194849,
		0.782750, 0.621533, 0.031595,
		43.313652, 44.972378, 33.447308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571156, 45.177208, 33.166424>,  <42.765728, 44.537308, 33.425190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571156, 45.177208, 33.166424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954506, 45.092144, 33.090221>,  <43.184517, 45.041107, 33.044502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954506, 45.092144, 33.090221>,  <42.571156, 45.177208, 33.166424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954506, 45.092144, 33.090221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167607, 0.121102, -0.978388,
		0.231135, 0.969593, 0.080418,
		0.958376, -0.212661, -0.190502,
		43.242020, 45.028347, 33.033070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<46.783321, 43.722706, 33.232128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450798, 43.940136, 33.278503>,  <46.251282, 44.070595, 33.306328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450798, 43.940136, 33.278503>,  <46.783321, 43.722706, 33.232128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450798, 43.940136, 33.278503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320499, 0.298406, 0.899019,
		0.454092, 0.784523, -0.422285,
		-0.831313, 0.543579, 0.115935,
		46.201405, 44.103210, 33.313282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.049717, 44.273006, 33.460228>,  <46.783321, 43.722706, 33.232128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.049717, 44.273006, 33.460228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.666084, 44.258553, 33.572548>,  <46.435905, 44.249882, 33.639942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.666084, 44.258553, 33.572548>,  <47.049717, 44.273006, 33.460228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.666084, 44.258553, 33.572548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274854, 0.119069, 0.954085,
		-0.067912, 0.992228, -0.104265,
		-0.959085, -0.036136, 0.280804,
		46.378361, 44.247711, 33.656788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.992416, 44.852497, 33.875847>,  <47.049717, 44.273006, 33.460228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.992416, 44.852497, 33.875847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.707672, 44.600491, 34.000000>,  <46.536827, 44.449287, 34.074493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.707672, 44.600491, 34.000000>,  <46.992416, 44.852497, 33.875847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707672, 44.600491, 34.000000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244505, 0.191987, 0.950451,
		-0.658390, 0.752476, 0.017375,
		-0.711857, -0.630016, 0.310387,
		46.494114, 44.411488, 34.093117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844830, 45.063240, 34.521706>,  <46.992416, 44.852497, 33.875847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844830, 45.063240, 34.521706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.663002, 44.706955, 34.522137>,  <46.553905, 44.493183, 34.522396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.663002, 44.706955, 34.522137>,  <46.844830, 45.063240, 34.521706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663002, 44.706955, 34.522137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041651, 0.022467, 0.998880,
		-0.889736, 0.454018, -0.047311,
		-0.454572, -0.890710, 0.001079,
		46.526630, 44.439743, 34.522461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.258972, 45.140171, 35.001133>,  <46.844830, 45.063240, 34.521706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.258972, 45.140171, 35.001133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.370483, 44.757469, 34.967915>,  <46.437389, 44.527847, 34.947983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.370483, 44.757469, 34.967915>,  <46.258972, 45.140171, 35.001133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.370483, 44.757469, 34.967915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005370, -0.084923, 0.996373,
		-0.960340, -0.278213, -0.018537,
		0.278778, -0.956758, -0.083049,
		46.454117, 44.470440, 34.943001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877579, 44.877186, 35.546436>,  <46.258972, 45.140171, 35.001133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877579, 44.877186, 35.546436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.138260, 44.595146, 35.434639>,  <46.294670, 44.425922, 35.367561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.138260, 44.595146, 35.434639>,  <45.877579, 44.877186, 35.546436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138260, 44.595146, 35.434639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215959, -0.180740, 0.959528,
		-0.727081, -0.685685, 0.034484,
		0.651701, -0.705103, -0.279493,
		46.333771, 44.383617, 35.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586544, 44.359524, 35.814533>,  <45.877579, 44.877186, 35.546436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586544, 44.359524, 35.814533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.958527, 44.217648, 35.775814>,  <46.181717, 44.132523, 35.752583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.958527, 44.217648, 35.775814>,  <45.586544, 44.359524, 35.814533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958527, 44.217648, 35.775814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092369, -0.029432, 0.995290,
		-0.355872, -0.934519, 0.005392,
		0.929958, -0.354694, -0.096794,
		46.237514, 44.111240, 35.746777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507435, 43.708591, 36.136669>,  <45.586544, 44.359524, 35.814533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507435, 43.708591, 36.136669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.898735, 43.791454, 36.132397>,  <46.133514, 43.841171, 36.129833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.898735, 43.791454, 36.132397>,  <45.507435, 43.708591, 36.136669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898735, 43.791454, 36.132397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028660, -0.083975, 0.996056,
		0.205440, -0.974698, -0.088085,
		0.978250, 0.207154, -0.010683,
		46.192211, 43.853600, 36.129192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.811871, 43.321995, 36.624260>,  <45.507435, 43.708591, 36.136669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.811871, 43.321995, 36.624260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.103943, 43.591103, 36.576569>,  <46.279186, 43.752567, 36.547955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.103943, 43.591103, 36.576569>,  <45.811871, 43.321995, 36.624260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103943, 43.591103, 36.576569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175263, -0.015769, 0.984395,
		0.660390, -0.739685, -0.129425,
		0.730184, 0.672768, -0.119226,
		46.322998, 43.792934, 36.540802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.238689, 43.107487, 37.057571>,  <45.811871, 43.321995, 36.624260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.238689, 43.107487, 37.057571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.367340, 43.480221, 36.990349>,  <46.444530, 43.703861, 36.950016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.367340, 43.480221, 36.990349>,  <46.238689, 43.107487, 37.057571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367340, 43.480221, 36.990349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075593, 0.151649, 0.985539,
		0.943846, -0.329675, -0.021667,
		0.321622, 0.931835, -0.168055,
		46.463825, 43.759773, 36.939934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815098, 43.212639, 37.552818>,  <46.238689, 43.107487, 37.057571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815098, 43.212639, 37.552818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.703735, 43.581856, 37.446621>,  <46.636917, 43.803387, 37.382900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.703735, 43.581856, 37.446621>,  <46.815098, 43.212639, 37.552818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703735, 43.581856, 37.446621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089770, 0.300225, 0.949635,
		0.956258, 0.240554, -0.166447,
		-0.278410, 0.923038, -0.265498,
		46.620213, 43.858768, 37.366970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.338455, 43.771275, 37.771976>,  <46.815098, 43.212639, 37.552818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.338455, 43.771275, 37.771976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.977364, 43.941059, 37.743958>,  <46.760708, 44.042931, 37.727146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.977364, 43.941059, 37.743958>,  <47.338455, 43.771275, 37.771976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977364, 43.941059, 37.743958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079241, 0.324106, 0.942696,
		0.422841, 0.845452, -0.326216,
		-0.902733, 0.424461, -0.070051,
		46.706543, 44.068398, 37.722942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.390675, 44.379589, 38.032013>,  <47.338455, 43.771275, 37.771976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.390675, 44.379589, 38.032013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.997597, 44.310299, 38.058281>,  <46.761749, 44.268726, 38.074043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.997597, 44.310299, 38.058281>,  <47.390675, 44.379589, 38.032013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.997597, 44.310299, 38.058281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003882, 0.373676, 0.927551,
		-0.185212, 0.911241, -0.367880,
		-0.982691, -0.173222, 0.065672,
		46.702789, 44.258331, 38.077984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110298, 45.058975, 38.244453>,  <47.390675, 44.379589, 38.032013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110298, 45.058975, 38.244453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.838333, 44.779266, 38.332764>,  <46.675156, 44.611443, 38.385750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.838333, 44.779266, 38.332764>,  <47.110298, 45.058975, 38.244453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838333, 44.779266, 38.332764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175721, 0.447669, 0.876764,
		-0.711928, 0.557328, -0.427252,
		-0.679912, -0.699270, 0.220774,
		46.634361, 44.569485, 38.398994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.646732, 45.417038, 38.714592>,  <47.110298, 45.058975, 38.244453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.646732, 45.417038, 38.714592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.525009, 45.036861, 38.740070>,  <46.451977, 44.808754, 38.755360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.525009, 45.036861, 38.740070>,  <46.646732, 45.417038, 38.714592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525009, 45.036861, 38.740070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348170, 0.173218, 0.921289,
		-0.886666, 0.258174, -0.383627,
		-0.304304, -0.950443, 0.063698,
		46.433720, 44.751728, 38.759178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901184, 45.393585, 38.884174>,  <46.646732, 45.417038, 38.714592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901184, 45.393585, 38.884174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.058876, 45.052032, 39.020092>,  <46.153492, 44.847099, 39.101643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.058876, 45.052032, 39.020092>,  <45.901184, 45.393585, 38.884174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058876, 45.052032, 39.020092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390157, 0.179261, 0.903129,
		-0.832081, -0.488615, -0.262479,
		0.394231, -0.853885, 0.339797,
		46.177147, 44.795868, 39.122032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422398, 45.166512, 39.400654>,  <45.901184, 45.393585, 38.884174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422398, 45.166512, 39.400654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.738106, 44.941223, 39.498493>,  <45.927532, 44.806049, 39.557198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.738106, 44.941223, 39.498493>,  <45.422398, 45.166512, 39.400654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738106, 44.941223, 39.498493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362161, -0.105297, 0.926149,
		-0.495871, -0.819569, -0.287085,
		0.789272, -0.563222, 0.244602,
		45.974888, 44.772255, 39.571873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161285, 44.575081, 39.740921>,  <45.422398, 45.166512, 39.400654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.161285, 44.575081, 39.740921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.547577, 44.590828, 39.843544>,  <45.779350, 44.600277, 39.905117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.547577, 44.590828, 39.843544>,  <45.161285, 44.575081, 39.740921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.547577, 44.590828, 39.843544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250201, -0.121834, 0.960498,
		0.069073, -0.991769, -0.107807,
		0.965727, 0.039371, 0.256557,
		45.837296, 44.602638, 39.920509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312634, 43.924427, 40.133488>,  <45.161285, 44.575081, 39.740921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312634, 43.924427, 40.133488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.583252, 44.206978, 40.216747>,  <45.745621, 44.376507, 40.266701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.583252, 44.206978, 40.216747>,  <45.312634, 43.924427, 40.133488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583252, 44.206978, 40.216747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047445, -0.240255, 0.969550,
		0.734873, -0.665817, -0.129029,
		0.676543, 0.706374, 0.208147,
		45.786217, 44.418892, 40.279190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767876, 43.620941, 40.618896>,  <45.312634, 43.924427, 40.133488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767876, 43.620941, 40.618896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.842972, 44.012547, 40.650620>,  <45.888031, 44.247509, 40.669655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.842972, 44.012547, 40.650620>,  <45.767876, 43.620941, 40.618896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842972, 44.012547, 40.650620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011943, -0.078465, 0.996845,
		0.982145, -0.188099, -0.003039,
		0.187744, 0.979011, 0.079311,
		45.899296, 44.306252, 40.674412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399258, 43.616119, 41.080513>,  <45.767876, 43.620941, 40.618896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399258, 43.616119, 41.080513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.204979, 43.965702, 41.087482>,  <46.088413, 44.175449, 41.091663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.204979, 43.965702, 41.087482>,  <46.399258, 43.616119, 41.080513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204979, 43.965702, 41.087482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065563, 0.016540, 0.997711,
		0.871666, 0.485727, -0.065333,
		-0.485696, 0.873954, 0.017428,
		46.059269, 44.227890, 41.092712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.876663, 44.104584, 41.596992>,  <46.399258, 43.616119, 41.080513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.876663, 44.104584, 41.596992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.518646, 44.281605, 41.574921>,  <46.303837, 44.387817, 41.561676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.518646, 44.281605, 41.574921>,  <46.876663, 44.104584, 41.596992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518646, 44.281605, 41.574921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014567, 0.094649, 0.995404,
		0.445738, 0.891735, -0.078268,
		-0.895045, 0.442549, -0.055179,
		46.250134, 44.414371, 41.558369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894005, 44.518772, 42.207767>,  <46.876663, 44.104584, 41.596992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894005, 44.518772, 42.207767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.508720, 44.491058, 42.103909>,  <46.277550, 44.474430, 42.041592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.508720, 44.491058, 42.103909>,  <46.894005, 44.518772, 42.207767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508720, 44.491058, 42.103909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265090, 0.086389, 0.960346,
		-0.044108, 0.993849, -0.101578,
		-0.963214, -0.069286, -0.259649,
		46.219757, 44.470272, 42.026012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486794, 45.098267, 42.530186>,  <46.894005, 44.518772, 42.207767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486794, 45.098267, 42.530186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.226830, 44.803082, 42.457481>,  <46.070850, 44.625973, 42.413857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.226830, 44.803082, 42.457481>,  <46.486794, 45.098267, 42.530186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226830, 44.803082, 42.457481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481575, 0.214836, 0.849665,
		-0.587968, 0.639737, -0.495006,
		-0.649907, -0.737958, -0.181765,
		46.031857, 44.581696, 42.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.852917, 45.423203, 42.778477>,  <46.486794, 45.098267, 42.530186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.852917, 45.423203, 42.778477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.790878, 45.028194, 42.767593>,  <45.753654, 44.791187, 42.761063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.790878, 45.028194, 42.767593>,  <45.852917, 45.423203, 42.778477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790878, 45.028194, 42.767593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414603, 0.040070, 0.909120,
		-0.896688, 0.152280, -0.415646,
		-0.155095, -0.987525, -0.027206,
		45.744350, 44.731937, 42.759430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210316, 45.262779, 42.987247>,  <45.852917, 45.423203, 42.778477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210316, 45.262779, 42.987247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.412354, 44.921368, 43.038414>,  <45.533577, 44.716522, 43.069115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.412354, 44.921368, 43.038414>,  <45.210316, 45.262779, 42.987247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412354, 44.921368, 43.038414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247578, -0.001305, 0.968867,
		-0.826790, -0.521042, -0.211974,
		0.505098, -0.853530, 0.127919,
		45.563885, 44.665310, 43.076790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774475, 44.868595, 43.299313>,  <45.210316, 45.262779, 42.987247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774475, 44.868595, 43.299313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.100136, 44.642685, 43.353256>,  <45.295532, 44.507137, 43.385624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.100136, 44.642685, 43.353256>,  <44.774475, 44.868595, 43.299313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100136, 44.642685, 43.353256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258962, -0.145290, 0.954898,
		-0.519711, -0.812353, -0.264544,
		0.814149, -0.564778, 0.134860,
		45.344379, 44.473251, 43.393715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560585, 44.349850, 43.814743>,  <44.774475, 44.868595, 43.299313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560585, 44.349850, 43.814743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.960106, 44.350941, 43.834320>,  <45.199818, 44.351597, 43.846066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.960106, 44.350941, 43.834320>,  <44.560585, 44.349850, 43.814743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960106, 44.350941, 43.834320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048635, -0.068950, 0.996434,
		0.006098, -0.997616, -0.068735,
		0.998798, 0.002733, 0.048939,
		45.259747, 44.351761, 43.849003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775555, 43.868912, 44.310234>,  <44.560585, 44.349850, 43.814743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775555, 43.868912, 44.310234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.084846, 44.122398, 44.301193>,  <45.270424, 44.274490, 44.295769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.084846, 44.122398, 44.301193>,  <44.775555, 43.868912, 44.310234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.084846, 44.122398, 44.301193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072040, -0.052376, 0.996025,
		0.630018, -0.771787, -0.086152,
		0.773232, 0.633720, -0.022601,
		45.316814, 44.312515, 44.294415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265301, 43.510815, 44.832115>,  <44.775555, 43.868912, 44.310234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265301, 43.510815, 44.832115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.344574, 43.900738, 44.791172>,  <45.392136, 44.134693, 44.766605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.344574, 43.900738, 44.791172>,  <45.265301, 43.510815, 44.832115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344574, 43.900738, 44.791172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138722, 0.075482, 0.987451,
		0.970299, -0.209893, -0.120268,
		0.198181, 0.974806, -0.102356,
		45.404030, 44.193180, 44.760464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673298, 43.580959, 45.382858>,  <45.265301, 43.510815, 44.832115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673298, 43.580959, 45.382858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.577118, 43.952522, 45.270203>,  <45.519409, 44.175461, 45.202610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.577118, 43.952522, 45.270203>,  <45.673298, 43.580959, 45.382858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577118, 43.952522, 45.270203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061664, 0.274950, 0.959479,
		0.968701, 0.248072, -0.008831,
		-0.240448, 0.928904, -0.281641,
		45.504982, 44.231194, 45.185711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213814, 44.050644, 45.647724>,  <45.673298, 43.580959, 45.382858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213814, 44.050644, 45.647724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911575, 44.299534, 45.565845>,  <45.730232, 44.448868, 45.516716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.911575, 44.299534, 45.565845>,  <46.213814, 44.050644, 45.647724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911575, 44.299534, 45.565845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074138, 0.391731, 0.917088,
		0.650827, 0.677774, -0.342122,
		-0.755598, 0.622229, -0.204700,
		45.684895, 44.486202, 45.504436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437557, 44.741192, 45.585163>,  <46.213814, 44.050644, 45.647724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437557, 44.741192, 45.585163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.053261, 44.735844, 45.696018>,  <45.822685, 44.732635, 45.762531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.053261, 44.735844, 45.696018>,  <46.437557, 44.741192, 45.585163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053261, 44.735844, 45.696018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233207, 0.502261, 0.832675,
		-0.150327, 0.864613, -0.479423,
		-0.960737, -0.013369, 0.277137,
		45.765041, 44.731834, 45.779160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401657, 45.381077, 46.079525>,  <46.437557, 44.741192, 45.585163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401657, 45.381077, 46.079525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.058479, 45.182541, 46.132568>,  <45.852573, 45.063419, 46.164394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.058479, 45.182541, 46.132568>,  <46.401657, 45.381077, 46.079525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.058479, 45.182541, 46.132568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097846, 0.411251, 0.906255,
		-0.504342, 0.764540, -0.401395,
		-0.857943, -0.496337, 0.132604,
		45.801098, 45.033638, 46.172348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968876, 45.841366, 46.334766>,  <46.401657, 45.381077, 46.079525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968876, 45.841366, 46.334766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.824516, 45.488350, 46.455353>,  <45.737900, 45.276543, 46.527706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.824516, 45.488350, 46.455353>,  <45.968876, 45.841366, 46.334766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824516, 45.488350, 46.455353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070673, 0.348203, 0.934751,
		-0.929923, 0.316045, -0.188038,
		-0.360898, -0.882536, 0.301467,
		45.716248, 45.223591, 46.545792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328957, 45.994461, 46.745132>,  <45.968876, 45.841366, 46.334766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328957, 45.994461, 46.745132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.451958, 45.627464, 46.846054>,  <45.525761, 45.407269, 46.906609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.451958, 45.627464, 46.846054>,  <45.328957, 45.994461, 46.745132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451958, 45.627464, 46.846054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112947, 0.228081, 0.967069,
		-0.944819, -0.325877, -0.033491,
		0.307506, -0.917487, 0.252302,
		45.544209, 45.352219, 46.921745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942101, 46.037018, 47.206242>,  <45.328957, 45.994461, 46.745132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942101, 46.037018, 47.206242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.147316, 45.709923, 47.310631>,  <45.270443, 45.513668, 47.373264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.147316, 45.709923, 47.310631>,  <44.942101, 46.037018, 47.206242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147316, 45.709923, 47.310631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284953, 0.124538, 0.950417,
		-0.809689, -0.561961, -0.169123,
		0.513035, -0.817735, 0.260970,
		45.301228, 45.464603, 47.388924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474972, 45.523743, 47.607590>,  <44.942101, 46.037018, 47.206242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474972, 45.523743, 47.607590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.854210, 45.453678, 47.713745>,  <45.081753, 45.411640, 47.777439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.854210, 45.453678, 47.713745>,  <44.474972, 45.523743, 47.607590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.854210, 45.453678, 47.713745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229381, 0.201282, 0.952297,
		-0.220223, -0.963745, 0.150656,
		0.948096, -0.175160, 0.265392,
		45.138638, 45.401131, 47.793362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.431622, 45.284611, 48.234768>,  <44.474972, 45.523743, 47.607590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.431622, 45.284611, 48.234768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.824646, 45.356960, 48.251999>,  <45.060459, 45.400372, 48.262337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.824646, 45.356960, 48.251999>,  <44.431622, 45.284611, 48.234768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.824646, 45.356960, 48.251999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091928, 0.271171, 0.958131,
		0.161622, -0.945383, 0.283070,
		0.982561, 0.180877, 0.043080,
		45.119415, 45.411224, 48.264923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705940, 44.956566, 48.820274>,  <44.431622, 45.284611, 48.234768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705940, 44.956566, 48.820274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.961708, 45.254185, 48.742775>,  <45.115170, 45.432755, 48.696274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.961708, 45.254185, 48.742775>,  <44.705940, 44.956566, 48.820274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961708, 45.254185, 48.742775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105103, 0.165042, 0.980671,
		0.761639, -0.647425, 0.027330,
		0.639421, 0.744044, -0.193748,
		45.153534, 45.477398, 48.684650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195614, 44.769615, 49.235477>,  <44.705940, 44.956566, 48.820274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195614, 44.769615, 49.235477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.273750, 45.156982, 49.173500>,  <45.320633, 45.389404, 49.136314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.273750, 45.156982, 49.173500>,  <45.195614, 44.769615, 49.235477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273750, 45.156982, 49.173500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147170, 0.127250, 0.980892,
		0.969630, -0.214414, -0.117664,
		0.195344, 0.968418, -0.154941,
		45.332355, 45.447510, 49.127018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849869, 44.890945, 49.467834>,  <45.195614, 44.769615, 49.235477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849869, 44.890945, 49.467834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.664749, 45.245499, 49.472649>,  <45.553677, 45.458229, 49.475536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.664749, 45.245499, 49.472649>,  <45.849869, 44.890945, 49.467834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664749, 45.245499, 49.472649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266781, 0.126321, 0.955443,
		0.845365, 0.445391, -0.294931,
		-0.462802, 0.886380, 0.012034,
		45.525909, 45.511414, 49.476257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396103, 45.267063, 49.535351>,  <45.849869, 44.890945, 49.467834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396103, 45.267063, 49.535351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.080803, 45.473869, 49.668835>,  <45.891624, 45.597954, 49.748924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.080803, 45.473869, 49.668835>,  <46.396103, 45.267063, 49.535351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080803, 45.473869, 49.668835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473030, 0.162250, 0.865978,
		0.393577, 0.840460, -0.372456,
		-0.788251, 0.517012, 0.333705,
		45.844326, 45.628971, 49.768948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656506, 45.631264, 50.105072>,  <46.396103, 45.267063, 49.535351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656506, 45.631264, 50.105072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.268044, 45.711361, 50.156853>,  <46.034966, 45.759418, 50.187920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.268044, 45.711361, 50.156853>,  <46.656506, 45.631264, 50.105072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268044, 45.711361, 50.156853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173475, 0.220884, 0.959748,
		0.163590, 0.954522, -0.249250,
		-0.971156, 0.200244, 0.129451,
		45.976696, 45.771435, 50.195686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.555260, 46.338493, 50.378376>,  <46.656506, 45.631264, 50.105072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.555260, 46.338493, 50.378376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.242523, 46.112366, 50.483551>,  <46.054882, 45.976688, 50.546658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.242523, 46.112366, 50.483551>,  <46.555260, 46.338493, 50.378376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242523, 46.112366, 50.483551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147791, 0.241667, 0.959039,
		-0.605709, 0.788675, -0.105396,
		-0.781841, -0.565322, 0.262938,
		46.007973, 45.942768, 50.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.131794, 46.822914, 50.694626>,  <46.555260, 46.338493, 50.378376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.131794, 46.822914, 50.694626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021881, 46.463730, 50.832127>,  <45.955933, 46.248219, 50.914627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.021881, 46.463730, 50.832127>,  <46.131794, 46.822914, 50.694626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.021881, 46.463730, 50.832127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029536, 0.365228, 0.930449,
		-0.961053, 0.245517, -0.126880,
		-0.274781, -0.897959, 0.343752,
		45.939445, 46.194344, 50.935253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588055, 46.894989, 51.200989>,  <46.131794, 46.822914, 50.694626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588055, 46.894989, 51.200989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.742065, 46.539177, 51.299370>,  <45.834473, 46.325691, 51.358398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.742065, 46.539177, 51.299370>,  <45.588055, 46.894989, 51.200989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742065, 46.539177, 51.299370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136821, 0.208536, 0.968397,
		-0.912708, -0.406508, -0.041414,
		0.385025, -0.889530, 0.245951,
		45.857574, 46.272320, 51.373154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285774, 46.805172, 51.931919>,  <45.588055, 46.894989, 51.200989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285774, 46.805172, 51.931919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.544090, 46.501823, 51.896519>,  <45.699081, 46.319817, 51.875278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.544090, 46.501823, 51.896519>,  <45.285774, 46.805172, 51.931919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.544090, 46.501823, 51.896519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055236, -0.069208, 0.996072,
		-0.761516, -0.648140, -0.002804,
		0.645788, -0.758370, -0.088504,
		45.737827, 46.274311, 51.869968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984615, 46.292591, 52.431721>,  <45.285774, 46.805172, 51.931919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984615, 46.292591, 52.431721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.377480, 46.250885, 52.369133>,  <45.613197, 46.225861, 52.331581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.377480, 46.250885, 52.369133>,  <44.984615, 46.292591, 52.431721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377480, 46.250885, 52.369133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151223, -0.056485, 0.986884,
		-0.111733, -0.992944, -0.039711,
		0.982165, -0.104263, -0.156468,
		45.672131, 46.219608, 52.322193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195591, 45.684818, 52.697994>,  <44.984615, 46.292591, 52.431721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195591, 45.684818, 52.697994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.548416, 45.873238, 52.694469>,  <45.760113, 45.986290, 52.692356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.548416, 45.873238, 52.694469>,  <45.195591, 45.684818, 52.697994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548416, 45.873238, 52.694469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139199, -0.242705, 0.960061,
		0.450096, -0.848062, -0.279651,
		0.882064, 0.471046, -0.008809,
		45.813034, 46.014553, 52.691826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650665, 45.178226, 53.111164>,  <45.195591, 45.684818, 52.697994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650665, 45.178226, 53.111164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.851677, 45.523998, 53.117191>,  <45.972286, 45.731461, 53.120808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.851677, 45.523998, 53.117191>,  <45.650665, 45.178226, 53.111164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851677, 45.523998, 53.117191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333586, -0.209946, 0.919045,
		0.797609, -0.456825, -0.393865,
		0.502533, 0.864426, 0.015064,
		46.002438, 45.783325, 53.121712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363476, 45.102341, 53.384953>,  <45.650665, 45.178226, 53.111164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363476, 45.102341, 53.384953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.298706, 45.493443, 53.438286>,  <46.259846, 45.728104, 53.470287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.298706, 45.493443, 53.438286>,  <46.363476, 45.102341, 53.384953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.298706, 45.493443, 53.438286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341297, -0.071289, 0.937248,
		0.925904, 0.197267, -0.322161,
		-0.161922, 0.977754, 0.133334,
		46.250130, 45.786770, 53.478287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.991119, 45.291370, 53.708591>,  <46.363476, 45.102341, 53.384953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.991119, 45.291370, 53.708591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.735313, 45.590076, 53.781662>,  <46.581829, 45.769299, 53.825504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.735313, 45.590076, 53.781662>,  <46.991119, 45.291370, 53.708591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.735313, 45.590076, 53.781662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395012, 0.115327, 0.911408,
		0.659536, 0.655017, -0.368733,
		-0.639513, 0.746761, 0.182677,
		46.543461, 45.814106, 53.836464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345650, 45.845161, 54.042000>,  <46.991119, 45.291370, 53.708591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345650, 45.845161, 54.042000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.964470, 45.935360, 54.123024>,  <46.735760, 45.989479, 54.171638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.964470, 45.935360, 54.123024>,  <47.345650, 45.845161, 54.042000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964470, 45.935360, 54.123024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258308, 0.254471, 0.931945,
		0.158610, 0.940422, -0.300747,
		-0.952953, 0.225501, 0.202557,
		46.678585, 46.003010, 54.183792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.376453, 46.448444, 54.365715>,  <47.345650, 45.845161, 54.042000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.376453, 46.448444, 54.365715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.019005, 46.299332, 54.465698>,  <46.804535, 46.209866, 54.525688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.019005, 46.299332, 54.465698>,  <47.376453, 46.448444, 54.365715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019005, 46.299332, 54.465698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186304, 0.198587, 0.962213,
		-0.408331, 0.906421, -0.108012,
		-0.893620, -0.372778, 0.249959,
		46.750919, 46.187500, 54.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196854, 46.879665, 54.829906>,  <47.376453, 46.448444, 54.365715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196854, 46.879665, 54.829906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.934509, 46.586182, 54.900913>,  <46.777103, 46.410091, 54.943516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.934509, 46.586182, 54.900913>,  <47.196854, 46.879665, 54.829906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.934509, 46.586182, 54.900913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153765, 0.100380, 0.982996,
		-0.739055, 0.672005, 0.046984,
		-0.655861, -0.733712, 0.177517,
		46.737751, 46.366070, 54.954166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832638, 47.214661, 55.412792>,  <47.196854, 46.879665, 54.829906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832638, 47.214661, 55.412792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.837326, 46.814697, 55.415722>,  <46.840137, 46.574718, 55.417480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.837326, 46.814697, 55.415722>,  <46.832638, 47.214661, 55.412792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837326, 46.814697, 55.415722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113771, 0.008614, 0.993470,
		-0.993438, -0.010808, 0.113861,
		0.011718, -0.999904, 0.007327,
		46.840843, 46.514725, 55.417919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408924, 47.081516, 56.013794>,  <46.832638, 47.214661, 55.412792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408924, 47.081516, 56.013794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.608986, 46.742111, 55.944672>,  <46.729023, 46.538467, 55.903198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.608986, 46.742111, 55.944672>,  <46.408924, 47.081516, 56.013794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608986, 46.742111, 55.944672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056371, -0.231041, 0.971310,
		-0.864097, -0.476068, -0.163389,
		0.500159, -0.848516, -0.172805,
		46.759033, 46.487556, 55.892830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.089088, 46.566063, 56.397343>,  <46.408924, 47.081516, 56.013794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.089088, 46.566063, 56.397343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.460861, 46.437904, 56.324127>,  <46.683926, 46.361008, 56.280197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.460861, 46.437904, 56.324127>,  <46.089088, 46.566063, 56.397343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460861, 46.437904, 56.324127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099971, -0.258848, 0.960730,
		-0.355196, -0.911231, -0.208551,
		0.929431, -0.320398, -0.183039,
		46.739689, 46.341785, 56.269215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.071613, 45.892216, 56.612556>,  <46.089088, 46.566063, 56.397343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.071613, 45.892216, 56.612556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450836, 46.019203, 56.604542>,  <46.678371, 46.095394, 56.599735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.450836, 46.019203, 56.604542>,  <46.071613, 45.892216, 56.612556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450836, 46.019203, 56.604542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106281, -0.256766, 0.960612,
		0.299820, -0.912844, -0.277170,
		0.948057, 0.317469, -0.020034,
		46.735252, 46.114445, 56.598530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.377392, 45.405327, 57.068630>,  <46.071613, 45.892216, 56.612556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.377392, 45.405327, 57.068630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.660789, 45.683746, 57.022049>,  <46.830826, 45.850796, 56.994099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.660789, 45.683746, 57.022049>,  <46.377392, 45.405327, 57.068630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.660789, 45.683746, 57.022049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432477, -0.297828, 0.851036,
		0.557676, -0.653315, -0.512032,
		0.708492, 0.696045, -0.116452,
		46.873337, 45.892559, 56.987114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.071537, 45.056637, 57.167252>,  <46.377392, 45.405327, 57.068630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.071537, 45.056637, 57.167252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.111908, 45.447651, 57.241264>,  <47.136131, 45.682259, 57.285671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.111908, 45.447651, 57.241264>,  <47.071537, 45.056637, 57.167252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111908, 45.447651, 57.241264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341208, -0.208714, 0.916524,
		0.934554, -0.029368, -0.354608,
		0.100928, 0.977536, 0.185034,
		47.142185, 45.740913, 57.296776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.819668, 45.175545, 57.306839>,  <47.071537, 45.056637, 57.167252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.819668, 45.175545, 57.306839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.594925, 45.450977, 57.490219>,  <47.460079, 45.616238, 57.600246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.594925, 45.450977, 57.490219>,  <47.819668, 45.175545, 57.306839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.594925, 45.450977, 57.490219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343288, -0.310140, 0.886548,
		0.752639, 0.655496, -0.062124,
		-0.561862, 0.688577, 0.458447,
		47.426365, 45.657551, 57.627754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.252316, 45.489326, 57.715317>,  <47.819668, 45.175545, 57.306839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.252316, 45.489326, 57.715317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.890800, 45.548153, 57.876083>,  <47.673889, 45.583447, 57.972542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.890800, 45.548153, 57.876083>,  <48.252316, 45.489326, 57.715317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.890800, 45.548153, 57.876083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341486, -0.318262, 0.884362,
		0.257970, 0.936527, 0.237423,
		-0.903791, 0.147063, 0.401913,
		47.619663, 45.592270, 57.996658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.466469, 46.183960, 58.433426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809402, 46.004173, 58.333054>,  <47.015163, 45.896301, 58.272831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809402, 46.004173, 58.333054>,  <46.466469, 46.183960, 58.433426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809402, 46.004173, 58.333054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143513, 0.259439, -0.955037,
		0.494357, 0.854794, 0.157920,
		0.857330, -0.449466, -0.250929,
		47.066601, 45.869335, 58.257774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.834793, 46.745190, 58.114559>,  <46.466469, 46.183960, 58.433426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.834793, 46.745190, 58.114559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.909943, 46.369598, 57.999302>,  <46.955032, 46.144245, 57.930145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.909943, 46.369598, 57.999302>,  <46.834793, 46.745190, 58.114559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.909943, 46.369598, 57.999302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033604, 0.287052, -0.957325,
		0.981618, 0.189539, 0.022376,
		0.187873, -0.938976, -0.288145,
		46.966305, 46.087906, 57.912857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.267494, 46.957184, 57.683445>,  <46.834793, 46.745190, 58.114559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.267494, 46.957184, 57.683445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.203896, 46.580566, 57.564644>,  <47.165737, 46.354595, 57.493362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.203896, 46.580566, 57.564644>,  <47.267494, 46.957184, 57.683445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.203896, 46.580566, 57.564644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088661, 0.286002, -0.954118,
		0.983290, -0.178034, 0.038006,
		-0.158996, -0.941545, -0.297007,
		47.156197, 46.298103, 57.475540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.737129, 46.884159, 57.138790>,  <47.267494, 46.957184, 57.683445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.737129, 46.884159, 57.138790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.468712, 46.595085, 57.072540>,  <47.307663, 46.421642, 57.032791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.468712, 46.595085, 57.072540>,  <47.737129, 46.884159, 57.138790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.468712, 46.595085, 57.072540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117550, 0.116854, -0.986168,
		0.732042, -0.681228, 0.006537,
		-0.671041, -0.722684, -0.165620,
		47.267399, 46.378281, 57.022854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.988083, 46.506344, 56.606804>,  <47.737129, 46.884159, 57.138790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.988083, 46.506344, 56.606804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600342, 46.408195, 56.611717>,  <47.367699, 46.349308, 56.614666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.600342, 46.408195, 56.611717>,  <47.988083, 46.506344, 56.606804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.600342, 46.408195, 56.611717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011248, -0.005614, -0.999921,
		0.245422, -0.969413, 0.002682,
		-0.969351, -0.245373, 0.012282,
		47.309536, 46.334583, 56.615402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.957581, 46.028122, 56.028259>,  <47.988083, 46.506344, 56.606804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.957581, 46.028122, 56.028259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.579674, 46.130569, 56.110054>,  <47.352928, 46.192039, 56.159130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.579674, 46.130569, 56.110054>,  <47.957581, 46.028122, 56.028259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579674, 46.130569, 56.110054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250803, -0.163353, -0.954156,
		-0.210982, -0.952740, 0.218568,
		-0.944767, 0.256128, 0.204485,
		47.296242, 46.207405, 56.171402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.545376, 45.443985, 55.706814>,  <47.957581, 46.028122, 56.028259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.545376, 45.443985, 55.706814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.312317, 45.764622, 55.760445>,  <47.172482, 45.957005, 55.792622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.312317, 45.764622, 55.760445>,  <47.545376, 45.443985, 55.706814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.312317, 45.764622, 55.760445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284993, -0.047014, -0.957376,
		-0.761121, -0.596020, 0.255841,
		-0.582644, 0.801592, 0.134078,
		47.137524, 46.005100, 55.800667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.954037, 45.247631, 55.464706>,  <47.545376, 45.443985, 55.706814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.954037, 45.247631, 55.464706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.920937, 45.645878, 55.447319>,  <46.901077, 45.884827, 55.436886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.920937, 45.645878, 55.447319>,  <46.954037, 45.247631, 55.464706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920937, 45.645878, 55.447319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509180, -0.079737, -0.856958,
		-0.856672, -0.048782, 0.513549,
		-0.082753, 0.995622, -0.043470,
		46.896111, 45.944565, 55.434277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207138, 45.341858, 55.465687>,  <46.954037, 45.247631, 55.464706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207138, 45.341858, 55.465687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.377815, 45.656319, 55.286846>,  <46.480221, 45.844997, 55.179543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.377815, 45.656319, 55.286846>,  <46.207138, 45.341858, 55.465687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.377815, 45.656319, 55.286846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547337, -0.169080, -0.819655,
		-0.719972, 0.594450, 0.358147,
		0.426689, 0.786156, -0.447097,
		46.505821, 45.892166, 55.152718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702003, 45.670769, 55.075245>,  <46.207138, 45.341858, 55.465687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702003, 45.670769, 55.075245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.035622, 45.809448, 54.903587>,  <46.235794, 45.892654, 54.800594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.035622, 45.809448, 54.903587>,  <45.702003, 45.670769, 55.075245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035622, 45.809448, 54.903587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481301, 0.077060, -0.873162,
		-0.269656, 0.934805, 0.231139,
		0.834048, 0.346700, -0.429143,
		46.285835, 45.913460, 54.774845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.539364, 46.273800, 54.603977>,  <45.702003, 45.670769, 55.075245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.539364, 46.273800, 54.603977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902321, 46.166397, 54.474644>,  <46.120094, 46.101955, 54.397041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.902321, 46.166397, 54.474644>,  <45.539364, 46.273800, 54.603977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902321, 46.166397, 54.474644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300570, 0.123160, -0.945774,
		0.293765, 0.955373, 0.031051,
		0.907392, -0.268503, -0.323337,
		46.174538, 46.085846, 54.377644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.661579, 46.692184, 54.061008>,  <45.539364, 46.273800, 54.603977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.661579, 46.692184, 54.061008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.961449, 46.439575, 53.981846>,  <46.141369, 46.288010, 53.934349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.961449, 46.439575, 53.981846>,  <45.661579, 46.692184, 54.061008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961449, 46.439575, 53.981846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184770, 0.087420, -0.978886,
		0.635493, 0.770410, -0.051151,
		0.749672, -0.631526, -0.197903,
		46.186352, 46.250118, 53.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043121, 47.047806, 53.580452>,  <45.661579, 46.692184, 54.061008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043121, 47.047806, 53.580452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114822, 46.655113, 53.554947>,  <46.157841, 46.419498, 53.539642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.114822, 46.655113, 53.554947>,  <46.043121, 47.047806, 53.580452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114822, 46.655113, 53.554947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152434, 0.036317, -0.987646,
		0.971922, 0.186755, -0.143140,
		0.179249, -0.981735, -0.063766,
		46.168598, 46.360592, 53.535816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596256, 46.967720, 53.059376>,  <46.043121, 47.047806, 53.580452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596256, 46.967720, 53.059376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.417725, 46.610367, 53.080025>,  <46.310604, 46.395954, 53.092415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.417725, 46.610367, 53.080025>,  <46.596256, 46.967720, 53.059376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.417725, 46.610367, 53.080025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153959, 0.019837, -0.987878,
		0.881525, -0.448866, -0.146398,
		-0.446329, -0.893379, 0.051620,
		46.283825, 46.342354, 53.095512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.915985, 46.693417, 52.528469>,  <46.596256, 46.967720, 53.059376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.915985, 46.693417, 52.528469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.596344, 46.461082, 52.590519>,  <46.404560, 46.321682, 52.627750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.596344, 46.461082, 52.590519>,  <46.915985, 46.693417, 52.528469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596344, 46.461082, 52.590519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099807, -0.126275, -0.986961,
		0.592852, -0.804166, 0.042935,
		-0.799103, -0.580837, 0.155124,
		46.356613, 46.286831, 52.637054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.957619, 46.052162, 52.187233>,  <46.915985, 46.693417, 52.528469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.957619, 46.052162, 52.187233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.561798, 46.102928, 52.214592>,  <46.324306, 46.133389, 52.231007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.561798, 46.102928, 52.214592>,  <46.957619, 46.052162, 52.187233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.561798, 46.102928, 52.214592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093889, -0.207264, -0.973769,
		-0.109403, -0.970019, 0.217014,
		-0.989553, 0.126909, 0.068398,
		46.264931, 46.141003, 52.235111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.762573, 45.477127, 51.756104>,  <46.957619, 46.052162, 52.187233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.762573, 45.477127, 51.756104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.457802, 45.732544, 51.799431>,  <46.274940, 45.885796, 51.825428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.457802, 45.732544, 51.799431>,  <46.762573, 45.477127, 51.756104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.457802, 45.732544, 51.799431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342692, -0.255555, -0.904021,
		-0.549575, -0.725916, 0.413538,
		-0.761925, 0.638544, 0.108319,
		46.229225, 45.924107, 51.831928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196335, 45.056782, 51.575420>,  <46.762573, 45.477127, 51.756104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196335, 45.056782, 51.575420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.098839, 45.441383, 51.524658>,  <46.040340, 45.672142, 51.494202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.098839, 45.441383, 51.524658>,  <46.196335, 45.056782, 51.575420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098839, 45.441383, 51.524658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471841, -0.231885, -0.850644,
		-0.847322, -0.147462, 0.510196,
		-0.243744, 0.961501, -0.126903,
		46.025715, 45.729836, 51.486588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476818, 44.990005, 51.308487>,  <46.196335, 45.056782, 51.575420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476818, 44.990005, 51.308487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.627884, 45.342716, 51.195457>,  <45.718521, 45.554340, 51.127640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.627884, 45.342716, 51.195457>,  <45.476818, 44.990005, 51.308487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.627884, 45.342716, 51.195457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270023, -0.187026, -0.944515,
		-0.885698, 0.433006, 0.167467,
		0.377660, 0.881775, -0.282570,
		45.741180, 45.607250, 51.110687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.953178, 45.314960, 50.906643>,  <45.476818, 44.990005, 51.308487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.953178, 45.314960, 50.906643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.284866, 45.512573, 50.802082>,  <45.483879, 45.631142, 50.739346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.284866, 45.512573, 50.802082>,  <44.953178, 45.314960, 50.906643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284866, 45.512573, 50.802082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317955, 0.032315, -0.947555,
		-0.459673, 0.868845, 0.183875,
		0.829220, 0.494030, -0.261399,
		45.533630, 45.660782, 50.723663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769722, 45.863232, 50.543343>,  <44.953178, 45.314960, 50.906643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769722, 45.863232, 50.543343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.152184, 45.846905, 50.427345>,  <45.381660, 45.837109, 50.357746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.152184, 45.846905, 50.427345>,  <44.769722, 45.863232, 50.543343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.152184, 45.846905, 50.427345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268677, 0.271698, -0.924117,
		0.116514, 0.961517, 0.248818,
		0.956157, -0.040821, -0.289994,
		45.439030, 45.834660, 50.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892399, 46.461079, 50.103603>,  <44.769722, 45.863232, 50.543343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892399, 46.461079, 50.103603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.164299, 46.190964, 49.989113>,  <45.327438, 46.028896, 49.920418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.164299, 46.190964, 49.989113>,  <44.892399, 46.461079, 50.103603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164299, 46.190964, 49.989113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212768, 0.191907, -0.958072,
		0.701901, 0.712151, -0.013230,
		0.679753, -0.675287, -0.286223,
		45.368225, 45.988377, 49.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155834, 46.821857, 49.508690>,  <44.892399, 46.461079, 50.103603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155834, 46.821857, 49.508690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.271286, 46.439514, 49.486671>,  <45.340557, 46.210110, 49.473461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.271286, 46.439514, 49.486671>,  <45.155834, 46.821857, 49.508690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271286, 46.439514, 49.486671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068425, 0.036756, -0.996979,
		0.954993, 0.291523, -0.054796,
		0.288628, -0.955857, -0.055049,
		45.357876, 46.152756, 49.470158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478973, 46.702812, 48.832119>,  <45.155834, 46.821857, 49.508690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478973, 46.702812, 48.832119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.453438, 46.311302, 48.910011>,  <45.438118, 46.076397, 48.956749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.453438, 46.311302, 48.910011>,  <45.478973, 46.702812, 48.832119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453438, 46.311302, 48.910011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152032, -0.202394, -0.967431,
		0.986312, -0.032152, 0.161725,
		-0.063837, -0.978776, 0.194735,
		45.434288, 46.017670, 48.968433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019077, 46.351856, 48.423145>,  <45.478973, 46.702812, 48.832119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019077, 46.351856, 48.423145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.736458, 46.081001, 48.505394>,  <45.566887, 45.918488, 48.554745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.736458, 46.081001, 48.505394>,  <46.019077, 46.351856, 48.423145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736458, 46.081001, 48.505394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008721, -0.282211, -0.959313,
		0.707613, -0.679592, 0.193490,
		-0.706546, -0.677135, 0.205623,
		45.524494, 45.877861, 48.567081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363178, 45.780914, 48.188942>,  <46.019077, 46.351856, 48.423145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363178, 45.780914, 48.188942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974762, 45.687885, 48.210815>,  <45.741711, 45.632069, 48.223938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.974762, 45.687885, 48.210815>,  <46.363178, 45.780914, 48.188942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974762, 45.687885, 48.210815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075255, -0.514974, -0.853896,
		0.226753, -0.825052, 0.517563,
		-0.971040, -0.232573, 0.054683,
		45.683449, 45.618114, 48.227219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.364326, 45.064724, 48.094013>,  <46.363178, 45.780914, 48.188942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.364326, 45.064724, 48.094013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.992096, 45.184570, 48.009861>,  <45.768757, 45.256477, 47.959370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.992096, 45.184570, 48.009861>,  <46.364326, 45.064724, 48.094013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.992096, 45.184570, 48.009861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003951, -0.582842, -0.812576,
		-0.366083, -0.755331, 0.543561,
		-0.930574, 0.299618, -0.210384,
		45.712925, 45.274456, 47.946747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.040348, 44.469936, 47.778439>,  <46.364326, 45.064724, 48.094013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.040348, 44.469936, 47.778439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.835983, 44.793144, 47.661087>,  <45.713364, 44.987068, 47.590675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.835983, 44.793144, 47.661087>,  <46.040348, 44.469936, 47.778439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835983, 44.793144, 47.661087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217632, -0.451741, -0.865197,
		-0.831630, -0.378189, 0.406651,
		-0.510909, 0.808025, -0.293375,
		45.682713, 45.035553, 47.573074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894302, 44.147892, 47.235115>,  <46.040348, 44.469936, 47.778439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894302, 44.147892, 47.235115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.779602, 44.522781, 47.155735>,  <45.710781, 44.747715, 47.108105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.779602, 44.522781, 47.155735>,  <45.894302, 44.147892, 47.235115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.779602, 44.522781, 47.155735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272946, -0.278494, -0.920837,
		-0.918298, -0.209888, 0.335671,
		-0.286755, 0.937224, -0.198452,
		45.693577, 44.803947, 47.096199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.493023, 43.566223, 34.342335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781319, 43.838226, 34.288479>,  <45.954296, 44.001427, 34.256165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.781319, 43.838226, 34.288479>,  <45.493023, 43.566223, 34.342335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781319, 43.838226, 34.288479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390621, 0.237947, -0.889267,
		-0.572673, 0.693520, 0.437122,
		0.720737, 0.680008, -0.134637,
		45.997540, 44.042229, 34.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.170425, 44.213230, 34.130527>,  <45.493023, 43.566223, 34.342335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.170425, 44.213230, 34.130527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545387, 44.194633, 33.992477>,  <45.770363, 44.183475, 33.909645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.545387, 44.194633, 33.992477>,  <45.170425, 44.213230, 34.130527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545387, 44.194633, 33.992477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341262, 0.074829, -0.936985,
		0.069388, 0.996112, 0.054279,
		0.937404, -0.046492, -0.345127,
		45.826607, 44.180687, 33.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.150124, 44.727467, 33.551750>,  <45.170425, 44.213230, 34.130527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.150124, 44.727467, 33.551750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462448, 44.483738, 33.496510>,  <45.649841, 44.337502, 33.463364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.462448, 44.483738, 33.496510>,  <45.150124, 44.727467, 33.551750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462448, 44.483738, 33.496510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179895, -0.007573, -0.983657,
		0.598313, 0.792891, -0.115526,
		0.780807, -0.609317, -0.138106,
		45.696690, 44.300941, 33.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.563461, 44.904266, 33.152245>,  <45.150124, 44.727467, 33.551750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.563461, 44.904266, 33.152245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174690, 44.988693, 33.110645>,  <43.941429, 45.039349, 33.085686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.174690, 44.988693, 33.110645>,  <44.563461, 44.904266, 33.152245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174690, 44.988693, 33.110645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055575, 0.223568, 0.973103,
		0.228642, 0.951561, -0.205561,
		-0.971923, 0.211068, -0.104000,
		43.883114, 45.052013, 33.079445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.460308, 45.578308, 33.451855>,  <44.563461, 44.904266, 33.152245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.460308, 45.578308, 33.451855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127296, 45.356907, 33.442684>,  <43.927490, 45.224068, 33.437183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127296, 45.356907, 33.442684>,  <44.460308, 45.578308, 33.451855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127296, 45.356907, 33.442684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129111, 0.153624, 0.979658,
		-0.538724, 0.818555, -0.199360,
		-0.832531, -0.553504, -0.022923,
		43.877537, 45.190857, 33.435806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.931049, 46.020069, 33.738285>,  <44.460308, 45.578308, 33.451855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.931049, 46.020069, 33.738285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779114, 45.651810, 33.774334>,  <43.687950, 45.430855, 33.795963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.779114, 45.651810, 33.774334>,  <43.931049, 46.020069, 33.738285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779114, 45.651810, 33.774334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093575, 0.135164, 0.986395,
		-0.920307, 0.366240, -0.137491,
		-0.379841, -0.920651, 0.090122,
		43.665161, 45.375614, 33.801369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222569, 46.093906, 33.937382>,  <43.931049, 46.020069, 33.738285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222569, 46.093906, 33.937382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338768, 45.733028, 34.064915>,  <43.408485, 45.516502, 34.141434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338768, 45.733028, 34.064915>,  <43.222569, 46.093906, 33.937382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338768, 45.733028, 34.064915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236116, 0.255309, 0.937586,
		-0.927287, -0.347645, -0.138857,
		0.290495, -0.902198, 0.318829,
		43.425915, 45.462368, 34.160564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658363, 45.865589, 34.414600>,  <43.222569, 46.093906, 33.937382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658363, 45.865589, 34.414600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945862, 45.602211, 34.503910>,  <43.118362, 45.444183, 34.557495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945862, 45.602211, 34.503910>,  <42.658363, 45.865589, 34.414600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945862, 45.602211, 34.503910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237510, 0.069294, 0.968910,
		-0.653449, -0.749430, -0.106584,
		0.718745, -0.658448, 0.223277,
		43.161484, 45.404678, 34.570892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365200, 45.436821, 34.932903>,  <42.658363, 45.865589, 34.414600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365200, 45.436821, 34.932903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755707, 45.366936, 34.984097>,  <42.990009, 45.325005, 35.014812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.755707, 45.366936, 34.984097>,  <42.365200, 45.436821, 34.932903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755707, 45.366936, 34.984097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148577, -0.110351, 0.982725,
		-0.157576, -0.978415, -0.133691,
		0.976265, -0.174718, 0.127982,
		43.048588, 45.314522, 35.022491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388000, 44.884495, 35.368439>,  <42.365200, 45.436821, 34.932903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388000, 44.884495, 35.368439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752525, 45.041687, 35.417564>,  <42.971241, 45.136002, 35.447041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752525, 45.041687, 35.417564>,  <42.388000, 44.884495, 35.368439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752525, 45.041687, 35.417564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082710, -0.117470, 0.989626,
		0.403331, -0.912013, -0.074548,
		0.911309, 0.392981, 0.122812,
		43.025917, 45.159580, 35.454407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628784, 44.486076, 35.836323>,  <42.388000, 44.884495, 35.368439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628784, 44.486076, 35.836323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869827, 44.804913, 35.851868>,  <43.014454, 44.996216, 35.861195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.869827, 44.804913, 35.851868>,  <42.628784, 44.486076, 35.836323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869827, 44.804913, 35.851868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156033, -0.165434, 0.973799,
		0.782637, -0.580753, -0.224064,
		0.602604, 0.797093, 0.038858,
		43.050610, 45.044041, 35.863525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216778, 44.281391, 36.281376>,  <42.628784, 44.486076, 35.836323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216778, 44.281391, 36.281376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202675, 44.680580, 36.302601>,  <43.194214, 44.920094, 36.315338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.202675, 44.680580, 36.302601>,  <43.216778, 44.281391, 36.281376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202675, 44.680580, 36.302601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119909, -0.048490, 0.991600,
		0.992159, 0.041325, -0.117956,
		-0.035258, 0.997969, 0.053065,
		43.192097, 44.979969, 36.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.702850, 44.452232, 36.763233>,  <43.216778, 44.281391, 36.281376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.702850, 44.452232, 36.763233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441109, 44.753735, 36.738987>,  <43.284065, 44.934635, 36.724442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.441109, 44.753735, 36.738987>,  <43.702850, 44.452232, 36.763233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441109, 44.753735, 36.738987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013217, 0.068742, 0.997547,
		0.756073, 0.653549, -0.035019,
		-0.654353, 0.753756, -0.060612,
		43.244804, 44.979862, 36.720802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.126057, 45.046516, 37.138031>,  <43.702850, 44.452232, 36.763233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.126057, 45.046516, 37.138031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740219, 45.151279, 37.125561>,  <43.508717, 45.214138, 37.118080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740219, 45.151279, 37.125561>,  <44.126057, 45.046516, 37.138031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740219, 45.151279, 37.125561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009829, 0.082422, 0.996549,
		0.263569, 0.961568, -0.076929,
		-0.964590, 0.261904, -0.031175,
		43.450844, 45.229851, 37.116207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006569, 45.690407, 37.559177>,  <44.126057, 45.046516, 37.138031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006569, 45.690407, 37.559177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624474, 45.573261, 37.542416>,  <43.395218, 45.502975, 37.532360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.624474, 45.573261, 37.542416>,  <44.006569, 45.690407, 37.559177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624474, 45.573261, 37.542416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087534, 0.144478, 0.985629,
		-0.282598, 0.945176, -0.163646,
		-0.955236, -0.292861, -0.041906,
		43.337902, 45.485401, 37.529842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696205, 46.102222, 38.078606>,  <44.006569, 45.690407, 37.559177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696205, 46.102222, 38.078606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471947, 45.784180, 37.986095>,  <43.337391, 45.593353, 37.930592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.471947, 45.784180, 37.986095>,  <43.696205, 46.102222, 38.078606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471947, 45.784180, 37.986095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224372, -0.122979, 0.966713,
		-0.797080, 0.593872, -0.109453,
		-0.560643, -0.795105, -0.231272,
		43.303753, 45.545647, 37.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970440, 46.208946, 38.381325>,  <43.696205, 46.102222, 38.078606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970440, 46.208946, 38.381325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991516, 45.811623, 38.340233>,  <43.004162, 45.573227, 38.315578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991516, 45.811623, 38.340233>,  <42.970440, 46.208946, 38.381325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991516, 45.811623, 38.340233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408789, -0.115312, 0.905314,
		-0.911107, -0.005704, -0.412131,
		0.052688, -0.993313, -0.102729,
		43.007324, 45.513630, 38.309414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311268, 46.008785, 38.615120>,  <42.970440, 46.208946, 38.381325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311268, 46.008785, 38.615120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539536, 45.681381, 38.641598>,  <42.676495, 45.484940, 38.657482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.539536, 45.681381, 38.641598>,  <42.311268, 46.008785, 38.615120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539536, 45.681381, 38.641598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219099, -0.074080, 0.972886,
		-0.791413, -0.569696, -0.221610,
		0.570667, -0.818510, 0.066192,
		42.710735, 45.435829, 38.661457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852543, 45.582771, 39.021290>,  <42.311268, 46.008785, 38.615120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852543, 45.582771, 39.021290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235153, 45.470325, 39.052345>,  <42.464722, 45.402859, 39.070980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235153, 45.470325, 39.052345>,  <41.852543, 45.582771, 39.021290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235153, 45.470325, 39.052345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125982, -0.158194, 0.979338,
		-0.263028, -0.946545, -0.186732,
		0.956528, -0.281118, 0.077638,
		42.522110, 45.385990, 39.075638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802639, 45.019890, 39.421963>,  <41.852543, 45.582771, 39.021290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802639, 45.019890, 39.421963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193634, 45.104206, 39.418236>,  <42.428230, 45.154797, 39.416000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.193634, 45.104206, 39.418236>,  <41.802639, 45.019890, 39.421963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193634, 45.104206, 39.418236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067775, -0.271868, 0.959945,
		0.199813, -0.938965, -0.280033,
		0.977487, 0.210788, -0.009315,
		42.486881, 45.167442, 39.415440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148136, 44.457748, 39.772961>,  <41.802639, 45.019890, 39.421963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148136, 44.457748, 39.772961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399445, 44.761768, 39.839420>,  <42.550228, 44.944180, 39.879295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.399445, 44.761768, 39.839420>,  <42.148136, 44.457748, 39.772961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399445, 44.761768, 39.839420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089648, -0.282859, 0.954963,
		0.772815, -0.585078, -0.245848,
		0.628268, 0.760049, 0.166147,
		42.587925, 44.989784, 39.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603958, 44.214413, 40.181828>,  <42.148136, 44.457748, 39.772961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603958, 44.214413, 40.181828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659576, 44.603302, 40.257149>,  <42.692947, 44.836636, 40.302341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.659576, 44.603302, 40.257149>,  <42.603958, 44.214413, 40.181828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659576, 44.603302, 40.257149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066590, -0.198894, 0.977756,
		0.988045, -0.123413, -0.092396,
		0.139045, 0.972219, 0.188299,
		42.701290, 44.894966, 40.313637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169247, 44.199986, 40.715904>,  <42.603958, 44.214413, 40.181828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169247, 44.199986, 40.715904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.982361, 44.553127, 40.734978>,  <42.870228, 44.765011, 40.746422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.982361, 44.553127, 40.734978>,  <43.169247, 44.199986, 40.715904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982361, 44.553127, 40.734978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195275, 0.050444, 0.979450,
		0.862308, 0.466927, -0.195969,
		-0.467217, 0.882856, 0.047681,
		42.842197, 44.817986, 40.749283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588493, 44.643860, 41.232277>,  <43.169247, 44.199986, 40.715904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588493, 44.643860, 41.232277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225723, 44.812283, 41.226562>,  <43.008060, 44.913338, 41.223133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.225723, 44.812283, 41.226562>,  <43.588493, 44.643860, 41.232277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.225723, 44.812283, 41.226562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042791, 0.125793, 0.991133,
		0.419120, 0.898269, -0.132103,
		-0.906922, 0.421056, -0.014284,
		42.953648, 44.938599, 41.222279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634724, 45.184822, 41.769146>,  <43.588493, 44.643860, 41.232277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634724, 45.184822, 41.769146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249275, 45.135162, 41.674469>,  <43.018005, 45.105366, 41.617664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.249275, 45.135162, 41.674469>,  <43.634724, 45.184822, 41.769146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249275, 45.135162, 41.674469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244032, 0.047498, 0.968603,
		-0.109013, 0.991126, -0.076067,
		-0.963620, -0.124153, -0.236689,
		42.960190, 45.097916, 41.603462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262524, 45.722988, 42.015312>,  <43.634724, 45.184822, 41.769146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262524, 45.722988, 42.015312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017578, 45.408157, 41.985565>,  <42.870613, 45.219261, 41.967716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017578, 45.408157, 41.985565>,  <43.262524, 45.722988, 42.015312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017578, 45.408157, 41.985565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184930, 0.051145, 0.981420,
		-0.768645, 0.614737, -0.176872,
		-0.612361, -0.787072, -0.074371,
		42.833870, 45.172035, 41.963253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744396, 45.922710, 42.392757>,  <43.262524, 45.722988, 42.015312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744396, 45.922710, 42.392757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686005, 45.529213, 42.350933>,  <42.650970, 45.293114, 42.325840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.686005, 45.529213, 42.350933>,  <42.744396, 45.922710, 42.392757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686005, 45.529213, 42.350933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177606, -0.077915, 0.981012,
		-0.973215, 0.161775, -0.163346,
		-0.145976, -0.983747, -0.104560,
		42.642212, 45.234089, 42.319565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113052, 45.709438, 42.756958>,  <42.744396, 45.922710, 42.392757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113052, 45.709438, 42.756958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308952, 45.361668, 42.730904>,  <42.426491, 45.153004, 42.715271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308952, 45.361668, 42.730904>,  <42.113052, 45.709438, 42.756958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308952, 45.361668, 42.730904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157473, -0.161684, 0.974197,
		-0.857525, -0.466855, -0.216096,
		0.489748, -0.869428, -0.065131,
		42.455875, 45.100838, 42.711365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710102, 45.244179, 43.090466>,  <42.113052, 45.709438, 42.756958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710102, 45.244179, 43.090466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.079422, 45.090809, 43.099533>,  <42.301014, 44.998787, 43.104973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.079422, 45.090809, 43.099533>,  <41.710102, 45.244179, 43.090466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079422, 45.090809, 43.099533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037034, -0.030120, 0.998860,
		-0.382303, -0.923082, -0.042009,
		0.923295, -0.383422, 0.022671,
		42.356411, 44.975780, 43.106335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703484, 44.966194, 43.732693>,  <41.710102, 45.244179, 43.090466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703484, 44.966194, 43.732693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084297, 44.902744, 43.628025>,  <42.312786, 44.864674, 43.565224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.084297, 44.902744, 43.628025>,  <41.703484, 44.966194, 43.732693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.084297, 44.902744, 43.628025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258253, -0.042166, 0.965157,
		-0.164131, -0.986438, 0.000822,
		0.952033, -0.158624, -0.261671,
		42.369907, 44.855156, 43.549522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.889946, 44.423763, 44.106403>,  <41.703484, 44.966194, 43.732693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.889946, 44.423763, 44.106403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215508, 44.633797, 44.006927>,  <42.410847, 44.759815, 43.947243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215508, 44.633797, 44.006927>,  <41.889946, 44.423763, 44.106403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215508, 44.633797, 44.006927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228922, 0.103587, 0.967918,
		0.533996, -0.844725, -0.035892,
		0.813906, 0.525080, -0.248691,
		42.459679, 44.791321, 43.932320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403732, 44.081959, 44.437908>,  <41.889946, 44.423763, 44.106403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403732, 44.081959, 44.437908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555374, 44.445759, 44.369686>,  <42.646358, 44.664040, 44.328754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555374, 44.445759, 44.369686>,  <42.403732, 44.081959, 44.437908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555374, 44.445759, 44.369686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348193, 0.030562, 0.936925,
		0.857344, -0.414582, -0.305095,
		0.379108, 0.909498, -0.170556,
		42.669106, 44.718609, 44.318520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.120579, 43.947483, 44.760246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058243, 44.341190, 44.726933>,  <43.020840, 44.577415, 44.706944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058243, 44.341190, 44.726933>,  <43.120579, 43.947483, 44.760246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058243, 44.341190, 44.726933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177143, 0.110793, 0.977929,
		0.971768, 0.137649, -0.191622,
		-0.155842, 0.984265, -0.083282,
		43.011490, 44.636471, 44.701946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682178, 44.239513, 45.035496>,  <43.120579, 43.947483, 44.760246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682178, 44.239513, 45.035496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408432, 44.530296, 45.058071>,  <43.244186, 44.704765, 45.071617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408432, 44.530296, 45.058071>,  <43.682178, 44.239513, 45.035496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408432, 44.530296, 45.058071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252404, 0.163569, 0.953697,
		0.684060, 0.666922, -0.295427,
		-0.684364, 0.726953, 0.056443,
		43.203121, 44.748383, 45.075005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912380, 44.720261, 45.447201>,  <43.682178, 44.239513, 45.035496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912380, 44.720261, 45.447201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525055, 44.819904, 45.454269>,  <43.292660, 44.879688, 45.458511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525055, 44.819904, 45.454269>,  <43.912380, 44.720261, 45.447201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525055, 44.819904, 45.454269> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033067, 0.057770, 0.997782,
		0.247532, 0.966752, -0.064176,
		-0.968315, 0.249105, 0.017668,
		43.234562, 44.894634, 45.459568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592674, 45.146290, 45.339687>,  <43.912380, 44.720261, 45.447201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592674, 45.146290, 45.339687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951065, 44.983044, 45.409744>,  <45.166100, 44.885098, 45.451778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951065, 44.983044, 45.409744>,  <44.592674, 45.146290, 45.339687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.951065, 44.983044, 45.409744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086417, -0.226613, -0.970144,
		0.435616, 0.884359, -0.167771,
		0.895975, -0.408112, 0.175140,
		45.219856, 44.860611, 45.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116737, 45.422443, 44.818043>,  <44.592674, 45.146290, 45.339687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116737, 45.422443, 44.818043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260590, 45.070034, 44.940975>,  <45.346901, 44.858589, 45.014736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260590, 45.070034, 44.940975>,  <45.116737, 45.422443, 44.818043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260590, 45.070034, 44.940975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166141, -0.263645, -0.950204,
		0.918183, 0.392787, 0.051559,
		0.359635, -0.881028, 0.307332,
		45.368481, 44.805725, 45.033176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834480, 45.393867, 44.667095>,  <45.116737, 45.422443, 44.818043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834480, 45.393867, 44.667095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686279, 45.023460, 44.696011>,  <45.597359, 44.801216, 44.713360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686279, 45.023460, 44.696011>,  <45.834480, 45.393867, 44.667095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686279, 45.023460, 44.696011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267570, -0.180933, -0.946398,
		0.889459, -0.331297, 0.314809,
		-0.370498, -0.926016, 0.072288,
		45.575130, 44.745655, 44.717697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342480, 45.039742, 44.391232>,  <45.834480, 45.393867, 44.667095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342480, 45.039742, 44.391232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028282, 44.794712, 44.356033>,  <45.839764, 44.647694, 44.334915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028282, 44.794712, 44.356033>,  <46.342480, 45.039742, 44.391232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028282, 44.794712, 44.356033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201336, -0.118491, -0.972329,
		0.585198, -0.781480, 0.216408,
		-0.785498, -0.612576, -0.087999,
		45.792633, 44.610939, 44.329632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541828, 44.514729, 43.977226>,  <46.342480, 45.039742, 44.391232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541828, 44.514729, 43.977226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148613, 44.453594, 43.936691>,  <45.912682, 44.416912, 43.912369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148613, 44.453594, 43.936691>,  <46.541828, 44.514729, 43.977226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148613, 44.453594, 43.936691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123961, -0.146606, -0.981397,
		0.135138, -0.977316, 0.163066,
		-0.983042, -0.152838, -0.101337,
		45.853699, 44.407742, 43.906292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.469852, 43.903793, 43.613312>,  <46.541828, 44.514729, 43.977226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.469852, 43.903793, 43.613312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114128, 44.079826, 43.563580>,  <45.900696, 44.185448, 43.533741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114128, 44.079826, 43.563580>,  <46.469852, 43.903793, 43.613312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114128, 44.079826, 43.563580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062743, -0.151897, -0.986403,
		-0.452984, -0.885017, 0.107471,
		-0.889308, 0.440082, -0.124335,
		45.847336, 44.211849, 43.526279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.130016, 43.489170, 43.158115>,  <46.469852, 43.903793, 43.613312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.130016, 43.489170, 43.158115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960953, 43.850349, 43.127037>,  <45.859516, 44.067059, 43.108391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.960953, 43.850349, 43.127037>,  <46.130016, 43.489170, 43.158115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960953, 43.850349, 43.127037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030085, -0.071707, -0.996972,
		-0.905789, -0.423718, 0.003142,
		-0.422660, 0.902951, -0.077699,
		45.834156, 44.121235, 43.103725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667770, 43.396263, 42.662270>,  <46.130016, 43.489170, 43.158115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667770, 43.396263, 42.662270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679237, 43.794495, 42.698067>,  <45.686119, 44.033432, 42.719547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.679237, 43.794495, 42.698067>,  <45.667770, 43.396263, 42.662270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679237, 43.794495, 42.698067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090950, 0.091761, -0.991619,
		-0.995443, 0.020290, 0.093178,
		0.028670, 0.995574, 0.089497,
		45.687840, 44.093166, 42.724915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.236313, 43.650021, 42.033207>,  <45.667770, 43.396263, 42.662270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.236313, 43.650021, 42.033207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467804, 43.946705, 42.168816>,  <45.606697, 44.124718, 42.250179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.467804, 43.946705, 42.168816>,  <45.236313, 43.650021, 42.033207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.467804, 43.946705, 42.168816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232037, 0.248769, -0.940358,
		-0.781813, 0.622878, -0.028135,
		0.578729, 0.741713, 0.339021,
		45.641422, 44.169220, 42.270523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991184, 44.257889, 41.737862>,  <45.236313, 43.650021, 42.033207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991184, 44.257889, 41.737862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376266, 44.324421, 41.823219>,  <45.607315, 44.364342, 41.874435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376266, 44.324421, 41.823219>,  <44.991184, 44.257889, 41.737862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376266, 44.324421, 41.823219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133734, 0.393083, -0.909726,
		-0.235199, 0.904333, 0.356177,
		0.962703, 0.166334, 0.213393,
		45.665077, 44.374321, 41.887238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091816, 45.007103, 41.460445>,  <44.991184, 44.257889, 41.737862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091816, 45.007103, 41.460445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432983, 44.798946, 41.477058>,  <45.637684, 44.674053, 41.487026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432983, 44.798946, 41.477058>,  <45.091816, 45.007103, 41.460445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432983, 44.798946, 41.477058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174202, 0.208708, -0.962338,
		0.492126, 0.828029, 0.268664,
		0.852916, -0.520393, 0.041533,
		45.688858, 44.642830, 41.489517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516998, 45.429729, 41.121105>,  <45.091816, 45.007103, 41.460445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516998, 45.429729, 41.121105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687302, 45.067799, 41.122540>,  <45.789482, 44.850639, 41.123398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687302, 45.067799, 41.122540>,  <45.516998, 45.429729, 41.121105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.687302, 45.067799, 41.122540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234406, 0.106472, -0.966291,
		0.873948, 0.412244, 0.257429,
		0.425757, -0.904831, 0.003581,
		45.815029, 44.796349, 41.123615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175083, 45.580944, 40.857620>,  <45.516998, 45.429729, 41.121105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175083, 45.580944, 40.857620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107292, 45.191406, 40.797073>,  <46.066616, 44.957684, 40.760746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107292, 45.191406, 40.797073>,  <46.175083, 45.580944, 40.857620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107292, 45.191406, 40.797073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293193, 0.096812, -0.951139,
		0.940912, -0.205579, 0.269116,
		-0.169480, -0.973840, -0.151366,
		46.056450, 44.899254, 40.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693439, 45.310085, 40.519711>,  <46.175083, 45.580944, 40.857620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693439, 45.310085, 40.519711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413902, 45.028702, 40.467934>,  <46.246178, 44.859871, 40.436867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413902, 45.028702, 40.467934>,  <46.693439, 45.310085, 40.519711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413902, 45.028702, 40.467934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332540, -0.159313, -0.929536,
		0.633269, -0.692649, 0.345264,
		-0.698847, -0.703460, -0.129445,
		46.204247, 44.817665, 40.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.095192, 44.732704, 40.212791>,  <46.693439, 45.310085, 40.519711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.095192, 44.732704, 40.212791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706642, 44.692867, 40.126522>,  <46.473511, 44.668964, 40.074760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706642, 44.692867, 40.126522>,  <47.095192, 44.732704, 40.212791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706642, 44.692867, 40.126522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222353, -0.061577, -0.973020,
		0.083627, -0.993121, 0.081959,
		-0.971373, -0.099595, -0.215674,
		46.415230, 44.662991, 40.061821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014610, 44.112293, 39.848801>,  <47.095192, 44.732704, 40.212791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014610, 44.112293, 39.848801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699814, 44.337654, 39.748222>,  <46.510937, 44.472870, 39.687874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699814, 44.337654, 39.748222>,  <47.014610, 44.112293, 39.848801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699814, 44.337654, 39.748222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097424, -0.288958, -0.952372,
		-0.609224, -0.774005, 0.172519,
		-0.786991, 0.563400, -0.251447,
		46.463715, 44.506676, 39.672787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630833, 43.667793, 39.461292>,  <47.014610, 44.112293, 39.848801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630833, 43.667793, 39.461292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482658, 44.025848, 39.362087>,  <46.393753, 44.240681, 39.302563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.482658, 44.025848, 39.362087>,  <46.630833, 43.667793, 39.461292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482658, 44.025848, 39.362087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118152, -0.310251, -0.943284,
		-0.921314, -0.320118, 0.220689,
		-0.370431, 0.895136, -0.248016,
		46.371529, 44.294388, 39.287682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096764, 43.489479, 39.023254>,  <46.630833, 43.667793, 39.461292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096764, 43.489479, 39.023254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189346, 43.866127, 38.925457>,  <46.244896, 44.092117, 38.866779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189346, 43.866127, 38.925457>,  <46.096764, 43.489479, 39.023254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189346, 43.866127, 38.925457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016284, -0.255028, -0.966796,
		-0.972710, 0.219786, -0.074360,
		0.231452, 0.941623, -0.244490,
		46.258781, 44.148613, 38.852112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.565594, 43.781281, 38.577808>,  <46.096764, 43.489479, 39.023254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.565594, 43.781281, 38.577808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897118, 43.997597, 38.520363>,  <46.096031, 44.127384, 38.485893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897118, 43.997597, 38.520363>,  <45.565594, 43.781281, 38.577808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897118, 43.997597, 38.520363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050236, -0.183715, -0.981695,
		-0.557274, 0.820851, -0.125097,
		0.828808, 0.540788, -0.143616,
		46.145760, 44.159832, 38.477280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468571, 44.078247, 37.895542>,  <45.565594, 43.781281, 38.577808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468571, 44.078247, 37.895542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856323, 44.144695, 37.967873>,  <46.088974, 44.184566, 38.011272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856323, 44.144695, 37.967873>,  <45.468571, 44.078247, 37.895542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856323, 44.144695, 37.967873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191409, -0.049942, -0.980239,
		-0.153810, 0.984839, -0.080211,
		0.969384, 0.166123, 0.180825,
		46.147137, 44.194530, 38.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.586384, 44.654819, 37.503883>,  <45.468571, 44.078247, 37.895542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.586384, 44.654819, 37.503883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931450, 44.470360, 37.586964>,  <46.138489, 44.359684, 37.636814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931450, 44.470360, 37.586964>,  <45.586384, 44.654819, 37.503883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931450, 44.470360, 37.586964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184472, -0.095490, -0.978188,
		0.470929, 0.882167, 0.002694,
		0.862668, -0.461154, 0.207704,
		46.190250, 44.332012, 37.649277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099030, 44.989986, 37.047028>,  <45.586384, 44.654819, 37.503883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099030, 44.989986, 37.047028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299026, 44.659744, 37.151627>,  <46.419025, 44.461597, 37.214386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.299026, 44.659744, 37.151627>,  <46.099030, 44.989986, 37.047028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299026, 44.659744, 37.151627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253986, -0.148886, -0.955680,
		0.827951, 0.544247, 0.135252,
		0.499989, -0.825608, 0.261501,
		46.449024, 44.412064, 37.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.748940, 45.020374, 36.770702>,  <46.099030, 44.989986, 37.047028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.748940, 45.020374, 36.770702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681686, 44.628281, 36.812416>,  <46.641335, 44.393024, 36.837444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681686, 44.628281, 36.812416>,  <46.748940, 45.020374, 36.770702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.681686, 44.628281, 36.812416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335088, -0.156321, -0.929129,
		0.927064, -0.121271, 0.354747,
		-0.168131, -0.980233, 0.104283,
		46.631248, 44.334209, 36.843700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.313774, 44.641083, 36.502026>,  <46.748940, 45.020374, 36.770702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.313774, 44.641083, 36.502026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017662, 44.372208, 36.506969>,  <46.839996, 44.210884, 36.509933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.017662, 44.372208, 36.506969>,  <47.313774, 44.641083, 36.502026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.017662, 44.372208, 36.506969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228211, -0.268530, -0.935848,
		0.632382, -0.689969, 0.352187,
		-0.740278, -0.672186, 0.012355,
		46.795578, 44.170551, 36.510677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.541874, 44.052048, 36.232990>,  <47.313774, 44.641083, 36.502026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.541874, 44.052048, 36.232990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146378, 44.029144, 36.177689>,  <46.909081, 44.015400, 36.144508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146378, 44.029144, 36.177689>,  <47.541874, 44.052048, 36.232990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.146378, 44.029144, 36.177689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148860, -0.282022, -0.947789,
		0.015281, -0.957698, 0.287371,
		-0.988740, -0.057261, -0.138253,
		46.849754, 44.011967, 36.136211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.515076, 43.736599, 35.659138>,  <47.541874, 44.052048, 36.232990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.515076, 43.736599, 35.659138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125519, 43.824017, 35.683697>,  <46.891785, 43.876465, 35.698433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125519, 43.824017, 35.683697>,  <47.515076, 43.736599, 35.659138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125519, 43.824017, 35.683697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071799, -0.039977, -0.996618,
		-0.215347, -0.975009, 0.054625,
		-0.973894, 0.218541, 0.061396,
		46.833351, 43.889580, 35.702114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288841, 43.466770, 35.018230>,  <47.515076, 43.736599, 35.659138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288841, 43.466770, 35.018230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000961, 43.725807, 35.118347>,  <46.828232, 43.881229, 35.178417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.000961, 43.725807, 35.118347>,  <47.288841, 43.466770, 35.018230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.000961, 43.725807, 35.118347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190993, 0.161925, -0.968144,
		-0.667494, -0.744581, 0.007149,
		-0.719704, 0.647595, 0.250294,
		46.785049, 43.920086, 35.193436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664993, 43.137932, 34.819069>,  <47.288841, 43.466770, 35.018230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664993, 43.137932, 34.819069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610970, 43.533485, 34.843933>,  <46.578556, 43.770817, 34.858852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610970, 43.533485, 34.843933>,  <46.664993, 43.137932, 34.819069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.610970, 43.533485, 34.843933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310937, 0.017266, -0.950274,
		-0.940786, -0.147667, 0.305150,
		-0.135055, 0.988887, 0.062159,
		46.570454, 43.830151, 34.862579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076283, 43.235153, 34.583359>,  <46.664993, 43.137932, 34.819069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076283, 43.235153, 34.583359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199959, 43.615261, 34.568474>,  <46.274166, 43.843327, 34.559544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199959, 43.615261, 34.568474>,  <46.076283, 43.235153, 34.583359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199959, 43.615261, 34.568474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511254, 0.133098, -0.849061,
		-0.801885, 0.281547, 0.526983,
		0.309191, 0.950272, -0.037213,
		46.292717, 43.900341, 34.557308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<45.236778, 44.115910, 46.923153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.370613, 44.470673, 46.795753>,  <45.450912, 44.683529, 46.719315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.370613, 44.470673, 46.795753>,  <45.236778, 44.115910, 46.923153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370613, 44.470673, 46.795753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246428, -0.243876, -0.937975,
		-0.909574, 0.392323, 0.136961,
		0.334587, 0.886909, -0.318503,
		45.470989, 44.736744, 46.700203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673145, 44.419750, 46.523495>,  <45.236778, 44.115910, 46.923153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673145, 44.419750, 46.523495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.000900, 44.615246, 46.403671>,  <45.197556, 44.732544, 46.331776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.000900, 44.615246, 46.403671>,  <44.673145, 44.419750, 46.523495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.000900, 44.615246, 46.403671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237103, -0.186816, -0.953353,
		-0.521902, 0.852194, -0.037194,
		0.819390, 0.488738, -0.299558,
		45.246716, 44.761868, 46.313805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.493423, 44.751236, 45.911655>,  <44.673145, 44.419750, 46.523495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.493423, 44.751236, 45.911655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.892738, 44.732388, 45.897781>,  <45.132328, 44.721077, 45.889458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.892738, 44.732388, 45.897781>,  <44.493423, 44.751236, 45.911655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892738, 44.732388, 45.897781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042377, -0.173398, -0.983940,
		0.040353, 0.983724, -0.175098,
		0.998286, -0.047125, -0.034690,
		45.192223, 44.718250, 45.887375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883469, 45.243767, 45.948009>,  <44.493423, 44.751236, 45.911655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883469, 45.243767, 45.948009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515923, 45.092274, 45.903740>,  <43.295395, 45.001377, 45.877178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515923, 45.092274, 45.903740>,  <43.883469, 45.243767, 45.948009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515923, 45.092274, 45.903740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113721, -0.014387, 0.993409,
		-0.377832, 0.925393, -0.029851,
		-0.918864, -0.378737, -0.110672,
		43.240265, 44.978653, 45.870537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589104, 45.555466, 46.524250>,  <43.883469, 45.243767, 45.948009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589104, 45.555466, 46.524250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.317696, 45.280945, 46.419491>,  <43.154850, 45.116230, 46.356636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.317696, 45.280945, 46.419491>,  <43.589104, 45.555466, 46.524250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317696, 45.280945, 46.419491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402210, 0.048761, 0.914248,
		-0.614684, 0.725676, -0.309125,
		-0.678521, -0.686307, -0.261902,
		43.114140, 45.075054, 46.340919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.027367, 45.836380, 46.688431>,  <43.589104, 45.555466, 46.524250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.027367, 45.836380, 46.688431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942398, 45.445637, 46.698463>,  <42.891418, 45.211189, 46.704483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.942398, 45.445637, 46.698463>,  <43.027367, 45.836380, 46.688431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942398, 45.445637, 46.698463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311064, 0.091928, 0.945932,
		-0.926347, 0.193130, -0.323393,
		-0.212417, -0.976857, 0.025082,
		42.878674, 45.152580, 46.705990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327942, 45.650490, 47.010056>,  <43.027367, 45.836380, 46.688431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327942, 45.650490, 47.010056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.511009, 45.295094, 47.023491>,  <42.620850, 45.081856, 47.031551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.511009, 45.295094, 47.023491>,  <42.327942, 45.650490, 47.010056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511009, 45.295094, 47.023491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294932, -0.116063, 0.948443,
		-0.838784, -0.443975, -0.315162,
		0.457664, -0.888491, 0.033591,
		42.648308, 45.028545, 47.033569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802639, 45.191845, 47.271954>,  <42.327942, 45.650490, 47.010056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802639, 45.191845, 47.271954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.159386, 45.024815, 47.341473>,  <42.373432, 44.924599, 47.383183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.159386, 45.024815, 47.341473>,  <41.802639, 45.191845, 47.271954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159386, 45.024815, 47.341473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262367, -0.164630, 0.950821,
		-0.368426, -0.893604, -0.256386,
		0.891867, -0.417574, 0.173798,
		42.426945, 44.899544, 47.393612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654179, 44.501492, 47.465321>,  <41.802639, 45.191845, 47.271954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654179, 44.501492, 47.465321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.020493, 44.575375, 47.607990>,  <42.240280, 44.619705, 47.693592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.020493, 44.575375, 47.607990>,  <41.654179, 44.501492, 47.465321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020493, 44.575375, 47.607990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261872, -0.398751, 0.878875,
		0.304562, -0.898265, -0.316800,
		0.915786, 0.184711, 0.356675,
		42.295227, 44.630787, 47.714993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871452, 43.827442, 47.768559>,  <41.654179, 44.501492, 47.465321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871452, 43.827442, 47.768559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104012, 44.111813, 47.926826>,  <42.243546, 44.282436, 48.021786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.104012, 44.111813, 47.926826>,  <41.871452, 43.827442, 47.768559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104012, 44.111813, 47.926826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178902, -0.362702, 0.914572,
		0.793707, -0.602516, -0.083687,
		0.581398, 0.710930, 0.395671,
		42.278431, 44.325092, 48.045528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208366, 43.602627, 48.380890>,  <41.871452, 43.827442, 47.768559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208366, 43.602627, 48.380890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262314, 43.995152, 48.435799>,  <42.294682, 44.230667, 48.468742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.262314, 43.995152, 48.435799>,  <42.208366, 43.602627, 48.380890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262314, 43.995152, 48.435799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116786, -0.121827, 0.985657,
		0.983957, -0.148964, 0.098173,
		0.134867, 0.981309, 0.137270,
		42.302773, 44.289543, 48.476978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706768, 43.652321, 48.807213>,  <42.208366, 43.602627, 48.380890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706768, 43.652321, 48.807213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.506371, 43.994099, 48.862244>,  <42.386131, 44.199165, 48.895264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.506371, 43.994099, 48.862244>,  <42.706768, 43.652321, 48.807213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506371, 43.994099, 48.862244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157236, -0.066461, 0.985322,
		0.851045, 0.515278, -0.101052,
		-0.500998, 0.854442, 0.137582,
		42.356071, 44.250431, 48.903519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073502, 43.978153, 49.393597>,  <42.706768, 43.652321, 48.807213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073502, 43.978153, 49.393597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.719536, 44.161095, 49.358391>,  <42.507156, 44.270859, 49.337269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.719536, 44.161095, 49.358391>,  <43.073502, 43.978153, 49.393597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.719536, 44.161095, 49.358391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051846, 0.284527, 0.957265,
		0.462853, 0.842537, -0.275495,
		-0.884917, 0.457357, -0.088012,
		42.454060, 44.298302, 49.331985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092144, 44.611496, 49.753994>,  <43.073502, 43.978153, 49.393597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092144, 44.611496, 49.753994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.703186, 44.519264, 49.739700>,  <42.469810, 44.463924, 49.731125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.703186, 44.519264, 49.739700>,  <43.092144, 44.611496, 49.753994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703186, 44.519264, 49.739700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097575, 0.262731, 0.959923,
		-0.211952, 0.936912, -0.277978,
		-0.972397, -0.230581, -0.035732,
		42.411469, 44.450089, 49.728981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733276, 45.148571, 50.134441>,  <43.092144, 44.611496, 49.753994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733276, 45.148571, 50.134441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.468689, 44.848755, 50.124321>,  <42.309937, 44.668865, 50.118248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.468689, 44.848755, 50.124321>,  <42.733276, 45.148571, 50.134441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468689, 44.848755, 50.124321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259780, 0.197344, 0.945288,
		-0.703542, 0.631854, -0.325254,
		-0.661470, -0.749544, -0.025303,
		42.270248, 44.623890, 50.116730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021511, 45.445816, 50.295277>,  <42.733276, 45.148571, 50.134441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021511, 45.445816, 50.295277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995697, 45.053379, 50.368271>,  <41.980209, 44.817917, 50.412067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.995697, 45.053379, 50.368271>,  <42.021511, 45.445816, 50.295277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995697, 45.053379, 50.368271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499755, 0.190057, 0.845058,
		-0.863759, -0.036665, -0.502569,
		-0.064533, -0.981088, 0.182487,
		41.976337, 44.759052, 50.423016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353413, 45.355965, 50.428349>,  <42.021511, 45.445816, 50.295277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353413, 45.355965, 50.428349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524567, 45.033550, 50.591919>,  <41.627258, 44.840103, 50.690060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.524567, 45.033550, 50.591919>,  <41.353413, 45.355965, 50.428349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524567, 45.033550, 50.591919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644678, 0.044934, 0.763132,
		-0.633488, -0.590157, -0.500407,
		0.427883, -0.806036, 0.408927,
		41.652931, 44.791740, 50.714596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773876, 44.932667, 50.689777>,  <41.353413, 45.355965, 50.428349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773876, 44.932667, 50.689777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095909, 44.752327, 50.843956>,  <41.289131, 44.644123, 50.936462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.095909, 44.752327, 50.843956>,  <40.773876, 44.932667, 50.689777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.095909, 44.752327, 50.843956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525677, -0.241295, 0.815745,
		-0.274783, -0.859360, -0.431270,
		0.805082, -0.450862, 0.385442,
		41.337437, 44.617073, 50.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507256, 44.216328, 50.948872>,  <40.773876, 44.932667, 50.689777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507256, 44.216328, 50.948872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.832924, 44.337788, 51.146828>,  <41.028324, 44.410664, 51.265602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.832924, 44.337788, 51.146828>,  <40.507256, 44.216328, 50.948872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832924, 44.337788, 51.146828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451161, -0.205671, 0.868420,
		0.365483, -0.930320, -0.030456,
		0.814172, 0.303652, 0.494893,
		41.077175, 44.428883, 51.295296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506458, 43.697441, 51.556061>,  <40.507256, 44.216328, 50.948872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506458, 43.697441, 51.556061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762054, 43.989105, 51.654053>,  <40.915413, 44.164104, 51.712849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762054, 43.989105, 51.654053>,  <40.506458, 43.697441, 51.556061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762054, 43.989105, 51.654053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242283, -0.111483, 0.963779,
		0.730058, -0.675205, 0.105425,
		0.638995, 0.729157, 0.244980,
		40.953754, 44.207851, 51.727547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909744, 43.500294, 52.129936>,  <40.506458, 43.697441, 51.556061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909744, 43.500294, 52.129936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922615, 43.899769, 52.145832>,  <40.930340, 44.139454, 52.155369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.922615, 43.899769, 52.145832>,  <40.909744, 43.500294, 52.129936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922615, 43.899769, 52.145832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233618, -0.031144, 0.971830,
		0.971796, -0.040557, 0.232310,
		0.032180, 0.998692, 0.039740,
		40.932270, 44.199375, 52.157753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191231, 43.633278, 52.769054>,  <40.909744, 43.500294, 52.129936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191231, 43.633278, 52.769054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063705, 44.002632, 52.683533>,  <40.987190, 44.224247, 52.632221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.063705, 44.002632, 52.683533>,  <41.191231, 43.633278, 52.769054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063705, 44.002632, 52.683533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142587, 0.176284, 0.973957,
		0.937032, 0.340992, 0.075463,
		-0.318809, 0.923389, -0.213805,
		40.968063, 44.279648, 52.619392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546337, 44.179283, 53.086861>,  <41.191231, 43.633278, 52.769054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546337, 44.179283, 53.086861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194221, 44.352203, 53.008675>,  <40.982952, 44.455956, 52.961765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.194221, 44.352203, 53.008675>,  <41.546337, 44.179283, 53.086861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194221, 44.352203, 53.008675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005315, 0.402976, 0.915195,
		0.474409, 0.806675, -0.352438,
		-0.880289, 0.432304, -0.195463,
		40.930134, 44.481895, 52.950035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560501, 44.902733, 53.310413>,  <41.546337, 44.179283, 53.086861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560501, 44.902733, 53.310413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.165871, 44.839909, 53.292519>,  <40.929092, 44.802212, 53.281780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.165871, 44.839909, 53.292519>,  <41.560501, 44.902733, 53.310413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165871, 44.839909, 53.292519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114307, 0.468457, 0.876060,
		-0.116638, 0.869413, -0.480122,
		-0.986575, -0.157063, -0.044740,
		40.869900, 44.792789, 53.279099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197464, 45.513657, 53.441704>,  <41.560501, 44.902733, 53.310413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197464, 45.513657, 53.441704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931046, 45.224670, 53.515915>,  <40.771194, 45.051277, 53.560440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931046, 45.224670, 53.515915>,  <41.197464, 45.513657, 53.441704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931046, 45.224670, 53.515915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226787, 0.433089, 0.872354,
		-0.710598, 0.538955, -0.452304,
		-0.666047, -0.722470, 0.185524,
		40.731232, 45.007931, 53.571571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686867, 45.816235, 53.908436>,  <41.197464, 45.513657, 53.441704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686867, 45.816235, 53.908436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592857, 45.428421, 53.936081>,  <40.536453, 45.195732, 53.952667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.592857, 45.428421, 53.936081>,  <40.686867, 45.816235, 53.908436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592857, 45.428421, 53.936081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177457, 0.112712, 0.977653,
		-0.955654, 0.217503, -0.198540,
		-0.235020, -0.969530, 0.069116,
		40.522350, 45.137562, 53.956818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106972, 45.851696, 54.360874>,  <40.686867, 45.816235, 53.908436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106972, 45.851696, 54.360874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246758, 45.477715, 54.385334>,  <40.330627, 45.253326, 54.400009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246758, 45.477715, 54.385334>,  <40.106972, 45.851696, 54.360874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246758, 45.477715, 54.385334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196458, -0.009309, 0.980468,
		-0.916121, -0.354652, -0.186932,
		0.349465, -0.934952, 0.061146,
		40.351597, 45.197227, 54.403679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760860, 45.612106, 54.923904>,  <40.106972, 45.851696, 54.360874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760860, 45.612106, 54.923904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040382, 45.332405, 54.863617>,  <40.208096, 45.164585, 54.827446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040382, 45.332405, 54.863617>,  <39.760860, 45.612106, 54.923904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040382, 45.332405, 54.863617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109269, -0.312577, 0.943587,
		-0.706917, -0.642915, -0.294837,
		0.698806, -0.699254, -0.150715,
		40.250023, 45.122627, 54.818401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556389, 44.900131, 55.087143>,  <39.760860, 45.612106, 54.923904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556389, 44.900131, 55.087143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952301, 44.938839, 55.129051>,  <40.189846, 44.962063, 55.154194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.952301, 44.938839, 55.129051>,  <39.556389, 44.900131, 55.087143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952301, 44.938839, 55.129051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090193, -0.144333, 0.985410,
		0.110483, -0.984786, -0.134129,
		0.989777, 0.096774, 0.104767,
		40.249233, 44.967873, 55.160480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722141, 44.550655, 55.681973>,  <39.556389, 44.900131, 55.087143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722141, 44.550655, 55.681973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023483, 44.811363, 55.646988>,  <40.204288, 44.967789, 55.625999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.023483, 44.811363, 55.646988>,  <39.722141, 44.550655, 55.681973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023483, 44.811363, 55.646988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089701, 0.029903, 0.995520,
		0.651462, -0.757829, -0.035937,
		0.753359, 0.651767, -0.087459,
		40.249493, 45.006893, 55.620750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169598, 44.252144, 56.121635>,  <39.722141, 44.550655, 55.681973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169598, 44.252144, 56.121635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285530, 44.632526, 56.078400>,  <40.355091, 44.860756, 56.052460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285530, 44.632526, 56.078400>,  <40.169598, 44.252144, 56.121635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285530, 44.632526, 56.078400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118967, 0.076262, 0.989965,
		0.949654, -0.299785, -0.091029,
		0.289835, 0.950954, -0.108087,
		40.372482, 44.917812, 56.045975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811638, 44.385448, 56.393341>,  <40.169598, 44.252144, 56.121635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811638, 44.385448, 56.393341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623657, 44.738213, 56.408192>,  <40.510868, 44.949871, 56.417103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.623657, 44.738213, 56.408192>,  <40.811638, 44.385448, 56.393341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623657, 44.738213, 56.408192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142462, 0.034267, 0.989207,
		0.871120, 0.470169, -0.141743,
		-0.469952, 0.881911, 0.037130,
		40.482670, 45.002785, 56.419331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232769, 44.800774, 56.830559>,  <40.811638, 44.385448, 56.393341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232769, 44.800774, 56.830559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988495, 45.114204, 56.784821>,  <40.841930, 45.302261, 56.757378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.988495, 45.114204, 56.784821>,  <41.232769, 44.800774, 56.830559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988495, 45.114204, 56.784821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177593, 0.276238, 0.944539,
		0.771702, 0.556509, -0.307852,
		-0.610685, 0.783575, -0.114341,
		40.805290, 45.349277, 56.750519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663975, 45.425808, 57.027161>,  <41.232769, 44.800774, 56.830559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663975, 45.425808, 57.027161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.267784, 45.474964, 57.051964>,  <41.030067, 45.504459, 57.066845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.267784, 45.474964, 57.051964>,  <41.663975, 45.425808, 57.027161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267784, 45.474964, 57.051964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095435, 0.288421, 0.952736,
		0.099199, 0.949585, -0.297403,
		-0.990481, 0.122893, 0.062012,
		40.970638, 45.511833, 57.070568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580826, 46.118332, 57.231075>,  <41.663975, 45.425808, 57.027161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580826, 46.118332, 57.231075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265739, 45.887321, 57.316833>,  <41.076687, 45.748714, 57.368290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.265739, 45.887321, 57.316833>,  <41.580826, 46.118332, 57.231075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265739, 45.887321, 57.316833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010337, 0.360370, 0.932752,
		-0.615955, 0.732525, -0.289838,
		-0.787713, -0.577530, 0.214399,
		41.029427, 45.714062, 57.381153>
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
