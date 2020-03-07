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
	<36.185085, 52.209770, 50.468193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114399, 52.387978, 50.117130>,  <36.071987, 52.494900, 49.906490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114399, 52.387978, 50.117130>,  <36.185085, 52.209770, 50.468193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114399, 52.387978, 50.117130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889615, 0.453826, 0.051248,
		0.421138, -0.771725, -0.476534,
		-0.176714, 0.445514, -0.877661,
		36.061386, 52.521633, 49.853832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573528, 51.970638, 49.911930>,  <36.185085, 52.209770, 50.468193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573528, 51.970638, 49.911930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489807, 52.348774, 49.811913>,  <36.439575, 52.575657, 49.751904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489807, 52.348774, 49.811913>,  <36.573528, 51.970638, 49.911930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489807, 52.348774, 49.811913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967823, 0.163737, -0.191073,
		-0.139688, -0.281990, -0.949194,
		-0.209298, 0.945342, -0.250044,
		36.427017, 52.632378, 49.736900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701458, 52.135441, 49.181969>,  <36.573528, 51.970638, 49.911930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701458, 52.135441, 49.181969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771755, 52.430683, 49.442524>,  <36.813934, 52.607830, 49.598858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771755, 52.430683, 49.442524>,  <36.701458, 52.135441, 49.181969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771755, 52.430683, 49.442524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903940, 0.141064, -0.403726,
		-0.389881, 0.659769, -0.642416,
		0.175744, 0.738110, 0.651389,
		36.824478, 52.652115, 49.637939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373508, 52.426987, 48.846432>,  <36.701458, 52.135441, 49.181969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373508, 52.426987, 48.846432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619652, 52.564568, 48.562733>,  <37.767338, 52.647118, 48.392513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619652, 52.564568, 48.562733>,  <37.373508, 52.426987, 48.846432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619652, 52.564568, 48.562733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713872, -0.624715, 0.316415,
		-0.334242, -0.701018, -0.629965,
		0.615361, 0.343955, -0.709243,
		37.804260, 52.667755, 48.349960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742233, 51.863731, 48.428680>,  <37.373508, 52.426987, 48.846432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742233, 51.863731, 48.428680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952518, 52.203808, 48.439953>,  <38.078690, 52.407852, 48.446716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952518, 52.203808, 48.439953>,  <37.742233, 51.863731, 48.428680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952518, 52.203808, 48.439953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798794, -0.504783, 0.327295,
		0.292487, -0.149556, -0.944502,
		0.525718, 0.850192, 0.028178,
		38.110233, 52.458866, 48.448406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454567, 51.977646, 48.035961>,  <37.742233, 51.863731, 48.428680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454567, 51.977646, 48.035961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433880, 52.138897, 48.401436>,  <38.421467, 52.235645, 48.620720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433880, 52.138897, 48.401436>,  <38.454567, 51.977646, 48.035961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433880, 52.138897, 48.401436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698592, -0.639194, 0.321558,
		0.713649, 0.654921, -0.248563,
		-0.051715, 0.403123, 0.913683,
		38.418365, 52.259834, 48.675541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037308, 52.409283, 48.311119>,  <38.454567, 51.977646, 48.035961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037308, 52.409283, 48.311119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813576, 52.182034, 48.552578>,  <38.679337, 52.045685, 48.697453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813576, 52.182034, 48.552578>,  <39.037308, 52.409283, 48.311119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813576, 52.182034, 48.552578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790742, -0.584199, 0.182863,
		0.248760, 0.579607, 0.775998,
		-0.559326, -0.568125, 0.603645,
		38.645779, 52.011597, 48.733673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757275, 52.745014, 48.817276>,  <39.037308, 52.409283, 48.311119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757275, 52.745014, 48.817276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692669, 52.868710, 48.442410>,  <38.653908, 52.942924, 48.217487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692669, 52.868710, 48.442410>,  <38.757275, 52.745014, 48.817276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692669, 52.868710, 48.442410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526496, 0.830203, 0.183205,
		0.834695, -0.463827, -0.296898,
		-0.161510, 0.309236, -0.937170,
		38.644215, 52.961479, 48.161259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816521, 53.463757, 48.919571>,  <38.757275, 52.745014, 48.817276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816521, 53.463757, 48.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084015, 53.573257, 48.643066>,  <39.244511, 53.638958, 48.477161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084015, 53.573257, 48.643066>,  <38.816521, 53.463757, 48.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084015, 53.573257, 48.643066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666298, 0.191886, 0.720574,
		0.329906, -0.942464, -0.054082,
		0.668737, 0.273756, -0.691266,
		39.284637, 53.655384, 48.435688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483219, 53.131458, 48.995876>,  <38.816521, 53.463757, 48.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483219, 53.131458, 48.995876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578007, 53.450294, 48.773705>,  <39.634880, 53.641594, 48.640400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578007, 53.450294, 48.773705>,  <39.483219, 53.131458, 48.995876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578007, 53.450294, 48.773705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648938, 0.295600, 0.701071,
		0.722998, -0.526568, -0.447213,
		0.236965, 0.797087, -0.555428,
		39.649097, 53.689419, 48.607075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208252, 53.219902, 48.933083>,  <39.483219, 53.131458, 48.995876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208252, 53.219902, 48.933083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071239, 53.587440, 48.854698>,  <39.989033, 53.807964, 48.807667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071239, 53.587440, 48.854698>,  <40.208252, 53.219902, 48.933083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071239, 53.587440, 48.854698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540604, 0.363350, 0.758764,
		0.768388, 0.153962, -0.621189,
		-0.342529, 0.918843, -0.195961,
		39.968479, 53.863094, 48.795910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751385, 53.668747, 48.927750>,  <40.208252, 53.219902, 48.933083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751385, 53.668747, 48.927750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432846, 53.905109, 48.979385>,  <40.241722, 54.046928, 49.010368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432846, 53.905109, 48.979385>,  <40.751385, 53.668747, 48.927750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432846, 53.905109, 48.979385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492256, 0.509160, 0.706003,
		0.351454, 0.625767, -0.696344,
		-0.796344, 0.590907, 0.129091,
		40.193943, 54.082382, 49.018112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756203, 54.408298, 48.746460>,  <40.751385, 53.668747, 48.927750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756203, 54.408298, 48.746460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488754, 54.346550, 49.037422>,  <40.328285, 54.309502, 49.211998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488754, 54.346550, 49.037422>,  <40.756203, 54.408298, 48.746460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488754, 54.346550, 49.037422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643811, 0.369318, 0.670158,
		-0.372100, 0.916391, -0.147544,
		-0.668617, -0.154376, 0.727406,
		40.288170, 54.300236, 49.255646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767727, 55.036400, 49.242054>,  <40.756203, 54.408298, 48.746460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767727, 55.036400, 49.242054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680794, 54.677002, 49.394615>,  <40.628635, 54.461361, 49.486153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680794, 54.677002, 49.394615>,  <40.767727, 55.036400, 49.242054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680794, 54.677002, 49.394615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669065, 0.147379, 0.728444,
		-0.710717, 0.413496, 0.569124,
		-0.217332, -0.898499, 0.381400,
		40.615593, 54.407452, 49.509037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471546, 55.176491, 49.844711>,  <40.767727, 55.036400, 49.242054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471546, 55.176491, 49.844711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650681, 54.820194, 49.875744>,  <40.758160, 54.606415, 49.894363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650681, 54.820194, 49.875744>,  <40.471546, 55.176491, 49.844711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650681, 54.820194, 49.875744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556607, 0.345645, 0.755459,
		-0.699737, -0.295138, 0.650586,
		0.447836, -0.890743, 0.077585,
		40.785030, 54.552971, 49.899021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494434, 55.000187, 50.612747>,  <40.471546, 55.176491, 49.844711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494434, 55.000187, 50.612747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772934, 54.769081, 50.442375>,  <40.940033, 54.630417, 50.340153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772934, 54.769081, 50.442375>,  <40.494434, 55.000187, 50.612747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772934, 54.769081, 50.442375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686309, 0.362016, 0.630812,
		-0.210267, -0.731526, 0.648581,
		0.696253, -0.577766, -0.425933,
		40.981812, 54.595753, 50.314594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961449, 54.638538, 51.157913>,  <40.494434, 55.000187, 50.612747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961449, 54.638538, 51.157913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105686, 54.740459, 50.799015>,  <41.192230, 54.801613, 50.583675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105686, 54.740459, 50.799015>,  <40.961449, 54.638538, 51.157913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105686, 54.740459, 50.799015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717103, 0.539396, 0.441378,
		0.596435, -0.802575, 0.011782,
		0.360594, 0.254805, -0.897244,
		41.213863, 54.816902, 50.529842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705360, 54.478855, 50.908180>,  <40.961449, 54.638538, 51.157913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705360, 54.478855, 50.908180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581009, 54.824741, 50.750389>,  <41.506397, 55.032272, 50.655712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581009, 54.824741, 50.750389>,  <41.705360, 54.478855, 50.908180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581009, 54.824741, 50.750389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879933, 0.418737, 0.224448,
		0.359269, -0.277342, -0.891071,
		-0.310876, 0.864720, -0.394482,
		41.487747, 55.084156, 50.632046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191605, 54.741264, 50.331882>,  <41.705360, 54.478855, 50.908180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191605, 54.741264, 50.331882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990086, 55.057137, 50.471931>,  <41.869175, 55.246662, 50.555962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990086, 55.057137, 50.471931>,  <42.191605, 54.741264, 50.331882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990086, 55.057137, 50.471931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858066, 0.504198, 0.097503,
		-0.099533, 0.349547, -0.931617,
		-0.503801, 0.789684, 0.350119,
		41.838943, 55.294041, 50.576965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416058, 55.334713, 49.962814>,  <42.191605, 54.741264, 50.331882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416058, 55.334713, 49.962814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261738, 55.462238, 50.309113>,  <42.169147, 55.538754, 50.516891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261738, 55.462238, 50.309113>,  <42.416058, 55.334713, 49.962814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261738, 55.462238, 50.309113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891500, 0.370361, 0.260885,
		-0.237465, 0.872462, -0.427107,
		-0.385797, 0.318815, 0.865747,
		42.146000, 55.557884, 50.568836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617107, 56.042397, 50.021973>,  <42.416058, 55.334713, 49.962814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617107, 56.042397, 50.021973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560291, 55.934162, 50.402836>,  <42.526203, 55.869221, 50.631355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560291, 55.934162, 50.402836>,  <42.617107, 56.042397, 50.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560291, 55.934162, 50.402836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771306, 0.572642, 0.277792,
		-0.620413, 0.773864, 0.127365,
		-0.142039, -0.270583, 0.952161,
		42.517681, 55.852989, 50.688484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625122, 56.616009, 50.527946>,  <42.617107, 56.042397, 50.021973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625122, 56.616009, 50.527946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734112, 56.298313, 50.745178>,  <42.799503, 56.107697, 50.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734112, 56.298313, 50.745178>,  <42.625122, 56.616009, 50.527946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734112, 56.298313, 50.745178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886557, 0.426567, 0.179044,
		-0.373866, 0.432690, 0.820368,
		0.272471, -0.794242, 0.543083,
		42.815853, 56.060040, 50.908104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935257, 56.874153, 51.202610>,  <42.625122, 56.616009, 50.527946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935257, 56.874153, 51.202610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089954, 56.522022, 51.092735>,  <43.182774, 56.310745, 51.026810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.089954, 56.522022, 51.092735>,  <42.935257, 56.874153, 51.202610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089954, 56.522022, 51.092735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922185, 0.368946, 0.115988,
		-0.000764, -0.298167, 0.954514,
		0.386748, -0.880327, -0.274683,
		43.205978, 56.257923, 51.010330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577385, 56.869339, 51.523876>,  <42.935257, 56.874153, 51.202610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577385, 56.869339, 51.523876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604160, 56.604290, 51.225494>,  <43.620228, 56.445259, 51.046467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604160, 56.604290, 51.225494>,  <43.577385, 56.869339, 51.523876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604160, 56.604290, 51.225494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960664, 0.244762, -0.131209,
		0.269524, -0.707828, 0.652944,
		0.066943, -0.662624, -0.745954,
		43.624245, 56.405502, 51.001709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.122005, 56.416058, 51.696014>,  <43.577385, 56.869339, 51.523876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.122005, 56.416058, 51.696014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094257, 56.483055, 51.302643>,  <44.077606, 56.523254, 51.066620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094257, 56.483055, 51.302643>,  <44.122005, 56.416058, 51.696014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094257, 56.483055, 51.302643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954927, 0.296359, -0.016889,
		0.288619, -0.940275, -0.180502,
		-0.069374, 0.167492, -0.983430,
		44.073444, 56.533302, 51.007614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860172, 56.405495, 51.601227>,  <44.122005, 56.416058, 51.696014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860172, 56.405495, 51.601227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674320, 56.550198, 51.277931>,  <44.562809, 56.637020, 51.083954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.674320, 56.550198, 51.277931>,  <44.860172, 56.405495, 51.601227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674320, 56.550198, 51.277931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874729, 0.329474, -0.355381,
		0.137733, -0.872111, -0.469523,
		-0.464627, 0.361758, -0.808241,
		44.534931, 56.658726, 51.035458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.008366, 56.051994, 50.893982>,  <44.860172, 56.405495, 51.601227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.008366, 56.051994, 50.893982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940563, 56.443016, 50.843933>,  <44.899879, 56.677628, 50.813904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940563, 56.443016, 50.843933>,  <45.008366, 56.051994, 50.893982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940563, 56.443016, 50.843933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889493, 0.097090, -0.446516,
		-0.424345, -0.186981, -0.885985,
		-0.169511, 0.977554, -0.125119,
		44.889709, 56.736282, 50.806396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196251, 56.317154, 50.202816>,  <45.008366, 56.051994, 50.893982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196251, 56.317154, 50.202816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235081, 56.623425, 50.457161>,  <45.258377, 56.807186, 50.609768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235081, 56.623425, 50.457161>,  <45.196251, 56.317154, 50.202816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235081, 56.623425, 50.457161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980096, 0.037624, -0.194927,
		-0.173174, 0.642125, -0.746783,
		0.097071, 0.765676, 0.635860,
		45.264202, 56.853127, 50.647919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.578392, 56.878246, 49.993652>,  <45.196251, 56.317154, 50.202816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.578392, 56.878246, 49.993652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665001, 56.875862, 50.384155>,  <45.716965, 56.874432, 50.618458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.665001, 56.875862, 50.384155>,  <45.578392, 56.878246, 49.993652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665001, 56.875862, 50.384155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959889, -0.181158, -0.213998,
		0.178133, 0.983436, -0.033502,
		0.216523, -0.005962, 0.976259,
		45.729958, 56.874073, 50.677032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000904, 57.399731, 50.195072>,  <45.578392, 56.878246, 49.993652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000904, 57.399731, 50.195072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041821, 57.068111, 50.414970>,  <46.066372, 56.869141, 50.546909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.041821, 57.068111, 50.414970>,  <46.000904, 57.399731, 50.195072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.041821, 57.068111, 50.414970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970931, -0.037013, -0.236480,
		0.216400, 0.557955, 0.801160,
		0.102292, -0.829045, 0.549746,
		46.072510, 56.819397, 50.579895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483269, 57.481632, 50.743965>,  <46.000904, 57.399731, 50.195072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483269, 57.481632, 50.743965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482822, 57.100929, 50.621227>,  <46.482555, 56.872505, 50.547585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.482822, 57.100929, 50.621227>,  <46.483269, 57.481632, 50.743965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.482822, 57.100929, 50.621227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924977, 0.115625, -0.362007,
		0.380022, -0.284226, 0.880226,
		-0.001116, -0.951760, -0.306843,
		46.482487, 56.815403, 50.529175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250874, 57.488205, 50.687595>,  <46.483269, 57.481632, 50.743965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250874, 57.488205, 50.687595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099304, 57.748425, 50.950871>,  <47.008362, 57.904556, 51.108833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.099304, 57.748425, 50.950871>,  <47.250874, 57.488205, 50.687595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.099304, 57.748425, 50.950871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609174, -0.710742, 0.351787,
		0.696652, -0.267647, 0.665613,
		-0.378924, 0.650547, 0.658183,
		46.985626, 57.943588, 51.148327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.919559, 57.681038, 50.858402>,  <47.250874, 57.488205, 50.687595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.919559, 57.681038, 50.858402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.854717, 57.955860, 51.141716>,  <47.815811, 58.120754, 51.311707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.854717, 57.955860, 51.141716>,  <47.919559, 57.681038, 50.858402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.854717, 57.955860, 51.141716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459081, 0.687883, -0.562193,
		-0.873479, 0.234026, -0.426927,
		-0.162108, 0.687058, 0.708288,
		47.806084, 58.161976, 51.354202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624809, 58.291737, 50.506668>,  <47.919559, 57.681038, 50.858402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624809, 58.291737, 50.506668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798401, 58.399475, 50.850555>,  <47.902557, 58.464119, 51.056889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798401, 58.399475, 50.850555>,  <47.624809, 58.291737, 50.506668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798401, 58.399475, 50.850555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353679, 0.826720, -0.437545,
		-0.828595, 0.493951, 0.263521,
		0.433983, 0.269346, 0.859716,
		47.928596, 58.480278, 51.108471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373306, 58.930027, 50.743206>,  <47.624809, 58.291737, 50.506668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373306, 58.930027, 50.743206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751171, 58.890205, 50.868240>,  <47.977890, 58.866314, 50.943260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.751171, 58.890205, 50.868240>,  <47.373306, 58.930027, 50.743206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.751171, 58.890205, 50.868240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188099, 0.945029, -0.267467,
		-0.268776, 0.311462, 0.911455,
		0.944658, -0.099555, 0.312587,
		48.034569, 58.860340, 50.962017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.696453, 59.350742, 51.334541>,  <47.373306, 58.930027, 50.743206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.696453, 59.350742, 51.334541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010620, 59.290565, 51.094379>,  <48.199120, 59.254459, 50.950283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.010620, 59.290565, 51.094379>,  <47.696453, 59.350742, 51.334541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.010620, 59.290565, 51.094379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082934, 0.986843, -0.138790,
		0.613384, 0.059214, 0.787562,
		0.785419, -0.150447, -0.600403,
		48.246246, 59.245430, 50.914257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.224892, 59.804096, 51.501183>,  <47.696453, 59.350742, 51.334541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.224892, 59.804096, 51.501183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.275249, 59.711174, 51.115398>,  <48.305466, 59.655422, 50.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.275249, 59.711174, 51.115398>,  <48.224892, 59.804096, 51.501183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.275249, 59.711174, 51.115398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103456, 0.963821, -0.245656,
		0.986634, 0.130706, 0.097309,
		0.125897, -0.232306, -0.964460,
		48.313019, 59.641483, 50.826061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.780880, 60.256298, 51.238148>,  <48.224892, 59.804096, 51.501183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.780880, 60.256298, 51.238148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.553406, 60.146606, 50.927948>,  <48.416920, 60.080791, 50.741829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.553406, 60.146606, 50.927948>,  <48.780880, 60.256298, 51.238148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.553406, 60.146606, 50.927948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075366, 0.956197, -0.282854,
		0.819095, -0.102409, -0.564443,
		-0.568686, -0.274225, -0.775498,
		48.382801, 60.064339, 50.695297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.845978, 60.585762, 51.816303>,  <48.780880, 60.256298, 51.238148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.845978, 60.585762, 51.816303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.188530, 60.475288, 51.990814>,  <49.394062, 60.409004, 52.095520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.188530, 60.475288, 51.990814>,  <48.845978, 60.585762, 51.816303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.188530, 60.475288, 51.990814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391520, 0.203552, 0.897373,
		-0.336645, -0.939303, 0.066186,
		0.856377, -0.276183, 0.436280,
		49.445442, 60.392433, 52.121696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.819008, 61.237587, 51.841110>,  <48.845978, 60.585762, 51.816303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.819008, 61.237587, 51.841110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.506462, 61.236893, 52.090736>,  <48.318935, 61.236477, 52.240513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.506462, 61.236893, 52.090736>,  <48.819008, 61.237587, 51.841110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.506462, 61.236893, 52.090736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598151, 0.283130, 0.749701,
		-0.177991, 0.959080, -0.220193,
		-0.781367, -0.001732, 0.624070,
		48.272053, 61.236374, 52.277958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.698669, 61.849236, 52.111088>,  <48.819008, 61.237587, 51.841110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.698669, 61.849236, 52.111088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.582390, 61.584286, 52.387276>,  <48.512623, 61.425316, 52.552990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.582390, 61.584286, 52.387276>,  <48.698669, 61.849236, 52.111088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.582390, 61.584286, 52.387276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776973, 0.257730, 0.574359,
		-0.558397, 0.703443, 0.439727,
		-0.290698, -0.662377, 0.690472,
		48.495182, 61.385574, 52.594418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.611423, 62.152477, 52.773518>,  <48.698669, 61.849236, 52.111088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.611423, 62.152477, 52.773518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.688763, 61.770126, 52.861977>,  <48.735168, 61.540714, 52.915051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.688763, 61.770126, 52.861977>,  <48.611423, 62.152477, 52.773518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.688763, 61.770126, 52.861977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784889, 0.285943, 0.549714,
		-0.588697, 0.067287, 0.805548,
		0.193352, -0.955881, 0.221147,
		48.746769, 61.483360, 52.928322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.711040, 62.174660, 53.466213>,  <48.611423, 62.152477, 52.773518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.711040, 62.174660, 53.466213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.902550, 61.877167, 53.279602>,  <49.017456, 61.698673, 53.167637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.902550, 61.877167, 53.279602>,  <48.711040, 62.174660, 53.466213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.902550, 61.877167, 53.279602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859723, 0.289472, 0.420812,
		-0.177923, -0.602556, 0.777991,
		0.478769, -0.743729, -0.466527,
		49.046181, 61.654049, 53.139645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.984661, 61.498791, 53.788059>,  <48.711040, 62.174660, 53.466213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.984661, 61.498791, 53.788059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.067318, 61.557419, 54.175011>,  <49.116913, 61.592594, 54.407181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.067318, 61.557419, 54.175011>,  <48.984661, 61.498791, 53.788059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.067318, 61.557419, 54.175011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714133, -0.698449, -0.046724,
		0.668815, 0.700491, -0.248998,
		0.206642, 0.146568, 0.967376,
		49.129311, 61.601391, 54.465225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.617702, 61.807941, 53.844463>,  <48.984661, 61.498791, 53.788059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.617702, 61.807941, 53.844463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.526566, 61.580025, 54.160294>,  <49.471882, 61.443275, 54.349792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.526566, 61.580025, 54.160294>,  <49.617702, 61.807941, 53.844463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.526566, 61.580025, 54.160294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781654, -0.590567, -0.200621,
		0.580607, 0.571461, 0.579938,
		-0.227845, -0.569793, 0.789571,
		49.458214, 61.409088, 54.397163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.185055, 61.753540, 54.256844>,  <49.617702, 61.807941, 53.844463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.185055, 61.753540, 54.256844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.944141, 61.434269, 54.261871>,  <49.799591, 61.242706, 54.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.944141, 61.434269, 54.261871>,  <50.185055, 61.753540, 54.256844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.944141, 61.434269, 54.261871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771549, -0.586086, -0.247417,
		0.204848, -0.139321, 0.968828,
		-0.602287, -0.798181, 0.012565,
		49.763454, 61.194813, 54.265640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.323879, 61.304058, 54.875755>,  <50.185055, 61.753540, 54.256844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.323879, 61.304058, 54.875755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.201321, 61.141495, 54.531441>,  <50.127785, 61.043957, 54.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.201321, 61.141495, 54.531441>,  <50.323879, 61.304058, 54.875755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.201321, 61.141495, 54.531441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802121, -0.597150, -0.003582,
		-0.512563, -0.691552, 0.508956,
		-0.306400, -0.406408, -0.860785,
		50.109402, 61.019573, 54.273205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.268166, 60.508434, 54.908699>,  <50.323879, 61.304058, 54.875755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.268166, 60.508434, 54.908699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.337570, 60.644920, 54.539165>,  <50.379211, 60.726810, 54.317444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.337570, 60.644920, 54.539165>,  <50.268166, 60.508434, 54.908699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.337570, 60.644920, 54.539165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765037, -0.637418, -0.091741,
		-0.620171, -0.690849, -0.371639,
		0.173510, 0.341213, -0.923833,
		50.389622, 60.747284, 54.262016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.291931, 59.802433, 54.495972>,  <50.268166, 60.508434, 54.908699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.291931, 59.802433, 54.495972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.507565, 60.114994, 54.370247>,  <50.636944, 60.302532, 54.294811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.507565, 60.114994, 54.370247>,  <50.291931, 59.802433, 54.495972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.507565, 60.114994, 54.370247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817521, -0.575223, -0.027904,
		-0.202605, -0.241916, -0.948909,
		0.539083, 0.781406, -0.314314,
		50.669289, 60.349415, 54.275951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.614738, 59.573135, 53.924419>,  <50.291931, 59.802433, 54.495972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.614738, 59.573135, 53.924419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.822418, 59.878761, 54.077591>,  <50.947025, 60.062138, 54.169495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.822418, 59.878761, 54.077591>,  <50.614738, 59.573135, 53.924419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.822418, 59.878761, 54.077591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844494, -0.527526, -0.092443,
		0.131375, 0.371381, -0.919139,
		0.519201, 0.764063, 0.382933,
		50.978180, 60.107979, 54.192471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.161911, 59.168358, 53.878307>,  <50.614738, 59.573135, 53.924419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.161911, 59.168358, 53.878307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.271328, 59.049744, 54.244312>,  <51.336979, 58.978577, 54.463913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.271328, 59.049744, 54.244312>,  <51.161911, 59.168358, 53.878307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.271328, 59.049744, 54.244312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937266, -0.131573, -0.322832,
		0.216121, 0.945915, 0.241941,
		0.273538, -0.296534, 0.915010,
		51.353390, 58.960785, 54.518814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.733894, 59.670246, 54.224464>,  <51.161911, 59.168358, 53.878307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.733894, 59.670246, 54.224464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.745365, 59.296753, 54.367195>,  <51.752247, 59.072659, 54.452835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.745365, 59.296753, 54.367195>,  <51.733894, 59.670246, 54.224464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.745365, 59.296753, 54.367195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958951, -0.075055, -0.273459,
		0.282118, 0.350025, 0.893248,
		0.028675, -0.933729, 0.356831,
		51.753967, 59.016636, 54.474243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.364079, 59.511005, 54.647953>,  <51.733894, 59.670246, 54.224464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.364079, 59.511005, 54.647953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.265022, 59.172630, 54.459034>,  <52.205589, 58.969604, 54.345680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.265022, 59.172630, 54.459034>,  <52.364079, 59.511005, 54.647953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.265022, 59.172630, 54.459034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952295, -0.122785, -0.279388,
		0.178353, -0.518956, 0.835987,
		-0.247637, -0.845936, -0.472300,
		52.190731, 58.918850, 54.317345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.743687, 58.897068, 54.876846>,  <52.364079, 59.511005, 54.647953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.743687, 58.897068, 54.876846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.633129, 58.873814, 54.493134>,  <52.566795, 58.859859, 54.262905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.633129, 58.873814, 54.493134>,  <52.743687, 58.897068, 54.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.633129, 58.873814, 54.493134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912397, -0.329427, -0.242921,
		-0.301890, -0.942389, 0.144099,
		-0.276396, -0.058140, -0.959283,
		52.550209, 58.856373, 54.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.084084, 58.250866, 54.579765>,  <52.743687, 58.897068, 54.876846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.084084, 58.250866, 54.579765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004894, 58.497410, 54.274895>,  <52.957382, 58.645336, 54.091972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.004894, 58.497410, 54.274895>,  <53.084084, 58.250866, 54.579765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.004894, 58.497410, 54.274895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867723, -0.251466, -0.428745,
		-0.455922, -0.746233, -0.485048,
		-0.197971, 0.616361, -0.762172,
		52.945503, 58.682320, 54.046242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.219051, 57.846233, 53.973877>,  <53.084084, 58.250866, 54.579765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.219051, 57.846233, 53.973877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.253597, 58.240601, 53.916599>,  <53.274323, 58.477222, 53.882233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.253597, 58.240601, 53.916599>,  <53.219051, 57.846233, 53.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.253597, 58.240601, 53.916599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783502, -0.155988, -0.601491,
		-0.615358, -0.060244, -0.785942,
		0.086361, 0.985920, -0.143189,
		53.279507, 58.536377, 53.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.580894, 57.965378, 53.431919>,  <53.219051, 57.846233, 53.973877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.580894, 57.965378, 53.431919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.645706, 58.347420, 53.531136>,  <53.684593, 58.576645, 53.590664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.645706, 58.347420, 53.531136>,  <53.580894, 57.965378, 53.431919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.645706, 58.347420, 53.531136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636614, 0.090885, -0.765808,
		-0.753969, 0.281988, -0.593307,
		0.162026, 0.955104, 0.248042,
		53.694313, 58.633949, 53.605549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.068981, 57.290573, 53.479382>,  <53.580894, 57.965378, 53.431919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.068981, 57.290573, 53.479382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460655, 57.293686, 53.560501>,  <54.695660, 57.295555, 53.609173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.460655, 57.293686, 53.560501>,  <54.068981, 57.290573, 53.479382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.460655, 57.293686, 53.560501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110822, -0.816628, 0.566425,
		0.170020, -0.577112, -0.798771,
		0.979189, 0.007782, 0.202800,
		54.754414, 57.296021, 53.621342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.312881, 56.553505, 53.398857>,  <54.068981, 57.290573, 53.479382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.312881, 56.553505, 53.398857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.542648, 56.760078, 53.652893>,  <54.680508, 56.884022, 53.805317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.542648, 56.760078, 53.652893>,  <54.312881, 56.553505, 53.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.542648, 56.760078, 53.652893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077611, -0.738007, 0.670315,
		0.814878, -0.434328, -0.383840,
		0.574413, 0.516435, 0.635094,
		54.714973, 56.915009, 53.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.992485, 56.214039, 53.609325>,  <54.312881, 56.553505, 53.398857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.992485, 56.214039, 53.609325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784492, 56.421909, 53.880486>,  <54.659695, 56.546631, 54.043182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.784492, 56.421909, 53.880486>,  <54.992485, 56.214039, 53.609325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.784492, 56.421909, 53.880486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125701, -0.738438, 0.662502,
		0.844875, 0.429704, 0.318653,
		-0.519985, 0.519677, 0.677902,
		54.628498, 56.577812, 54.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.404621, 56.335468, 54.322365>,  <54.992485, 56.214039, 53.609325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.404621, 56.335468, 54.322365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.010017, 56.289974, 54.369446>,  <54.773254, 56.262676, 54.397694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.010017, 56.289974, 54.369446>,  <55.404621, 56.335468, 54.322365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.010017, 56.289974, 54.369446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163664, -0.694603, 0.700528,
		0.002080, 0.710345, 0.703851,
		-0.986514, -0.113738, 0.117703,
		54.714062, 56.255852, 54.404758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.037205, 55.862740, 54.218632>,  <55.404621, 56.335468, 54.322365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.037205, 55.862740, 54.218632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.203499, 56.207939, 54.103817>,  <56.303276, 56.415058, 54.034927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.203499, 56.207939, 54.103817>,  <56.037205, 55.862740, 54.218632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.203499, 56.207939, 54.103817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444171, 0.468064, 0.763956,
		0.793648, -0.190110, 0.577911,
		0.415734, 0.863003, -0.287037,
		56.328220, 56.466839, 54.017708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.531887, 56.154186, 54.648178>,  <56.037205, 55.862740, 54.218632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.531887, 56.154186, 54.648178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.333122, 56.436325, 54.445969>,  <56.213863, 56.605610, 54.324642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.333122, 56.436325, 54.445969>,  <56.531887, 56.154186, 54.648178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.333122, 56.436325, 54.445969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460982, 0.279000, 0.842410,
		0.735234, 0.651647, 0.186513,
		-0.496917, 0.705347, -0.505528,
		56.184048, 56.647930, 54.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.123684, 56.166557, 54.363869>,  <56.531887, 56.154186, 54.648178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.123684, 56.166557, 54.363869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.081573, 56.382652, 54.029907>,  <57.056309, 56.512310, 53.829533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.081573, 56.382652, 54.029907>,  <57.123684, 56.166557, 54.363869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.081573, 56.382652, 54.029907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118495, 0.826768, 0.549921,
		0.987358, 0.156824, -0.023022,
		-0.105275, 0.540241, -0.834899,
		57.049992, 56.544724, 53.779438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.899864, 56.417400, 54.539742>,  <57.123684, 56.166557, 54.363869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.899864, 56.417400, 54.539742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.089005, 56.736786, 54.688805>,  <58.202488, 56.928417, 54.778244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.089005, 56.736786, 54.688805>,  <57.899864, 56.417400, 54.539742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.089005, 56.736786, 54.688805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858683, -0.512439, 0.008417,
		0.197687, 0.316017, -0.927929,
		0.472847, 0.798461, 0.372661,
		58.230858, 56.976326, 54.800602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.500149, 56.372646, 54.107925>,  <57.899864, 56.417400, 54.539742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.500149, 56.372646, 54.107925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579109, 56.584023, 54.438206>,  <58.626484, 56.710850, 54.636375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.579109, 56.584023, 54.438206>,  <58.500149, 56.372646, 54.107925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.579109, 56.584023, 54.438206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908759, -0.414545, 0.048051,
		0.367683, 0.740881, -0.562054,
		0.197397, 0.528439, 0.825704,
		58.638329, 56.742554, 54.685917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.204990, 56.778080, 53.987885>,  <58.500149, 56.372646, 54.107925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.204990, 56.778080, 53.987885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.146339, 56.695393, 54.374825>,  <59.111149, 56.645782, 54.606987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.146339, 56.695393, 54.374825>,  <59.204990, 56.778080, 53.987885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.146339, 56.695393, 54.374825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860976, -0.508173, 0.021915,
		0.487052, 0.836080, 0.252489,
		-0.146631, -0.206714, 0.967352,
		59.102348, 56.633377, 54.665031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.846767, 56.796410, 54.309341>,  <59.204990, 56.778080, 53.987885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.846767, 56.796410, 54.309341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.626053, 56.581211, 54.564240>,  <59.493622, 56.452091, 54.717178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.626053, 56.581211, 54.564240>,  <59.846767, 56.796410, 54.309341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.626053, 56.581211, 54.564240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773495, -0.615833, 0.149849,
		0.311821, 0.575595, 0.755949,
		-0.551791, -0.537997, 0.637249,
		59.460514, 56.419811, 54.755413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.311626, 56.579971, 54.831585>,  <59.846767, 56.796410, 54.309341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.311626, 56.579971, 54.831585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.010155, 56.318893, 54.800694>,  <59.829273, 56.162247, 54.782158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.010155, 56.318893, 54.800694>,  <60.311626, 56.579971, 54.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.010155, 56.318893, 54.800694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636559, -0.754148, 0.161410,
		-0.163590, 0.072493, 0.983861,
		-0.753678, -0.652691, -0.077225,
		59.784050, 56.123085, 54.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.918221, 56.815804, 55.286366>,  <60.311626, 56.579971, 54.831585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.918221, 56.815804, 55.286366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219475, 57.062050, 55.379158>,  <61.400227, 57.209797, 55.434834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.219475, 57.062050, 55.379158>,  <60.918221, 56.815804, 55.286366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.219475, 57.062050, 55.379158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232386, -0.080943, 0.969250,
		0.615460, -0.783881, 0.082099,
		0.753131, 0.615613, 0.231980,
		61.445415, 57.246735, 55.448753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.217941, 56.562466, 55.865860>,  <60.918221, 56.815804, 55.286366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.217941, 56.562466, 55.865860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.239418, 56.961536, 55.849113>,  <61.252304, 57.200981, 55.839066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.239418, 56.961536, 55.849113>,  <61.217941, 56.562466, 55.865860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.239418, 56.961536, 55.849113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444226, 0.061413, 0.893807,
		0.894304, -0.029389, 0.446493,
		0.053689, 0.997680, -0.041867,
		61.255524, 57.260841, 55.836552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.938969, 56.772911, 56.157906>,  <61.217941, 56.562466, 55.865860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.938969, 56.772911, 56.157906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.068962, 57.101948, 56.344551>,  <62.146957, 57.299370, 56.456539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.068962, 57.101948, 56.344551>,  <61.938969, 56.772911, 56.157906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.068962, 57.101948, 56.344551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814761, -0.006973, 0.579755,
		0.480154, -0.568594, 0.667947,
		0.324988, 0.822588, 0.466617,
		62.166458, 57.348724, 56.484535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.974682, 56.712139, 56.853001>,  <61.938969, 56.772911, 56.157906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.974682, 56.712139, 56.853001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.884941, 57.088593, 56.751854>,  <61.831097, 57.314465, 56.691166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.884941, 57.088593, 56.751854>,  <61.974682, 56.712139, 56.853001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.884941, 57.088593, 56.751854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894543, -0.095951, 0.436563,
		0.386599, 0.324145, 0.863407,
		-0.224354, 0.941129, -0.252867,
		61.817635, 57.370930, 56.675995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.567303, 56.180878, 57.018772>,  <61.974682, 56.712139, 56.853001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.567303, 56.180878, 57.018772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.867188, 56.369667, 56.833221>,  <63.047119, 56.482941, 56.721889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.867188, 56.369667, 56.833221>,  <62.567303, 56.180878, 57.018772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.867188, 56.369667, 56.833221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658410, -0.461441, 0.594617,
		0.066588, -0.751211, -0.656695,
		0.749708, 0.471969, -0.463878,
		63.092098, 56.511257, 56.694057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.914761, 55.665474, 56.694229>,  <62.567303, 56.180878, 57.018772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.914761, 55.665474, 56.694229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.119881, 55.986080, 56.817261>,  <63.242954, 56.178444, 56.891079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.119881, 55.986080, 56.817261>,  <62.914761, 55.665474, 56.694229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.119881, 55.986080, 56.817261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483635, -0.565720, 0.667876,
		0.709316, -0.193735, -0.677745,
		0.512805, 0.801516, 0.307577,
		63.273724, 56.226536, 56.909534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.639660, 55.567200, 56.630138>,  <62.914761, 55.665474, 56.694229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.639660, 55.567200, 56.630138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.563652, 55.815666, 56.934258>,  <63.518047, 55.964745, 57.116730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.563652, 55.815666, 56.934258>,  <63.639660, 55.567200, 56.630138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.563652, 55.815666, 56.934258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652031, -0.499113, 0.570738,
		0.733995, 0.604187, -0.310177,
		-0.190019, 0.621164, 0.760295,
		63.506645, 56.002014, 57.162346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.301628, 55.763390, 56.868984>,  <63.639660, 55.567200, 56.630138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.301628, 55.763390, 56.868984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.031158, 55.802094, 57.161125>,  <63.868874, 55.825317, 57.336411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.031158, 55.802094, 57.161125>,  <64.301628, 55.763390, 56.868984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.031158, 55.802094, 57.161125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637337, -0.420462, 0.645766,
		0.369571, 0.902136, 0.222639,
		-0.676180, 0.096760, 0.730355,
		63.828304, 55.831123, 57.380230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.470024, 56.257538, 57.468456>,  <64.301628, 55.763390, 56.868984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.470024, 56.257538, 57.468456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.268646, 55.926941, 57.569229>,  <64.147820, 55.728584, 57.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.268646, 55.926941, 57.569229>,  <64.470024, 56.257538, 57.468456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.268646, 55.926941, 57.569229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770527, -0.297519, 0.563711,
		-0.390948, 0.477909, 0.786614,
		-0.503436, -0.826489, 0.251928,
		64.117615, 55.678993, 57.644806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.450363, 56.154667, 58.240917>,  <64.470024, 56.257538, 57.468456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.450363, 56.154667, 58.240917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.421822, 55.790138, 58.078728>,  <64.404694, 55.571423, 57.981415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.421822, 55.790138, 58.078728>,  <64.450363, 56.154667, 58.240917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.421822, 55.790138, 58.078728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772708, -0.307557, 0.555276,
		-0.630739, -0.273688, 0.726129,
		-0.071354, -0.911319, -0.405469,
		64.400414, 55.516743, 57.957088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.409676, 55.651630, 58.786880>,  <64.450363, 56.154667, 58.240917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.409676, 55.651630, 58.786880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.555595, 55.484932, 58.453835>,  <64.643150, 55.384914, 58.254005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.555595, 55.484932, 58.453835>,  <64.409676, 55.651630, 58.786880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.555595, 55.484932, 58.453835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888015, -0.113109, 0.445685,
		-0.279914, -0.901959, 0.328814,
		0.364798, -0.416745, -0.832614,
		64.665031, 55.359909, 58.204052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.831436, 55.046993, 58.995110>,  <64.409676, 55.651630, 58.786880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.831436, 55.046993, 58.995110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.976135, 55.183708, 58.648163>,  <65.062950, 55.265736, 58.439995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.976135, 55.183708, 58.648163>,  <64.831436, 55.046993, 58.995110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.976135, 55.183708, 58.648163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931928, -0.158057, 0.326387,
		-0.025540, -0.926392, -0.375693,
		0.361743, 0.341783, -0.867367,
		65.084656, 55.286243, 58.387951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.350571, 54.575035, 58.455879>,  <64.831436, 55.046993, 58.995110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.350571, 54.575035, 58.455879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.404251, 54.971069, 58.472466>,  <65.436462, 55.208691, 58.482418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.404251, 54.971069, 58.472466>,  <65.350571, 54.575035, 58.455879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.404251, 54.971069, 58.472466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957196, -0.140350, 0.253135,
		0.256445, 0.005721, -0.966542,
		0.134206, 0.990086, 0.041468,
		65.444511, 55.268093, 58.484905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.860558, 54.990116, 58.021580>,  <65.350571, 54.575035, 58.455879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.860558, 54.990116, 58.021580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.833633, 55.175301, 58.375107>,  <65.817474, 55.286411, 58.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.833633, 55.175301, 58.375107>,  <65.860558, 54.990116, 58.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.833633, 55.175301, 58.375107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939388, -0.269069, 0.212489,
		0.336182, 0.844552, -0.416789,
		-0.067314, 0.462962, 0.883819,
		65.813438, 55.314190, 58.640251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.576385, 55.170422, 58.093029>,  <65.860558, 54.990116, 58.021580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.576385, 55.170422, 58.093029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.402779, 55.181870, 58.453209>,  <66.298615, 55.188740, 58.669315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.402779, 55.181870, 58.453209>,  <66.576385, 55.170422, 58.093029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.402779, 55.181870, 58.453209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863239, -0.272761, 0.424760,
		0.257764, 0.961656, 0.093677,
		-0.434024, 0.028622, 0.900446,
		66.272568, 55.190456, 58.723343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.105721, 55.357025, 58.578606>,  <66.576385, 55.170422, 58.093029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.105721, 55.357025, 58.578606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.816368, 55.147667, 58.758728>,  <66.642754, 55.022053, 58.866802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.816368, 55.147667, 58.758728>,  <67.105721, 55.357025, 58.578606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.816368, 55.147667, 58.758728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683145, -0.447972, 0.576744,
		-0.100140, 0.724831, 0.681610,
		-0.723384, -0.523394, 0.450305,
		66.599350, 54.990650, 58.893818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.660881, 55.812756, 58.454227>,  <67.105721, 55.357025, 58.578606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.660881, 55.812756, 58.454227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.798347, 55.696304, 58.097099>,  <67.880829, 55.626434, 57.882820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.798347, 55.696304, 58.097099>,  <67.660881, 55.812756, 58.454227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.798347, 55.696304, 58.097099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526691, 0.846880, -0.073416,
		0.777489, -0.445013, 0.444381,
		0.343667, -0.291132, -0.892825,
		67.901451, 55.608963, 57.829250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.369202, 55.987057, 58.395115>,  <67.660881, 55.812756, 58.454227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.369202, 55.987057, 58.395115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.270561, 55.948116, 58.009430>,  <68.211380, 55.924751, 57.778019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.270561, 55.948116, 58.009430>,  <68.369202, 55.987057, 58.395115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.270561, 55.948116, 58.009430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557102, 0.799876, -0.223241,
		0.792984, -0.592218, -0.143018,
		-0.246603, -0.097351, -0.964215,
		68.196579, 55.918911, 57.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.960938, 55.829296, 58.080116>,  <68.369202, 55.987057, 58.395115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.960938, 55.829296, 58.080116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.683746, 56.046669, 57.890610>,  <68.517433, 56.177094, 57.776905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.683746, 56.046669, 57.890610>,  <68.960938, 55.829296, 58.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.683746, 56.046669, 57.890610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647718, 0.757864, -0.078129,
		0.316594, -0.361010, -0.877177,
		-0.692986, 0.543428, -0.473768,
		68.475853, 56.209698, 57.748478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.278191, 56.179543, 57.503738>,  <68.960938, 55.829296, 58.080116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.278191, 56.179543, 57.503738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.996483, 56.427113, 57.642838>,  <68.827461, 56.575657, 57.726299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.996483, 56.427113, 57.642838>,  <69.278191, 56.179543, 57.503738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.996483, 56.427113, 57.642838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692947, 0.705808, 0.147173,
		-0.154356, 0.344623, -0.925964,
		-0.704272, 0.618927, 0.347751,
		68.785202, 56.612789, 57.747162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.501976, 56.775490, 57.117630>,  <69.278191, 56.179543, 57.503738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.501976, 56.775490, 57.117630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249985, 56.892166, 57.405533>,  <69.098793, 56.962170, 57.578278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.249985, 56.892166, 57.405533>,  <69.501976, 56.775490, 57.117630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.249985, 56.892166, 57.405533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478021, 0.876060, 0.063360,
		-0.612073, 0.383976, -0.691324,
		-0.629970, 0.291687, 0.719762,
		69.060997, 56.979671, 57.621460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.592484, 57.084717, 57.823986>,  <69.501976, 56.775490, 57.117630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.592484, 57.084717, 57.823986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.794334, 57.074600, 58.169174>,  <69.915443, 57.068531, 58.376286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.794334, 57.074600, 58.169174>,  <69.592484, 57.084717, 57.823986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.794334, 57.074600, 58.169174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529095, 0.798920, -0.285981,
		-0.682210, 0.600906, 0.416536,
		0.504626, -0.025288, 0.862967,
		69.945724, 57.067013, 58.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.379425, 57.526695, 58.296665>,  <69.592484, 57.084717, 57.823986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.379425, 57.526695, 58.296665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.770348, 57.448181, 58.264771>,  <70.004898, 57.401073, 58.245632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.770348, 57.448181, 58.264771>,  <69.379425, 57.526695, 58.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.770348, 57.448181, 58.264771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166572, 0.944444, -0.283336,
		0.130926, 0.263622, 0.955700,
		0.977298, -0.196289, -0.079740,
		70.063538, 57.389294, 58.240849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.894592, 57.987236, 58.610207>,  <69.379425, 57.526695, 58.296665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.894592, 57.987236, 58.610207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124306, 57.738152, 58.822784>,  <70.262131, 57.588699, 58.950329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.124306, 57.738152, 58.822784>,  <69.894592, 57.987236, 58.610207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.124306, 57.738152, 58.822784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640829, 0.745911, 0.181535,
		-0.509454, 0.236312, 0.827414,
		0.574278, -0.622714, 0.531443,
		70.296593, 57.551338, 58.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.238190, 58.524391, 58.975689>,  <69.894592, 57.987236, 58.610207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.238190, 58.524391, 58.975689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.448189, 58.195988, 59.065407>,  <70.574188, 57.998943, 59.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.448189, 58.195988, 59.065407>,  <70.238190, 58.524391, 58.975689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.448189, 58.195988, 59.065407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636133, 0.553613, 0.537446,
		-0.565423, -0.139479, 0.812922,
		0.525007, -0.821011, 0.224298,
		70.605690, 57.949684, 59.132698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.086662, 58.453808, 59.661289>,  <70.238190, 58.524391, 58.975689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.086662, 58.453808, 59.661289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.442352, 58.302818, 59.557907>,  <70.655762, 58.212227, 59.495876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.442352, 58.302818, 59.557907>,  <70.086662, 58.453808, 59.661289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.442352, 58.302818, 59.557907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446503, 0.593109, 0.669968,
		-0.099601, -0.711151, 0.695948,
		0.889222, -0.377472, -0.258457,
		70.709122, 58.189575, 59.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.569466, 58.273666, 60.287666>,  <70.086662, 58.453808, 59.661289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.569466, 58.273666, 60.287666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797493, 58.366962, 59.972549>,  <70.934311, 58.422939, 59.783482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.797493, 58.366962, 59.972549>,  <70.569466, 58.273666, 60.287666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.797493, 58.366962, 59.972549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565263, 0.584499, 0.582099,
		0.596239, -0.777145, 0.201356,
		0.570068, 0.233251, -0.787793,
		70.968513, 58.436935, 59.736214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.282471, 58.124332, 60.422710>,  <70.569466, 58.273666, 60.287666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.282471, 58.124332, 60.422710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.249939, 58.420994, 60.156380>,  <71.230423, 58.598991, 59.996582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.249939, 58.420994, 60.156380>,  <71.282471, 58.124332, 60.422710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.249939, 58.420994, 60.156380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582283, 0.577538, 0.572185,
		0.808908, -0.341168, -0.478824,
		-0.081328, 0.741656, -0.665831,
		71.225540, 58.643490, 59.956631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.828796, 58.442707, 60.766575>,  <71.282471, 58.124332, 60.422710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.828796, 58.442707, 60.766575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.149559, 58.627304, 60.614807>,  <72.342018, 58.738060, 60.523746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.149559, 58.627304, 60.614807>,  <71.828796, 58.442707, 60.766575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.149559, 58.627304, 60.614807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597434, -0.622254, 0.505839,
		-0.002656, -0.632318, -0.774704,
		0.801914, 0.461491, -0.379421,
		72.390137, 58.765751, 60.500980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.272079, 57.973240, 60.416302>,  <71.828796, 58.442707, 60.766575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.272079, 57.973240, 60.416302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.499825, 58.280716, 60.532890>,  <72.636467, 58.465202, 60.602844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.499825, 58.280716, 60.532890>,  <72.272079, 57.973240, 60.416302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.499825, 58.280716, 60.532890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657088, -0.638581, 0.400562,
		0.494036, -0.036538, -0.868673,
		0.569354, 0.768687, 0.291474,
		72.670631, 58.511322, 60.620331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.856255, 57.618694, 60.379761>,  <72.272079, 57.973240, 60.416302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.856255, 57.618694, 60.379761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.923943, 57.953751, 60.587502>,  <72.964554, 58.154785, 60.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.923943, 57.953751, 60.587502>,  <72.856255, 57.618694, 60.379761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.923943, 57.953751, 60.587502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751482, -0.450606, 0.481902,
		0.637682, 0.308730, -0.705725,
		0.169226, 0.837640, 0.519348,
		72.974709, 58.205044, 60.743305>
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
