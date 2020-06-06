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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.126263, 16.738071, -1.648528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278023, 16.717617, -1.279001>,  <22.369078, 16.705343, -1.057284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.278023, 16.717617, -1.279001>,  <22.126263, 16.738071, -1.648528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.278023, 16.717617, -1.279001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848551, 0.378769, 0.369454,
		-0.368807, -0.924077, 0.100310,
		0.379398, -0.051139, 0.923819,
		22.391842, 16.702276, -1.001855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916277, 16.097795, -1.341367>,  <22.126263, 16.738071, -1.648528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916277, 16.097795, -1.341367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946888, 16.423779, -1.111590>,  <21.965256, 16.619370, -0.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946888, 16.423779, -1.111590>,  <21.916277, 16.097795, -1.341367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.946888, 16.423779, -1.111590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984307, -0.030125, 0.173872,
		0.159004, -0.578734, 0.799866,
		0.076530, 0.814960, 0.574442,
		21.969847, 16.668266, -0.939257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546253, 15.967540, -0.681764>,  <21.916277, 16.097795, -1.341367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546253, 15.967540, -0.681764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.567635, 16.352695, -0.787584>,  <21.580463, 16.583790, -0.851076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.567635, 16.352695, -0.787584>,  <21.546253, 15.967540, -0.681764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.567635, 16.352695, -0.787584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998029, 0.060238, 0.017595,
		0.032878, 0.263088, 0.964211,
		0.053453, 0.962889, -0.264550,
		21.583670, 16.641562, -0.866949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088285, 16.439735, -0.226443>,  <21.546253, 15.967540, -0.681764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088285, 16.439735, -0.226443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140339, 16.572449, -0.600178>,  <21.171570, 16.652077, -0.824419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.140339, 16.572449, -0.600178>,  <21.088285, 16.439735, -0.226443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.140339, 16.572449, -0.600178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981319, -0.091577, -0.169194,
		-0.141700, 0.938900, 0.313668,
		0.130132, 0.331783, -0.934337,
		21.179379, 16.671984, -0.880479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718235, 16.827198, -0.701850>,  <21.088285, 16.439735, -0.226443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718235, 16.827198, -0.701850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393211, 16.609364, -0.618736>,  <20.198196, 16.478662, -0.568867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.393211, 16.609364, -0.618736>,  <20.718235, 16.827198, -0.701850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.393211, 16.609364, -0.618736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546031, 0.586442, -0.598278,
		0.203959, -0.599593, -0.773879,
		-0.812558, -0.544586, 0.207787,
		20.149445, 16.445988, -0.556400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.353298, 16.444273, -1.282200>,  <20.718235, 16.827198, -0.701850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.353298, 16.444273, -1.282200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.062096, 16.482525, -1.010652>,  <19.887375, 16.505476, -0.847723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.062096, 16.482525, -1.010652>,  <20.353298, 16.444273, -1.282200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.062096, 16.482525, -1.010652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634361, 0.281561, -0.719937,
		-0.259990, -0.954766, -0.144314,
		-0.728005, 0.095630, 0.678870,
		19.843695, 16.511213, -0.806991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687677, 16.163067, -1.498197>,  <20.353298, 16.444273, -1.282200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687677, 16.163067, -1.498197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583008, 16.447269, -1.236906>,  <19.520206, 16.617792, -1.080132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.583008, 16.447269, -1.236906>,  <19.687677, 16.163067, -1.498197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583008, 16.447269, -1.236906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648049, 0.372208, -0.664450,
		-0.715233, -0.597193, 0.363046,
		-0.261676, 0.710508, 0.653226,
		19.504505, 16.660421, -1.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.368849, 16.556993, -1.887546>,  <19.687677, 16.163067, -1.498197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.368849, 16.556993, -1.887546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348698, 16.787308, -1.561127>,  <19.336607, 16.925497, -1.365276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.348698, 16.787308, -1.561127>,  <19.368849, 16.556993, -1.887546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.348698, 16.787308, -1.561127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484460, 0.700428, -0.524117,
		-0.873362, -0.421745, 0.243660,
		-0.050377, 0.575787, 0.816046,
		19.333584, 16.960045, -1.316313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650444, 16.780020, -1.610466>,  <19.368849, 16.556993, -1.887546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650444, 16.780020, -1.610466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987728, 16.994133, -1.590586>,  <19.190098, 17.122601, -1.578658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.987728, 16.994133, -1.590586>,  <18.650444, 16.780020, -1.610466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.987728, 16.994133, -1.590586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394525, 0.678964, -0.619158,
		-0.365170, 0.502472, 0.783692,
		0.843208, 0.535284, 0.049700,
		19.240690, 17.154718, -1.575676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443598, 17.526695, -1.545477>,  <18.650444, 16.780020, -1.610466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.443598, 17.526695, -1.545477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816639, 17.529808, -1.689803>,  <19.040464, 17.531675, -1.776399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.816639, 17.529808, -1.689803>,  <18.443598, 17.526695, -1.545477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.816639, 17.529808, -1.689803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245017, 0.747710, -0.617168,
		0.264982, 0.663980, 0.699225,
		0.932604, 0.007784, -0.360816,
		19.096420, 17.532143, -1.798048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824057, 18.166044, -1.420905>,  <18.443598, 17.526695, -1.545477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824057, 18.166044, -1.420905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.986694, 18.032238, -1.760972>,  <19.084276, 17.951954, -1.965012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.986694, 18.032238, -1.760972>,  <18.824057, 18.166044, -1.420905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.986694, 18.032238, -1.760972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266975, 0.846437, -0.460727,
		0.873731, 0.414302, 0.254849,
		0.406593, -0.334513, -0.850166,
		19.108673, 17.931885, -2.016021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234339, 18.667055, -1.682460>,  <18.824057, 18.166044, -1.420905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234339, 18.667055, -1.682460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140743, 18.424870, -1.986740>,  <19.084587, 18.279558, -2.169307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.140743, 18.424870, -1.986740>,  <19.234339, 18.667055, -1.682460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140743, 18.424870, -1.986740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164535, 0.795792, -0.582788,
		0.958216, -0.011203, -0.285825,
		-0.233986, -0.605466, -0.760698,
		19.070547, 18.243229, -2.214949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667564, 18.855602, -2.238952>,  <19.234339, 18.667055, -1.682460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667564, 18.855602, -2.238952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302883, 18.731026, -2.346136>,  <19.084074, 18.656281, -2.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.302883, 18.731026, -2.346136>,  <19.667564, 18.855602, -2.238952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.302883, 18.731026, -2.346136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085077, 0.781183, -0.618479,
		0.401943, -0.541072, -0.738703,
		-0.911703, -0.311440, -0.267958,
		19.029371, 18.637594, -2.426523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.156332, 19.509857, -1.945309>,  <19.667564, 18.855602, -2.238952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.156332, 19.509857, -1.945309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008564, 19.336338, -1.616590>,  <18.919903, 19.232225, -1.419360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.008564, 19.336338, -1.616590>,  <19.156332, 19.509857, -1.945309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008564, 19.336338, -1.616590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804688, 0.591638, -0.049422,
		-0.464766, -0.679546, -0.567636,
		-0.369420, -0.433800, 0.821795,
		18.897738, 19.206198, -1.370052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521980, 19.290716, -2.132962>,  <19.156332, 19.509857, -1.945309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521980, 19.290716, -2.132962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582291, 19.394276, -1.751336>,  <18.618477, 19.456411, -1.522360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.582291, 19.394276, -1.751336>,  <18.521980, 19.290716, -2.132962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582291, 19.394276, -1.751336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690181, 0.718519, -0.085907,
		-0.707755, -0.645525, 0.287020,
		0.150775, 0.258897, 0.954065,
		18.627523, 19.471945, -1.465116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.889828, 19.319109, -1.973256>,  <18.521980, 19.290716, -2.132962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.889828, 19.319109, -1.973256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059864, 19.531960, -1.680370>,  <18.161886, 19.659670, -1.504639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.059864, 19.531960, -1.680370>,  <17.889828, 19.319109, -1.973256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059864, 19.531960, -1.680370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715503, 0.693013, -0.088247,
		-0.554393, -0.486389, 0.675332,
		0.425092, 0.532126, 0.732215,
		18.187391, 19.691597, -1.460706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410879, 19.555609, -1.492189>,  <17.889828, 19.319109, -1.973256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410879, 19.555609, -1.492189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702835, 19.828671, -1.506306>,  <17.878008, 19.992508, -1.514777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702835, 19.828671, -1.506306>,  <17.410879, 19.555609, -1.492189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702835, 19.828671, -1.506306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683504, 0.728160, -0.051045,
		-0.009148, 0.061380, 0.998072,
		0.729890, 0.682653, -0.035292,
		17.921803, 20.033466, -1.516894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.572201, 19.962791, -0.841805>,  <17.410879, 19.555609, -1.492189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.572201, 19.962791, -0.841805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.599178, 20.198936, -1.163531>,  <17.615366, 20.340624, -1.356567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.599178, 20.198936, -1.163531>,  <17.572201, 19.962791, -0.841805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.599178, 20.198936, -1.163531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785220, 0.528754, 0.322257,
		0.615533, 0.609829, 0.499227,
		0.067446, 0.590363, -0.804316,
		17.619411, 20.376045, -1.404826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339048, 19.297989, -0.827288>,  <17.572201, 19.962791, -0.841805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339048, 19.297989, -0.827288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702774, 19.385948, -0.685986>,  <17.921009, 19.438725, -0.601205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.702774, 19.385948, -0.685986>,  <17.339048, 19.297989, -0.827288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702774, 19.385948, -0.685986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338868, -0.101331, 0.935361,
		0.241481, -0.970245, -0.017625,
		0.909316, 0.219900, 0.353254,
		17.975569, 19.451918, -0.580010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518480, 18.798544, -0.218952>,  <17.339048, 19.297989, -0.827288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518480, 18.798544, -0.218952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718380, 19.130756, -0.120588>,  <17.838320, 19.330084, -0.061569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.718380, 19.130756, -0.120588>,  <17.518480, 18.798544, -0.218952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.718380, 19.130756, -0.120588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062005, -0.248875, 0.966549,
		0.863948, -0.498279, -0.072878,
		0.499749, 0.830529, 0.245912,
		17.868305, 19.379915, -0.046814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108521, 18.573896, 0.134366>,  <17.518480, 18.798544, -0.218952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108521, 18.573896, 0.134366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036839, 18.950741, 0.247726>,  <17.993830, 19.176847, 0.315742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.036839, 18.950741, 0.247726>,  <18.108521, 18.573896, 0.134366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036839, 18.950741, 0.247726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205706, -0.245813, 0.947238,
		0.962066, 0.228046, -0.149747,
		-0.179204, 0.942110, 0.283399,
		17.983078, 19.233374, 0.332746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633545, 18.892561, 0.602534>,  <18.108521, 18.573896, 0.134366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633545, 18.892561, 0.602534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310165, 19.121513, 0.657370>,  <18.116138, 19.258884, 0.690271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310165, 19.121513, 0.657370>,  <18.633545, 18.892561, 0.602534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310165, 19.121513, 0.657370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180618, 0.019591, 0.983358,
		0.560170, 0.819754, -0.119221,
		-0.808447, 0.572381, 0.137088,
		18.067631, 19.293228, 0.698496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764627, 19.545378, 0.956502>,  <18.633545, 18.892561, 0.602534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764627, 19.545378, 0.956502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400677, 19.398575, 1.033891>,  <18.182306, 19.310493, 1.080325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.400677, 19.398575, 1.033891>,  <18.764627, 19.545378, 0.956502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.400677, 19.398575, 1.033891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184481, 0.059796, 0.981015,
		-0.371611, 0.928293, 0.013300,
		-0.909875, -0.367009, 0.193473,
		18.127714, 19.288471, 1.091933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377460, 19.960871, 1.447712>,  <18.764627, 19.545378, 0.956502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377460, 19.960871, 1.447712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237755, 19.587097, 1.475567>,  <18.153931, 19.362833, 1.492280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237755, 19.587097, 1.475567>,  <18.377460, 19.960871, 1.447712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237755, 19.587097, 1.475567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235737, -0.015699, 0.971690,
		-0.906886, 0.355793, 0.225763,
		-0.349265, -0.934433, 0.069636,
		18.132975, 19.306767, 1.496458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785013, 19.893684, 1.959873>,  <18.377460, 19.960871, 1.447712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785013, 19.893684, 1.959873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.031002, 19.579266, 1.934763>,  <18.178595, 19.390614, 1.919697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.031002, 19.579266, 1.934763>,  <17.785013, 19.893684, 1.959873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.031002, 19.579266, 1.934763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307963, 0.166124, 0.936783,
		-0.725927, -0.595426, 0.344235,
		0.614971, -0.786047, -0.062776,
		18.215494, 19.343451, 1.915930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589729, 19.308498, 2.447810>,  <17.785013, 19.893684, 1.959873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589729, 19.308498, 2.447810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981094, 19.276527, 2.371575>,  <18.215914, 19.257345, 2.325834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981094, 19.276527, 2.371575>,  <17.589729, 19.308498, 2.447810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981094, 19.276527, 2.371575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193370, 0.028578, 0.980710,
		-0.072941, -0.996391, 0.043417,
		0.978411, -0.079930, -0.190588,
		18.274618, 19.252548, 2.314398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901545, 18.789656, 2.848210>,  <17.589729, 19.308498, 2.447810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901545, 18.789656, 2.848210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185787, 19.054916, 2.754172>,  <18.356333, 19.214073, 2.697749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.185787, 19.054916, 2.754172>,  <17.901545, 18.789656, 2.848210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.185787, 19.054916, 2.754172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062659, 0.273162, 0.959925,
		0.700795, -0.696859, 0.152558,
		0.710606, 0.663152, -0.235095,
		18.398970, 19.253862, 2.683643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347651, 18.667809, 3.319690>,  <17.901545, 18.789656, 2.848210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347651, 18.667809, 3.319690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342640, 19.059196, 3.237285>,  <18.339634, 19.294029, 3.187842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.342640, 19.059196, 3.237285>,  <18.347651, 18.667809, 3.319690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342640, 19.059196, 3.237285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065062, 0.206389, 0.976304,
		0.997802, -0.001175, -0.066246,
		-0.012525, 0.978469, -0.206012,
		18.338882, 19.352737, 3.175481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987986, 18.969927, 3.608402>,  <18.347651, 18.667809, 3.319690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987986, 18.969927, 3.608402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673645, 19.211170, 3.553709>,  <18.485041, 19.355915, 3.520893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.673645, 19.211170, 3.553709>,  <18.987986, 18.969927, 3.608402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673645, 19.211170, 3.553709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001403, 0.219362, 0.975643,
		0.618411, 0.766904, -0.171540,
		-0.785854, 0.603107, -0.136732,
		18.437889, 19.392103, 3.512689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260315, 19.599161, 3.688311>,  <18.987986, 18.969927, 3.608402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260315, 19.599161, 3.688311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868336, 19.590698, 3.767562>,  <18.633148, 19.585621, 3.815113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.868336, 19.590698, 3.767562>,  <19.260315, 19.599161, 3.688311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.868336, 19.590698, 3.767562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186043, 0.258887, 0.947821,
		-0.071344, 0.965676, -0.249760,
		-0.979948, -0.021156, 0.198127,
		18.574352, 19.584352, 3.827000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.984011, 20.244944, 3.886248>,  <19.260315, 19.599161, 3.688311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.984011, 20.244944, 3.886248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752701, 19.971779, 4.064789>,  <18.613914, 19.807880, 4.171914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.752701, 19.971779, 4.064789>,  <18.984011, 20.244944, 3.886248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.752701, 19.971779, 4.064789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120497, 0.469614, 0.874610,
		-0.806894, 0.559550, -0.189278,
		-0.578276, -0.682911, 0.446353,
		18.579218, 19.766905, 4.198695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.392963, 20.647844, 4.131558>,  <18.984011, 20.244944, 3.886248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.392963, 20.647844, 4.131558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508812, 20.323643, 4.335207>,  <18.578321, 20.129122, 4.457396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508812, 20.323643, 4.335207>,  <18.392963, 20.647844, 4.131558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508812, 20.323643, 4.335207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253113, 0.577837, 0.775911,
		-0.923068, -0.095854, 0.372502,
		0.289620, -0.810503, 0.509121,
		18.595697, 20.080492, 4.487943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209810, 20.820501, 4.789331>,  <18.392963, 20.647844, 4.131558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209810, 20.820501, 4.789331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506470, 20.552193, 4.791248>,  <18.684465, 20.391209, 4.792399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506470, 20.552193, 4.791248>,  <18.209810, 20.820501, 4.789331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506470, 20.552193, 4.791248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409829, 0.458771, 0.788397,
		-0.531032, -0.582750, 0.615149,
		0.741650, -0.670770, 0.004794,
		18.728964, 20.350962, 4.792686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272026, 20.312456, 5.350606>,  <18.209810, 20.820501, 4.789331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272026, 20.312456, 5.350606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629128, 20.427773, 5.212111>,  <18.843388, 20.496962, 5.129013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.629128, 20.427773, 5.212111>,  <18.272026, 20.312456, 5.350606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.629128, 20.427773, 5.212111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240903, 0.343972, 0.907551,
		0.380738, -0.893628, 0.237630,
		0.892751, 0.288294, -0.346241,
		18.896954, 20.514259, 5.108239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810402, 20.104534, 5.739144>,  <18.272026, 20.312456, 5.350606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810402, 20.104534, 5.739144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948662, 20.437199, 5.565310>,  <19.031618, 20.636797, 5.461009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.948662, 20.437199, 5.565310>,  <18.810402, 20.104534, 5.739144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948662, 20.437199, 5.565310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360449, 0.309926, 0.879785,
		0.866373, -0.460745, -0.192645,
		0.345651, 0.831661, -0.434587,
		19.052357, 20.686697, 5.434934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595753, 20.153959, 5.762558>,  <18.810402, 20.104534, 5.739144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595753, 20.153959, 5.762558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.442116, 20.523266, 5.759560>,  <19.349934, 20.744850, 5.757761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.442116, 20.523266, 5.759560>,  <19.595753, 20.153959, 5.762558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.442116, 20.523266, 5.759560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497350, 0.213731, 0.840811,
		0.777893, 0.319220, -0.541278,
		-0.384091, 0.923265, -0.007496,
		19.326889, 20.800245, 5.757311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.142941, 20.628885, 5.895917>,  <19.595753, 20.153959, 5.762558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.142941, 20.628885, 5.895917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808243, 20.828228, 5.986694>,  <19.607424, 20.947834, 6.041161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808243, 20.828228, 5.986694>,  <20.142941, 20.628885, 5.895917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808243, 20.828228, 5.986694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402059, 0.277753, 0.872469,
		0.371765, 0.821277, -0.432776,
		-0.836743, 0.498355, 0.226943,
		19.557220, 20.977734, 6.054777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.361906, 21.259048, 6.060217>,  <20.142941, 20.628885, 5.895917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.361906, 21.259048, 6.060217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005875, 21.247723, 6.242189>,  <19.792255, 21.240927, 6.351373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005875, 21.247723, 6.242189>,  <20.361906, 21.259048, 6.060217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005875, 21.247723, 6.242189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436919, 0.231369, 0.869236,
		-0.129869, 0.972454, -0.193565,
		-0.890076, -0.028315, 0.454931,
		19.738852, 21.239227, 6.378669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.260885, 21.936819, 6.383028>,  <20.361906, 21.259048, 6.060217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.260885, 21.936819, 6.383028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995140, 21.711941, 6.580029>,  <19.835693, 21.577015, 6.698229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995140, 21.711941, 6.580029>,  <20.260885, 21.936819, 6.383028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995140, 21.711941, 6.580029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227837, 0.475249, 0.849840,
		-0.711837, 0.676813, -0.187649,
		-0.664363, -0.562194, 0.492503,
		19.795832, 21.543282, 6.727779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.868862, 22.414080, 6.921956>,  <20.260885, 21.936819, 6.383028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.868862, 22.414080, 6.921956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819599, 22.039303, 7.052781>,  <19.790041, 21.814436, 7.131276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819599, 22.039303, 7.052781>,  <19.868862, 22.414080, 6.921956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819599, 22.039303, 7.052781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150260, 0.308167, 0.939391,
		-0.980945, 0.164840, 0.102831,
		-0.123160, -0.936942, 0.327064,
		19.782652, 21.758221, 7.150900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.796690, 22.504311, 7.604966>,  <19.868862, 22.414080, 6.921956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.796690, 22.504311, 7.604966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.827652, 22.105564, 7.598488>,  <19.846230, 21.866316, 7.594601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.827652, 22.105564, 7.598488>,  <19.796690, 22.504311, 7.604966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827652, 22.105564, 7.598488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185133, -0.001589, 0.982712,
		-0.979660, -0.079067, 0.184430,
		0.077407, -0.996868, -0.016195,
		19.850874, 21.806503, 7.593629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233339, 22.257662, 8.052798>,  <19.796690, 22.504311, 7.604966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.233339, 22.257662, 8.052798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558617, 22.025509, 8.035509>,  <19.753784, 21.886217, 8.025135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558617, 22.025509, 8.035509>,  <19.233339, 22.257662, 8.052798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558617, 22.025509, 8.035509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040359, -0.017853, 0.999026,
		-0.580590, -0.814147, 0.008906,
		0.813195, -0.580384, -0.043224,
		19.802576, 21.851395, 8.022542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091734, 21.637785, 8.307547>,  <19.233339, 22.257662, 8.052798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091734, 21.637785, 8.307547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486671, 21.687149, 8.347388>,  <19.723635, 21.716766, 8.371293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.486671, 21.687149, 8.347388>,  <19.091734, 21.637785, 8.307547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486671, 21.687149, 8.347388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089989, -0.081196, 0.992627,
		0.130586, -0.989028, -0.069063,
		0.987345, 0.123408, 0.099605,
		19.782875, 21.724171, 8.377270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.210836, 21.206360, 8.772788>,  <19.091734, 21.637785, 8.307547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.210836, 21.206360, 8.772788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557770, 21.405174, 8.783298>,  <19.765930, 21.524464, 8.789605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557770, 21.405174, 8.783298>,  <19.210836, 21.206360, 8.772788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557770, 21.405174, 8.783298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022927, -0.092632, 0.995436,
		0.497203, -0.862771, -0.091738,
		0.867331, 0.497037, 0.026276,
		19.817968, 21.554285, 8.791182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704636, 20.840229, 9.230080>,  <19.210836, 21.206360, 8.772788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704636, 20.840229, 9.230080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867290, 21.205517, 9.219668>,  <19.964884, 21.424690, 9.213422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867290, 21.205517, 9.219668>,  <19.704636, 20.840229, 9.230080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867290, 21.205517, 9.219668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058712, 0.002310, 0.998272,
		0.911702, -0.407461, -0.052678,
		0.406635, 0.913220, -0.026029,
		19.989281, 21.479483, 9.211860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346592, 20.781286, 9.701210>,  <19.704636, 20.840229, 9.230080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346592, 20.781286, 9.701210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249405, 21.168358, 9.674175>,  <20.191093, 21.400600, 9.657954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.249405, 21.168358, 9.674175>,  <20.346592, 20.781286, 9.701210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249405, 21.168358, 9.674175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208848, 0.120224, 0.970530,
		0.947285, 0.221691, -0.231308,
		-0.242967, 0.967677, -0.067587,
		20.176516, 21.458660, 9.653899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892027, 21.109282, 10.044641>,  <20.346592, 20.781286, 9.701210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892027, 21.109282, 10.044641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.582935, 21.363167, 10.046682>,  <20.397480, 21.515499, 10.047907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.582935, 21.363167, 10.046682>,  <20.892027, 21.109282, 10.044641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582935, 21.363167, 10.046682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250218, 0.297219, 0.921440,
		0.583336, 0.713301, -0.388487,
		-0.772729, 0.634716, 0.005102,
		20.351116, 21.553581, 10.048213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241970, 21.702133, 10.316131>,  <20.892027, 21.109282, 10.044641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241970, 21.702133, 10.316131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851948, 21.785103, 10.347734>,  <20.617935, 21.834885, 10.366696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.851948, 21.785103, 10.347734>,  <21.241970, 21.702133, 10.316131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851948, 21.785103, 10.347734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152431, 0.367004, 0.917645,
		0.161346, 0.906798, -0.389467,
		-0.975055, 0.207425, 0.079010,
		20.559431, 21.847330, 10.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.188097, 22.345644, 10.488738>,  <21.241970, 21.702133, 10.316131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.188097, 22.345644, 10.488738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.829258, 22.218487, 10.611480>,  <20.613955, 22.142193, 10.685125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.829258, 22.218487, 10.611480>,  <21.188097, 22.345644, 10.488738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.829258, 22.218487, 10.611480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158552, 0.416628, 0.895144,
		-0.412404, 0.851684, -0.323353,
		-0.897098, -0.317893, 0.306855,
		20.560129, 22.123119, 10.703536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.897297, 22.952276, 10.649182>,  <21.188097, 22.345644, 10.488738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.897297, 22.952276, 10.649182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712585, 22.650368, 10.835550>,  <20.601759, 22.469223, 10.947371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.712585, 22.650368, 10.835550>,  <20.897297, 22.952276, 10.649182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712585, 22.650368, 10.835550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176309, 0.592903, 0.785736,
		-0.869295, 0.280692, -0.406863,
		-0.461780, -0.754770, 0.465919,
		20.574051, 22.423937, 10.975327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.371593, 23.335339, 11.065270>,  <20.897297, 22.952276, 10.649182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.371593, 23.335339, 11.065270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413395, 22.974834, 11.233465>,  <20.438477, 22.758532, 11.334382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.413395, 22.974834, 11.233465>,  <20.371593, 23.335339, 11.065270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.413395, 22.974834, 11.233465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163668, 0.401453, 0.901137,
		-0.980965, -0.162994, -0.105553,
		0.104505, -0.901259, 0.420488,
		20.444746, 22.704456, 11.359612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.922178, 23.261679, 11.679888>,  <20.371593, 23.335339, 11.065270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.922178, 23.261679, 11.679888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203793, 22.981853, 11.728788>,  <20.372761, 22.813959, 11.758129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.203793, 22.981853, 11.728788>,  <19.922178, 23.261679, 11.679888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.203793, 22.981853, 11.728788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117952, 0.284944, 0.951259,
		-0.700300, -0.655301, 0.283125,
		0.704036, -0.699562, 0.122252,
		20.415003, 22.771984, 11.765464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.803669, 23.087473, 12.377788>,  <19.922178, 23.261679, 11.679888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.803669, 23.087473, 12.377788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166866, 22.939926, 12.298306>,  <20.384785, 22.851398, 12.250618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166866, 22.939926, 12.298306>,  <19.803669, 23.087473, 12.377788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166866, 22.939926, 12.298306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341673, 0.377400, 0.860714,
		-0.242500, -0.849415, 0.468709,
		0.907994, -0.368868, -0.198702,
		20.439264, 22.829266, 12.238696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.968712, 22.936930, 13.022394>,  <19.803669, 23.087473, 12.377788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.968712, 22.936930, 13.022394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322395, 22.926601, 12.835841>,  <20.534605, 22.920404, 12.723909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322395, 22.926601, 12.835841>,  <19.968712, 22.936930, 13.022394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322395, 22.926601, 12.835841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463903, 0.165093, 0.870367,
		0.054523, -0.985940, 0.157954,
		0.884207, -0.025820, -0.466382,
		20.587658, 22.918856, 12.695927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.456242, 22.737476, 13.472406>,  <19.968712, 22.936930, 13.022394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.456242, 22.737476, 13.472406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689354, 22.927254, 13.208507>,  <20.829222, 23.041121, 13.050167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689354, 22.927254, 13.208507>,  <20.456242, 22.737476, 13.472406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689354, 22.927254, 13.208507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632879, 0.244272, 0.734708,
		0.509735, -0.845716, -0.157907,
		0.582782, 0.474442, -0.659750,
		20.864189, 23.069586, 13.010582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.123865, 22.411259, 13.506775>,  <20.456242, 22.737476, 13.472406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.123865, 22.411259, 13.506775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188251, 22.783047, 13.374002>,  <21.226883, 23.006119, 13.294339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.188251, 22.783047, 13.374002>,  <21.123865, 22.411259, 13.506775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.188251, 22.783047, 13.374002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608844, 0.171183, 0.774600,
		0.776787, -0.326779, -0.538347,
		0.160967, 0.929469, -0.331930,
		21.236542, 23.061888, 13.274424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.796251, 22.588333, 13.767844>,  <21.123865, 22.411259, 13.506775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.796251, 22.588333, 13.767844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.618511, 22.937195, 13.685969>,  <21.511868, 23.146513, 13.636845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.618511, 22.937195, 13.685969>,  <21.796251, 22.588333, 13.767844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.618511, 22.937195, 13.685969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365568, 0.385123, 0.847373,
		0.817870, 0.301704, -0.489962,
		-0.444351, 0.872155, -0.204687,
		21.485207, 23.198841, 13.624563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.183891, 23.030865, 14.002326>,  <21.796251, 22.588333, 13.767844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.183891, 23.030865, 14.002326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848988, 23.249336, 13.991881>,  <21.648045, 23.380419, 13.985615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.848988, 23.249336, 13.991881>,  <22.183891, 23.030865, 14.002326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848988, 23.249336, 13.991881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234017, 0.401077, 0.885648,
		0.494196, 0.735408, -0.463622,
		-0.837261, 0.546179, -0.026112,
		21.597809, 23.413191, 13.984048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367533, 23.678186, 14.227354>,  <22.183891, 23.030865, 14.002326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367533, 23.678186, 14.227354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969761, 23.705273, 14.259667>,  <21.731098, 23.721525, 14.279056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969761, 23.705273, 14.259667>,  <22.367533, 23.678186, 14.227354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969761, 23.705273, 14.259667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105120, 0.580075, 0.807751,
		0.007838, 0.811743, -0.583962,
		-0.994429, 0.067717, 0.080784,
		21.671432, 23.725588, 14.283903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.188078, 24.439384, 14.348328>,  <22.367533, 23.678186, 14.227354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.188078, 24.439384, 14.348328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887543, 24.216377, 14.489560>,  <21.707222, 24.082573, 14.574299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887543, 24.216377, 14.489560>,  <22.188078, 24.439384, 14.348328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887543, 24.216377, 14.489560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037292, 0.570053, 0.820761,
		-0.658862, 0.603503, -0.449094,
		-0.751339, -0.557516, 0.353080,
		21.662142, 24.049122, 14.595484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708422, 24.912231, 14.863476>,  <22.188078, 24.439384, 14.348328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708422, 24.912231, 14.863476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606876, 24.531952, 14.934726>,  <21.545950, 24.303785, 14.977476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.606876, 24.531952, 14.934726>,  <21.708422, 24.912231, 14.863476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.606876, 24.531952, 14.934726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081540, 0.204537, 0.975457,
		-0.963797, 0.233109, -0.129445,
		-0.253864, -0.950697, 0.178125,
		21.530718, 24.246742, 14.988163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.102842, 24.963455, 15.248651>,  <21.708422, 24.912231, 14.863476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.102842, 24.963455, 15.248651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245087, 24.597324, 15.324244>,  <21.330433, 24.377645, 15.369600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245087, 24.597324, 15.324244>,  <21.102842, 24.963455, 15.248651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245087, 24.597324, 15.324244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098891, 0.164217, 0.981455,
		-0.929389, -0.367702, -0.032121,
		0.355608, -0.915329, 0.188984,
		21.351768, 24.322725, 15.380939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596127, 24.499355, 15.665603>,  <21.102842, 24.963455, 15.248651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596127, 24.499355, 15.665603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960354, 24.349812, 15.736142>,  <21.178890, 24.260086, 15.778465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960354, 24.349812, 15.736142>,  <20.596127, 24.499355, 15.665603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960354, 24.349812, 15.736142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100512, 0.213563, 0.971745,
		-0.400955, -0.902564, 0.156886,
		0.910567, -0.373857, 0.176348,
		21.233524, 24.237654, 15.789046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597282, 23.927933, 16.126579>,  <20.596127, 24.499355, 15.665603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597282, 23.927933, 16.126579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.984398, 24.026100, 16.149048>,  <21.216667, 24.085001, 16.162529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.984398, 24.026100, 16.149048>,  <20.597282, 23.927933, 16.126579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.984398, 24.026100, 16.149048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097741, 0.160642, 0.982161,
		0.232022, -0.956013, 0.179455,
		0.967788, 0.245423, 0.056169,
		21.274734, 24.099726, 16.165899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930607, 23.502274, 16.581507>,  <20.597282, 23.927933, 16.126579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930607, 23.502274, 16.581507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.172234, 23.820320, 16.559990>,  <21.317209, 24.011148, 16.547079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.172234, 23.820320, 16.559990>,  <20.930607, 23.502274, 16.581507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172234, 23.820320, 16.559990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057883, 0.023547, 0.998046,
		0.794830, -0.605998, -0.031800,
		0.604065, 0.795117, -0.053793,
		21.353453, 24.058855, 16.543852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341785, 23.383745, 17.099691>,  <20.930607, 23.502274, 16.581507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341785, 23.383745, 17.099691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.388157, 23.773190, 17.021057>,  <21.415979, 24.006855, 16.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.388157, 23.773190, 17.021057>,  <21.341785, 23.383745, 17.099691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.388157, 23.773190, 17.021057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141964, 0.179647, 0.973433,
		0.983060, -0.140757, -0.117391,
		0.115928, 0.973609, -0.196587,
		21.422935, 24.065271, 16.962082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.910439, 23.570530, 17.501635>,  <21.341785, 23.383745, 17.099691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.910439, 23.570530, 17.501635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739971, 23.923019, 17.419830>,  <21.637691, 24.134514, 17.370749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739971, 23.923019, 17.419830>,  <21.910439, 23.570530, 17.501635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739971, 23.923019, 17.419830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006264, 0.228936, 0.973421,
		0.904623, 0.413559, -0.103085,
		-0.426167, 0.881225, -0.204510,
		21.612122, 24.187387, 17.358477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.308929, 24.093338, 17.745171>,  <21.910439, 23.570530, 17.501635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.308929, 24.093338, 17.745171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929527, 24.219975, 17.740955>,  <21.701887, 24.295958, 17.738426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.929527, 24.219975, 17.740955>,  <22.308929, 24.093338, 17.745171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929527, 24.219975, 17.740955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053432, 0.192696, 0.979803,
		0.312229, 0.928783, -0.199688,
		-0.948503, 0.316592, -0.010539,
		21.644976, 24.314953, 17.737793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301672, 24.704590, 17.978611>,  <22.308929, 24.093338, 17.745171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301672, 24.704590, 17.978611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906246, 24.657120, 18.015825>,  <21.668991, 24.628637, 18.038155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.906246, 24.657120, 18.015825>,  <22.301672, 24.704590, 17.978611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.906246, 24.657120, 18.015825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023962, 0.485499, 0.873909,
		-0.148883, 0.866145, -0.477103,
		-0.988564, -0.118677, 0.093037,
		21.609676, 24.621517, 18.043737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027693, 25.258158, 18.301699>,  <22.301672, 24.704590, 17.978611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027693, 25.258158, 18.301699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694340, 25.047134, 18.367615>,  <21.494328, 24.920521, 18.407164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.694340, 25.047134, 18.367615>,  <22.027693, 25.258158, 18.301699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694340, 25.047134, 18.367615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156694, 0.511444, 0.844910,
		-0.530021, 0.678311, -0.508893,
		-0.833382, -0.527560, 0.164789,
		21.444324, 24.888866, 18.417051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407246, 25.745422, 18.535826>,  <22.027693, 25.258158, 18.301699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407246, 25.745422, 18.535826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348347, 25.372238, 18.667217>,  <21.313007, 25.148327, 18.746052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.348347, 25.372238, 18.667217>,  <21.407246, 25.745422, 18.535826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.348347, 25.372238, 18.667217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113086, 0.345801, 0.931468,
		-0.982614, 0.100010, -0.156423,
		-0.147247, -0.932963, 0.328479,
		21.304173, 25.092350, 18.765760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.756340, 25.788889, 18.836239>,  <21.407246, 25.745422, 18.535826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.756340, 25.788889, 18.836239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982414, 25.494610, 18.985537>,  <21.118059, 25.318043, 19.075115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.982414, 25.494610, 18.985537>,  <20.756340, 25.788889, 18.836239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982414, 25.494610, 18.985537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118482, 0.375358, 0.919276,
		-0.816410, -0.563786, 0.124981,
		0.565187, -0.735698, 0.373245,
		21.151970, 25.273901, 19.097509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350519, 25.667152, 19.538868>,  <20.756340, 25.788889, 18.836239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350519, 25.667152, 19.538868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693386, 25.463566, 19.570412>,  <20.899105, 25.341413, 19.589338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693386, 25.463566, 19.570412>,  <20.350519, 25.667152, 19.538868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693386, 25.463566, 19.570412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106556, 0.325046, 0.939676,
		-0.503897, -0.797055, 0.332852,
		0.857166, -0.508968, 0.078859,
		20.950537, 25.310875, 19.594069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198330, 25.285978, 20.220806>,  <20.350519, 25.667152, 19.538868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198330, 25.285978, 20.220806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585682, 25.311127, 20.124235>,  <20.818092, 25.326216, 20.066292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.585682, 25.311127, 20.124235>,  <20.198330, 25.285978, 20.220806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.585682, 25.311127, 20.124235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203313, 0.361950, 0.909756,
		0.144583, -0.930075, 0.337722,
		0.968380, 0.062872, -0.241428,
		20.876196, 25.329988, 20.051807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.628700, 24.865871, 20.651760>,  <20.198330, 25.285978, 20.220806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.628700, 24.865871, 20.651760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.901913, 25.134014, 20.535765>,  <21.065840, 25.294899, 20.466167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.901913, 25.134014, 20.535765>,  <20.628700, 24.865871, 20.651760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.901913, 25.134014, 20.535765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112552, 0.295686, 0.948632,
		0.721666, -0.680582, 0.126513,
		0.683030, 0.670356, -0.289988,
		21.106821, 25.335121, 20.448769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.187002, 24.735569, 21.133224>,  <20.628700, 24.865871, 20.651760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.187002, 24.735569, 21.133224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213387, 25.107052, 20.987265>,  <21.229218, 25.329941, 20.899689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213387, 25.107052, 20.987265>,  <21.187002, 24.735569, 21.133224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213387, 25.107052, 20.987265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270025, 0.335437, 0.902535,
		0.960591, -0.158065, -0.228648,
		0.065963, 0.928707, -0.364899,
		21.233175, 25.385664, 20.877794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777483, 25.021343, 21.518560>,  <21.187002, 24.735569, 21.133224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777483, 25.021343, 21.518560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.578453, 25.333851, 21.367809>,  <21.459034, 25.521355, 21.277359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.578453, 25.333851, 21.367809>,  <21.777483, 25.021343, 21.518560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.578453, 25.333851, 21.367809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139708, 0.500989, 0.854103,
		0.856095, 0.372330, -0.358429,
		-0.497577, 0.781269, -0.376877,
		21.429180, 25.568232, 21.254745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143953, 25.563745, 21.714252>,  <21.777483, 25.021343, 21.518560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143953, 25.563745, 21.714252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771610, 25.686405, 21.634787>,  <21.548204, 25.760002, 21.587107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771610, 25.686405, 21.634787>,  <22.143953, 25.563745, 21.714252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771610, 25.686405, 21.634787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110929, 0.755238, 0.645995,
		0.348133, 0.579293, -0.737037,
		-0.930859, 0.306651, -0.198663,
		21.492353, 25.778400, 21.575188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117607, 26.276575, 21.533335>,  <22.143953, 25.563745, 21.714252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117607, 26.276575, 21.533335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771580, 26.179764, 21.709097>,  <21.563963, 26.121677, 21.814554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.771580, 26.179764, 21.709097>,  <22.117607, 26.276575, 21.533335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.771580, 26.179764, 21.709097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141417, 0.722735, 0.676502,
		-0.481308, 0.647361, -0.590988,
		-0.865069, -0.242030, 0.439406,
		21.512058, 26.107155, 21.840919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.632174, 26.871740, 21.510681>,  <22.117607, 26.276575, 21.533335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.632174, 26.871740, 21.510681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645958, 26.616364, 21.818241>,  <21.654228, 26.463137, 22.002777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.645958, 26.616364, 21.818241>,  <21.632174, 26.871740, 21.510681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.645958, 26.616364, 21.818241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184237, 0.760228, 0.622985,
		-0.982277, 0.120191, 0.143824,
		0.034462, -0.638441, 0.768898,
		21.656296, 26.424831, 22.048910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241552, 27.022627, 22.138060>,  <21.632174, 26.871740, 21.510681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241552, 27.022627, 22.138060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492641, 27.285713, 21.971504>,  <21.643295, 27.443565, 21.871571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.492641, 27.285713, 21.971504>,  <21.241552, 27.022627, 22.138060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492641, 27.285713, 21.971504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539780, 0.753184, 0.375967,
		0.560895, -0.011245, 0.827811,
		0.627721, 0.657714, -0.416387,
		21.680958, 27.483027, 21.846588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617712, 27.572720, 22.584894>,  <21.241552, 27.022627, 22.138060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617712, 27.572720, 22.584894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545204, 27.760643, 22.239311>,  <21.501699, 27.873396, 22.031961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.545204, 27.760643, 22.239311>,  <21.617712, 27.572720, 22.584894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545204, 27.760643, 22.239311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587190, 0.653020, 0.478303,
		0.788891, 0.594009, 0.157493,
		-0.181270, 0.469807, -0.863958,
		21.490824, 27.901585, 21.980124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806505, 27.594536, 22.732698>,  <21.617712, 27.572720, 22.584894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806505, 27.594536, 22.732698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504257, 27.840927, 22.643606>,  <20.322908, 27.988762, 22.590151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504257, 27.840927, 22.643606>,  <20.806505, 27.594536, 22.732698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504257, 27.840927, 22.643606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352148, -0.668747, -0.654804,
		-0.552296, -0.416349, 0.722235,
		-0.755620, 0.615979, -0.222730,
		20.277571, 28.025721, 22.576788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310888, 27.030029, 22.589916>,  <20.806505, 27.594536, 22.732698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310888, 27.030029, 22.589916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176609, 27.379364, 22.448727>,  <20.096041, 27.588964, 22.364012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176609, 27.379364, 22.448727>,  <20.310888, 27.030029, 22.589916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176609, 27.379364, 22.448727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470438, -0.480081, -0.740412,
		-0.816085, -0.082502, 0.572013,
		-0.335698, 0.873336, -0.352975,
		20.075899, 27.641365, 22.342834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528742, 26.938368, 22.393061>,  <20.310888, 27.030029, 22.589916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528742, 26.938368, 22.393061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698734, 27.249687, 22.208174>,  <19.800730, 27.436478, 22.097240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.698734, 27.249687, 22.208174>,  <19.528742, 26.938368, 22.393061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.698734, 27.249687, 22.208174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509342, -0.216516, -0.832882,
		-0.748306, 0.589386, 0.304404,
		0.424980, 0.778296, -0.462219,
		19.826229, 27.483175, 22.069508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.036850, 27.059813, 21.909252>,  <19.528742, 26.938368, 22.393061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.036850, 27.059813, 21.909252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343430, 27.287979, 21.791147>,  <19.527378, 27.424879, 21.720284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.343430, 27.287979, 21.791147>,  <19.036850, 27.059813, 21.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343430, 27.287979, 21.791147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192355, -0.234749, -0.952834,
		-0.612826, 0.787093, -0.070201,
		0.766449, 0.570418, -0.295262,
		19.573364, 27.459105, 21.702568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760620, 27.478447, 21.330479>,  <19.036850, 27.059813, 21.909252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760620, 27.478447, 21.330479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155342, 27.413864, 21.335346>,  <19.392176, 27.375114, 21.338266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.155342, 27.413864, 21.335346>,  <18.760620, 27.478447, 21.330479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.155342, 27.413864, 21.335346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038484, -0.306872, -0.950972,
		0.157275, 0.937956, -0.309036,
		0.986805, -0.161457, 0.012167,
		19.451384, 27.365427, 21.338997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060360, 27.924517, 20.878832>,  <18.760620, 27.478447, 21.330479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060360, 27.924517, 20.878832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283272, 27.593521, 20.906265>,  <19.417019, 27.394924, 20.922726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.283272, 27.593521, 20.906265>,  <19.060360, 27.924517, 20.878832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.283272, 27.593521, 20.906265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076030, -0.133106, -0.988181,
		0.826838, 0.545477, -0.137091,
		0.557278, -0.827489, 0.068585,
		19.450455, 27.345274, 20.926840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.406889, 27.973007, 20.355917>,  <19.060360, 27.924517, 20.878832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.406889, 27.973007, 20.355917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417580, 27.582985, 20.444054>,  <19.423994, 27.348970, 20.496935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.417580, 27.582985, 20.444054>,  <19.406889, 27.973007, 20.355917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.417580, 27.582985, 20.444054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101883, -0.221928, -0.969726,
		0.994437, 0.003470, -0.105274,
		0.026728, -0.975057, 0.220340,
		19.425598, 27.290468, 20.510155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028696, 27.731812, 19.889151>,  <19.406889, 27.973007, 20.355917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028696, 27.731812, 19.889151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773235, 27.446472, 20.004568>,  <19.619959, 27.275269, 20.073818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773235, 27.446472, 20.004568>,  <20.028696, 27.731812, 19.889151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773235, 27.446472, 20.004568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055309, -0.331451, -0.941850,
		0.767507, -0.617472, 0.172226,
		-0.638650, -0.713351, 0.288543,
		19.581640, 27.232468, 20.091131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369453, 27.056005, 19.628513>,  <20.028696, 27.731812, 19.889151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369453, 27.056005, 19.628513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982235, 26.983360, 19.697685>,  <19.749905, 26.939774, 19.739189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982235, 26.983360, 19.697685>,  <20.369453, 27.056005, 19.628513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.982235, 26.983360, 19.697685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083249, -0.417742, -0.904744,
		0.236554, -0.890229, 0.389274,
		-0.968046, -0.181614, 0.172929,
		19.691822, 26.928877, 19.749563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247869, 26.468229, 19.250139>,  <20.369453, 27.056005, 19.628513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247869, 26.468229, 19.250139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867485, 26.576195, 19.310560>,  <19.639254, 26.640974, 19.346813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867485, 26.576195, 19.310560>,  <20.247869, 26.468229, 19.250139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867485, 26.576195, 19.310560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242907, -0.349370, -0.904951,
		-0.191485, -0.897267, 0.397801,
		-0.950963, 0.269913, 0.151054,
		19.582197, 26.657169, 19.355877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.738533, 25.895472, 19.004633>,  <20.247869, 26.468229, 19.250139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.738533, 25.895472, 19.004633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516983, 26.228512, 19.005104>,  <19.384052, 26.428335, 19.005386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.516983, 26.228512, 19.005104>,  <19.738533, 25.895472, 19.004633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.516983, 26.228512, 19.005104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241786, -0.159489, -0.957133,
		-0.796719, -0.530417, 0.289648,
		-0.553876, 0.832599, 0.001179,
		19.350821, 26.478291, 19.005459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110600, 25.698978, 18.828939>,  <19.738533, 25.895472, 19.004633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110600, 25.698978, 18.828939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033398, 26.086021, 18.763842>,  <18.987078, 26.318247, 18.724783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033398, 26.086021, 18.763842>,  <19.110600, 25.698978, 18.828939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033398, 26.086021, 18.763842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358729, -0.223964, -0.906175,
		-0.913271, -0.116514, 0.390334,
		-0.193003, 0.967608, -0.162743,
		18.975496, 26.376305, 18.715019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403992, 25.757456, 18.686573>,  <19.110600, 25.698978, 18.828939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403992, 25.757456, 18.686573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621616, 26.045376, 18.514116>,  <18.752192, 26.218128, 18.410643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.621616, 26.045376, 18.514116>,  <18.403992, 25.757456, 18.686573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621616, 26.045376, 18.514116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330815, -0.288199, -0.898612,
		-0.771074, 0.631531, 0.081322,
		0.544064, 0.719799, -0.431143,
		18.784836, 26.261316, 18.384773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981886, 25.921421, 18.014809>,  <18.403992, 25.757456, 18.686573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981886, 25.921421, 18.014809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332493, 26.101631, 17.946991>,  <18.542856, 26.209757, 17.906301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332493, 26.101631, 17.946991>,  <17.981886, 25.921421, 18.014809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332493, 26.101631, 17.946991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041758, -0.279716, -0.959174,
		-0.479554, 0.847813, -0.226363,
		0.876518, 0.450524, -0.169542,
		18.595448, 26.236788, 17.896128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.967932, 26.436584, 17.366779>,  <17.981886, 25.921421, 18.014809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.967932, 26.436584, 17.366779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332355, 26.285343, 17.432518>,  <18.551010, 26.194599, 17.471960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332355, 26.285343, 17.432518>,  <17.967932, 26.436584, 17.366779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332355, 26.285343, 17.432518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022482, -0.443600, -0.895943,
		0.411661, 0.812563, -0.412647,
		0.911060, -0.378101, 0.164345,
		18.605673, 26.171913, 17.481821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.231945, 26.488037, 16.705807>,  <17.967932, 26.436584, 17.366779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.231945, 26.488037, 16.705807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488808, 26.241917, 16.888689>,  <18.642925, 26.094244, 16.998419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488808, 26.241917, 16.888689>,  <18.231945, 26.488037, 16.705807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488808, 26.241917, 16.888689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037299, -0.570643, -0.820351,
		0.765666, 0.543846, -0.343491,
		0.642156, -0.615303, 0.457207,
		18.681454, 26.057325, 17.025850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.753918, 26.369972, 16.258680>,  <18.231945, 26.488037, 16.705807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.753918, 26.369972, 16.258680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802082, 26.052132, 16.496708>,  <18.830980, 25.861427, 16.639524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.802082, 26.052132, 16.496708>,  <18.753918, 26.369972, 16.258680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802082, 26.052132, 16.496708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010568, -0.598373, -0.801148,
		0.992668, 0.102754, -0.063652,
		0.120409, -0.794602, 0.595071,
		18.838205, 25.813751, 16.675230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324938, 26.034126, 15.937743>,  <18.753918, 26.369972, 16.258680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324938, 26.034126, 15.937743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150364, 25.744236, 16.151022>,  <19.045620, 25.570303, 16.278990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.150364, 25.744236, 16.151022>,  <19.324938, 26.034126, 15.937743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.150364, 25.744236, 16.151022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263934, -0.669668, -0.694179,
		0.860152, -0.162236, 0.483547,
		-0.436436, -0.724724, 0.533197,
		19.019432, 25.526819, 16.310982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.684452, 25.436243, 15.818429>,  <19.324938, 26.034126, 15.937743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.684452, 25.436243, 15.818429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.328201, 25.294281, 15.932151>,  <19.114450, 25.209105, 16.000383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.328201, 25.294281, 15.932151>,  <19.684452, 25.436243, 15.818429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.328201, 25.294281, 15.932151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004004, -0.631302, -0.775526,
		0.454722, -0.689565, 0.563675,
		-0.890624, -0.354906, 0.284305,
		19.061014, 25.187809, 16.017443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742584, 24.785217, 15.618539>,  <19.684452, 25.436243, 15.818429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742584, 24.785217, 15.618539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350536, 24.842098, 15.673888>,  <19.115309, 24.876226, 15.707098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.350536, 24.842098, 15.673888>,  <19.742584, 24.785217, 15.618539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.350536, 24.842098, 15.673888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196835, -0.608983, -0.768372,
		-0.024998, -0.780332, 0.624865,
		-0.980118, 0.142203, 0.138373,
		19.056501, 24.884760, 15.715400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.431585, 24.042721, 15.596533>,  <19.742584, 24.785217, 15.618539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.431585, 24.042721, 15.596533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.147858, 24.315739, 15.526107>,  <18.977621, 24.479549, 15.483851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.147858, 24.315739, 15.526107>,  <19.431585, 24.042721, 15.596533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147858, 24.315739, 15.526107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372550, -0.575049, -0.728371,
		-0.598397, -0.451050, 0.662175,
		-0.709315, 0.682548, -0.176069,
		18.935062, 24.520502, 15.473288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853664, 23.616426, 15.352981>,  <19.431585, 24.042721, 15.596533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853664, 23.616426, 15.352981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778568, 23.985527, 15.218349>,  <18.733511, 24.206987, 15.137569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.778568, 23.985527, 15.218349>,  <18.853664, 23.616426, 15.352981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778568, 23.985527, 15.218349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190648, -0.370391, -0.909101,
		-0.963539, -0.106506, 0.245457,
		-0.187740, 0.922750, -0.336581,
		18.722246, 24.262352, 15.117374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436583, 23.597719, 14.786999>,  <18.853664, 23.616426, 15.352981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436583, 23.597719, 14.786999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508167, 23.986645, 14.726897>,  <18.551117, 24.220001, 14.690837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.508167, 23.986645, 14.726897>,  <18.436583, 23.597719, 14.786999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508167, 23.986645, 14.726897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320349, -0.086809, -0.943314,
		-0.930242, 0.216949, 0.295945,
		0.178960, 0.972315, -0.150253,
		18.561855, 24.278339, 14.681821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878887, 23.965916, 14.411085>,  <18.436583, 23.597719, 14.786999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878887, 23.965916, 14.411085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203854, 24.192757, 14.356864>,  <18.398834, 24.328861, 14.324331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.203854, 24.192757, 14.356864>,  <17.878887, 23.965916, 14.411085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.203854, 24.192757, 14.356864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229164, 0.096781, -0.968565,
		-0.536156, 0.817942, 0.208586,
		0.812417, 0.567102, -0.135552,
		18.447578, 24.362886, 14.316198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.629343, 24.543312, 14.054468>,  <17.878887, 23.965916, 14.411085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.629343, 24.543312, 14.054468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022915, 24.541031, 13.983077>,  <18.259058, 24.539661, 13.940242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.022915, 24.541031, 13.983077>,  <17.629343, 24.543312, 14.054468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.022915, 24.541031, 13.983077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177143, 0.094907, -0.979598,
		0.022526, 0.995470, 0.092371,
		0.983927, -0.005704, -0.178478,
		18.318092, 24.539320, 13.929534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761786, 25.093763, 13.593505>,  <17.629343, 24.543312, 14.054468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761786, 25.093763, 13.593505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090210, 24.872295, 13.537919>,  <18.287264, 24.739414, 13.504567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.090210, 24.872295, 13.537919>,  <17.761786, 25.093763, 13.593505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.090210, 24.872295, 13.537919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045740, 0.178847, -0.982813,
		0.569006, 0.813305, 0.121519,
		0.821060, -0.553669, -0.138965,
		18.336529, 24.706194, 13.496229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258408, 25.502827, 13.177264>,  <17.761786, 25.093763, 13.593505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258408, 25.502827, 13.177264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.353355, 25.115532, 13.145850>,  <18.410324, 24.883154, 13.127002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.353355, 25.115532, 13.145850>,  <18.258408, 25.502827, 13.177264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.353355, 25.115532, 13.145850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097594, 0.056667, -0.993612,
		0.966504, 0.243519, -0.081043,
		0.237371, -0.968239, -0.078535,
		18.424566, 24.825060, 13.122290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697609, 25.493160, 12.587160>,  <18.258408, 25.502827, 13.177264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697609, 25.493160, 12.587160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584656, 25.113224, 12.640913>,  <18.516884, 24.885262, 12.673164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.584656, 25.113224, 12.640913>,  <18.697609, 25.493160, 12.587160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.584656, 25.113224, 12.640913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112598, -0.106296, -0.987939,
		0.952670, -0.294110, -0.076934,
		-0.282385, -0.949842, 0.134381,
		18.499941, 24.828272, 12.681228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103308, 25.218107, 12.074552>,  <18.697609, 25.493160, 12.587160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103308, 25.218107, 12.074552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814835, 24.952740, 12.154324>,  <18.641750, 24.793518, 12.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814835, 24.952740, 12.154324>,  <19.103308, 25.218107, 12.074552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814835, 24.952740, 12.154324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278912, 0.014549, -0.960206,
		0.634119, -0.748105, -0.195529,
		-0.721180, -0.663421, 0.199430,
		18.598480, 24.753714, 12.214152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.183474, 24.605387, 11.687557>,  <19.103308, 25.218107, 12.074552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.183474, 24.605387, 11.687557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.792076, 24.608173, 11.770020>,  <18.557238, 24.609846, 11.819497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.792076, 24.608173, 11.770020>,  <19.183474, 24.605387, 11.687557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.792076, 24.608173, 11.770020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203295, -0.201794, -0.958097,
		0.034924, -0.979403, 0.198871,
		-0.978495, 0.006969, 0.206155,
		18.498528, 24.610264, 11.831866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.870153, 23.986826, 11.432918>,  <19.183474, 24.605387, 11.687557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.870153, 23.986826, 11.432918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.567936, 24.247490, 11.459710>,  <18.386604, 24.403889, 11.475786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.567936, 24.247490, 11.459710>,  <18.870153, 23.986826, 11.432918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567936, 24.247490, 11.459710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268075, -0.214265, -0.939269,
		-0.597735, -0.727616, 0.336582,
		-0.755545, 0.651663, 0.066982,
		18.341272, 24.442989, 11.479805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217999, 23.588226, 11.044583>,  <18.870153, 23.986826, 11.432918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217999, 23.588226, 11.044583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.092808, 23.965576, 11.088574>,  <18.017694, 24.191986, 11.114969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.092808, 23.965576, 11.088574>,  <18.217999, 23.588226, 11.044583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092808, 23.965576, 11.088574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384737, -0.020060, -0.922808,
		-0.868345, -0.331129, 0.369229,
		-0.312975, 0.943372, 0.109978,
		17.998915, 24.248589, 11.121568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627934, 23.555698, 10.693921>,  <18.217999, 23.588226, 11.044583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627934, 23.555698, 10.693921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697308, 23.947617, 10.733764>,  <17.738932, 24.182768, 10.757669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.697308, 23.947617, 10.733764>,  <17.627934, 23.555698, 10.693921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.697308, 23.947617, 10.733764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249940, 0.141616, -0.957849,
		-0.952602, 0.141228, 0.269451,
		0.173433, 0.979796, 0.099605,
		17.749338, 24.241556, 10.763645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976496, 23.905195, 10.580006>,  <17.627934, 23.555698, 10.693921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976496, 23.905195, 10.580006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277515, 24.149952, 10.482635>,  <17.458128, 24.296806, 10.424213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.277515, 24.149952, 10.482635>,  <16.976496, 23.905195, 10.580006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.277515, 24.149952, 10.482635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314438, 0.009092, -0.949234,
		-0.578617, 0.790888, 0.199245,
		0.752550, 0.611893, -0.243424,
		17.503281, 24.333519, 10.409608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700010, 24.517832, 10.127024>,  <16.976496, 23.905195, 10.580006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700010, 24.517832, 10.127024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.091194, 24.457035, 10.069762>,  <17.325905, 24.420557, 10.035405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.091194, 24.457035, 10.069762>,  <16.700010, 24.517832, 10.127024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.091194, 24.457035, 10.069762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155707, -0.074120, -0.985019,
		0.139103, 0.985599, -0.096152,
		0.977960, -0.151990, -0.143154,
		17.384583, 24.411438, 10.026815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772120, 24.778757, 9.464697>,  <16.700010, 24.517832, 10.127024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772120, 24.778757, 9.464697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146835, 24.644241, 9.503335>,  <17.371666, 24.563532, 9.526518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146835, 24.644241, 9.503335>,  <16.772120, 24.778757, 9.464697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146835, 24.644241, 9.503335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114516, 0.033822, -0.992845,
		0.330617, 0.941151, 0.070194,
		0.936792, -0.336290, 0.096595,
		17.427874, 24.543354, 9.532313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075109, 25.088398, 8.947056>,  <16.772120, 24.778757, 9.464697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075109, 25.088398, 8.947056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326164, 24.785114, 9.017700>,  <17.476797, 24.603144, 9.060087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.326164, 24.785114, 9.017700>,  <17.075109, 25.088398, 8.947056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.326164, 24.785114, 9.017700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298566, 0.024918, -0.954064,
		0.718979, 0.651535, 0.242015,
		0.627636, -0.758209, 0.176611,
		17.514456, 24.557652, 9.070683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635927, 25.230148, 8.448337>,  <17.075109, 25.088398, 8.947056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635927, 25.230148, 8.448337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.637466, 24.846352, 8.561019>,  <17.638390, 24.616074, 8.628629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.637466, 24.846352, 8.561019>,  <17.635927, 25.230148, 8.448337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637466, 24.846352, 8.561019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267137, -0.270484, -0.924920,
		0.963651, 0.078813, 0.255275,
		0.003848, -0.959493, 0.281706,
		17.638620, 24.558504, 8.645531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104059, 24.982269, 8.103395>,  <17.635927, 25.230148, 8.448337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104059, 24.982269, 8.103395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.899502, 24.652641, 8.200870>,  <17.776768, 24.454865, 8.259355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.899502, 24.652641, 8.200870>,  <18.104059, 24.982269, 8.103395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899502, 24.652641, 8.200870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055527, -0.314667, -0.947576,
		0.857550, -0.471055, 0.206677,
		-0.511395, -0.824070, 0.243686,
		17.746082, 24.405420, 8.273975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526609, 24.483343, 7.730566>,  <18.104059, 24.982269, 8.103395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.526609, 24.483343, 7.730566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179203, 24.300495, 7.807218>,  <17.970758, 24.190786, 7.853209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.179203, 24.300495, 7.807218>,  <18.526609, 24.483343, 7.730566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179203, 24.300495, 7.807218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089153, -0.524378, -0.846806,
		0.487578, -0.718380, 0.496184,
		-0.868516, -0.457120, 0.191630,
		17.918648, 24.163359, 7.864707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.699835, 23.777325, 7.536288>,  <18.526609, 24.483343, 7.730566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.699835, 23.777325, 7.536288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303886, 23.832817, 7.548347>,  <18.066317, 23.866114, 7.555582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.303886, 23.832817, 7.548347>,  <18.699835, 23.777325, 7.536288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.303886, 23.832817, 7.548347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105175, -0.573968, -0.812095,
		-0.095361, -0.807040, 0.582746,
		-0.989871, 0.138733, 0.030146,
		18.006926, 23.874437, 7.557390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388884, 23.062546, 7.419494>,  <18.699835, 23.777325, 7.536288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388884, 23.062546, 7.419494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.131157, 23.351864, 7.320136>,  <17.976521, 23.525455, 7.260521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.131157, 23.351864, 7.320136>,  <18.388884, 23.062546, 7.419494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131157, 23.351864, 7.320136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296726, -0.535798, -0.790490,
		-0.704848, -0.435620, 0.559844,
		-0.644316, 0.723295, -0.248396,
		17.937862, 23.568851, 7.245617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.742163, 22.759356, 7.274320>,  <18.388884, 23.062546, 7.419494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.742163, 22.759356, 7.274320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739586, 23.109966, 7.081796>,  <17.738041, 23.320332, 6.966281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739586, 23.109966, 7.081796>,  <17.742163, 22.759356, 7.274320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739586, 23.109966, 7.081796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284584, -0.463025, -0.839417,
		-0.958630, 0.131568, 0.252427,
		-0.006440, 0.876526, -0.481312,
		17.737654, 23.372925, 6.937402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164927, 22.605545, 6.887617>,  <17.742163, 22.759356, 7.274320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164927, 22.605545, 6.887617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.337864, 22.924728, 6.719643>,  <17.441626, 23.116238, 6.618858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.337864, 22.924728, 6.719643>,  <17.164927, 22.605545, 6.887617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337864, 22.924728, 6.719643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094740, -0.422936, -0.901194,
		-0.896719, 0.429408, -0.107254,
		0.432342, 0.797956, -0.419936,
		17.467566, 23.164116, 6.593662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666048, 22.740210, 6.383204>,  <17.164927, 22.605545, 6.887617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666048, 22.740210, 6.383204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998367, 22.924694, 6.258587>,  <17.197760, 23.035385, 6.183817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998367, 22.924694, 6.258587>,  <16.666048, 22.740210, 6.383204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998367, 22.924694, 6.258587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173311, -0.317545, -0.932271,
		-0.528901, 0.828523, -0.183883,
		0.830799, 0.461210, -0.311542,
		17.247606, 23.063057, 6.165124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185377, 23.151981, 6.792397>,  <16.666048, 22.740210, 6.383204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.185377, 23.151981, 6.792397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810912, 23.032925, 6.867243>,  <15.586234, 22.961491, 6.912150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.810912, 23.032925, 6.867243>,  <16.185377, 23.151981, 6.792397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810912, 23.032925, 6.867243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023891, 0.584850, 0.810790,
		-0.350761, 0.754559, -0.554624,
		-0.936160, -0.297644, 0.187115,
		15.530064, 22.943632, 6.923378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823426, 23.700891, 7.088869>,  <16.185377, 23.151981, 6.792397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823426, 23.700891, 7.088869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608850, 23.386608, 7.212087>,  <15.480103, 23.198038, 7.286017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608850, 23.386608, 7.212087>,  <15.823426, 23.700891, 7.088869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608850, 23.386608, 7.212087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196528, 0.471276, 0.859811,
		-0.820736, 0.400699, -0.407226,
		-0.536442, -0.785709, 0.308044,
		15.447917, 23.150896, 7.304500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189823, 24.000341, 7.457023>,  <15.823426, 23.700891, 7.088869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.189823, 24.000341, 7.457023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227923, 23.623005, 7.584167>,  <15.250783, 23.396603, 7.660454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.227923, 23.623005, 7.584167>,  <15.189823, 24.000341, 7.457023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.227923, 23.623005, 7.584167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413118, 0.253058, 0.874812,
		-0.905683, -0.214640, -0.365607,
		0.095250, -0.943341, 0.317862,
		15.256498, 23.340002, 7.679526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697172, 23.969927, 7.847754>,  <15.189823, 24.000341, 7.457023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697172, 23.969927, 7.847754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891479, 23.648033, 7.984245>,  <15.008062, 23.454897, 8.066140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891479, 23.648033, 7.984245>,  <14.697172, 23.969927, 7.847754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891479, 23.648033, 7.984245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479725, 0.080886, 0.873682,
		-0.730682, -0.588100, -0.346759,
		0.485765, -0.804733, 0.341229,
		15.037208, 23.406612, 8.086614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.232916, 23.590034, 8.221627>,  <14.697172, 23.969927, 7.847754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.232916, 23.590034, 8.221627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559726, 23.443871, 8.400041>,  <14.755812, 23.356173, 8.507089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.559726, 23.443871, 8.400041>,  <14.232916, 23.590034, 8.221627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.559726, 23.443871, 8.400041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437375, 0.111319, 0.892363,
		-0.375731, -0.924166, -0.068871,
		0.817025, -0.365411, 0.446033,
		14.804833, 23.334248, 8.533851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965800, 23.232098, 8.851458>,  <14.232916, 23.590034, 8.221627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965800, 23.232098, 8.851458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361695, 23.236958, 8.908407>,  <14.599233, 23.239874, 8.942577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.361695, 23.236958, 8.908407>,  <13.965800, 23.232098, 8.851458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361695, 23.236958, 8.908407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142226, 0.179903, 0.973348,
		-0.013788, -0.983610, 0.179784,
		0.989738, 0.012149, 0.142375,
		14.658617, 23.240602, 8.951119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052270, 22.863216, 9.444343>,  <13.965800, 23.232098, 8.851458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052270, 22.863216, 9.444343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412047, 23.036312, 9.419886>,  <14.627913, 23.140169, 9.405211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412047, 23.036312, 9.419886>,  <14.052270, 22.863216, 9.444343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412047, 23.036312, 9.419886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054636, 0.027465, 0.998129,
		0.433610, -0.901100, 0.001060,
		0.899442, 0.432741, -0.061141,
		14.681880, 23.166134, 9.401544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386786, 22.484747, 9.874250>,  <14.052270, 22.863216, 9.444343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386786, 22.484747, 9.874250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573701, 22.835918, 9.832520>,  <14.685850, 23.046621, 9.807481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.573701, 22.835918, 9.832520>,  <14.386786, 22.484747, 9.874250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.573701, 22.835918, 9.832520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066093, 0.082985, 0.994357,
		0.881631, -0.471548, -0.019246,
		0.467289, 0.877927, -0.104328,
		14.713887, 23.099297, 9.801221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984345, 22.397152, 10.155910>,  <14.386786, 22.484747, 9.874250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984345, 22.397152, 10.155910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917125, 22.791424, 10.150276>,  <14.876793, 23.027987, 10.146895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.917125, 22.791424, 10.150276>,  <14.984345, 22.397152, 10.155910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917125, 22.791424, 10.150276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422161, 0.084872, 0.902539,
		0.890808, 0.145727, -0.430377,
		-0.168051, 0.985678, -0.014085,
		14.866710, 23.087128, 10.146050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.511403, 22.681818, 10.644642>,  <14.984345, 22.397152, 10.155910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.511403, 22.681818, 10.644642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242375, 22.973114, 10.592010>,  <15.080958, 23.147892, 10.560430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.242375, 22.973114, 10.592010>,  <15.511403, 22.681818, 10.644642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242375, 22.973114, 10.592010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162146, 0.318501, 0.933952,
		0.722051, 0.606813, -0.332296,
		-0.672570, 0.728241, -0.131581,
		15.040605, 23.191586, 10.552535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910566, 23.339838, 10.773495>,  <15.511403, 22.681818, 10.644642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910566, 23.339838, 10.773495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.517591, 23.390705, 10.828108>,  <15.281805, 23.421225, 10.860876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.517591, 23.390705, 10.828108>,  <15.910566, 23.339838, 10.773495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517591, 23.390705, 10.828108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171772, 0.330740, 0.927958,
		0.072848, 0.935115, -0.346775,
		-0.982440, 0.127166, 0.136533,
		15.222858, 23.428854, 10.869067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869201, 24.091751, 11.009872>,  <15.910566, 23.339838, 10.773495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869201, 24.091751, 11.009872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540563, 23.897408, 11.129152>,  <15.343380, 23.780802, 11.200720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.540563, 23.897408, 11.129152>,  <15.869201, 24.091751, 11.009872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540563, 23.897408, 11.129152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068832, 0.434716, 0.897933,
		-0.565901, 0.758263, -0.323718,
		-0.821595, -0.485859, 0.298199,
		15.294085, 23.751650, 11.218612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393289, 24.591194, 11.300941>,  <15.869201, 24.091751, 11.009872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393289, 24.591194, 11.300941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279809, 24.240589, 11.456501>,  <15.211721, 24.030226, 11.549837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.279809, 24.240589, 11.456501>,  <15.393289, 24.591194, 11.300941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279809, 24.240589, 11.456501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054955, 0.390034, 0.919159,
		-0.957337, 0.282137, -0.062484,
		-0.283699, -0.876511, 0.388899,
		15.194699, 23.977636, 11.573171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.841080, 24.818375, 11.817347>,  <15.393289, 24.591194, 11.300941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.841080, 24.818375, 11.817347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974450, 24.455494, 11.919960>,  <15.054472, 24.237764, 11.981528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.974450, 24.455494, 11.919960>,  <14.841080, 24.818375, 11.817347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.974450, 24.455494, 11.919960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131877, 0.314308, 0.940116,
		-0.933508, -0.279627, 0.224438,
		0.333425, -0.907204, 0.256533,
		15.074477, 24.183332, 11.996920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429491, 24.650806, 12.379721>,  <14.841080, 24.818375, 11.817347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429491, 24.650806, 12.379721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742797, 24.403465, 12.405447>,  <14.930780, 24.255060, 12.420883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.742797, 24.403465, 12.405447>,  <14.429491, 24.650806, 12.379721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742797, 24.403465, 12.405447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070568, 0.191217, 0.979008,
		-0.617669, -0.762284, 0.193410,
		0.783265, -0.618351, 0.064316,
		14.977777, 24.217960, 12.424742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.290925, 24.075655, 12.992592>,  <14.429491, 24.650806, 12.379721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.290925, 24.075655, 12.992592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686339, 24.104713, 12.939645>,  <14.923588, 24.122149, 12.907876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686339, 24.104713, 12.939645>,  <14.290925, 24.075655, 12.992592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686339, 24.104713, 12.939645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097816, 0.359721, 0.927918,
		0.115026, -0.930227, 0.348491,
		0.988535, 0.072647, -0.132368,
		14.982900, 24.126507, 12.899935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517040, 23.924883, 13.748672>,  <14.290925, 24.075655, 12.992592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517040, 23.924883, 13.748672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.821105, 24.055923, 13.524232>,  <15.003544, 24.134548, 13.389568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.821105, 24.055923, 13.524232>,  <14.517040, 23.924883, 13.748672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.821105, 24.055923, 13.524232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469084, 0.320824, 0.822819,
		0.449573, -0.888677, 0.090204,
		0.760160, 0.327604, -0.561098,
		15.049153, 24.154203, 13.355903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.091309, 23.522964, 13.961700>,  <14.517040, 23.924883, 13.748672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.091309, 23.522964, 13.961700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.233844, 23.865524, 13.812245>,  <15.319365, 24.071060, 13.722572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.233844, 23.865524, 13.812245>,  <15.091309, 23.522964, 13.961700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233844, 23.865524, 13.812245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383562, 0.230566, 0.894271,
		0.852000, -0.461975, -0.246322,
		0.356337, 0.856399, -0.373638,
		15.340745, 24.122444, 13.700154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800394, 23.578650, 14.208370>,  <15.091309, 23.522964, 13.961700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800394, 23.578650, 14.208370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686530, 23.935860, 14.068955>,  <15.618212, 24.150185, 13.985307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.686530, 23.935860, 14.068955>,  <15.800394, 23.578650, 14.208370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686530, 23.935860, 14.068955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311420, 0.430005, 0.847416,
		0.906635, 0.132685, -0.400510,
		-0.284660, 0.893023, -0.348537,
		15.601132, 24.203766, 13.964395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428829, 23.965214, 14.244326>,  <15.800394, 23.578650, 14.208370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428829, 23.965214, 14.244326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118034, 24.216755, 14.255889>,  <15.931558, 24.367680, 14.262827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118034, 24.216755, 14.255889>,  <16.428829, 23.965214, 14.244326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118034, 24.216755, 14.255889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388002, 0.442228, 0.808633,
		0.495727, 0.639514, -0.587602,
		-0.776987, 0.628852, 0.028909,
		15.884938, 24.405411, 14.264562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.766333, 24.640860, 14.449679>,  <16.428829, 23.965214, 14.244326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.766333, 24.640860, 14.449679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370724, 24.644276, 14.508691>,  <16.133358, 24.646326, 14.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.370724, 24.644276, 14.508691>,  <16.766333, 24.640860, 14.449679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.370724, 24.644276, 14.508691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142778, 0.312623, 0.939085,
		-0.038101, 0.949839, -0.310410,
		-0.989021, 0.008540, 0.147528,
		16.074017, 24.646837, 14.552949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612724, 25.260817, 14.875602>,  <16.766333, 24.640860, 14.449679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612724, 25.260817, 14.875602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285767, 25.041378, 14.945931>,  <16.089592, 24.909716, 14.988129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.285767, 25.041378, 14.945931>,  <16.612724, 25.260817, 14.875602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285767, 25.041378, 14.945931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164417, 0.070354, 0.983879,
		-0.552120, 0.833123, 0.032692,
		-0.817392, -0.548594, 0.175823,
		16.040548, 24.876801, 14.998678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166693, 25.657879, 15.238105>,  <16.612724, 25.260817, 14.875602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166693, 25.657879, 15.238105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064426, 25.280186, 15.321103>,  <16.003067, 25.053570, 15.370902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.064426, 25.280186, 15.321103>,  <16.166693, 25.657879, 15.238105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064426, 25.280186, 15.321103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088109, 0.190979, 0.977632,
		-0.962742, 0.268230, 0.034369,
		-0.255667, -0.944235, 0.207497,
		15.987726, 24.996916, 15.383352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851232, 25.751678, 15.950056>,  <16.166693, 25.657879, 15.238105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851232, 25.751678, 15.950056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931357, 25.364922, 15.886821>,  <15.979433, 25.132868, 15.848880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.931357, 25.364922, 15.886821>,  <15.851232, 25.751678, 15.950056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.931357, 25.364922, 15.886821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236415, -0.108886, 0.965532,
		-0.950780, -0.230785, 0.206777,
		0.200315, -0.966893, -0.158087,
		15.991452, 25.074854, 15.839395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618865, 25.333536, 16.571209>,  <15.851232, 25.751678, 15.950056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618865, 25.333536, 16.571209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881417, 25.084244, 16.401150>,  <16.038948, 24.934668, 16.299114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.881417, 25.084244, 16.401150>,  <15.618865, 25.333536, 16.571209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.881417, 25.084244, 16.401150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303842, -0.297428, 0.905106,
		-0.690540, -0.723270, -0.005862,
		0.656379, -0.623231, -0.425146,
		16.078331, 24.897274, 16.273605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518091, 24.782143, 17.002071>,  <15.618865, 25.333536, 16.571209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518091, 24.782143, 17.002071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854268, 24.708862, 16.798073>,  <16.055975, 24.664894, 16.675674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854268, 24.708862, 16.798073>,  <15.518091, 24.782143, 17.002071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854268, 24.708862, 16.798073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367192, -0.499605, 0.784580,
		-0.398529, -0.846660, -0.352620,
		0.840443, -0.183199, -0.509994,
		16.106401, 24.653902, 16.645075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.605321, 24.069231, 17.113289>,  <15.518091, 24.782143, 17.002071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.605321, 24.069231, 17.113289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971038, 24.212509, 17.037642>,  <16.190468, 24.298475, 16.992254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.971038, 24.212509, 17.037642>,  <15.605321, 24.069231, 17.113289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.971038, 24.212509, 17.037642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350747, -0.466590, 0.811954,
		0.202598, -0.808696, -0.552236,
		0.914293, 0.358196, -0.189117,
		16.245325, 24.319967, 16.980906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041941, 23.511856, 17.322031>,  <15.605321, 24.069231, 17.113289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041941, 23.511856, 17.322031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.281513, 23.831673, 17.304081>,  <16.425257, 24.023563, 17.293310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.281513, 23.831673, 17.304081>,  <16.041941, 23.511856, 17.322031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281513, 23.831673, 17.304081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587345, -0.400505, 0.703294,
		0.544339, -0.447583, -0.709482,
		0.598933, 0.799541, -0.044875,
		16.461193, 24.071535, 17.290619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772610, 23.213686, 17.271721>,  <16.041941, 23.511856, 17.322031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772610, 23.213686, 17.271721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789948, 23.593159, 17.397022>,  <16.800350, 23.820843, 17.472202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789948, 23.593159, 17.397022>,  <16.772610, 23.213686, 17.271721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789948, 23.593159, 17.397022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735388, -0.242535, 0.632757,
		0.676259, 0.202934, -0.708161,
		0.043346, 0.948680, 0.313252,
		16.802952, 23.877764, 17.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.482927, 23.342726, 17.355902>,  <16.772610, 23.213686, 17.271721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.482927, 23.342726, 17.355902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.283321, 23.607655, 17.579443>,  <17.163557, 23.766611, 17.713568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.283321, 23.607655, 17.579443>,  <17.482927, 23.342726, 17.355902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283321, 23.607655, 17.579443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518563, -0.288465, 0.804910,
		0.694318, 0.691462, -0.199506,
		-0.499014, 0.662320, 0.558853,
		17.133617, 23.806351, 17.747099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.948145, 23.687859, 17.714220>,  <17.482927, 23.342726, 17.355902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.948145, 23.687859, 17.714220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.610958, 23.736752, 17.923777>,  <17.408646, 23.766088, 18.049511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.610958, 23.736752, 17.923777>,  <17.948145, 23.687859, 17.714220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.610958, 23.736752, 17.923777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485643, -0.246020, 0.838823,
		0.231421, 0.961526, 0.148024,
		-0.842968, 0.122235, 0.523893,
		17.358068, 23.773422, 18.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.031452, 24.301956, 18.248371>,  <17.948145, 23.687859, 17.714220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.031452, 24.301956, 18.248371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739429, 24.062080, 18.379452>,  <17.564215, 23.918156, 18.458099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.739429, 24.062080, 18.379452>,  <18.031452, 24.301956, 18.248371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.739429, 24.062080, 18.379452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484533, -0.116072, 0.867038,
		-0.481916, 0.791770, 0.375308,
		-0.730058, -0.599689, 0.327702,
		17.520412, 23.882174, 18.477762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907164, 24.576105, 18.908449>,  <18.031452, 24.301956, 18.248371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907164, 24.576105, 18.908449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754143, 24.206718, 18.896702>,  <17.662331, 23.985086, 18.889652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.754143, 24.206718, 18.896702>,  <17.907164, 24.576105, 18.908449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754143, 24.206718, 18.896702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458632, -0.217396, 0.861624,
		-0.802066, 0.316148, 0.506696,
		-0.382554, -0.923466, -0.029370,
		17.639376, 23.929678, 18.887890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.768648, 24.555330, 19.514105>,  <17.907164, 24.576105, 18.908449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.768648, 24.555330, 19.514105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750469, 24.177193, 19.384949>,  <17.739563, 23.950310, 19.307455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.750469, 24.177193, 19.384949>,  <17.768648, 24.555330, 19.514105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.750469, 24.177193, 19.384949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355257, -0.317391, 0.879236,
		-0.933664, -0.074751, 0.350264,
		-0.045447, -0.945344, -0.322892,
		17.736835, 23.893589, 19.288080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408876, 24.211424, 20.024574>,  <17.768648, 24.555330, 19.514105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408876, 24.211424, 20.024574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.639080, 23.948360, 19.830141>,  <17.777203, 23.790524, 19.713482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.639080, 23.948360, 19.830141>,  <17.408876, 24.211424, 20.024574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.639080, 23.948360, 19.830141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276829, -0.402626, 0.872501,
		-0.769517, -0.636693, -0.049656,
		0.575508, -0.657658, -0.486083,
		17.811733, 23.751062, 19.684317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339050, 23.637959, 20.459326>,  <17.408876, 24.211424, 20.024574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339050, 23.637959, 20.459326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679127, 23.566326, 20.261292>,  <17.883173, 23.523348, 20.142471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.679127, 23.566326, 20.261292>,  <17.339050, 23.637959, 20.459326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.679127, 23.566326, 20.261292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380574, -0.440735, 0.812967,
		-0.363788, -0.879592, -0.306555,
		0.850189, -0.179081, -0.495084,
		17.934183, 23.512602, 20.112766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.430552, 23.031902, 20.583046>,  <17.339050, 23.637959, 20.459326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.430552, 23.031902, 20.583046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795841, 23.133205, 20.455370>,  <18.015015, 23.193987, 20.378765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.795841, 23.133205, 20.455370>,  <17.430552, 23.031902, 20.583046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.795841, 23.133205, 20.455370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390572, -0.320925, 0.862821,
		0.116080, -0.912616, -0.391992,
		0.913224, 0.253257, -0.319189,
		18.069809, 23.209183, 20.359613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825014, 22.489531, 20.534098>,  <17.430552, 23.031902, 20.583046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825014, 22.489531, 20.534098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114307, 22.764435, 20.561253>,  <18.287884, 22.929377, 20.577545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.114307, 22.764435, 20.561253>,  <17.825014, 22.489531, 20.534098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.114307, 22.764435, 20.561253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347261, -0.446874, 0.824447,
		0.596946, -0.572693, -0.561853,
		0.723233, 0.687260, 0.067886,
		18.331278, 22.970613, 20.581617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.725681, 22.254919, 21.192667>,  <17.825014, 22.489531, 20.534098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.725681, 22.254919, 21.192667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573593, 21.912582, 21.332932>,  <17.482340, 21.707180, 21.417089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.573593, 21.912582, 21.332932>,  <17.725681, 22.254919, 21.192667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573593, 21.912582, 21.332932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408419, -0.184803, -0.893891,
		0.829834, -0.483094, -0.279277,
		-0.380223, -0.855844, 0.350660,
		17.459526, 21.655828, 21.438129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987555, 21.638081, 20.807457>,  <17.725681, 22.254919, 21.192667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987555, 21.638081, 20.807457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634449, 21.544724, 20.970556>,  <17.422586, 21.488710, 21.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.634449, 21.544724, 20.970556>,  <17.987555, 21.638081, 20.807457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634449, 21.544724, 20.970556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296234, -0.397118, -0.868644,
		0.364658, -0.887596, 0.281422,
		-0.882763, -0.233392, 0.407748,
		17.369619, 21.474707, 21.092880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827749, 20.944683, 20.623175>,  <17.987555, 21.638081, 20.807457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827749, 20.944683, 20.623175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472794, 21.102268, 20.718950>,  <17.259819, 21.196819, 20.776415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472794, 21.102268, 20.718950>,  <17.827749, 20.944683, 20.623175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472794, 21.102268, 20.718950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377461, -0.322680, -0.867987,
		-0.264687, -0.860625, 0.435048,
		-0.887392, 0.393958, 0.239443,
		17.206577, 21.220457, 20.790783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376678, 20.340580, 20.372274>,  <17.827749, 20.944683, 20.623175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376678, 20.340580, 20.372274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157833, 20.673977, 20.403151>,  <17.026525, 20.874014, 20.421677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.157833, 20.673977, 20.403151>,  <17.376678, 20.340580, 20.372274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.157833, 20.673977, 20.403151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558711, -0.294959, -0.775139,
		-0.623305, -0.467216, 0.627057,
		-0.547114, 0.833492, 0.077189,
		16.993698, 20.924025, 20.426308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722315, 20.157742, 20.207232>,  <17.376678, 20.340580, 20.372274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722315, 20.157742, 20.207232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716583, 20.554569, 20.157290>,  <16.713144, 20.792665, 20.127325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.716583, 20.554569, 20.157290>,  <16.722315, 20.157742, 20.207232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716583, 20.554569, 20.157290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580549, -0.109921, -0.806772,
		-0.814099, 0.060923, 0.577521,
		-0.014330, 0.992071, -0.124855,
		16.712284, 20.852190, 20.119833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052742, 20.344076, 20.025856>,  <16.722315, 20.157742, 20.207232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052742, 20.344076, 20.025856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268559, 20.654217, 19.894569>,  <16.398048, 20.840302, 19.815798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268559, 20.654217, 19.894569>,  <16.052742, 20.344076, 20.025856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268559, 20.654217, 19.894569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512422, -0.006923, -0.858706,
		-0.668072, 0.631492, 0.393572,
		0.539541, 0.775352, -0.328215,
		16.430420, 20.886822, 19.796104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615726, 20.811684, 19.647747>,  <16.052742, 20.344076, 20.025856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615726, 20.811684, 19.647747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972877, 20.932579, 19.514229>,  <16.187168, 21.005117, 19.434118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.972877, 20.932579, 19.514229>,  <15.615726, 20.811684, 19.647747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.972877, 20.932579, 19.514229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351074, 0.003042, -0.936343,
		-0.281984, 0.953227, 0.108825,
		0.892879, 0.302240, -0.333795,
		16.240740, 21.023251, 19.414091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424399, 21.330317, 19.263592>,  <15.615726, 20.811684, 19.647747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.424399, 21.330317, 19.263592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796100, 21.241619, 19.145391>,  <16.019119, 21.188400, 19.074471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.796100, 21.241619, 19.145391>,  <15.424399, 21.330317, 19.263592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.796100, 21.241619, 19.145391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225706, 0.292485, -0.929252,
		0.292485, 0.930205, 0.221744,
		0.929252, -0.221744, -0.295501,
		16.074875, 21.175097, 19.056742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.602244, 21.894106, 18.888155>,  <15.424399, 21.330317, 19.263592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.602244, 21.894106, 18.888155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855945, 21.605274, 18.777645>,  <16.008165, 21.431976, 18.711338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.855945, 21.605274, 18.777645>,  <15.602244, 21.894106, 18.888155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855945, 21.605274, 18.777645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277324, 0.121083, -0.953116,
		0.721676, 0.681134, -0.123452,
		0.634252, -0.722077, -0.276277,
		16.046221, 21.388651, 18.694761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897320, 22.106871, 18.192806>,  <15.602244, 21.894106, 18.888155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.897320, 22.106871, 18.192806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958644, 21.711628, 18.197533>,  <15.995439, 21.474482, 18.200369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958644, 21.711628, 18.197533>,  <15.897320, 22.106871, 18.192806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958644, 21.711628, 18.197533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050946, -0.019843, -0.998504,
		0.986864, 0.152480, -0.053382,
		0.153311, -0.988107, 0.011814,
		16.004637, 21.415195, 18.201077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.340471, 22.017584, 17.677687>,  <15.897320, 22.106871, 18.192806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.340471, 22.017584, 17.677687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188366, 21.652969, 17.740294>,  <16.097103, 21.434200, 17.777857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188366, 21.652969, 17.740294>,  <16.340471, 22.017584, 17.677687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188366, 21.652969, 17.740294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144272, -0.108697, -0.983550,
		0.913556, -0.396590, -0.090176,
		-0.380264, -0.911538, 0.156518,
		16.074287, 21.379509, 17.787249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427280, 21.650185, 17.115713>,  <16.340471, 22.017584, 17.677687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427280, 21.650185, 17.115713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180103, 21.381916, 17.279833>,  <16.031797, 21.220955, 17.378305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180103, 21.381916, 17.279833>,  <16.427280, 21.650185, 17.115713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180103, 21.381916, 17.279833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312342, -0.269506, -0.910938,
		0.721519, -0.691062, -0.042940,
		-0.617942, -0.670672, 0.410301,
		15.994720, 21.180716, 17.402924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.468023, 20.902693, 16.899746>,  <16.427280, 21.650185, 17.115713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.468023, 20.902693, 16.899746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084305, 20.992725, 16.967962>,  <15.854074, 21.046745, 17.008892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084305, 20.992725, 16.967962>,  <16.468023, 20.902693, 16.899746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084305, 20.992725, 16.967962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224649, -0.242327, -0.943828,
		-0.171109, -0.943725, 0.283028,
		-0.959299, 0.225079, 0.170543,
		15.796515, 21.060249, 17.019125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122168, 20.459539, 16.540165>,  <16.468023, 20.902693, 16.899746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122168, 20.459539, 16.540165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838021, 20.733219, 16.606205>,  <15.667534, 20.897427, 16.645828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838021, 20.733219, 16.606205>,  <16.122168, 20.459539, 16.540165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838021, 20.733219, 16.606205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387939, -0.184890, -0.902950,
		-0.587271, -0.705471, 0.396766,
		-0.710363, 0.684198, 0.165099,
		15.624912, 20.938478, 16.655735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.499714, 20.167923, 16.375935>,  <16.122168, 20.459539, 16.540165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.499714, 20.167923, 16.375935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420136, 20.559914, 16.372581>,  <15.372390, 20.795107, 16.370569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.420136, 20.559914, 16.372581>,  <15.499714, 20.167923, 16.375935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.420136, 20.559914, 16.372581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445187, -0.097989, -0.890060,
		-0.873058, -0.173340, 0.455766,
		-0.198943, 0.979975, -0.008382,
		15.360454, 20.853907, 16.370068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678112, 20.212875, 16.202379>,  <15.499714, 20.167923, 16.375935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678112, 20.212875, 16.202379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.884395, 20.550468, 16.143404>,  <15.008164, 20.753025, 16.108019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.884395, 20.550468, 16.143404>,  <14.678112, 20.212875, 16.202379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.884395, 20.550468, 16.143404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493779, 0.152149, -0.856173,
		-0.700164, 0.514336, 0.495206,
		0.515705, 0.843985, -0.147439,
		15.039106, 20.803663, 16.099173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125485, 20.608837, 16.011816>,  <14.678112, 20.212875, 16.202379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125485, 20.608837, 16.011816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450570, 20.805901, 15.887374>,  <14.645621, 20.924139, 15.812709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.450570, 20.805901, 15.887374>,  <14.125485, 20.608837, 16.011816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.450570, 20.805901, 15.887374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530697, 0.405456, -0.744289,
		-0.240542, 0.769995, 0.590972,
		0.812712, 0.492660, -0.311105,
		14.694384, 20.953699, 15.794043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.811947, 21.143087, 15.629247>,  <14.125485, 20.608837, 16.011816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.811947, 21.143087, 15.629247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187158, 21.163696, 15.492162>,  <14.412284, 21.176062, 15.409911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.187158, 21.163696, 15.492162>,  <13.811947, 21.143087, 15.629247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187158, 21.163696, 15.492162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335589, 0.381927, -0.861111,
		0.086525, 0.922755, 0.375548,
		0.938026, 0.051522, -0.342712,
		14.468566, 21.179153, 15.389348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771066, 21.719677, 15.224602>,  <13.811947, 21.143087, 15.629247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771066, 21.719677, 15.224602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065560, 21.486465, 15.087176>,  <14.242257, 21.346539, 15.004721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065560, 21.486465, 15.087176>,  <13.771066, 21.719677, 15.224602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065560, 21.486465, 15.087176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199735, 0.297857, -0.933481,
		0.646578, 0.755884, 0.102842,
		0.736236, -0.583027, -0.343564,
		14.286431, 21.311558, 14.984107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147958, 22.091713, 14.918797>,  <13.771066, 21.719677, 15.224602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147958, 22.091713, 14.918797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226666, 21.736713, 14.752124>,  <14.273891, 21.523714, 14.652120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226666, 21.736713, 14.752124>,  <14.147958, 22.091713, 14.918797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226666, 21.736713, 14.752124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080518, 0.408930, -0.909007,
		0.977138, 0.212417, 0.009006,
		0.196771, -0.887500, -0.416684,
		14.285698, 21.470463, 14.627119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537554, 22.216423, 14.289343>,  <14.147958, 22.091713, 14.918797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537554, 22.216423, 14.289343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430404, 21.840340, 14.205199>,  <14.366114, 21.614689, 14.154713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430404, 21.840340, 14.205199>,  <14.537554, 22.216423, 14.289343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430404, 21.840340, 14.205199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087898, 0.241278, -0.966467,
		0.959436, -0.240402, -0.147275,
		-0.267875, -0.940208, -0.210360,
		14.350041, 21.558277, 14.142091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829599, 22.162794, 13.631436>,  <14.537554, 22.216423, 14.289343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829599, 22.162794, 13.631436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.570050, 21.862083, 13.678420>,  <14.414321, 21.681658, 13.706611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.570050, 21.862083, 13.678420>,  <14.829599, 22.162794, 13.631436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.570050, 21.862083, 13.678420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156079, -0.019583, -0.987550,
		0.744718, -0.659127, -0.104630,
		-0.648872, -0.751777, 0.117459,
		14.375388, 21.636551, 13.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.074378, 21.746077, 13.143105>,  <14.829599, 22.162794, 13.631436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.074378, 21.746077, 13.143105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686152, 21.676075, 13.209288>,  <14.453217, 21.634073, 13.248998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686152, 21.676075, 13.209288>,  <15.074378, 21.746077, 13.143105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686152, 21.676075, 13.209288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148171, -0.107703, -0.983080,
		0.189865, -0.978659, 0.078602,
		-0.970565, -0.175006, 0.165458,
		14.394983, 21.623573, 13.258925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951166, 21.196960, 12.694698>,  <15.074378, 21.746077, 13.143105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951166, 21.196960, 12.694698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583537, 21.336842, 12.767376>,  <14.362960, 21.420771, 12.810983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.583537, 21.336842, 12.767376>,  <14.951166, 21.196960, 12.694698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.583537, 21.336842, 12.767376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252251, -0.167808, -0.953000,
		-0.302776, -0.921710, 0.242440,
		-0.919073, 0.349702, 0.181694,
		14.307816, 21.441751, 12.821884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518343, 20.740032, 12.434779>,  <14.951166, 21.196960, 12.694698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518343, 20.740032, 12.434779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.341794, 21.097851, 12.463006>,  <14.235865, 21.312542, 12.479942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.341794, 21.097851, 12.463006>,  <14.518343, 20.740032, 12.434779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.341794, 21.097851, 12.463006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356794, -0.102798, -0.928510,
		-0.823340, -0.434995, 0.364541,
		-0.441371, 0.894546, 0.070566,
		14.209383, 21.366215, 12.484176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.922507, 20.678928, 12.124066>,  <14.518343, 20.740032, 12.434779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.922507, 20.678928, 12.124066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901410, 21.077900, 12.143460>,  <13.888752, 21.317284, 12.155097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901410, 21.077900, 12.143460>,  <13.922507, 20.678928, 12.124066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901410, 21.077900, 12.143460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407471, 0.022832, -0.912933,
		-0.911694, -0.067908, 0.405220,
		-0.052743, 0.997431, 0.048486,
		13.885587, 21.377129, 12.158006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307658, 20.785114, 11.941628>,  <13.922507, 20.678928, 12.124066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.307658, 20.785114, 11.941628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.510865, 21.122398, 11.871297>,  <13.632790, 21.324768, 11.829098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.510865, 21.122398, 11.871297>,  <13.307658, 20.785114, 11.941628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.510865, 21.122398, 11.871297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469655, 0.100051, -0.877163,
		-0.722040, 0.528193, 0.446845,
		0.508018, 0.843209, -0.175828,
		13.663271, 21.375360, 11.818548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769670, 21.259775, 11.787875>,  <13.307658, 20.785114, 11.941628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769670, 21.259775, 11.787875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.110654, 21.395023, 11.628382>,  <13.315244, 21.476171, 11.532686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.110654, 21.395023, 11.628382>,  <12.769670, 21.259775, 11.787875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.110654, 21.395023, 11.628382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393088, -0.088282, -0.915253,
		-0.344666, 0.936953, 0.057654,
		0.852460, 0.338119, -0.398733,
		13.366392, 21.496460, 11.508761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.602687, 21.777422, 11.104032>,  <12.769670, 21.259775, 11.787875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.602687, 21.777422, 11.104032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977183, 21.638241, 11.084520>,  <13.201881, 21.554731, 11.072814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977183, 21.638241, 11.084520>,  <12.602687, 21.777422, 11.104032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977183, 21.638241, 11.084520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064304, -0.033205, -0.997378,
		0.345423, 0.936923, -0.053462,
		0.936241, -0.347955, -0.048778,
		13.258056, 21.533854, 11.069887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005337, 22.202997, 10.688554>,  <12.602687, 21.777422, 11.104032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005337, 22.202997, 10.688554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205356, 21.856640, 10.683206>,  <13.325367, 21.648825, 10.679996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205356, 21.856640, 10.683206>,  <13.005337, 22.202997, 10.688554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205356, 21.856640, 10.683206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140859, -0.066092, -0.987821,
		0.854466, 0.495840, -0.155018,
		0.500047, -0.865895, -0.013370,
		13.355370, 21.596870, 10.679194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348054, 22.207182, 10.009759>,  <13.005337, 22.202997, 10.688554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348054, 22.207182, 10.009759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346118, 21.827351, 10.135158>,  <13.344956, 21.599453, 10.210397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346118, 21.827351, 10.135158>,  <13.348054, 22.207182, 10.009759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346118, 21.827351, 10.135158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065659, -0.312523, -0.947638,
		0.997830, -0.025169, -0.060836,
		-0.004839, -0.949577, 0.313497,
		13.344666, 21.542477, 10.229207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.849972, 21.856073, 9.568684>,  <13.348054, 22.207182, 10.009759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.849972, 21.856073, 9.568684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.663505, 21.556686, 9.757356>,  <13.551624, 21.377054, 9.870559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.663505, 21.556686, 9.757356>,  <13.849972, 21.856073, 9.568684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.663505, 21.556686, 9.757356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052566, -0.508781, -0.859290,
		0.883133, -0.425368, 0.197834,
		-0.466169, -0.748468, 0.471681,
		13.523654, 21.332146, 9.898860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184855, 21.312080, 9.372501>,  <13.849972, 21.856073, 9.568684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.184855, 21.312080, 9.372501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821067, 21.181396, 9.475364>,  <13.602795, 21.102985, 9.537081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821067, 21.181396, 9.475364>,  <14.184855, 21.312080, 9.372501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821067, 21.181396, 9.475364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049981, -0.528104, -0.847708,
		0.412759, -0.783816, 0.463964,
		-0.909468, -0.326710, 0.257156,
		13.548226, 21.083384, 9.552510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.225716, 20.634241, 9.140020>,  <14.184855, 21.312080, 9.372501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.225716, 20.634241, 9.140020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831563, 20.692715, 9.175011>,  <13.595071, 20.727798, 9.196005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.831563, 20.692715, 9.175011>,  <14.225716, 20.634241, 9.140020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.831563, 20.692715, 9.175011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158456, -0.597929, -0.785730,
		-0.062556, -0.788106, 0.612353,
		-0.985382, 0.146183, 0.087476,
		13.535948, 20.736570, 9.201254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991237, 19.900280, 9.037552>,  <14.225716, 20.634241, 9.140020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991237, 19.900280, 9.037552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696361, 20.166012, 8.988208>,  <13.519435, 20.325451, 8.958601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.696361, 20.166012, 8.988208>,  <13.991237, 19.900280, 9.037552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.696361, 20.166012, 8.988208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338307, -0.520935, -0.783694,
		-0.584895, -0.535996, 0.608775,
		-0.737188, 0.664331, -0.123361,
		13.475204, 20.365311, 8.951200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399752, 19.540913, 9.049690>,  <13.991237, 19.900280, 9.037552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399752, 19.540913, 9.049690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302167, 19.871559, 8.846835>,  <13.243616, 20.069946, 8.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302167, 19.871559, 8.846835>,  <13.399752, 19.540913, 9.049690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302167, 19.871559, 8.846835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378981, -0.562618, -0.734734,
		-0.892668, 0.012949, 0.450529,
		-0.243962, 0.826615, -0.507138,
		13.228978, 20.119543, 8.694694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.827820, 19.387180, 8.943208>,  <13.399752, 19.540913, 9.049690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.827820, 19.387180, 8.943208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917886, 19.660564, 8.665451>,  <12.971926, 19.824594, 8.498796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.917886, 19.660564, 8.665451>,  <12.827820, 19.387180, 8.943208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.917886, 19.660564, 8.665451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392801, -0.588532, -0.706638,
		-0.891632, 0.431868, 0.135948,
		0.225165, 0.683462, -0.694393,
		12.985435, 19.865602, 8.457133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243067, 19.551092, 8.654279>,  <12.827820, 19.387180, 8.943208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.243067, 19.551092, 8.654279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519713, 19.644184, 8.380782>,  <12.685701, 19.700039, 8.216684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519713, 19.644184, 8.380782>,  <12.243067, 19.551092, 8.654279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519713, 19.644184, 8.380782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315397, -0.754321, -0.575781,
		-0.649763, 0.613870, -0.448299,
		0.691616, 0.232729, -0.683743,
		12.727199, 19.714003, 8.175659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902628, 19.543312, 8.053015>,  <12.243067, 19.551092, 8.654279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902628, 19.543312, 8.053015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285266, 19.503490, 7.943460>,  <12.514849, 19.479597, 7.877726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.285266, 19.503490, 7.943460>,  <11.902628, 19.543312, 8.053015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285266, 19.503490, 7.943460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261882, -0.705968, -0.658048,
		-0.127844, 0.701212, -0.701397,
		0.956595, -0.099556, -0.273889,
		12.572245, 19.473623, 7.861293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.863049, 19.564337, 7.340575>,  <11.902628, 19.543312, 8.053015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.863049, 19.564337, 7.340575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217147, 19.394794, 7.417190>,  <12.429605, 19.293068, 7.463159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.217147, 19.394794, 7.417190>,  <11.863049, 19.564337, 7.340575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.217147, 19.394794, 7.417190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262807, -0.795569, -0.545896,
		0.383763, 0.432914, -0.815666,
		0.885245, -0.423857, 0.191537,
		12.482720, 19.267637, 7.474651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.233832, 19.359325, 6.766272>,  <11.863049, 19.564337, 7.340575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.233832, 19.359325, 6.766272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.305350, 19.106972, 7.068270>,  <12.348261, 18.955559, 7.249469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.305350, 19.106972, 7.068270>,  <12.233832, 19.359325, 6.766272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.305350, 19.106972, 7.068270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359756, -0.756143, -0.546647,
		0.915756, -0.173877, -0.362158,
		0.178794, -0.630884, 0.754996,
		12.358989, 18.917707, 7.294768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.791172, 18.839256, 6.528784>,  <12.233832, 19.359325, 6.766272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.791172, 18.839256, 6.528784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.476659, 18.745319, 6.757382>,  <12.287951, 18.688957, 6.894541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.476659, 18.745319, 6.757382>,  <12.791172, 18.839256, 6.528784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.476659, 18.745319, 6.757382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140015, -0.833167, -0.535004,
		0.601792, -0.500683, 0.622224,
		-0.786284, -0.234840, 0.571496,
		12.240773, 18.674868, 6.928831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.964264, 18.197151, 6.821051>,  <12.791172, 18.839256, 6.528784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.964264, 18.197151, 6.821051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567519, 18.247963, 6.817644>,  <12.329473, 18.278450, 6.815600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567519, 18.247963, 6.817644>,  <12.964264, 18.197151, 6.821051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567519, 18.247963, 6.817644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110752, -0.893897, -0.434375,
		-0.062790, -0.429898, 0.900692,
		-0.991863, 0.127028, -0.008516,
		12.269960, 18.286072, 6.815089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555001, 17.652454, 7.314367>,  <12.964264, 18.197151, 6.821051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555001, 17.652454, 7.314367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430116, 17.788532, 6.959562>,  <12.355185, 17.870178, 6.746679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.430116, 17.788532, 6.959562>,  <12.555001, 17.652454, 7.314367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.430116, 17.788532, 6.959562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025729, -0.930315, -0.365857,
		-0.949664, -0.137047, 0.281703,
		-0.312212, 0.340194, -0.887012,
		12.336452, 17.890591, 6.693459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843080, 17.361048, 7.045713>,  <12.555001, 17.652454, 7.314367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843080, 17.361048, 7.045713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.078147, 17.435307, 6.730706>,  <12.219187, 17.479862, 6.541702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.078147, 17.435307, 6.730706>,  <11.843080, 17.361048, 7.045713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.078147, 17.435307, 6.730706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107437, -0.946797, -0.303369,
		-0.801938, 0.262889, -0.536456,
		0.587667, 0.185648, -0.787516,
		12.254447, 17.491001, 6.494452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.052842, 17.441414, 7.266191>,  <11.843080, 17.361048, 7.045713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.052842, 17.441414, 7.266191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091924, 17.801895, 7.097295>,  <11.115373, 18.018185, 6.995957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.091924, 17.801895, 7.097295>,  <11.052842, 17.441414, 7.266191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.091924, 17.801895, 7.097295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001631, -0.424125, -0.905602,
		-0.995214, 0.089170, -0.039969,
		0.097705, 0.901203, -0.422240,
		11.121235, 18.072256, 6.970623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.458097, 17.521843, 6.782623>,  <11.052842, 17.441414, 7.266191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.458097, 17.521843, 6.782623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767596, 17.752892, 6.678573>,  <10.953296, 17.891521, 6.616142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.767596, 17.752892, 6.678573>,  <10.458097, 17.521843, 6.782623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767596, 17.752892, 6.678573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005571, -0.416811, -0.908976,
		-0.633468, 0.701870, -0.325725,
		0.773749, 0.577622, -0.260126,
		10.999721, 17.926178, 6.600535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.904105, 16.879719, 6.714169>,  <10.458097, 17.521843, 6.782623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.904105, 16.879719, 6.714169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.189202, 16.764133, 6.458513>,  <11.360260, 16.694782, 6.305120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.189202, 16.764133, 6.458513>,  <10.904105, 16.879719, 6.714169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.189202, 16.764133, 6.458513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513893, 0.405054, -0.756204,
		0.477402, 0.867428, 0.140203,
		0.712742, -0.288964, -0.639139,
		11.403025, 16.677444, 6.266772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198133, 17.443474, 6.321248>,  <10.904105, 16.879719, 6.714169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198133, 17.443474, 6.321248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193341, 17.081329, 6.151461>,  <11.190467, 16.864042, 6.049588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.193341, 17.081329, 6.151461>,  <11.198133, 17.443474, 6.321248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.193341, 17.081329, 6.151461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409731, 0.391669, -0.823843,
		0.912128, 0.164051, -0.375646,
		-0.011977, -0.905364, -0.424469,
		11.189748, 16.809721, 6.024120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.545397, 17.447815, 5.595997>,  <11.198133, 17.443474, 6.321248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.545397, 17.447815, 5.595997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289567, 17.142033, 5.628384>,  <11.136069, 16.958563, 5.647815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.289567, 17.142033, 5.628384>,  <11.545397, 17.447815, 5.595997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.289567, 17.142033, 5.628384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497259, 0.331091, -0.801943,
		0.586242, -0.553161, -0.591889,
		-0.639573, -0.764455, 0.080965,
		11.097695, 16.912697, 5.652673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.999759, 17.980198, 5.368999>,  <11.545397, 17.447815, 5.595997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.999759, 17.980198, 5.368999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196038, 17.634655, 5.323460>,  <12.313806, 17.427328, 5.296136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.196038, 17.634655, 5.323460>,  <11.999759, 17.980198, 5.368999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196038, 17.634655, 5.323460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785452, 0.495107, -0.371393,
		0.377199, 0.092820, 0.921469,
		0.490699, -0.863859, -0.113848,
		12.343248, 17.375498, 5.289305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066844, 17.571489, 4.820877>,  <11.999759, 17.980198, 5.368999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066844, 17.571489, 4.820877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367967, 17.308346, 4.811893>,  <12.548640, 17.150459, 4.806503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.367967, 17.308346, 4.811893>,  <12.066844, 17.571489, 4.820877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.367967, 17.308346, 4.811893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276620, 0.347136, -0.896090,
		0.597298, 0.668369, 0.443303,
		0.752806, -0.657859, -0.022459,
		12.593808, 17.110989, 4.805156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741287, 17.952398, 4.928417>,  <12.066844, 17.571489, 4.820877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741287, 17.952398, 4.928417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755851, 17.620090, 4.706247>,  <12.764589, 17.420706, 4.572946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.755851, 17.620090, 4.706247>,  <12.741287, 17.952398, 4.928417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.755851, 17.620090, 4.706247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436623, 0.513162, -0.738935,
		0.898907, -0.215607, 0.381417,
		0.036409, -0.830770, -0.555424,
		12.766773, 17.370859, 4.539620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440418, 17.815718, 4.707925>,  <12.741287, 17.952398, 4.928417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440418, 17.815718, 4.707925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209937, 17.650433, 4.425862>,  <13.071649, 17.551262, 4.256625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.209937, 17.650433, 4.425862>,  <13.440418, 17.815718, 4.707925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.209937, 17.650433, 4.425862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586278, 0.392162, -0.708864,
		0.569447, -0.821867, 0.016293,
		-0.576202, -0.413213, -0.705158,
		13.037077, 17.526468, 4.214315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.799600, 17.552114, 4.145445>,  <13.440418, 17.815718, 4.707925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.799600, 17.552114, 4.145445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.442056, 17.664436, 4.005639>,  <13.227530, 17.731831, 3.921756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.442056, 17.664436, 4.005639>,  <13.799600, 17.552114, 4.145445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.442056, 17.664436, 4.005639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436761, 0.369323, -0.820268,
		-0.101252, -0.885860, -0.452768,
		-0.893861, 0.280806, -0.349515,
		13.173898, 17.748678, 3.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707169, 17.494596, 3.396434>,  <13.799600, 17.552114, 4.145445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707169, 17.494596, 3.396434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463214, 17.792011, 3.506119>,  <13.316841, 17.970461, 3.571929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.463214, 17.792011, 3.506119>,  <13.707169, 17.494596, 3.396434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.463214, 17.792011, 3.506119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336139, 0.556054, -0.760141,
		-0.717669, -0.371426, -0.589062,
		-0.609886, 0.743536, 0.274212,
		13.280248, 18.015072, 3.588382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372013, 17.789789, 2.731292>,  <13.707169, 17.494596, 3.396434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372013, 17.789789, 2.731292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344121, 18.055016, 3.029413>,  <13.327386, 18.214151, 3.208287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.344121, 18.055016, 3.029413>,  <13.372013, 17.789789, 2.731292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.344121, 18.055016, 3.029413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442599, 0.690125, -0.572567,
		-0.894004, 0.289946, -0.341596,
		-0.069730, 0.663067, 0.745305,
		13.323202, 18.253935, 3.253005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.912486, 18.416826, 2.626243>,  <13.372013, 17.789789, 2.731292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.912486, 18.416826, 2.626243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.241115, 18.480904, 2.845098>,  <13.438292, 18.519350, 2.976410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.241115, 18.480904, 2.845098>,  <12.912486, 18.416826, 2.626243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.241115, 18.480904, 2.845098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382651, 0.556470, -0.737509,
		-0.422608, 0.815279, 0.395882,
		0.821572, 0.160192, 0.547136,
		13.487586, 18.528961, 3.009238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151106, 19.082579, 2.422362>,  <12.912486, 18.416826, 2.626243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151106, 19.082579, 2.422362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484868, 18.929531, 2.581043>,  <13.685125, 18.837704, 2.676251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.484868, 18.929531, 2.581043>,  <13.151106, 19.082579, 2.422362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.484868, 18.929531, 2.581043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539567, 0.420281, -0.729542,
		0.112409, 0.822780, 0.557133,
		0.834405, -0.382617, 0.396702,
		13.735189, 18.814745, 2.700053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693331, 19.638617, 2.617725>,  <13.151106, 19.082579, 2.422362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693331, 19.638617, 2.617725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885978, 19.309975, 2.495733>,  <14.001566, 19.112789, 2.422539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.885978, 19.309975, 2.495733>,  <13.693331, 19.638617, 2.617725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.885978, 19.309975, 2.495733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430425, 0.524891, -0.734319,
		0.763399, 0.222391, 0.606435,
		0.481618, -0.821603, -0.304979,
		14.030463, 19.063494, 2.404240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.455946, 19.519787, 2.707495>,  <13.693331, 19.638617, 2.617725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.455946, 19.519787, 2.707495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342992, 19.333012, 2.372299>,  <14.275219, 19.220945, 2.171181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.342992, 19.333012, 2.372299>,  <14.455946, 19.519787, 2.707495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342992, 19.333012, 2.372299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717864, 0.476597, -0.507471,
		0.636342, -0.744864, 0.200615,
		-0.282385, -0.466939, -0.837989,
		14.258276, 19.192930, 2.120902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009523, 19.178015, 2.383196>,  <14.455946, 19.519787, 2.707495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009523, 19.178015, 2.383196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746419, 19.252991, 2.091383>,  <14.588556, 19.297976, 1.916295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.746419, 19.252991, 2.091383>,  <15.009523, 19.178015, 2.383196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746419, 19.252991, 2.091383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722757, 0.429748, -0.541238,
		0.212066, -0.883280, -0.418144,
		-0.657761, 0.187439, -0.729532,
		14.549090, 19.309223, 1.872523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184738, 18.854998, 1.738961>,  <15.009523, 19.178015, 2.383196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184738, 18.854998, 1.738961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.998370, 19.208279, 1.717530>,  <14.886549, 19.420248, 1.704672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.998370, 19.208279, 1.717530>,  <15.184738, 18.854998, 1.738961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998370, 19.208279, 1.717530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777804, 0.379947, -0.500661,
		-0.421829, -0.274939, -0.863984,
		-0.465919, 0.883204, -0.053576,
		14.858594, 19.473240, 1.701458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815900, 19.171162, 1.019160>,  <15.184738, 18.854998, 1.738961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815900, 19.171162, 1.019160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945266, 19.465881, 1.256658>,  <15.022885, 19.642714, 1.399157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945266, 19.465881, 1.256658>,  <14.815900, 19.171162, 1.019160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945266, 19.465881, 1.256658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659872, 0.274114, -0.699593,
		-0.678212, 0.618054, -0.397539,
		0.323415, 0.736797, 0.593745,
		15.042291, 19.686920, 1.434781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.697865, 19.913790, 0.681765>,  <14.815900, 19.171162, 1.019160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.697865, 19.913790, 0.681765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005820, 19.908710, 0.936986>,  <15.190593, 19.905663, 1.090119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005820, 19.908710, 0.936986>,  <14.697865, 19.913790, 0.681765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005820, 19.908710, 0.936986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632178, 0.151980, -0.759772,
		-0.087324, 0.988302, 0.125035,
		0.769887, -0.012698, 0.638054,
		15.236786, 19.904902, 1.128403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098011, 20.566902, 0.735762>,  <14.697865, 19.913790, 0.681765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098011, 20.566902, 0.735762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.318505, 20.235012, 0.770842>,  <15.450802, 20.035877, 0.791891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.318505, 20.235012, 0.770842>,  <15.098011, 20.566902, 0.735762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318505, 20.235012, 0.770842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513780, 0.254742, -0.819229,
		0.657395, 0.496648, 0.566721,
		0.551236, -0.829727, 0.087702,
		15.483876, 19.986094, 0.797153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397540, 20.045395, 0.279991>,  <15.098011, 20.566902, 0.735762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397540, 20.045395, 0.279991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629085, 19.720161, 0.255271>,  <15.768011, 19.525023, 0.240439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629085, 19.720161, 0.255271>,  <15.397540, 20.045395, 0.279991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629085, 19.720161, 0.255271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143358, 0.176084, -0.973880,
		0.802726, 0.554881, 0.218489,
		0.578860, -0.813081, -0.061800,
		15.802743, 19.476236, 0.236731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134979, 19.885120, 0.061486>,  <15.397540, 20.045395, 0.279991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134979, 19.885120, 0.061486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950801, 19.558754, -0.078382>,  <15.840294, 19.362934, -0.162304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950801, 19.558754, -0.078382>,  <16.134979, 19.885120, 0.061486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950801, 19.558754, -0.078382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194011, 0.291893, -0.936567,
		0.866227, -0.499079, 0.023895,
		-0.460446, -0.815916, -0.349672,
		15.812667, 19.313980, -0.183284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725124, 19.605785, -0.340897>,  <16.134979, 19.885120, 0.061487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725124, 19.605785, -0.340897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333382, 19.550262, -0.399676>,  <16.098335, 19.516949, -0.434943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.333382, 19.550262, -0.399676>,  <16.725124, 19.605785, -0.340897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333382, 19.550262, -0.399676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092814, 0.337006, -0.936916,
		0.179569, -0.931215, -0.317167,
		-0.979357, -0.138804, -0.146946,
		16.039574, 19.508621, -0.443760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.588598, 19.150902, -0.966853>,  <16.725124, 19.605785, -0.340897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.588598, 19.150902, -0.966853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324806, 19.447559, -0.917782>,  <16.166531, 19.625555, -0.888340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.324806, 19.447559, -0.917782>,  <16.588598, 19.150902, -0.966853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.324806, 19.447559, -0.917782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248041, 0.368740, -0.895827,
		-0.709623, -0.560350, -0.427134,
		-0.659478, 0.741646, 0.122677,
		16.126963, 19.670053, -0.880979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.089245, 19.163256, -1.521042>,  <16.588598, 19.150902, -0.966853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.089245, 19.163256, -1.521042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101547, 19.530571, -1.363157>,  <16.108929, 19.750961, -1.268426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101547, 19.530571, -1.363157>,  <16.089245, 19.163256, -1.521042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101547, 19.530571, -1.363157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067147, 0.392108, -0.917465,
		-0.997269, 0.054722, -0.049600,
		0.030757, 0.918290, 0.394712,
		16.110775, 19.806059, -1.244744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583282, 19.590101, -1.719782>,  <16.089245, 19.163256, -1.521042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583282, 19.590101, -1.719782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.849679, 19.873425, -1.626183>,  <16.009518, 20.043419, -1.570024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.849679, 19.873425, -1.626183>,  <15.583282, 19.590101, -1.719782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.849679, 19.873425, -1.626183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169936, 0.449500, -0.876967,
		-0.726344, 0.544289, 0.419731,
		0.665993, 0.708307, 0.233997,
		16.049477, 20.085917, -1.555984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542647, 19.272812, -1.078371>,  <15.583282, 19.590101, -1.719782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542647, 19.272812, -1.078371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532174, 19.666176, -1.006574>,  <15.525890, 19.902195, -0.963496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.532174, 19.666176, -1.006574>,  <15.542647, 19.272812, -1.078371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532174, 19.666176, -1.006574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934348, 0.039760, -0.354137,
		-0.355399, -0.176981, 0.917807,
		-0.026183, 0.983411, 0.179492,
		15.524319, 19.961199, -0.952726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.905744, 19.426003, -0.850455>,  <15.542647, 19.272812, -1.078371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.905744, 19.426003, -0.850455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011718, 19.795120, -0.962354>,  <15.075302, 20.016592, -1.029493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011718, 19.795120, -0.962354>,  <14.905744, 19.426003, -0.850455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011718, 19.795120, -0.962354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906151, 0.139066, -0.399438,
		-0.329696, 0.359318, 0.873036,
		0.264935, 0.922796, -0.279746,
		15.091198, 20.071959, -1.046278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444750, 19.981005, -0.602924>,  <14.905744, 19.426003, -0.850455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444750, 19.981005, -0.602924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581477, 20.062744, -0.969836>,  <14.663514, 20.111788, -1.189983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.581477, 20.062744, -0.969836>,  <14.444750, 19.981005, -0.602924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.581477, 20.062744, -0.969836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939377, 0.102375, -0.327247,
		0.027034, 0.973531, 0.226952,
		0.341819, 0.204347, -0.917280,
		14.684023, 20.124048, -1.245020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.201822, 20.360035, 15.309065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.458195, 20.642647, 15.189052>,  <20.612019, 20.812214, 15.117043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.458195, 20.642647, 15.189052>,  <20.201822, 20.360035, 15.309065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458195, 20.642647, 15.189052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432774, 0.009788, -0.901449,
		-0.633965, 0.707615, 0.312041,
		0.640933, 0.706531, -0.300032,
		20.650475, 20.854607, 15.099042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734312, 20.906332, 15.142529>,  <20.201822, 20.360035, 15.309065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734312, 20.906332, 15.142529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.094322, 20.932400, 14.970155>,  <20.310329, 20.948040, 14.866731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.094322, 20.932400, 14.970155>,  <19.734312, 20.906332, 15.142529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.094322, 20.932400, 14.970155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431922, 0.001194, -0.901910,
		-0.058264, 0.997873, 0.029223,
		0.900027, 0.065171, -0.430934,
		20.364330, 20.951952, 14.840875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.691710, 21.474535, 14.520951>,  <19.734312, 20.906332, 15.142529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.691710, 21.474535, 14.520951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.004673, 21.237942, 14.442996>,  <20.192451, 21.095985, 14.396223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.004673, 21.237942, 14.442996>,  <19.691710, 21.474535, 14.520951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004673, 21.237942, 14.442996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351784, -0.161536, -0.922038,
		0.513889, 0.789970, -0.334462,
		0.782411, -0.591484, -0.194887,
		20.239397, 21.060497, 14.384530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.854504, 21.662052, 13.795803>,  <19.691710, 21.474535, 14.520951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.854504, 21.662052, 13.795803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063950, 21.333408, 13.885942>,  <20.189617, 21.136221, 13.940024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.063950, 21.333408, 13.885942>,  <19.854504, 21.662052, 13.795803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.063950, 21.333408, 13.885942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068613, -0.304315, -0.950097,
		0.849187, 0.482024, -0.215717,
		0.523615, -0.821612, 0.225347,
		20.221035, 21.086926, 13.953546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.358856, 21.559450, 13.282917>,  <19.854504, 21.662052, 13.795803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.358856, 21.559450, 13.282917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.300919, 21.190662, 13.426581>,  <20.266157, 20.969391, 13.512780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.300919, 21.190662, 13.426581>,  <20.358856, 21.559450, 13.282917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300919, 21.190662, 13.426581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178817, -0.332621, -0.925952,
		0.973162, -0.198342, -0.116686,
		-0.144843, -0.921968, 0.359161,
		20.257465, 20.914072, 13.534329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726690, 21.122326, 12.861881>,  <20.358856, 21.559450, 13.282917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726690, 21.122326, 12.861881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.476639, 20.860188, 13.031464>,  <20.326609, 20.702904, 13.133213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.476639, 20.860188, 13.031464>,  <20.726690, 21.122326, 12.861881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.476639, 20.860188, 13.031464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194309, -0.395402, -0.897720,
		0.755949, -0.643568, 0.119837,
		-0.625128, -0.655345, 0.423955,
		20.289101, 20.663584, 13.158650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797375, 20.479177, 12.577076>,  <20.726690, 21.122326, 12.861881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797375, 20.479177, 12.577076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.430733, 20.430470, 12.729395>,  <20.210747, 20.401245, 12.820786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.430733, 20.430470, 12.729395>,  <20.797375, 20.479177, 12.577076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.430733, 20.430470, 12.729395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262940, -0.533880, -0.803638,
		0.301158, -0.836747, 0.457339,
		-0.916606, -0.121769, 0.380796,
		20.155750, 20.393938, 12.843634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540855, 19.859909, 12.330343>,  <20.797375, 20.479177, 12.577076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540855, 19.859909, 12.330343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.197334, 20.031639, 12.442159>,  <19.991222, 20.134676, 12.509248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.197334, 20.031639, 12.442159>,  <20.540855, 19.859909, 12.330343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197334, 20.031639, 12.442159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466100, -0.428312, -0.774144,
		-0.212627, -0.795130, 0.567942,
		-0.858802, 0.429322, 0.279540,
		19.939693, 20.160437, 12.526020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969221, 19.281176, 12.229713>,  <20.540855, 19.859909, 12.330343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969221, 19.281176, 12.229713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.781811, 19.634544, 12.226939>,  <19.669365, 19.846565, 12.225275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.781811, 19.634544, 12.226939>,  <19.969221, 19.281176, 12.229713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781811, 19.634544, 12.226939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590713, -0.319103, -0.741101,
		-0.656919, -0.343128, 0.671358,
		-0.468525, 0.883423, -0.006935,
		19.641253, 19.899570, 12.224858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.438326, 19.118923, 11.870639>,  <19.969221, 19.281176, 12.229713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.438326, 19.118923, 11.870639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.408516, 19.517811, 11.870446>,  <19.390631, 19.757143, 11.870331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.408516, 19.517811, 11.870446>,  <19.438326, 19.118923, 11.870639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.408516, 19.517811, 11.870446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671175, -0.050516, -0.739576,
		-0.737543, -0.054792, 0.673073,
		-0.074524, 0.997219, -0.000482,
		19.386158, 19.816977, 11.870301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692850, 19.409403, 11.959874>,  <19.438326, 19.118923, 11.870639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692850, 19.409403, 11.959874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.901917, 19.688953, 11.764573>,  <19.027355, 19.856684, 11.647392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.901917, 19.688953, 11.764573>,  <18.692850, 19.409403, 11.959874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901917, 19.688953, 11.764573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720153, 0.055409, -0.691599,
		-0.456290, 0.713091, 0.532260,
		0.522665, 0.698878, -0.488252,
		19.058716, 19.898617, 11.618097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176519, 19.784195, 11.722360>,  <18.692850, 19.409403, 11.959874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176519, 19.784195, 11.722360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.495541, 19.870495, 11.497019>,  <18.686953, 19.922274, 11.361814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.495541, 19.870495, 11.497019>,  <18.176519, 19.784195, 11.722360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495541, 19.870495, 11.497019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584487, 0.045259, -0.810140,
		-0.149290, 0.975399, 0.162198,
		0.797551, 0.215748, -0.563351,
		18.734806, 19.935219, 11.328013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968769, 20.223440, 11.251239>,  <18.176519, 19.784195, 11.722360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968769, 20.223440, 11.251239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.304840, 20.131554, 11.054738>,  <18.506483, 20.076422, 10.936837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.304840, 20.131554, 11.054738>,  <17.968769, 20.223440, 11.251239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304840, 20.131554, 11.054738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488177, 0.074147, -0.869589,
		0.236185, 0.970429, -0.049846,
		0.840179, -0.229718, -0.491253,
		18.556894, 20.062639, 10.907362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.076256, 20.713812, 10.691068>,  <17.968769, 20.223440, 11.251239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.076256, 20.713812, 10.691068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.256836, 20.364883, 10.615971>,  <18.365185, 20.155527, 10.570912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.256836, 20.364883, 10.615971>,  <18.076256, 20.713812, 10.691068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256836, 20.364883, 10.615971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315254, 0.040904, -0.948125,
		0.834750, 0.487218, -0.256537,
		0.451451, -0.872322, -0.187742,
		18.392271, 20.103188, 10.559648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401302, 20.866167, 10.119818>,  <18.076256, 20.713812, 10.691068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401302, 20.866167, 10.119818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387939, 20.466522, 10.130055>,  <18.379921, 20.226734, 10.136198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.387939, 20.466522, 10.130055>,  <18.401302, 20.866167, 10.119818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387939, 20.466522, 10.130055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208384, -0.018082, -0.977880,
		0.977476, -0.038003, -0.207595,
		-0.033408, -0.999114, 0.025594,
		18.377916, 20.166788, 10.137733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803986, 20.646257, 9.626360>,  <18.401302, 20.866167, 10.119818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803986, 20.646257, 9.626360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.567554, 20.326218, 9.667277>,  <18.425695, 20.134193, 9.691828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.567554, 20.326218, 9.667277>,  <18.803986, 20.646257, 9.626360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.567554, 20.326218, 9.667277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052587, -0.088323, -0.994703,
		0.804897, -0.593328, 0.010131,
		-0.591080, -0.800101, 0.102293,
		18.390230, 20.086187, 9.697965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931767, 20.202269, 9.094563>,  <18.803986, 20.646257, 9.626360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931767, 20.202269, 9.094563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.583527, 20.037762, 9.202574>,  <18.374582, 19.939058, 9.267381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.583527, 20.037762, 9.202574>,  <18.931767, 20.202269, 9.094563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583527, 20.037762, 9.202574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172444, -0.258952, -0.950372,
		0.460781, -0.873958, 0.154523,
		-0.870600, -0.411267, 0.270029,
		18.322346, 19.914381, 9.283583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.838818, 19.601959, 8.644816>,  <18.931767, 20.202269, 9.094563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.838818, 19.601959, 8.644816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.477268, 19.679211, 8.797506>,  <18.260338, 19.725561, 8.889120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.477268, 19.679211, 8.797506>,  <18.838818, 19.601959, 8.644816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477268, 19.679211, 8.797506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417405, -0.202640, -0.885839,
		-0.093724, -0.960021, 0.263772,
		-0.903875, 0.193124, 0.381725,
		18.206106, 19.737148, 8.912024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426558, 19.227316, 8.338923>,  <18.838818, 19.601959, 8.644816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426558, 19.227316, 8.338923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.154865, 19.501587, 8.443610>,  <17.991850, 19.666149, 8.506423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.154865, 19.501587, 8.443610>,  <18.426558, 19.227316, 8.338923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.154865, 19.501587, 8.443610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411064, -0.059999, -0.909630,
		-0.608009, -0.725430, 0.322609,
		-0.679229, 0.685676, 0.261718,
		17.951097, 19.707291, 8.522125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830601, 18.992281, 8.068002>,  <18.426558, 19.227316, 8.338923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830601, 18.992281, 8.068002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.748333, 19.379566, 8.124942>,  <17.698973, 19.611937, 8.159106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.748333, 19.379566, 8.124942>,  <17.830601, 18.992281, 8.068002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.748333, 19.379566, 8.124942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510635, 0.017914, -0.859611,
		-0.834837, -0.249483, 0.490720,
		-0.205668, 0.968214, 0.142350,
		17.686632, 19.670031, 8.167646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128603, 19.094206, 7.989576>,  <17.830601, 18.992281, 8.068002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128603, 19.094206, 7.989576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.261600, 19.469440, 7.950706>,  <17.341398, 19.694580, 7.927383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.261600, 19.469440, 7.950706>,  <17.128603, 19.094206, 7.989576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261600, 19.469440, 7.950706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314325, 0.013078, -0.949225,
		-0.889184, 0.346157, 0.299212,
		0.332494, 0.938085, -0.097177,
		17.361349, 19.750866, 7.921552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564108, 19.572832, 7.823966>,  <17.128603, 19.094206, 7.989576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564108, 19.572832, 7.823966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.926376, 19.680161, 7.692657>,  <17.143738, 19.744556, 7.613873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.926376, 19.680161, 7.692657>,  <16.564108, 19.572832, 7.823966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.926376, 19.680161, 7.692657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364372, 0.096715, -0.926218,
		-0.216774, 0.958462, 0.185360,
		0.905672, 0.268320, -0.328271,
		17.198078, 19.760656, 7.594176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109989, 19.592009, 8.456549>,  <16.564108, 19.572832, 7.823966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109989, 19.592009, 8.456549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.838801, 19.324135, 8.335299>,  <15.676089, 19.163410, 8.262549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.838801, 19.324135, 8.335299>,  <16.109989, 19.592009, 8.456549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838801, 19.324135, 8.335299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056838, -0.458884, 0.886676,
		-0.732891, 0.583909, 0.349171,
		-0.677967, -0.669684, -0.303124,
		15.635411, 19.123230, 8.244362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636394, 19.600452, 8.929255>,  <16.109989, 19.592009, 8.456549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636394, 19.600452, 8.929255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624646, 19.238705, 8.758958>,  <15.617598, 19.021656, 8.656780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.624646, 19.238705, 8.758958>,  <15.636394, 19.600452, 8.929255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624646, 19.238705, 8.758958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025116, -0.425122, 0.904787,
		-0.999253, 0.037266, -0.010228,
		-0.029369, -0.904368, -0.425741,
		15.615835, 18.967394, 8.631236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203819, 19.177835, 9.283103>,  <15.636394, 19.600452, 8.929255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203819, 19.177835, 9.283103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.387595, 18.876945, 9.094181>,  <15.497861, 18.696411, 8.980827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.387595, 18.876945, 9.094181>,  <15.203819, 19.177835, 9.283103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387595, 18.876945, 9.094181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083030, -0.493049, 0.866030,
		-0.884319, -0.437104, -0.164069,
		0.459440, -0.752225, -0.472306,
		15.525427, 18.651278, 8.952490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.899420, 18.494539, 9.478312>,  <15.203819, 19.177835, 9.283103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.899420, 18.494539, 9.478312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.277549, 18.423290, 9.369031>,  <15.504426, 18.380541, 9.303462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.277549, 18.423290, 9.369031>,  <14.899420, 18.494539, 9.478312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277549, 18.423290, 9.369031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155436, -0.490369, 0.857542,
		-0.286715, -0.853119, -0.435870,
		0.945322, -0.178120, -0.273202,
		15.561146, 18.369854, 9.287070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.124812, 17.760452, 9.806812>,  <14.899420, 18.494539, 9.478312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.124812, 17.760452, 9.806812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.470298, 17.929039, 9.696275>,  <15.677589, 18.030191, 9.629952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.470298, 17.929039, 9.696275>,  <15.124812, 17.760452, 9.806812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470298, 17.929039, 9.696275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467002, -0.463133, 0.753270,
		0.189494, -0.779662, -0.596840,
		0.863713, 0.421466, -0.276343,
		15.729412, 18.055479, 9.613372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644862, 17.253046, 9.938409>,  <15.124812, 17.760452, 9.806812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644862, 17.253046, 9.938409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.845769, 17.598873, 9.932034>,  <15.966313, 17.806370, 9.928209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.845769, 17.598873, 9.932034>,  <15.644862, 17.253046, 9.938409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845769, 17.598873, 9.932034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534995, -0.296219, 0.791224,
		0.679344, -0.405931, -0.611319,
		0.502267, 0.864566, -0.015936,
		15.996449, 17.858242, 9.927254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.388460, 17.011621, 10.063330>,  <15.644862, 17.253046, 9.938409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.388460, 17.011621, 10.063330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.360859, 17.399136, 10.158570>,  <16.344297, 17.631643, 10.215714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.360859, 17.399136, 10.158570>,  <16.388460, 17.011621, 10.063330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.360859, 17.399136, 10.158570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585806, -0.153840, 0.795717,
		0.807508, 0.194389, -0.556905,
		-0.069004, 0.968786, 0.238101,
		16.340158, 17.689772, 10.230000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071753, 17.192976, 10.242454>,  <16.388460, 17.011621, 10.063330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071753, 17.192976, 10.242454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.874512, 17.506462, 10.393526>,  <16.756166, 17.694553, 10.484169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.874512, 17.506462, 10.393526>,  <17.071753, 17.192976, 10.242454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.874512, 17.506462, 10.393526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503316, -0.097103, 0.858629,
		0.709594, 0.613485, -0.346574,
		-0.493102, 0.783714, 0.377680,
		16.726582, 17.741577, 10.506830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584221, 17.695236, 10.439651>,  <17.071753, 17.192976, 10.242454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.584221, 17.695236, 10.439651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270493, 17.744740, 10.682805>,  <17.082254, 17.774441, 10.828697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.270493, 17.744740, 10.682805>,  <17.584221, 17.695236, 10.439651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.270493, 17.744740, 10.682805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611550, -0.010256, 0.791139,
		0.104143, 0.992260, -0.067639,
		-0.784322, 0.123756, 0.607885,
		17.035196, 17.781866, 10.865170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.936844, 18.032820, 10.902593>,  <17.584221, 17.695236, 10.439651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.936844, 18.032820, 10.902593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.581451, 17.966003, 11.073567>,  <17.368216, 17.925915, 11.176152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.581451, 17.966003, 11.073567>,  <17.936844, 18.032820, 10.902593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581451, 17.966003, 11.073567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407195, 0.142614, 0.902138,
		-0.211651, 0.975582, -0.058692,
		-0.888480, -0.167039, 0.427436,
		17.314907, 17.915892, 11.201798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.821413, 18.545570, 11.346196>,  <17.936844, 18.032820, 10.902593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.821413, 18.545570, 11.346196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.593330, 18.250362, 11.490523>,  <17.456480, 18.073238, 11.577120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.593330, 18.250362, 11.490523>,  <17.821413, 18.545570, 11.346196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.593330, 18.250362, 11.490523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431249, 0.104920, 0.896112,
		-0.699205, 0.666572, 0.258444,
		-0.570207, -0.738020, 0.360819,
		17.422268, 18.028955, 11.598769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638268, 18.825191, 11.960945>,  <17.821413, 18.545570, 11.346196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638268, 18.825191, 11.960945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.576427, 18.433060, 12.010013>,  <17.539324, 18.197781, 12.039454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.576427, 18.433060, 12.010013>,  <17.638268, 18.825191, 11.960945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576427, 18.433060, 12.010013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379678, 0.055675, 0.923442,
		-0.912109, 0.189340, 0.363603,
		-0.154601, -0.980332, 0.122670,
		17.530046, 18.138960, 12.046814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330891, 18.711235, 12.623917>,  <17.638268, 18.825191, 11.960945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330891, 18.711235, 12.623917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.495258, 18.362720, 12.516579>,  <17.593880, 18.153612, 12.452176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.495258, 18.362720, 12.516579>,  <17.330891, 18.711235, 12.623917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495258, 18.362720, 12.516579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487002, -0.039046, 0.872528,
		-0.770698, -0.489222, 0.408273,
		0.410918, -0.871285, -0.268344,
		17.618534, 18.101336, 12.436075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251991, 18.397589, 13.216593>,  <17.330891, 18.711235, 12.623917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251991, 18.397589, 13.216593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.525795, 18.186676, 13.015229>,  <17.690077, 18.060127, 12.894411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.525795, 18.186676, 13.015229>,  <17.251991, 18.397589, 13.216593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525795, 18.186676, 13.015229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585054, -0.014644, 0.810862,
		-0.434927, -0.849563, 0.298466,
		0.684508, -0.527284, -0.503409,
		17.731148, 18.028490, 12.864206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386660, 17.698128, 13.449380>,  <17.251991, 18.397589, 13.216593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386660, 17.698128, 13.449380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.725651, 17.772243, 13.250404>,  <17.929047, 17.816713, 13.131019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.725651, 17.772243, 13.250404>,  <17.386660, 17.698128, 13.449380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725651, 17.772243, 13.250404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502542, 0.021761, 0.864279,
		0.170967, -0.982443, -0.074674,
		0.847479, 0.185290, -0.497440,
		17.979895, 17.827829, 13.101172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846785, 17.218113, 13.786556>,  <17.386660, 17.698128, 13.449380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846785, 17.218113, 13.786556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.045353, 17.511841, 13.601367>,  <18.164494, 17.688078, 13.490253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.045353, 17.511841, 13.601367>,  <17.846785, 17.218113, 13.786556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045353, 17.511841, 13.601367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474796, 0.216808, 0.852973,
		0.726731, -0.643250, -0.241024,
		0.496419, 0.734319, -0.462973,
		18.194279, 17.732136, 13.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563480, 17.144371, 13.968073>,  <17.846785, 17.218113, 13.786556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.563480, 17.144371, 13.968073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529144, 17.526093, 13.853578>,  <18.508543, 17.755125, 13.784881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.529144, 17.526093, 13.853578>,  <18.563480, 17.144371, 13.968073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529144, 17.526093, 13.853578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599365, 0.278960, 0.750295,
		0.795860, -0.107156, -0.595923,
		-0.085840, 0.954305, -0.286239,
		18.503393, 17.812384, 13.767706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.248928, 17.433100, 13.946928>,  <18.563480, 17.144371, 13.968073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.248928, 17.433100, 13.946928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.020866, 17.761341, 13.931260>,  <18.884029, 17.958286, 13.921860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.020866, 17.761341, 13.931260>,  <19.248928, 17.433100, 13.946928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020866, 17.761341, 13.931260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525491, 0.400932, 0.750408,
		0.631490, 0.407267, -0.659813,
		-0.570157, 0.820602, -0.039169,
		18.849819, 18.007523, 13.919509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.774431, 18.041334, 13.948788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.429813, 18.181080, 14.096131>,  <19.223043, 18.264927, 14.184538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.429813, 18.181080, 14.096131>,  <19.774431, 18.041334, 13.948788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.429813, 18.181080, 14.096131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472566, 0.286688, 0.833362,
		0.185541, 0.892051, -0.412091,
		-0.861543, 0.349363, 0.368360,
		19.171350, 18.285889, 14.206639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.944025, 18.680080, 14.193146>,  <19.774431, 18.041334, 13.948788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.944025, 18.680080, 14.193146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.611103, 18.576729, 14.389312>,  <19.411350, 18.514717, 14.507011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.611103, 18.576729, 14.389312>,  <19.944025, 18.680080, 14.193146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.611103, 18.576729, 14.389312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381061, 0.375819, 0.844720,
		-0.402565, 0.889944, -0.214339,
		-0.832306, -0.258379, 0.490415,
		19.361412, 18.499214, 14.536436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.768097, 19.253601, 14.642981>,  <19.944025, 18.680080, 14.193146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.768097, 19.253601, 14.642981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.546593, 18.963776, 14.807107>,  <19.413691, 18.789881, 14.905582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.546593, 18.963776, 14.807107>,  <19.768097, 19.253601, 14.642981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.546593, 18.963776, 14.807107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193911, 0.367005, 0.909783,
		-0.809784, 0.583365, -0.062731,
		-0.553758, -0.724564, 0.410316,
		19.380465, 18.746407, 14.930202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434515, 19.549778, 15.141662>,  <19.768097, 19.253601, 14.642981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434515, 19.549778, 15.141662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.383575, 19.170887, 15.259332>,  <19.353012, 18.943552, 15.329933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.383575, 19.170887, 15.259332>,  <19.434515, 19.549778, 15.141662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383575, 19.170887, 15.259332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241322, 0.258087, 0.935497,
		-0.962053, 0.190125, 0.195720,
		-0.127349, -0.947230, 0.294175,
		19.345371, 18.886719, 15.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026464, 19.570438, 15.827017>,  <19.434515, 19.549778, 15.141662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026464, 19.570438, 15.827017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.212486, 19.216480, 15.816598>,  <19.324100, 19.004105, 15.810347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.212486, 19.216480, 15.816598>,  <19.026464, 19.570438, 15.827017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212486, 19.216480, 15.816598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268289, 0.112837, 0.956707,
		-0.843649, -0.451911, 0.289884,
		0.465057, -0.884898, -0.026047,
		19.352003, 18.951012, 15.808784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.795458, 19.268770, 16.364569>,  <19.026464, 19.570438, 15.827017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.795458, 19.268770, 16.364569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.140255, 19.083817, 16.281458>,  <19.347134, 18.972845, 16.231592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.140255, 19.083817, 16.281458>,  <18.795458, 19.268770, 16.364569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140255, 19.083817, 16.281458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360136, 0.270127, 0.892935,
		-0.356753, -0.844531, 0.399368,
		0.861992, -0.462385, -0.207777,
		19.398853, 18.945101, 16.219124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.938944, 18.865469, 16.968245>,  <18.795458, 19.268770, 16.364569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.938944, 18.865469, 16.968245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.285854, 18.891045, 16.770763>,  <19.494001, 18.906389, 16.652275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.285854, 18.891045, 16.770763>,  <18.938944, 18.865469, 16.968245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.285854, 18.891045, 16.770763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484963, 0.115457, 0.866880,
		0.112347, -0.991259, 0.069171,
		0.867288, 0.063846, -0.493695,
		19.546038, 18.910227, 16.622652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407452, 18.534161, 17.367634>,  <18.938944, 18.865469, 16.968245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407452, 18.534161, 17.367634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.615589, 18.800056, 17.153210>,  <19.740471, 18.959595, 17.024555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.615589, 18.800056, 17.153210>,  <19.407452, 18.534161, 17.367634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.615589, 18.800056, 17.153210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463114, 0.307745, 0.831155,
		0.717472, -0.680744, -0.147718,
		0.520345, 0.664741, -0.536061,
		19.771692, 18.999479, 16.992392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.975798, 18.296694, 17.580374>,  <19.407452, 18.534161, 17.367634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.975798, 18.296694, 17.580374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.035881, 18.669666, 17.448915>,  <20.071932, 18.893450, 17.370041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.035881, 18.669666, 17.448915>,  <19.975798, 18.296694, 17.580374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035881, 18.669666, 17.448915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345556, 0.261937, 0.901100,
		0.926298, -0.248920, -0.282862,
		0.150209, 0.932431, -0.328648,
		20.080944, 18.949396, 17.350321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.614885, 18.440559, 17.650986>,  <19.975798, 18.296694, 17.580374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.614885, 18.440559, 17.650986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.433216, 18.796795, 17.660627>,  <20.324215, 19.010536, 17.666412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.433216, 18.796795, 17.660627>,  <20.614885, 18.440559, 17.650986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.433216, 18.796795, 17.660627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378890, 0.168594, 0.909955,
		0.806331, 0.422409, -0.414005,
		-0.454172, 0.890588, 0.024104,
		20.296965, 19.063971, 17.667858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.058031, 18.928814, 17.992804>,  <20.614885, 18.440559, 17.650986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.058031, 18.928814, 17.992804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.696800, 19.096043, 18.032145>,  <20.480062, 19.196379, 18.055748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.696800, 19.096043, 18.032145>,  <21.058031, 18.928814, 17.992804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696800, 19.096043, 18.032145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251877, 0.330066, 0.909733,
		0.347869, 0.846330, -0.403377,
		-0.903075, 0.418069, 0.098352,
		20.425879, 19.221464, 18.061649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.208881, 19.551043, 18.335150>,  <21.058031, 18.928814, 17.992804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.208881, 19.551043, 18.335150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.812649, 19.528839, 18.385223>,  <20.574909, 19.515518, 18.415268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.812649, 19.528839, 18.385223>,  <21.208881, 19.551043, 18.335150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812649, 19.528839, 18.385223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078500, 0.518879, 0.851236,
		-0.112205, 0.853044, -0.509633,
		-0.990580, -0.055506, 0.125184,
		20.515474, 19.512188, 18.422779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.979877, 20.177254, 18.578062>,  <21.208881, 19.551043, 18.335150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.979877, 20.177254, 18.578062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675583, 19.945892, 18.695862>,  <20.493006, 19.807076, 18.766542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.675583, 19.945892, 18.695862>,  <20.979877, 20.177254, 18.578062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675583, 19.945892, 18.695862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042565, 0.497212, 0.866585,
		-0.647665, 0.646707, -0.402866,
		-0.760736, -0.578404, 0.294500,
		20.447363, 19.772371, 18.784212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.414629, 20.687910, 18.879696>,  <20.979877, 20.177254, 18.578062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.414629, 20.687910, 18.879696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332531, 20.327438, 19.032408>,  <20.283272, 20.111156, 19.124035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.332531, 20.327438, 19.032408>,  <20.414629, 20.687910, 18.879696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332531, 20.327438, 19.032408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142126, 0.413391, 0.899393,
		-0.968336, 0.130334, -0.212927,
		-0.205243, -0.901177, 0.381778,
		20.270958, 20.057085, 19.146942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.915857, 20.897131, 19.360609>,  <20.414629, 20.687910, 18.879696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.915857, 20.897131, 19.360609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.959362, 20.515167, 19.471113>,  <19.985466, 20.285990, 19.537416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.959362, 20.515167, 19.471113>,  <19.915857, 20.897131, 19.360609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959362, 20.515167, 19.471113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343951, 0.224593, 0.911732,
		-0.932667, -0.194183, -0.304014,
		0.108764, -0.954909, 0.276260,
		19.991991, 20.228695, 19.553991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225401, 20.678001, 19.703390>,  <19.915857, 20.897131, 19.360609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225401, 20.678001, 19.703390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.547283, 20.468842, 19.815836>,  <19.740412, 20.343346, 19.883303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.547283, 20.468842, 19.815836>,  <19.225401, 20.678001, 19.703390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547283, 20.468842, 19.815836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144130, 0.287278, 0.946941,
		-0.575913, -0.802526, 0.155809,
		0.804706, -0.522899, 0.281115,
		19.788694, 20.311972, 19.900171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013433, 20.434124, 20.306210>,  <19.225401, 20.678001, 19.703390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013433, 20.434124, 20.306210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.409714, 20.388142, 20.335316>,  <19.647482, 20.360552, 20.352779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.409714, 20.388142, 20.335316>,  <19.013433, 20.434124, 20.306210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.409714, 20.388142, 20.335316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030502, 0.333560, 0.942235,
		-0.132590, -0.935694, 0.326952,
		0.990701, -0.114958, 0.072767,
		19.706924, 20.353655, 20.357145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029118, 20.111982, 20.875582>,  <19.013433, 20.434124, 20.306210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029118, 20.111982, 20.875582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.400036, 20.249748, 20.816927>,  <19.622587, 20.332407, 20.781734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.400036, 20.249748, 20.816927>,  <19.029118, 20.111982, 20.875582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.400036, 20.249748, 20.816927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048694, 0.277411, 0.959516,
		0.371151, -0.896895, 0.240471,
		0.927295, 0.344416, -0.146635,
		19.678225, 20.353073, 20.772936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506897, 19.774961, 21.356516>,  <19.029118, 20.111982, 20.875582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506897, 19.774961, 21.356516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.670986, 20.129074, 21.268883>,  <19.769440, 20.341541, 21.216303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.670986, 20.129074, 21.268883>,  <19.506897, 19.774961, 21.356516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.670986, 20.129074, 21.268883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027544, 0.252145, 0.967297,
		0.911569, -0.390773, 0.127820,
		0.410223, 0.885279, -0.219084,
		19.794052, 20.394657, 21.203157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.942461, 19.931614, 21.897757>,  <19.506897, 19.774961, 21.356516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.942461, 19.931614, 21.897757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.930683, 20.291157, 21.722857>,  <19.923616, 20.506884, 21.617916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.930683, 20.291157, 21.722857>,  <19.942461, 19.931614, 21.897757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930683, 20.291157, 21.722857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095673, 0.432896, 0.896353,
		0.994977, 0.068226, 0.073250,
		-0.029445, 0.898858, -0.437249,
		19.921850, 20.560814, 21.591682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399763, 20.407866, 22.221992>,  <19.942461, 19.931614, 21.897757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399763, 20.407866, 22.221992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.151009, 20.664059, 22.041754>,  <20.001755, 20.817774, 21.933611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.151009, 20.664059, 22.041754>,  <20.399763, 20.407866, 22.221992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151009, 20.664059, 22.041754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045830, 0.544644, 0.837414,
		0.781764, 0.541429, -0.309355,
		-0.621888, 0.640483, -0.450596,
		19.964441, 20.856203, 21.906574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675375, 21.132143, 22.335880>,  <20.399763, 20.407866, 22.221992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675375, 21.132143, 22.335880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.288555, 21.186874, 22.250006>,  <20.056463, 21.219713, 22.198481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.288555, 21.186874, 22.250006>,  <20.675375, 21.132143, 22.335880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.288555, 21.186874, 22.250006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081852, 0.631406, 0.771120,
		0.241066, 0.763285, -0.599402,
		-0.967051, 0.136829, -0.214687,
		19.998440, 21.227922, 22.185600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.527540, 21.883131, 22.154293>,  <20.675375, 21.132143, 22.335880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.527540, 21.883131, 22.154293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.236786, 21.677818, 22.336800>,  <20.062334, 21.554630, 22.446304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.236786, 21.677818, 22.336800>,  <20.527540, 21.883131, 22.154293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.236786, 21.677818, 22.336800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094279, 0.583505, 0.806619,
		-0.680257, 0.629336, -0.375749,
		-0.726885, -0.513283, 0.456266,
		20.018721, 21.523834, 22.473679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.971428, 22.295462, 22.396378>,  <20.527540, 21.883131, 22.154293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.971428, 22.295462, 22.396378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.034740, 21.973343, 22.624918>,  <20.072727, 21.780071, 22.762043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.034740, 21.973343, 22.624918>,  <19.971428, 22.295462, 22.396378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.034740, 21.973343, 22.624918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372390, 0.584602, 0.720810,
		-0.914480, 0.098674, 0.392416,
		0.158282, -0.805298, 0.571352,
		20.082226, 21.731754, 22.796324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512999, 22.840425, 22.347763>,  <19.971428, 22.295462, 22.396378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512999, 22.840425, 22.347763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756893, 23.154037, 22.301245>,  <20.903229, 23.342205, 22.273335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756893, 23.154037, 22.301245>,  <20.512999, 22.840425, 22.347763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756893, 23.154037, 22.301245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161100, -0.266253, -0.950345,
		-0.776061, 0.560723, -0.288651,
		0.609734, 0.784028, -0.116296,
		20.939814, 23.389246, 22.266356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282228, 23.357395, 21.909300>,  <20.512999, 22.840425, 22.347763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282228, 23.357395, 21.909300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.680115, 23.396389, 21.896418>,  <20.918846, 23.419785, 21.888687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.680115, 23.396389, 21.896418>,  <20.282228, 23.357395, 21.909300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.680115, 23.396389, 21.896418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022388, -0.100196, -0.994716,
		-0.100196, 0.990181, -0.097484,
		0.994716, 0.097484, -0.032207,
		20.978529, 23.425634, 21.886755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382011, 23.622904, 21.342276>,  <20.282228, 23.357395, 21.909300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382011, 23.622904, 21.342276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756260, 23.509243, 21.426062>,  <20.980808, 23.441046, 21.476334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.756260, 23.509243, 21.426062>,  <20.382011, 23.622904, 21.342276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.756260, 23.509243, 21.426062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161227, -0.183898, -0.969633,
		0.314042, 0.940978, -0.126245,
		0.935619, -0.284152, 0.209463,
		21.036945, 23.423998, 21.488901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.845615, 24.014862, 20.977211>,  <20.382011, 23.622904, 21.342276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.845615, 24.014862, 20.977211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026546, 23.664818, 21.046013>,  <21.135105, 23.454792, 21.087294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.026546, 23.664818, 21.046013>,  <20.845615, 24.014862, 20.977211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026546, 23.664818, 21.046013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173156, -0.103018, -0.979492,
		0.874881, 0.472835, 0.104932,
		0.452328, -0.875108, 0.172003,
		21.162245, 23.402285, 21.097614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492374, 24.053289, 20.489552>,  <20.845615, 24.014862, 20.977211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492374, 24.053289, 20.489552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.437988, 23.670593, 20.592436>,  <21.405357, 23.440975, 20.654167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.437988, 23.670593, 20.592436>,  <21.492374, 24.053289, 20.489552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.437988, 23.670593, 20.592436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030737, -0.263571, -0.964150,
		0.990237, -0.123184, 0.065243,
		-0.135964, -0.956743, 0.257211,
		21.397200, 23.383570, 20.669600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946045, 23.743368, 20.049950>,  <21.492374, 24.053289, 20.489552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946045, 23.743368, 20.049950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.707085, 23.446136, 20.170582>,  <21.563709, 23.267797, 20.242960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.707085, 23.446136, 20.170582>,  <21.946045, 23.743368, 20.049950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707085, 23.446136, 20.170582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187081, -0.236550, -0.953439,
		0.779818, -0.626003, 0.002298,
		-0.597399, -0.743078, 0.301579,
		21.527864, 23.223213, 20.261055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289902, 23.151955, 19.734299>,  <21.946045, 23.743368, 20.049950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289902, 23.151955, 19.734299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.915695, 23.040798, 19.821556>,  <21.691172, 22.974104, 19.873911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.915695, 23.040798, 19.821556>,  <22.289902, 23.151955, 19.734299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.915695, 23.040798, 19.821556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103029, -0.376034, -0.920860,
		0.337928, -0.883954, 0.323155,
		-0.935516, -0.277891, 0.218145,
		21.635040, 22.957432, 19.886999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176571, 22.464916, 19.617071>,  <22.289902, 23.151955, 19.734299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176571, 22.464916, 19.617071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.809975, 22.622910, 19.591677>,  <21.590017, 22.717705, 19.576439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.809975, 22.622910, 19.591677>,  <22.176571, 22.464916, 19.617071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.809975, 22.622910, 19.591677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140788, -0.466994, -0.872981,
		-0.374460, -0.791142, 0.483605,
		-0.916492, 0.394982, -0.063487,
		21.535027, 22.741404, 19.572630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850224, 21.895630, 19.322744>,  <22.176571, 22.464916, 19.617071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850224, 21.895630, 19.322744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.600239, 22.206493, 19.293209>,  <21.450249, 22.393011, 19.275488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.600239, 22.206493, 19.293209>,  <21.850224, 21.895630, 19.322744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600239, 22.206493, 19.293209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410436, -0.407563, -0.815742,
		-0.664054, -0.479499, 0.573684,
		-0.624960, 0.777157, -0.073841,
		21.412750, 22.439640, 19.271057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244846, 21.577442, 19.253822>,  <21.850224, 21.895630, 19.322744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244846, 21.577442, 19.253822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.190140, 21.944496, 19.104561>,  <21.157316, 22.164728, 19.015005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.190140, 21.944496, 19.104561>,  <21.244846, 21.577442, 19.253822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.190140, 21.944496, 19.104561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440477, -0.393738, -0.806815,
		-0.887285, 0.054018, 0.458048,
		-0.136769, 0.917634, -0.373152,
		21.149109, 22.219786, 18.992615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.524364, 21.723093, 19.061695>,  <21.244846, 21.577442, 19.253822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.524364, 21.723093, 19.061695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.771427, 21.960781, 18.855627>,  <20.919664, 22.103394, 18.731987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.771427, 21.960781, 18.855627>,  <20.524364, 21.723093, 19.061695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771427, 21.960781, 18.855627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262579, -0.461652, -0.847307,
		-0.741317, 0.658619, -0.129113,
		0.617658, 0.594221, -0.515170,
		20.956724, 22.139048, 18.701077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.286282, 21.743673, 18.311640>,  <20.524364, 21.723093, 19.061695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.286282, 21.743673, 18.311640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.654846, 21.898727, 18.300776>,  <20.875986, 21.991760, 18.294256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.654846, 21.898727, 18.300776>,  <20.286282, 21.743673, 18.311640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654846, 21.898727, 18.300776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148689, -0.416289, -0.896992,
		-0.359012, 0.822462, -0.441211,
		0.921413, 0.387634, -0.027162,
		20.931271, 22.015018, 18.292627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165558, 22.156548, 17.699907>,  <20.286282, 21.743673, 18.311640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165558, 22.156548, 17.699907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.551239, 22.081532, 17.774897>,  <20.782648, 22.036522, 17.819889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.551239, 22.081532, 17.774897>,  <20.165558, 22.156548, 17.699907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.551239, 22.081532, 17.774897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108706, -0.365292, -0.924524,
		0.241869, 0.911806, -0.331828,
		0.964200, -0.187542, 0.187471,
		20.840500, 22.025269, 17.831139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367004, 22.208197, 17.032784>,  <20.165558, 22.156548, 17.699907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367004, 22.208197, 17.032784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.703358, 22.075016, 17.203455>,  <20.905170, 21.995108, 17.305859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.703358, 22.075016, 17.203455>,  <20.367004, 22.208197, 17.032784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703358, 22.075016, 17.203455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391133, -0.171039, -0.904301,
		0.374067, 0.927302, -0.013595,
		0.840886, -0.332952, 0.426678,
		20.955624, 21.975130, 17.331459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.908993, 22.560776, 16.759262>,  <20.367004, 22.208197, 17.032784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.908993, 22.560776, 16.759262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.061871, 22.220432, 16.903467>,  <21.153597, 22.016226, 16.989990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.061871, 22.220432, 16.903467>,  <20.908993, 22.560776, 16.759262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.061871, 22.220432, 16.903467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263695, -0.273490, -0.925023,
		0.885660, 0.448603, 0.119841,
		0.382193, -0.850858, 0.360513,
		21.176529, 21.965176, 17.011621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.570026, 22.495932, 16.465303>,  <20.908993, 22.560776, 16.759262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.570026, 22.495932, 16.465303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.482677, 22.123814, 16.583197>,  <21.430269, 21.900543, 16.653933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.482677, 22.123814, 16.583197>,  <21.570026, 22.495932, 16.465303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482677, 22.123814, 16.583197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367045, -0.358144, -0.858493,
		0.904208, -0.079289, 0.419668,
		-0.218371, -0.930293, 0.294734,
		21.417166, 21.844725, 16.671618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.061161, 22.027140, 16.234871>,  <21.570026, 22.495932, 16.465303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.061161, 22.027140, 16.234871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.785736, 21.744240, 16.298969>,  <21.620481, 21.574499, 16.337429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.785736, 21.744240, 16.298969>,  <22.061161, 22.027140, 16.234871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.785736, 21.744240, 16.298969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205485, -0.402207, -0.892191,
		0.695455, -0.581401, 0.422274,
		-0.688562, -0.707250, 0.160248,
		21.579168, 21.532064, 16.347044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.313232, 21.321415, 15.962412>,  <22.061161, 22.027140, 16.234871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.313232, 21.321415, 15.962412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.916492, 21.289749, 16.002354>,  <21.678450, 21.270750, 16.026320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.916492, 21.289749, 16.002354>,  <22.313232, 21.321415, 15.962412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.916492, 21.289749, 16.002354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041198, -0.542324, -0.839159,
		0.120585, -0.836432, 0.534642,
		-0.991848, -0.079164, 0.099855,
		21.618938, 21.266001, 16.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.130302, 20.672195, 15.564508>,  <22.313232, 21.321415, 15.962412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.130302, 20.672195, 15.564508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.781536, 20.862442, 15.611077>,  <21.572277, 20.976589, 15.639019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.781536, 20.862442, 15.611077>,  <22.130302, 20.672195, 15.564508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781536, 20.862442, 15.611077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327730, -0.390188, -0.860434,
		-0.363806, -0.788382, 0.496084,
		-0.871916, 0.475612, 0.116424,
		21.519962, 21.005127, 15.646005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449806, 20.122583, 15.561714>,  <22.130302, 20.672195, 15.564508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449806, 20.122583, 15.561714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.382530, 20.500721, 15.449971>,  <21.342165, 20.727604, 15.382925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.382530, 20.500721, 15.449971>,  <21.449806, 20.122583, 15.561714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382530, 20.500721, 15.449971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246315, -0.314708, -0.916672,
		-0.954485, -0.085366, 0.285783,
		-0.168191, 0.945342, -0.279357,
		21.332073, 20.784323, 15.366164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.513308, 16.847263, 11.922272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.498856, 17.242371, 11.982944>,  <17.490185, 17.479435, 12.019346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.498856, 17.242371, 11.982944>,  <17.513308, 16.847263, 11.922272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.498856, 17.242371, 11.982944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824871, 0.056206, -0.562520,
		-0.564165, -0.145441, 0.812751,
		-0.036132, 0.987769, 0.151679,
		17.488016, 17.538702, 12.028447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.724625, 17.031361, 11.945015>,  <17.513308, 16.847263, 11.922272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.724625, 17.031361, 11.945015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.939014, 17.357903, 11.858953>,  <17.067648, 17.553827, 11.807315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.939014, 17.357903, 11.858953>,  <16.724625, 17.031361, 11.945015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939014, 17.357903, 11.858953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620856, 0.208450, -0.755703,
		-0.572074, 0.538619, 0.618564,
		0.535975, 0.816357, -0.215155,
		17.099808, 17.602810, 11.794406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231916, 17.458668, 11.802176>,  <16.724625, 17.031361, 11.945015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231916, 17.458668, 11.802176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.555275, 17.615601, 11.626643>,  <16.749290, 17.709761, 11.521324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.555275, 17.615601, 11.626643>,  <16.231916, 17.458668, 11.802176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555275, 17.615601, 11.626643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565071, 0.308394, -0.765237,
		-0.164894, 0.866585, 0.471000,
		0.808396, 0.392331, -0.438830,
		16.797794, 17.733299, 11.494994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994958, 18.035852, 11.577905>,  <16.231916, 17.458668, 11.802176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994958, 18.035852, 11.577905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.326473, 17.969837, 11.364036>,  <16.525383, 17.930227, 11.235714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.326473, 17.969837, 11.364036>,  <15.994958, 18.035852, 11.577905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.326473, 17.969837, 11.364036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476137, 0.293946, -0.828788,
		0.293946, 0.941466, 0.165038,
		0.828788, -0.165038, -0.534671,
		16.575109, 17.920326, 11.203634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983173, 18.572386, 11.051474>,  <15.994958, 18.035852, 11.577905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.983173, 18.572386, 11.051474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.258064, 18.335491, 10.883199>,  <16.422998, 18.193356, 10.782234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.258064, 18.335491, 10.883199>,  <15.983173, 18.572386, 11.051474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.258064, 18.335491, 10.883199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336988, 0.253125, -0.906844,
		0.643551, 0.764974, -0.025621,
		0.687227, -0.592234, -0.420687,
		16.464233, 18.157822, 10.756992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.335163, 18.975021, 10.574297>,  <15.983173, 18.572386, 11.051474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.335163, 18.975021, 10.574297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.346500, 18.588299, 10.472721>,  <16.353304, 18.356266, 10.411776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.346500, 18.588299, 10.472721>,  <16.335163, 18.975021, 10.574297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346500, 18.588299, 10.472721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436350, 0.216591, -0.873320,
		0.899330, 0.135561, -0.415726,
		0.028345, -0.966805, -0.253939,
		16.355003, 18.298258, 10.396540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704618, 18.957632, 9.933327>,  <16.335163, 18.975021, 10.574297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704618, 18.957632, 9.933327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.487625, 18.621620, 9.930137>,  <16.357430, 18.420013, 9.928223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.487625, 18.621620, 9.930137>,  <16.704618, 18.957632, 9.933327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487625, 18.621620, 9.930137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173216, 0.121142, -0.977405,
		0.822014, -0.528845, -0.211224,
		-0.542484, -0.840028, -0.007976,
		16.324881, 18.369612, 9.927744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872677, 18.539167, 9.303321>,  <16.704618, 18.957632, 9.933327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872677, 18.539167, 9.303321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.508282, 18.430782, 9.427695>,  <16.289644, 18.365751, 9.502319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.508282, 18.430782, 9.427695>,  <16.872677, 18.539167, 9.303321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508282, 18.430782, 9.427695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338808, 0.061765, -0.938826,
		0.235181, -0.960606, -0.148071,
		-0.910988, -0.270961, 0.310935,
		16.234985, 18.349493, 9.520976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.720268, 18.041214, 8.801345>,  <16.872677, 18.539167, 9.303321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.720268, 18.041214, 8.801345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.371788, 18.164074, 8.954534>,  <16.162701, 18.237789, 9.046447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.371788, 18.164074, 8.954534>,  <16.720268, 18.041214, 8.801345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371788, 18.164074, 8.954534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341392, 0.181553, -0.922220,
		-0.352790, -0.934183, -0.053310,
		-0.871201, 0.307150, 0.382972,
		16.110428, 18.256220, 9.069426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.308208, 17.883209, 8.214243>,  <16.720268, 18.041214, 8.801345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.308208, 17.883209, 8.214243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.085121, 18.112240, 8.454611>,  <15.951268, 18.249659, 8.598831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.085121, 18.112240, 8.454611>,  <16.308208, 17.883209, 8.214243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085121, 18.112240, 8.454611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445085, 0.404784, -0.798780,
		-0.700605, -0.712956, 0.029089,
		-0.557721, 0.572576, 0.600920,
		15.917805, 18.284012, 8.634887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656270, 17.901741, 7.939755>,  <16.308208, 17.883209, 8.214243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656270, 17.901741, 7.939755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.684892, 18.236092, 8.157449>,  <15.702065, 18.436703, 8.288065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.684892, 18.236092, 8.157449>,  <15.656270, 17.901741, 7.939755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.684892, 18.236092, 8.157449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404708, 0.523030, -0.750101,
		-0.911642, -0.166582, 0.375712,
		0.071555, 0.835877, 0.544233,
		15.706358, 18.486855, 8.320719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038648, 18.028847, 7.846202>,  <15.656270, 17.901741, 7.939755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038648, 18.028847, 7.846202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.200604, 18.371159, 7.975015>,  <15.297778, 18.576546, 8.052302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.200604, 18.371159, 7.975015>,  <15.038648, 18.028847, 7.846202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200604, 18.371159, 7.975015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521570, 0.505435, -0.687387,
		-0.751018, 0.110355, 0.650995,
		0.404892, 0.855779, 0.322032,
		15.322072, 18.627892, 8.071625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.559417, 18.486137, 8.129238>,  <15.038648, 18.028847, 7.846202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.559417, 18.486137, 8.129238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.865090, 18.688549, 7.969258>,  <15.048494, 18.809996, 7.873271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.865090, 18.688549, 7.969258>,  <14.559417, 18.486137, 8.129238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865090, 18.688549, 7.969258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602279, 0.337911, -0.723241,
		-0.230833, 0.793569, 0.562996,
		0.764184, 0.506028, -0.399949,
		15.094345, 18.840357, 7.849274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286605, 19.153973, 7.899644>,  <14.559417, 18.486137, 8.129238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.286605, 19.153973, 7.899644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.609532, 19.097088, 7.670554>,  <14.803288, 19.062958, 7.533100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.609532, 19.097088, 7.670554>,  <14.286605, 19.153973, 7.899644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609532, 19.097088, 7.670554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529346, 0.254448, -0.809351,
		0.260827, 0.956573, 0.130141,
		0.807318, -0.142210, -0.572725,
		14.851727, 19.054424, 7.498736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.728618, 18.843704, 7.509863>,  <14.286605, 19.153973, 7.899644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.728618, 18.843704, 7.509863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.343238, 18.937309, 7.562023>,  <13.112010, 18.993471, 7.593319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.343238, 18.937309, 7.562023>,  <13.728618, 18.843704, 7.509863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343238, 18.937309, 7.562023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265202, 0.764389, 0.587689,
		0.037849, 0.600791, -0.798510,
		-0.963450, 0.234010, 0.130400,
		13.054203, 19.007513, 7.601143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.820509, 19.555185, 7.487491>,  <13.728618, 18.843704, 7.509863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.820509, 19.555185, 7.487491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.433177, 19.525070, 7.582710>,  <13.200778, 19.507000, 7.639842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.433177, 19.525070, 7.582710>,  <13.820509, 19.555185, 7.487491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433177, 19.525070, 7.582710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047552, 0.880383, 0.471874,
		-0.245102, 0.468250, -0.848921,
		-0.968330, -0.075289, 0.238049,
		13.142678, 19.502483, 7.654125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.477498, 20.128946, 7.281880>,  <13.820509, 19.555185, 7.487491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.477498, 20.128946, 7.281880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.235351, 19.978497, 7.562468>,  <13.090062, 19.888227, 7.730820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.235351, 19.978497, 7.562468>,  <13.477498, 20.128946, 7.281880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.235351, 19.978497, 7.562468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032345, 0.868951, 0.493841,
		-0.795288, 0.321645, -0.513869,
		-0.605368, -0.376125, 0.701470,
		13.053741, 19.865660, 7.772909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280946, 20.799006, 7.532856>,  <13.477498, 20.128946, 7.281880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.280946, 20.799006, 7.532856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.180545, 20.510441, 7.791021>,  <13.120304, 20.337301, 7.945921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.180545, 20.510441, 7.791021>,  <13.280946, 20.799006, 7.532856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.180545, 20.510441, 7.791021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100193, 0.643816, 0.758592,
		-0.962787, 0.255074, -0.089319,
		-0.251002, -0.721413, 0.645415,
		13.105245, 20.294016, 7.984646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857956, 21.129868, 8.015562>,  <13.280946, 20.799006, 7.532856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857956, 21.129868, 8.015562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.992894, 20.809422, 8.213315>,  <13.073857, 20.617155, 8.331967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.992894, 20.809422, 8.213315>,  <12.857956, 21.129868, 8.015562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992894, 20.809422, 8.213315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014970, 0.529666, 0.848074,
		-0.941262, -0.278693, 0.190673,
		0.337345, -0.801114, 0.494383,
		13.094098, 20.569088, 8.361629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.426698, 20.992811, 8.616595>,  <12.857956, 21.129868, 8.015562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.426698, 20.992811, 8.616595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.748498, 20.783543, 8.729074>,  <12.941578, 20.657982, 8.796562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.748498, 20.783543, 8.729074>,  <12.426698, 20.992811, 8.616595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748498, 20.783543, 8.729074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035980, 0.429639, 0.902284,
		-0.592860, -0.736006, 0.326821,
		0.804501, -0.523169, 0.281197,
		12.989848, 20.626593, 8.813434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.282455, 20.967743, 9.270831>,  <12.426698, 20.992811, 8.616595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.282455, 20.967743, 9.270831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.670527, 20.870857, 9.267239>,  <12.903371, 20.812725, 9.265083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.670527, 20.870857, 9.267239>,  <12.282455, 20.967743, 9.270831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.670527, 20.870857, 9.267239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084164, 0.301903, 0.949616,
		-0.227300, -0.922056, 0.313286,
		0.970182, -0.242215, -0.008981,
		12.961582, 20.798193, 9.264544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369787, 20.685677, 9.946990>,  <12.282455, 20.967743, 9.270831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369787, 20.685677, 9.946990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.736421, 20.782612, 9.819776>,  <12.956401, 20.840773, 9.743446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<12.736421, 20.782612, 9.819776>,  <12.369787, 20.685677, 9.946990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.736421, 20.782612, 9.819776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236457, 0.312892, 0.919884,
		0.322455, -0.918347, 0.229482,
		0.916576, 0.242359, -0.318043,
		13.011395, 20.855312, 9.724364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.935343, 20.291492, 10.345746>,  <12.369787, 20.685677, 9.946990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.935343, 20.291492, 10.345746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.076049, 20.634777, 10.196222>,  <13.160473, 20.840748, 10.106508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.076049, 20.634777, 10.196222>,  <12.935343, 20.291492, 10.345746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076049, 20.634777, 10.196222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366606, 0.241131, 0.898586,
		0.861314, -0.453133, -0.229804,
		0.351766, 0.858212, -0.373810,
		13.181579, 20.892241, 10.084079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588306, 20.326937, 10.772639>,  <12.935343, 20.291492, 10.345746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588306, 20.326937, 10.772639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.495881, 20.678322, 10.605349>,  <13.440426, 20.889153, 10.504974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.495881, 20.678322, 10.605349>,  <13.588306, 20.326937, 10.772639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.495881, 20.678322, 10.605349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305808, 0.473647, 0.825917,
		0.923629, 0.062942, -0.378084,
		-0.231064, 0.878462, -0.418226,
		13.426562, 20.941860, 10.479880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199868, 20.612043, 10.812553>,  <13.588306, 20.326937, 10.772639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199868, 20.612043, 10.812553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.932696, 20.904079, 10.754813>,  <13.772393, 21.079302, 10.720169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<13.932696, 20.904079, 10.754813>,  <14.199868, 20.612043, 10.812553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932696, 20.904079, 10.754813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315167, 0.453194, 0.833837,
		0.674196, 0.511450, -0.532802,
		-0.667929, 0.730091, -0.144349,
		13.732318, 21.123106, 10.711509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.549726, 21.184547, 11.007014>,  <14.199868, 20.612043, 10.812553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.549726, 21.184547, 11.007014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.158839, 21.268368, 11.020514>,  <13.924308, 21.318661, 11.028613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.158839, 21.268368, 11.020514>,  <14.549726, 21.184547, 11.007014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158839, 21.268368, 11.020514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148776, 0.562854, 0.813057,
		0.151383, 0.799552, -0.581206,
		-0.977215, 0.209552, 0.033748,
		13.865675, 21.331234, 11.030638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483067, 21.950802, 11.002339>,  <14.549726, 21.184547, 11.007014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483067, 21.950802, 11.002339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.145413, 21.800289, 11.155103>,  <13.942822, 21.709982, 11.246760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.145413, 21.800289, 11.155103>,  <14.483067, 21.950802, 11.002339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145413, 21.800289, 11.155103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117122, 0.565708, 0.816246,
		-0.523186, 0.733749, -0.433462,
		-0.844132, -0.376280, 0.381909,
		13.892174, 21.687405, 11.269675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373591, 22.424154, 11.461388>,  <14.483067, 21.950802, 11.002339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373591, 22.424154, 11.461388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.167075, 22.106575, 11.589816>,  <14.043165, 21.916027, 11.666873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.167075, 22.106575, 11.589816>,  <14.373591, 22.424154, 11.461388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167075, 22.106575, 11.589816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011534, 0.381314, 0.924374,
		-0.856335, 0.473543, -0.206027,
		-0.516291, -0.793950, 0.321071,
		14.012188, 21.868389, 11.686137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120811, 23.135607, 11.530109>,  <14.373591, 22.424154, 11.461388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120811, 23.135607, 11.530109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.465415, 23.314922, 11.434750>,  <14.672177, 23.422512, 11.377534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.465415, 23.314922, 11.434750>,  <14.120811, 23.135607, 11.530109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465415, 23.314922, 11.434750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165944, -0.195147, -0.966633,
		-0.479856, 0.872326, -0.093730,
		0.861511, 0.448291, -0.238400,
		14.723868, 23.449409, 11.363230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.903960, 23.593363, 11.009739>,  <14.120811, 23.135607, 11.530109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.903960, 23.593363, 11.009739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.301915, 23.558502, 10.989322>,  <14.540688, 23.537586, 10.977072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.301915, 23.558502, 10.989322>,  <13.903960, 23.593363, 11.009739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.301915, 23.558502, 10.989322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057398, -0.072041, -0.995749,
		0.083102, 0.993587, -0.076675,
		0.994887, -0.087150, -0.051043,
		14.600381, 23.532356, 10.974009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.007063, 24.069242, 10.469110>,  <13.903960, 23.593363, 11.009739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.007063, 24.069242, 10.469110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.329370, 23.834354, 10.499871>,  <14.522754, 23.693422, 10.518328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.329370, 23.834354, 10.499871>,  <14.007063, 24.069242, 10.469110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.329370, 23.834354, 10.499871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057169, -0.052124, -0.997003,
		0.589467, 0.807748, -0.008429,
		0.805767, -0.587219, 0.076904,
		14.571099, 23.658188, 10.522943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590940, 24.424314, 10.094528>,  <14.007063, 24.069242, 10.469110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590940, 24.424314, 10.094528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.660916, 24.031075, 10.116110>,  <14.702902, 23.795130, 10.129059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.660916, 24.031075, 10.116110>,  <14.590940, 24.424314, 10.094528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660916, 24.031075, 10.116110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235338, -0.011457, -0.971846,
		0.956039, 0.182712, 0.229356,
		0.174941, -0.983099, 0.053953,
		14.713399, 23.736145, 10.132296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226248, 24.280197, 9.582232>,  <14.590940, 24.424314, 10.094528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226248, 24.280197, 9.582232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.092139, 23.914238, 9.672173>,  <15.011674, 23.694662, 9.726137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.092139, 23.914238, 9.672173>,  <15.226248, 24.280197, 9.582232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092139, 23.914238, 9.672173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386128, -0.351138, -0.852999,
		0.859360, -0.199164, 0.470993,
		-0.335270, -0.914897, 0.224851,
		14.991558, 23.639769, 9.739628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798941, 23.802668, 9.418589>,  <15.226248, 24.280197, 9.582232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798941, 23.802668, 9.418589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.447421, 23.613991, 9.389686>,  <15.236509, 23.500784, 9.372344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.447421, 23.613991, 9.389686>,  <15.798941, 23.802668, 9.418589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447421, 23.613991, 9.389686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331789, -0.495147, -0.802960,
		0.342973, -0.729614, 0.591636,
		-0.878798, -0.471692, -0.072256,
		15.183782, 23.472483, 9.368009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922917, 23.225414, 9.296329>,  <15.798941, 23.802668, 9.418589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922917, 23.225414, 9.296329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.537469, 23.221935, 9.189478>,  <15.306200, 23.219849, 9.125367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.537469, 23.221935, 9.189478>,  <15.922917, 23.225414, 9.296329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537469, 23.221935, 9.189478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250494, -0.377908, -0.891313,
		-0.093198, -0.925802, 0.366339,
		-0.963622, -0.008697, -0.267128,
		15.248383, 23.219326, 9.109340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.760184, 22.636974, 9.040913>,  <15.922917, 23.225414, 9.296329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.760184, 22.636974, 9.040913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.463191, 22.840382, 8.866496>,  <15.284995, 22.962425, 8.761847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.463191, 22.840382, 8.866496>,  <15.760184, 22.636974, 9.040913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463191, 22.840382, 8.866496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263995, -0.376122, -0.888166,
		-0.615651, -0.774560, 0.145018,
		-0.742482, 0.508516, -0.436040,
		15.240446, 22.992937, 8.735684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732554, 22.336061, 8.435738>,  <15.760184, 22.636974, 9.040913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732554, 22.336061, 8.435738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.472829, 22.629913, 8.357040>,  <15.316994, 22.806225, 8.309822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.472829, 22.629913, 8.357040>,  <15.732554, 22.336061, 8.435738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.472829, 22.629913, 8.357040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022942, -0.277498, -0.960452,
		-0.760174, -0.619122, 0.197038,
		-0.649315, 0.734631, -0.196742,
		15.278034, 22.850302, 8.298018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140263, 22.049149, 8.107990>,  <15.732554, 22.336061, 8.435738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140263, 22.049149, 8.107990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154656, 22.426563, 7.976267>,  <15.163293, 22.653011, 7.897233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.154656, 22.426563, 7.976267>,  <15.140263, 22.049149, 8.107990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.154656, 22.426563, 7.976267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002279, -0.329599, -0.944118,
		-0.999350, 0.033223, -0.014011,
		0.035984, 0.943536, -0.329309,
		15.165452, 22.709623, 7.877474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755874, 22.107349, 7.563186>,  <15.140263, 22.049149, 8.107990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755874, 22.107349, 7.563186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.946961, 22.452610, 7.497760>,  <15.061614, 22.659767, 7.458504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.946961, 22.452610, 7.497760>,  <14.755874, 22.107349, 7.563186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.946961, 22.452610, 7.497760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106775, -0.241850, -0.964421,
		-0.872000, 0.443258, -0.207699,
		0.477719, 0.863152, -0.163565,
		15.090277, 22.711555, 7.448690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326512, 22.507002, 7.179801>,  <14.755874, 22.107349, 7.563186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326512, 22.507002, 7.179801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.709077, 22.606251, 7.118203>,  <14.938616, 22.665800, 7.081245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.709077, 22.606251, 7.118203>,  <14.326512, 22.507002, 7.179801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.709077, 22.606251, 7.118203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066486, -0.328470, -0.942171,
		-0.284354, 0.911342, -0.297656,
		0.956411, 0.248120, -0.153993,
		14.996000, 22.680687, 7.072005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.787984, 24.815260, 14.746817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180768, 24.768017, 14.687753>,  <15.416438, 24.739670, 14.652314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180768, 24.768017, 14.687753>,  <14.787984, 24.815260, 14.746817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180768, 24.768017, 14.687753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152731, -0.035052, -0.987646,
		0.111475, 0.992382, -0.052459,
		0.981961, -0.118110, -0.147660,
		15.475356, 24.732584, 14.643455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.011181, 25.368620, 14.219686>,  <14.787984, 24.815260, 14.746817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.011181, 25.368620, 14.219686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241603, 25.042042, 14.235579>,  <15.379856, 24.846094, 14.245116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241603, 25.042042, 14.235579>,  <15.011181, 25.368620, 14.219686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241603, 25.042042, 14.235579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097068, -0.116592, -0.988425,
		0.811628, 0.565529, -0.146414,
		0.576054, -0.816445, 0.039735,
		15.414419, 24.797108, 14.247499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357385, 25.451414, 13.645817>,  <15.011181, 25.368620, 14.219686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357385, 25.451414, 13.645817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418900, 25.069870, 13.748965>,  <15.455810, 24.840942, 13.810854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.418900, 25.069870, 13.748965>,  <15.357385, 25.451414, 13.645817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418900, 25.069870, 13.748965> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138492, -0.279207, -0.950191,
		0.978350, 0.110416, -0.175042,
		0.153790, -0.953861, 0.257871,
		15.465037, 24.783712, 13.826326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803408, 25.207228, 13.123435>,  <15.357385, 25.451414, 13.645817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803408, 25.207228, 13.123435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634753, 24.889809, 13.298935>,  <15.533561, 24.699356, 13.404235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634753, 24.889809, 13.298935>,  <15.803408, 25.207228, 13.123435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.634753, 24.889809, 13.298935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185170, -0.398314, -0.898364,
		0.887657, -0.460027, 0.021002,
		-0.421637, -0.793550, 0.438750,
		15.508262, 24.651743, 13.430560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023935, 24.671368, 12.674658>,  <15.803408, 25.207228, 13.123435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023935, 24.671368, 12.674658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729947, 24.504578, 12.888556>,  <15.553555, 24.404505, 13.016894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729947, 24.504578, 12.888556>,  <16.023935, 24.671368, 12.674658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729947, 24.504578, 12.888556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322871, -0.478274, -0.816705,
		0.596299, -0.772908, 0.216888,
		-0.734970, -0.416974, 0.534744,
		15.509456, 24.379486, 13.048979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.247536, 23.976595, 12.641098>,  <16.023935, 24.671368, 12.674658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.247536, 23.976595, 12.641098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857209, 24.001431, 12.724935>,  <15.623013, 24.016331, 12.775237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857209, 24.001431, 12.724935>,  <16.247536, 23.976595, 12.641098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.857209, 24.001431, 12.724935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214438, -0.457987, -0.862708,
		0.042428, -0.886788, 0.460225,
		-0.975816, 0.062087, 0.209592,
		15.564465, 24.020056, 12.787812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917662, 23.325266, 12.475063>,  <16.247536, 23.976595, 12.641098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917662, 23.325266, 12.475063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629317, 23.602432, 12.469074>,  <15.456310, 23.768732, 12.465481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629317, 23.602432, 12.469074>,  <15.917662, 23.325266, 12.475063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629317, 23.602432, 12.469074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407257, -0.440963, -0.799809,
		-0.560806, -0.570451, 0.600068,
		-0.720860, 0.692920, -0.014974,
		15.413059, 23.810308, 12.464582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.273757, 22.963270, 12.439236>,  <15.917662, 23.325266, 12.475063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.273757, 22.963270, 12.439236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189279, 23.326015, 12.293362>,  <15.138592, 23.543663, 12.205837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.189279, 23.326015, 12.293362>,  <15.273757, 22.963270, 12.439236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189279, 23.326015, 12.293362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381734, -0.419996, -0.823337,
		-0.899820, -0.034672, 0.434882,
		-0.211195, 0.906864, -0.364685,
		15.125920, 23.598074, 12.183956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664845, 22.936136, 12.068541>,  <15.273757, 22.963270, 12.439236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664845, 22.936136, 12.068541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844789, 23.260117, 11.918018>,  <14.952754, 23.454506, 11.827704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.844789, 23.260117, 11.918018>,  <14.664845, 22.936136, 12.068541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.844789, 23.260117, 11.918018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241069, -0.295586, -0.924399,
		-0.859950, 0.506563, 0.062283,
		0.449857, 0.809952, -0.376306,
		14.979746, 23.503101, 11.805126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965315, 22.642347, 12.146264>,  <14.664845, 22.936136, 12.068541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965315, 22.642347, 12.146264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938180, 22.243279, 12.143519>,  <13.921899, 22.003838, 12.141872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.938180, 22.243279, 12.143519>,  <13.965315, 22.642347, 12.146264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938180, 22.243279, 12.143519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120863, -0.015044, 0.992555,
		-0.990349, 0.066502, 0.121603,
		-0.067837, -0.997673, -0.006861,
		13.917829, 21.943977, 12.141461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.439723, 22.464777, 12.596403>,  <13.965315, 22.642347, 12.146264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.439723, 22.464777, 12.596403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664968, 22.135876, 12.563413>,  <13.800114, 21.938534, 12.543618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664968, 22.135876, 12.563413>,  <13.439723, 22.464777, 12.596403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.664968, 22.135876, 12.563413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047815, -0.067217, 0.996592,
		-0.824997, -0.565135, 0.001465,
		0.563110, -0.822256, -0.082476,
		13.833900, 21.889198, 12.538670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.153059, 21.956480, 13.098525>,  <13.439723, 22.464777, 12.596403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.153059, 21.956480, 13.098525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513722, 21.818836, 12.993757>,  <13.730121, 21.736250, 12.930897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513722, 21.818836, 12.993757>,  <13.153059, 21.956480, 13.098525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513722, 21.818836, 12.993757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172862, -0.268383, 0.947676,
		-0.396399, -0.899755, -0.182507,
		0.901658, -0.344109, -0.261920,
		13.784220, 21.715603, 12.915181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100941, 21.310030, 13.467762>,  <13.153059, 21.956480, 13.098525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100941, 21.310030, 13.467762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479011, 21.433460, 13.424999>,  <13.705853, 21.507519, 13.399342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479011, 21.433460, 13.424999>,  <13.100941, 21.310030, 13.467762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479011, 21.433460, 13.424999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202022, -0.295280, 0.933808,
		0.256582, -0.904207, -0.341430,
		0.945174, 0.308574, -0.106906,
		13.762563, 21.526031, 13.392927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.449121, 20.774275, 13.877118>,  <13.100941, 21.310030, 13.467762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.449121, 20.774275, 13.877118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762263, 21.018944, 13.831515>,  <13.950149, 21.165745, 13.804153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.762263, 21.018944, 13.831515>,  <13.449121, 20.774275, 13.877118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762263, 21.018944, 13.831515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358429, -0.293563, 0.886199,
		0.508595, -0.734628, -0.449058,
		0.782854, 0.611672, -0.114007,
		13.997120, 21.202446, 13.797313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053434, 20.321644, 13.942249>,  <13.449121, 20.774275, 13.877118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053434, 20.321644, 13.942249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141786, 20.707569, 13.999312>,  <14.194797, 20.939123, 14.033550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141786, 20.707569, 13.999312>,  <14.053434, 20.321644, 13.942249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141786, 20.707569, 13.999312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383991, -0.220484, 0.896626,
		0.896529, -0.143265, -0.419179,
		0.220878, 0.964812, 0.142658,
		14.208049, 20.997013, 14.042109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.794896, 20.389231, 14.094376>,  <14.053434, 20.321644, 13.942249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.794896, 20.389231, 14.094376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597728, 20.683681, 14.279910>,  <14.479426, 20.860352, 14.391231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.597728, 20.683681, 14.279910>,  <14.794896, 20.389231, 14.094376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597728, 20.683681, 14.279910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420623, -0.265054, 0.867653,
		0.761646, 0.622785, -0.178982,
		-0.492922, 0.736128, 0.463836,
		14.449851, 20.904520, 14.419061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286406, 20.683588, 14.508153>,  <14.794896, 20.389231, 14.094376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286406, 20.683588, 14.508153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950137, 20.840950, 14.657018>,  <14.748376, 20.935368, 14.746337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.950137, 20.840950, 14.657018>,  <15.286406, 20.683588, 14.508153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950137, 20.840950, 14.657018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400020, -0.012131, 0.916426,
		0.365040, 0.919286, -0.147171,
		-0.840672, 0.393403, 0.372161,
		14.697935, 20.958971, 14.768666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558069, 21.185720, 14.824247>,  <15.286406, 20.683588, 14.508153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558069, 21.185720, 14.824247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200486, 21.155994, 15.001025>,  <14.985936, 21.138159, 15.107092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.200486, 21.155994, 15.001025>,  <15.558069, 21.185720, 14.824247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200486, 21.155994, 15.001025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427069, 0.157633, 0.890373,
		-0.135835, 0.984697, -0.109179,
		-0.893958, -0.074317, 0.441945,
		14.932299, 21.133699, 15.133609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728204, 21.663080, 15.337669>,  <15.558069, 21.185720, 14.824247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728204, 21.663080, 15.337669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406978, 21.470146, 15.477633>,  <15.214242, 21.354385, 15.561612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406978, 21.470146, 15.477633>,  <15.728204, 21.663080, 15.337669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406978, 21.470146, 15.477633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398818, 0.001247, 0.917029,
		-0.442752, 0.875986, 0.191363,
		-0.803066, -0.482335, 0.349911,
		15.166058, 21.325445, 15.582607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490913, 22.047613, 15.853534>,  <15.728204, 21.663080, 15.337669>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490913, 22.047613, 15.853534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371993, 21.671337, 15.918916>,  <15.300641, 21.445572, 15.958145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371993, 21.671337, 15.918916>,  <15.490913, 22.047613, 15.853534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371993, 21.671337, 15.918916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305402, 0.068509, 0.949756,
		-0.904622, 0.332284, 0.266921,
		-0.297302, -0.940688, 0.163455,
		15.282803, 21.389132, 15.967953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130677, 22.128811, 16.390982>,  <15.490913, 22.047613, 15.853534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130677, 22.128811, 16.390982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205045, 21.735863, 16.383177>,  <15.249665, 21.500093, 16.378494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205045, 21.735863, 16.383177>,  <15.130677, 22.128811, 16.390982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205045, 21.735863, 16.383177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205608, 0.019477, 0.978441,
		-0.960812, -0.185923, 0.205604,
		0.185919, -0.982371, -0.019514,
		15.260820, 21.441151, 16.377323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.736227, 21.843637, 16.900942>,  <15.130677, 22.128811, 16.390982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.736227, 21.843637, 16.900942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007762, 21.559219, 16.827629>,  <15.170683, 21.388569, 16.783642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.007762, 21.559219, 16.827629>,  <14.736227, 21.843637, 16.900942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007762, 21.559219, 16.827629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163323, -0.097142, 0.981779,
		-0.715896, -0.696401, 0.050188,
		0.678836, -0.711048, -0.183282,
		15.211413, 21.345905, 16.772644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552212, 21.194937, 17.312416>,  <14.736227, 21.843637, 16.900942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552212, 21.194937, 17.312416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938697, 21.180405, 17.210346>,  <15.170588, 21.171686, 17.149105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.938697, 21.180405, 17.210346>,  <14.552212, 21.194937, 17.312416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938697, 21.180405, 17.210346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220841, -0.393796, 0.892275,
		-0.132903, -0.918480, -0.372467,
		0.966212, -0.036330, -0.255175,
		15.228560, 21.169506, 17.133793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.360792, 23.653908, 15.833811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.003613, 23.833965, 15.835223>,  <21.789305, 23.941999, 15.836071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.003613, 23.833965, 15.835223>,  <22.360792, 23.653908, 15.833811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003613, 23.833965, 15.835223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174017, -0.337944, -0.924939,
		-0.415165, -0.826537, 0.380100,
		-0.892948, 0.450146, 0.003529,
		21.735727, 23.969007, 15.836283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.895353, 23.186859, 15.670889>,  <22.360792, 23.653908, 15.833811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.895353, 23.186859, 15.670889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.715527, 23.531605, 15.577012>,  <21.607630, 23.738453, 15.520686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.715527, 23.531605, 15.577012>,  <21.895353, 23.186859, 15.670889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.715527, 23.531605, 15.577012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086995, -0.303738, -0.948776,
		-0.889000, -0.406122, 0.211528,
		-0.449568, 0.861863, -0.234693,
		21.580656, 23.790163, 15.506604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360508, 22.937101, 15.243414>,  <21.895353, 23.186859, 15.670889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360508, 22.937101, 15.243414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.360184, 23.330021, 15.168490>,  <21.359989, 23.565773, 15.123536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.360184, 23.330021, 15.168490>,  <21.360508, 22.937101, 15.243414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360184, 23.330021, 15.168490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268422, -0.180650, -0.946211,
		-0.963301, 0.049512, 0.263818,
		-0.000810, 0.982301, -0.187310,
		21.359941, 23.624712, 15.112297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688925, 23.205851, 15.022337>,  <21.360508, 22.937101, 15.243414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688925, 23.205851, 15.022337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.980404, 23.444469, 14.887795>,  <21.155291, 23.587641, 14.807071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.980404, 23.444469, 14.887795>,  <20.688925, 23.205851, 15.022337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980404, 23.444469, 14.887795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232957, -0.245935, -0.940875,
		-0.643998, 0.763968, -0.040242,
		0.728696, 0.596548, -0.336354,
		21.199013, 23.623434, 14.786889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.401854, 23.606520, 14.567220>,  <20.688925, 23.205851, 15.022337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.401854, 23.606520, 14.567220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.790318, 23.648186, 14.481429>,  <21.023396, 23.673185, 14.429955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.790318, 23.648186, 14.481429>,  <20.401854, 23.606520, 14.567220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.790318, 23.648186, 14.481429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211507, -0.038888, -0.976602,
		-0.110067, 0.993800, -0.015735,
		0.971159, 0.104164, -0.214476,
		21.081665, 23.679436, 14.417087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490589, 23.999090, 13.945589>,  <20.401854, 23.606520, 14.567220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490589, 23.999090, 13.945589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.855701, 23.837009, 13.966161>,  <21.074768, 23.739761, 13.978504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.855701, 23.837009, 13.966161>,  <20.490589, 23.999090, 13.945589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855701, 23.837009, 13.966161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072695, 0.037256, -0.996658,
		0.401933, 0.913467, 0.063463,
		0.912779, -0.405204, 0.051430,
		21.129536, 23.715448, 13.981589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855408, 24.234028, 13.259177>,  <20.490589, 23.999090, 13.945589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855408, 24.234028, 13.259177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.058167, 23.910423, 13.378214>,  <21.179821, 23.716261, 13.449636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.058167, 23.910423, 13.378214>,  <20.855408, 24.234028, 13.259177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058167, 23.910423, 13.378214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096595, -0.289746, -0.952217,
		0.856578, 0.511421, -0.068725,
		0.506896, -0.809009, 0.297591,
		21.210236, 23.667721, 13.467491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389610, 24.268372, 12.728754>,  <20.855408, 24.234028, 13.259177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389610, 24.268372, 12.728754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.344685, 23.903019, 12.885274>,  <21.317730, 23.683807, 12.979186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.344685, 23.903019, 12.885274>,  <21.389610, 24.268372, 12.728754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.344685, 23.903019, 12.885274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268631, -0.351219, -0.896929,
		0.956673, -0.205851, -0.205917,
		-0.112312, -0.913384, 0.391300,
		21.310991, 23.629004, 13.002664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506403, 23.784134, 12.161700>,  <21.389610, 24.268372, 12.728754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506403, 23.784134, 12.161700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.315079, 23.546074, 12.420008>,  <21.200285, 23.403238, 12.574992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.315079, 23.546074, 12.420008>,  <21.506403, 23.784134, 12.161700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315079, 23.546074, 12.420008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349771, -0.545394, -0.761712,
		0.805531, -0.590205, 0.052701,
		-0.478309, -0.595150, 0.645768,
		21.171585, 23.367529, 12.613738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753740, 23.147385, 12.055639>,  <21.506403, 23.784134, 12.161700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753740, 23.147385, 12.055639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399315, 23.105595, 12.236296>,  <21.186661, 23.080521, 12.344689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.399315, 23.105595, 12.236296>,  <21.753740, 23.147385, 12.055639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399315, 23.105595, 12.236296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306195, -0.599594, -0.739413,
		0.348050, -0.793456, 0.499288,
		-0.886062, -0.104473, 0.451641,
		21.133495, 23.074253, 12.371788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617683, 22.477968, 11.864902>,  <21.753740, 23.147385, 12.055639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617683, 22.477968, 11.864902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.254498, 22.573948, 12.002322>,  <21.036587, 22.631535, 12.084774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.254498, 22.573948, 12.002322>,  <21.617683, 22.477968, 11.864902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.254498, 22.573948, 12.002322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419047, -0.518560, -0.745316,
		-0.000686, -0.820683, 0.571383,
		-0.907964, 0.239947, 0.343549,
		20.982109, 22.645931, 12.105387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226141, 21.836889, 12.116924>,  <21.617683, 22.477968, 11.864902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226141, 21.836889, 12.116924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.981827, 22.124134, 11.983504>,  <20.835239, 22.296482, 11.903452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.981827, 22.124134, 11.983504>,  <21.226141, 21.836889, 12.116924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.981827, 22.124134, 11.983504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343267, -0.619763, -0.705735,
		-0.713520, -0.316555, 0.625046,
		-0.610784, 0.718114, -0.333550,
		20.798592, 22.339567, 11.883439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.741650, 21.542135, 11.833115>,  <21.226141, 21.836889, 12.116924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.741650, 21.542135, 11.833115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.629398, 21.901012, 11.696707>,  <20.562048, 22.116339, 11.614862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.629398, 21.901012, 11.696707>,  <20.741650, 21.542135, 11.833115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629398, 21.901012, 11.696707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375969, -0.429657, -0.821001,
		-0.883116, -0.102185, 0.457891,
		-0.280630, 0.897192, -0.341018,
		20.545210, 22.170170, 11.594401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999540, 21.487904, 11.692830>,  <20.741650, 21.542135, 11.833115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999540, 21.487904, 11.692830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.151863, 21.780819, 11.467003>,  <20.243258, 21.956568, 11.331507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.151863, 21.780819, 11.467003>,  <19.999540, 21.487904, 11.692830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151863, 21.780819, 11.467003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370124, -0.438804, -0.818816,
		-0.847345, 0.520771, 0.103939,
		0.380807, 0.732290, -0.564568,
		20.266106, 22.000505, 11.297632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.355742, 21.087996, 11.722317>,  <19.999540, 21.487904, 11.692830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.355742, 21.087996, 11.722317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.381271, 20.693012, 11.780081>,  <19.396589, 20.456022, 11.814739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.381271, 20.693012, 11.780081>,  <19.355742, 21.087996, 11.722317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381271, 20.693012, 11.780081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122372, 0.151357, 0.980875,
		-0.990430, -0.044934, 0.130498,
		0.063826, -0.987457, 0.144410,
		19.400419, 20.396774, 11.823403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032637, 21.037359, 12.290744>,  <19.355742, 21.087996, 11.722317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032637, 21.037359, 12.290744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.206741, 20.678028, 12.266907>,  <19.311205, 20.462429, 12.252604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.206741, 20.678028, 12.266907>,  <19.032637, 21.037359, 12.290744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.206741, 20.678028, 12.266907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247115, 0.055559, 0.967392,
		-0.865725, -0.435797, 0.246174,
		0.435264, -0.898329, -0.059593,
		19.337320, 20.408529, 12.249029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775284, 20.659924, 12.890978>,  <19.032637, 21.037359, 12.290744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775284, 20.659924, 12.890978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.125999, 20.506260, 12.775283>,  <19.336430, 20.414061, 12.705866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.125999, 20.506260, 12.775283>,  <18.775284, 20.659924, 12.890978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.125999, 20.506260, 12.775283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359006, 0.122770, 0.925226,
		-0.319926, -0.915067, 0.245560,
		0.876791, -0.384161, -0.289237,
		19.389036, 20.391012, 12.688512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981079, 20.248432, 13.371419>,  <18.775284, 20.659924, 12.890978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981079, 20.248432, 13.371419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.343231, 20.306206, 13.211706>,  <19.560522, 20.340870, 13.115878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.343231, 20.306206, 13.211706>,  <18.981079, 20.248432, 13.371419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.343231, 20.306206, 13.211706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399109, 0.031460, 0.916364,
		0.144919, -0.989014, -0.029163,
		0.905379, 0.144438, -0.399283,
		19.614845, 20.349537, 13.091921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.415771, 19.870337, 13.784864>,  <18.981079, 20.248432, 13.371419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.415771, 19.870337, 13.784864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.660606, 20.124237, 13.596210>,  <19.807507, 20.276577, 13.483017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.660606, 20.124237, 13.596210>,  <19.415771, 19.870337, 13.784864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660606, 20.124237, 13.596210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411920, 0.253189, 0.875338,
		0.675035, -0.730060, -0.106493,
		0.612086, 0.634751, -0.471637,
		19.844233, 20.314663, 13.454719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056574, 19.782990, 14.107597>,  <19.415771, 19.870337, 13.784864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056574, 19.782990, 14.107597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.099804, 20.129677, 13.912818>,  <20.125742, 20.337688, 13.795950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.099804, 20.129677, 13.912818>,  <20.056574, 19.782990, 14.107597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099804, 20.129677, 13.912818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457449, 0.391527, 0.798403,
		0.882644, -0.309040, -0.354166,
		0.108073, 0.866718, -0.486949,
		20.132225, 20.389692, 13.766733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732187, 19.931425, 14.274681>,  <20.056574, 19.782990, 14.107597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732187, 19.931425, 14.274681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.577435, 20.286003, 14.173066>,  <20.484583, 20.498751, 14.112098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.577435, 20.286003, 14.173066>,  <20.732187, 19.931425, 14.274681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.577435, 20.286003, 14.173066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593875, 0.450271, 0.666760,
		0.705432, 0.107092, -0.700641,
		-0.386883, 0.886446, -0.254036,
		20.461370, 20.551937, 14.096855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278440, 20.405796, 13.964003>,  <20.732187, 19.931425, 14.274681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278440, 20.405796, 13.964003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.969269, 20.607101, 14.118566>,  <20.783766, 20.727884, 14.211303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.969269, 20.607101, 14.118566>,  <21.278440, 20.405796, 13.964003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969269, 20.607101, 14.118566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613289, 0.436447, 0.658323,
		0.162664, 0.745815, -0.645988,
		-0.772927, 0.503263, 0.386406,
		20.737391, 20.758080, 14.234488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.513828, 21.085598, 14.214021>,  <21.278440, 20.405796, 13.964003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.513828, 21.085598, 14.214021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.182301, 21.034721, 14.431968>,  <20.983383, 21.004194, 14.562737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.182301, 21.034721, 14.431968>,  <21.513828, 21.085598, 14.214021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.182301, 21.034721, 14.431968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493615, 0.292296, 0.819089,
		-0.263446, 0.947832, -0.179476,
		-0.828819, -0.127194, 0.544868,
		20.933655, 20.996563, 14.595428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.472942, 21.706678, 14.590386>,  <21.513828, 21.085598, 14.214021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.472942, 21.706678, 14.590386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.239517, 21.426136, 14.754121>,  <21.099463, 21.257811, 14.852362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.239517, 21.426136, 14.754121>,  <21.472942, 21.706678, 14.590386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.239517, 21.426136, 14.754121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240598, 0.332110, 0.912039,
		-0.775607, 0.630718, -0.025063,
		-0.583563, -0.701354, 0.409337,
		21.064447, 21.215731, 14.876922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933847, 22.022629, 15.073311>,  <21.472942, 21.706678, 14.590386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933847, 22.022629, 15.073311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.010120, 21.642197, 15.170539>,  <21.055883, 21.413937, 15.228876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.010120, 21.642197, 15.170539>,  <20.933847, 22.022629, 15.073311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.010120, 21.642197, 15.170539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093476, 0.264080, 0.959960,
		-0.977191, -0.160326, 0.139259,
		0.190682, -0.951082, 0.243070,
		21.067326, 21.356873, 15.243460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.464777, 21.753294, 15.684327>,  <20.933847, 22.022629, 15.073311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.464777, 21.753294, 15.684327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.798298, 21.532856, 15.671256>,  <20.998411, 21.400593, 15.663413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.798298, 21.532856, 15.671256>,  <20.464777, 21.753294, 15.684327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798298, 21.532856, 15.671256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053384, 0.021573, 0.998341,
		-0.549475, -0.834164, 0.047407,
		0.833803, -0.551095, -0.032678,
		21.048439, 21.367527, 15.661452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.355957, 21.218338, 16.164127>,  <20.464777, 21.753294, 15.684327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.355957, 21.218338, 16.164127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.753887, 21.229458, 16.125046>,  <20.992645, 21.236130, 16.101597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.753887, 21.229458, 16.125046>,  <20.355957, 21.218338, 16.164127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.753887, 21.229458, 16.125046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092870, 0.140832, 0.985668,
		0.041161, -0.989643, 0.137521,
		0.994827, 0.027799, -0.097705,
		21.052336, 21.237799, 16.095734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.716103, 20.596806, 16.487202>,  <20.355957, 21.218338, 16.164127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.716103, 20.596806, 16.487202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.974152, 20.900673, 16.454409>,  <21.128981, 21.082993, 16.434732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.974152, 20.900673, 16.454409>,  <20.716103, 20.596806, 16.487202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974152, 20.900673, 16.454409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, 0.055704, 0.996579,
		0.761635, -0.647922, -0.010446,
		0.645124, 0.759667, -0.081985,
		21.167688, 21.128572, 16.429813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619041, 19.733257, 16.427824>,  <20.716103, 20.596806, 16.487202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619041, 19.733257, 16.427824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.363571, 19.475735, 16.596397>,  <20.210289, 19.321220, 16.697540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.363571, 19.475735, 16.596397>,  <20.619041, 19.733257, 16.427824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363571, 19.475735, 16.596397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295453, -0.300524, -0.906859,
		0.710492, -0.703703, 0.001723,
		-0.638677, -0.643807, 0.421432,
		20.171968, 19.282593, 16.722826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686247, 19.149895, 16.004044>,  <20.619041, 19.733257, 16.427824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686247, 19.149895, 16.004044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.345123, 19.078781, 16.200457>,  <20.140450, 19.036114, 16.318304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.345123, 19.078781, 16.200457>,  <20.686247, 19.149895, 16.004044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345123, 19.078781, 16.200457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361107, -0.478495, -0.800403,
		0.377254, -0.859905, 0.343865,
		-0.852808, -0.177783, 0.491031,
		20.089281, 19.025446, 16.347767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522186, 18.370436, 15.922956>,  <20.686247, 19.149895, 16.004044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522186, 18.370436, 15.922956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.177505, 18.549614, 16.018301>,  <19.970697, 18.657120, 16.075508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.177505, 18.549614, 16.018301>,  <20.522186, 18.370436, 15.922956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177505, 18.549614, 16.018301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414813, -0.351334, -0.839342,
		-0.292235, -0.822137, 0.488559,
		-0.861701, 0.447946, 0.238361,
		19.918995, 18.683998, 16.089809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013952, 17.872776, 15.842680>,  <20.522186, 18.370436, 15.922956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013952, 17.872776, 15.842680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.817299, 18.221001, 15.834495>,  <19.699306, 18.429935, 15.829583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.817299, 18.221001, 15.834495>,  <20.013952, 17.872776, 15.842680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.817299, 18.221001, 15.834495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439049, -0.268102, -0.857530,
		-0.752018, -0.412608, 0.514027,
		-0.491635, 0.870561, -0.020463,
		19.669807, 18.482168, 15.828356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331873, 17.640713, 15.669086>,  <20.013952, 17.872776, 15.842680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331873, 17.640713, 15.669086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.327267, 18.028065, 15.569404>,  <19.324503, 18.260477, 15.509594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.327267, 18.028065, 15.569404>,  <19.331873, 17.640713, 15.669086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327267, 18.028065, 15.569404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463694, -0.225978, -0.856692,
		-0.885921, 0.105691, 0.451635,
		-0.011515, 0.968382, -0.249207,
		19.323812, 18.318579, 15.494641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685825, 17.766445, 15.415446>,  <19.331873, 17.640713, 15.669086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685825, 17.766445, 15.415446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.898243, 18.076832, 15.279288>,  <19.025694, 18.263063, 15.197594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.898243, 18.076832, 15.279288>,  <18.685825, 17.766445, 15.415446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.898243, 18.076832, 15.279288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512757, -0.025534, -0.858154,
		-0.674590, 0.630257, 0.384322,
		0.531044, 0.775966, -0.340394,
		19.057556, 18.309622, 15.177170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236788, 18.280174, 15.141119>,  <18.685825, 17.766445, 15.415446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236788, 18.280174, 15.141119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.590630, 18.308945, 14.956815>,  <18.802935, 18.326206, 14.846232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.590630, 18.308945, 14.956815>,  <18.236788, 18.280174, 15.141119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590630, 18.308945, 14.956815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464743, 0.054239, -0.883783,
		-0.038574, 0.995934, 0.081407,
		0.884605, 0.071924, -0.460761,
		18.856010, 18.330523, 14.818586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007366, 18.714104, 14.587337>,  <18.236788, 18.280174, 15.141119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007366, 18.714104, 14.587337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369324, 18.584591, 14.476825>,  <18.586498, 18.506884, 14.410517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.369324, 18.584591, 14.476825>,  <18.007366, 18.714104, 14.587337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369324, 18.584591, 14.476825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346324, -0.182738, -0.920145,
		0.247441, 0.928316, -0.277492,
		0.904894, -0.323784, -0.276281,
		18.640791, 18.487455, 14.393940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.120495, 19.065594, 13.984178>,  <18.007366, 18.714104, 14.587337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.120495, 19.065594, 13.984178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.321339, 18.720081, 14.001012>,  <18.441845, 18.512774, 14.011112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.321339, 18.720081, 14.001012>,  <18.120495, 19.065594, 13.984178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321339, 18.720081, 14.001012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414834, -0.283269, -0.864680,
		0.758815, 0.416704, -0.500557,
		0.502108, -0.863780, 0.042086,
		18.471972, 18.460947, 14.013638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400660, 19.017019, 13.352625>,  <18.120495, 19.065594, 13.984178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400660, 19.017019, 13.352625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.414932, 18.643036, 13.493810>,  <18.423496, 18.418646, 13.578521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.414932, 18.643036, 13.493810>,  <18.400660, 19.017019, 13.352625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.414932, 18.643036, 13.493810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329109, -0.344479, -0.879217,
		0.943618, -0.084791, -0.319994,
		0.035681, -0.934957, 0.352962,
		18.425636, 18.362549, 13.599698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.847319, 18.702353, 12.778384>,  <18.400660, 19.017019, 13.352625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.847319, 18.702353, 12.778384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638596, 18.441559, 12.998433>,  <18.513361, 18.285084, 13.130463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.638596, 18.441559, 12.998433>,  <18.847319, 18.702353, 12.778384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.638596, 18.441559, 12.998433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380032, -0.399684, -0.834163,
		0.763735, -0.644338, -0.039216,
		-0.521809, -0.651983, 0.550122,
		18.482052, 18.245964, 13.163469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026814, 18.168514, 12.472732>,  <18.847319, 18.702353, 12.778384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026814, 18.168514, 12.472732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688396, 18.056141, 12.653966>,  <18.485346, 17.988718, 12.762707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.688396, 18.056141, 12.653966>,  <19.026814, 18.168514, 12.472732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688396, 18.056141, 12.653966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309525, -0.433120, -0.846523,
		0.434056, -0.856437, 0.279483,
		-0.846044, -0.280932, 0.453087,
		18.434584, 17.971861, 12.789892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751896, 17.569136, 12.188037>,  <19.026814, 18.168514, 12.472732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751896, 17.569136, 12.188037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.429569, 17.690388, 12.391516>,  <18.236174, 17.763140, 12.513603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.429569, 17.690388, 12.391516>,  <18.751896, 17.569136, 12.188037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429569, 17.690388, 12.391516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582516, -0.251318, -0.772991,
		-0.106471, -0.919213, 0.379093,
		-0.805816, 0.303129, 0.508698,
		18.187824, 17.781328, 12.544125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.296541, 17.088537, 11.945992>,  <18.751896, 17.569136, 12.188037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.296541, 17.088537, 11.945992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082603, 17.382160, 12.113374>,  <17.954241, 17.558334, 12.213802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082603, 17.382160, 12.113374>,  <18.296541, 17.088537, 11.945992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082603, 17.382160, 12.113374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679768, -0.079667, -0.729088,
		-0.501855, -0.674399, 0.541598,
		-0.534843, 0.734057, 0.418453,
		17.922150, 17.602377, 12.238910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.992947, 20.516823, 17.868631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.304343, 20.716782, 17.716814>,  <15.491181, 20.836758, 17.625723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.304343, 20.716782, 17.716814>,  <14.992947, 20.516823, 17.868631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.304343, 20.716782, 17.716814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449778, -0.022545, 0.892856,
		0.437780, -0.865791, -0.242395,
		0.778491, 0.499898, -0.379544,
		15.537890, 20.866751, 17.602951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631205, 20.143499, 17.919243>,  <14.992947, 20.516823, 17.868631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631205, 20.143499, 17.919243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.728961, 20.530636, 17.895391>,  <15.787615, 20.762918, 17.881081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.728961, 20.530636, 17.895391>,  <15.631205, 20.143499, 17.919243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728961, 20.530636, 17.895391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424420, -0.051474, 0.904001,
		0.871861, -0.246238, -0.423351,
		0.244391, 0.967842, -0.059630,
		15.802279, 20.820988, 17.877502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.252460, 20.125589, 18.194513>,  <15.631205, 20.143499, 17.919243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.252460, 20.125589, 18.194513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.131847, 20.506451, 18.214458>,  <16.059481, 20.734966, 18.226425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.131847, 20.506451, 18.214458>,  <16.252460, 20.125589, 18.194513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131847, 20.506451, 18.214458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492345, 0.110705, 0.863331,
		0.816502, 0.284871, -0.502168,
		-0.301531, 0.952152, 0.049864,
		16.041388, 20.792097, 18.229418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909544, 20.444609, 18.452684>,  <16.252460, 20.125589, 18.194513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909544, 20.444609, 18.452684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.638535, 20.733727, 18.507132>,  <16.475929, 20.907198, 18.539799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.638535, 20.733727, 18.507132>,  <16.909544, 20.444609, 18.452684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638535, 20.733727, 18.507132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389072, 0.195160, 0.900298,
		0.624166, 0.662933, -0.413445,
		-0.677525, 0.722795, 0.136116,
		16.435278, 20.950565, 18.547966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275787, 20.933237, 18.658476>,  <16.909544, 20.444609, 18.452684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.275787, 20.933237, 18.658476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.899048, 20.996346, 18.777157>,  <16.673004, 21.034210, 18.848366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.899048, 20.996346, 18.777157>,  <17.275787, 20.933237, 18.658476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899048, 20.996346, 18.777157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331054, 0.284041, 0.899847,
		0.057694, 0.945742, -0.319754,
		-0.941846, 0.157772, 0.296704,
		16.616493, 21.043676, 18.866167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.395018, 21.486893, 19.008089>,  <17.275787, 20.933237, 18.658476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.395018, 21.486893, 19.008089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.036430, 21.367779, 19.139339>,  <16.821278, 21.296310, 19.218090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.036430, 21.367779, 19.139339>,  <17.395018, 21.486893, 19.008089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036430, 21.367779, 19.139339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254742, 0.259547, 0.931526,
		-0.362559, 0.918673, -0.156818,
		-0.896469, -0.297785, 0.328126,
		16.767490, 21.278442, 19.237778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086081, 21.953434, 19.545315>,  <17.395018, 21.486893, 19.008089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086081, 21.953434, 19.545315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.860790, 21.634258, 19.631168>,  <16.725616, 21.442753, 19.682680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.860790, 21.634258, 19.631168>,  <17.086081, 21.953434, 19.545315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860790, 21.634258, 19.631168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241392, 0.089531, 0.966289,
		-0.790258, 0.596049, 0.142191,
		-0.563225, -0.797941, 0.214634,
		16.691822, 21.394876, 19.695559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.753891, 22.145094, 20.128042>,  <17.086081, 21.953434, 19.545315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.753891, 22.145094, 20.128042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.726368, 21.746063, 20.132095>,  <16.709854, 21.506645, 20.134527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.726368, 21.746063, 20.132095>,  <16.753891, 22.145094, 20.128042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726368, 21.746063, 20.132095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238513, -0.006588, 0.971117,
		-0.968699, 0.069236, 0.238389,
		-0.068807, -0.997579, 0.010132,
		16.705727, 21.446789, 20.135136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274424, 21.997313, 20.647163>,  <16.753891, 22.145094, 20.128042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274424, 21.997313, 20.647163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.504711, 21.680523, 20.565847>,  <16.642883, 21.490450, 20.517057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.504711, 21.680523, 20.565847>,  <16.274424, 21.997313, 20.647163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504711, 21.680523, 20.565847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381655, 0.040413, 0.923421,
		-0.723109, -0.609217, 0.325527,
		0.575719, -0.791973, -0.203288,
		16.677427, 21.442930, 20.504862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068314, 21.696474, 21.175987>,  <16.274424, 21.997313, 20.647163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068314, 21.696474, 21.175987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.414120, 21.541298, 21.048164>,  <16.621603, 21.448193, 20.971470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.414120, 21.541298, 21.048164>,  <16.068314, 21.696474, 21.175987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414120, 21.541298, 21.048164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340773, -0.014923, 0.940027,
		-0.369442, -0.921564, 0.119298,
		0.864515, -0.387940, -0.319558,
		16.673473, 21.424915, 20.952297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.293560, 21.195053, 21.731340>,  <16.068314, 21.696474, 21.175987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.293560, 21.195053, 21.731340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.629677, 21.252831, 21.522326>,  <16.831347, 21.287497, 21.396915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.629677, 21.252831, 21.522326>,  <16.293560, 21.195053, 21.731340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629677, 21.252831, 21.522326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500599, 0.163269, 0.850143,
		0.208119, -0.975949, 0.064881,
		0.840290, 0.144452, -0.522539,
		16.881763, 21.296164, 21.365564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725109, 20.762266, 21.997852>,  <16.293560, 21.195053, 21.731340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725109, 20.762266, 21.997852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.950443, 21.040169, 21.818983>,  <17.085644, 21.206911, 21.711660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.950443, 21.040169, 21.818983>,  <16.725109, 20.762266, 21.997852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950443, 21.040169, 21.818983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608693, 0.017001, 0.793224,
		0.558702, -0.719042, -0.413318,
		0.563334, 0.694759, -0.447174,
		17.119444, 21.248596, 21.684832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.491739, 20.535107, 21.830572>,  <16.725109, 20.762266, 21.997852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.491739, 20.535107, 21.830572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.388145, 20.903496, 21.947010>,  <17.325989, 21.124529, 22.016872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.388145, 20.903496, 21.947010>,  <17.491739, 20.535107, 21.830572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.388145, 20.903496, 21.947010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676425, -0.042196, 0.735302,
		0.689476, 0.387335, -0.612041,
		-0.258983, 0.920973, 0.291096,
		17.310452, 21.179789, 22.034338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142050, 20.993643, 21.765841>,  <17.491739, 20.535107, 21.830572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142050, 20.993643, 21.765841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.857819, 21.080906, 22.033417>,  <17.687279, 21.133265, 22.193962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.857819, 21.080906, 22.033417>,  <18.142050, 20.993643, 21.765841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857819, 21.080906, 22.033417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667527, -0.091556, 0.738935,
		0.222450, 0.971609, -0.080569,
		-0.710579, 0.218158, 0.668942,
		17.644646, 21.146353, 22.234100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708570, 21.445501, 21.869713>,  <18.142050, 20.993643, 21.765841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708570, 21.445501, 21.869713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.094608, 21.393002, 21.960371>,  <19.326231, 21.361502, 22.014767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.094608, 21.393002, 21.960371>,  <18.708570, 21.445501, 21.869713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.094608, 21.393002, 21.960371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147475, -0.442818, -0.884400,
		0.216439, 0.886953, -0.408005,
		0.965093, -0.131248, 0.226647,
		19.384136, 21.353626, 22.028364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.131853, 21.627760, 21.257616>,  <18.708570, 21.445501, 21.869713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.131853, 21.627760, 21.257616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.366604, 21.387589, 21.474895>,  <19.507454, 21.243486, 21.605263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.366604, 21.387589, 21.474895>,  <19.131853, 21.627760, 21.257616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366604, 21.387589, 21.474895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288226, -0.472012, -0.833145,
		0.756640, 0.645515, -0.103953,
		0.586875, -0.600429, 0.543197,
		19.542665, 21.207460, 21.637854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.805565, 21.713749, 20.964340>,  <19.131853, 21.627760, 21.257616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.805565, 21.713749, 20.964340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.821171, 21.362843, 21.155708>,  <19.830534, 21.152300, 21.270529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.821171, 21.362843, 21.155708>,  <19.805565, 21.713749, 20.964340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821171, 21.362843, 21.155708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337700, -0.439037, -0.832589,
		0.940445, 0.194045, 0.279123,
		0.039015, -0.877264, 0.478419,
		19.832874, 21.099663, 21.299234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492855, 21.426533, 20.868034>,  <19.805565, 21.713749, 20.964340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492855, 21.426533, 20.868034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.279819, 21.106277, 20.977818>,  <20.151999, 20.914125, 21.043688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.279819, 21.106277, 20.977818>,  <20.492855, 21.426533, 20.868034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.279819, 21.106277, 20.977818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358860, -0.507300, -0.783496,
		0.766530, -0.318790, 0.557499,
		-0.532590, -0.800637, 0.274460,
		20.120043, 20.866087, 21.060156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855316, 20.900885, 20.561893>,  <20.492855, 21.426533, 20.868034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855316, 20.900885, 20.561893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.510509, 20.716747, 20.646763>,  <20.303625, 20.606266, 20.697685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.510509, 20.716747, 20.646763>,  <20.855316, 20.900885, 20.561893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510509, 20.716747, 20.646763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117952, -0.589265, -0.799283,
		0.492969, -0.663967, 0.562253,
		-0.862014, -0.460341, 0.212173,
		20.251905, 20.578646, 20.710415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948275, 20.187817, 20.554821>,  <20.855316, 20.900885, 20.561893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948275, 20.187817, 20.554821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.560223, 20.236481, 20.470871>,  <20.327391, 20.265678, 20.420500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.560223, 20.236481, 20.470871>,  <20.948275, 20.187817, 20.554821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.560223, 20.236481, 20.470871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087784, -0.630468, -0.771236,
		-0.226147, -0.766622, 0.600956,
		-0.970129, 0.121659, -0.209876,
		20.269184, 20.272978, 20.407907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.751198, 19.587729, 20.354877>,  <20.948275, 20.187817, 20.554821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.751198, 19.587729, 20.354877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442684, 19.801834, 20.217115>,  <20.257576, 19.930298, 20.134459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.442684, 19.801834, 20.217115>,  <20.751198, 19.587729, 20.354877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.442684, 19.801834, 20.217115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042321, -0.496777, -0.866846,
		-0.635083, -0.683159, 0.360503,
		-0.771284, 0.535262, -0.344407,
		20.211300, 19.962412, 20.113792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.270693, 19.041237, 20.020279>,  <20.751198, 19.587729, 20.354877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.270693, 19.041237, 20.020279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182167, 19.398079, 19.862711>,  <20.129051, 19.612185, 19.768169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.182167, 19.398079, 19.862711>,  <20.270693, 19.041237, 20.020279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182167, 19.398079, 19.862711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044516, -0.394273, -0.917914,
		-0.974186, -0.220682, 0.047545,
		-0.221313, 0.892103, -0.393920,
		20.115772, 19.665710, 19.744535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731394, 18.973940, 19.576324>,  <20.270693, 19.041237, 20.020279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731394, 18.973940, 19.576324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.925667, 19.306664, 19.468840>,  <20.042231, 19.506298, 19.404348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.925667, 19.306664, 19.468840>,  <19.731394, 18.973940, 19.576324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925667, 19.306664, 19.468840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043359, -0.284103, -0.957813,
		-0.873059, 0.476844, -0.101917,
		0.485683, 0.831808, -0.268714,
		20.071371, 19.556206, 19.388226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.318899, 19.195587, 18.996866>,  <19.731394, 18.973940, 19.576324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.318899, 19.195587, 18.996866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.671597, 19.376976, 18.944885>,  <19.883215, 19.485809, 18.913696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.671597, 19.376976, 18.944885>,  <19.318899, 19.195587, 18.996866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671597, 19.376976, 18.944885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029579, -0.328092, -0.944183,
		-0.470797, 0.828685, -0.302707,
		0.881745, 0.453473, -0.129953,
		19.936121, 19.513018, 18.905899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204294, 19.681469, 18.581030>,  <19.318899, 19.195587, 18.996866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204294, 19.681469, 18.581030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.580956, 19.551853, 18.544622>,  <19.806953, 19.474085, 18.522778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.580956, 19.551853, 18.544622>,  <19.204294, 19.681469, 18.581030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580956, 19.551853, 18.544622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155290, -0.178345, -0.971637,
		0.298614, 0.929082, -0.218260,
		0.941655, -0.324037, -0.091021,
		19.863453, 19.454641, 18.517317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340511, 19.824614, 17.875021>,  <19.204294, 19.681469, 18.581030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340511, 19.824614, 17.875021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.694553, 19.652832, 17.946749>,  <19.906979, 19.549763, 17.989786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.694553, 19.652832, 17.946749>,  <19.340511, 19.824614, 17.875021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694553, 19.652832, 17.946749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122697, -0.156347, -0.980052,
		0.448922, 0.889453, -0.085692,
		0.885107, -0.429452, 0.179321,
		19.960085, 19.523996, 18.000546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813538, 20.250294, 17.533489>,  <19.340511, 19.824614, 17.875021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813538, 20.250294, 17.533489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.962231, 19.882652, 17.585745>,  <20.051447, 19.662067, 17.617098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.962231, 19.882652, 17.585745>,  <19.813538, 20.250294, 17.533489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962231, 19.882652, 17.585745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022198, -0.149486, -0.988515,
		0.928074, 0.364564, -0.075972,
		0.371733, -0.919101, 0.130641,
		20.073751, 19.606922, 17.624937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428564, 20.237186, 17.126743>,  <19.813538, 20.250294, 17.533489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428564, 20.237186, 17.126743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.247780, 19.882713, 17.167562>,  <20.139309, 19.670031, 17.192055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.247780, 19.882713, 17.167562>,  <20.428564, 20.237186, 17.126743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247780, 19.882713, 17.167562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120836, -0.052524, -0.991282,
		0.883816, -0.460351, -0.083344,
		-0.451960, -0.886182, 0.102049,
		20.112192, 19.616859, 17.198177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977598, 20.669588, 17.143787>,  <20.428564, 20.237186, 17.126743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977598, 20.669588, 17.143787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.105938, 21.013916, 16.985779>,  <21.182941, 21.220512, 16.890974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.105938, 21.013916, 16.985779>,  <20.977598, 20.669588, 17.143787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105938, 21.013916, 16.985779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082534, 0.440896, 0.893755,
		0.943528, -0.254157, 0.212508,
		0.320848, 0.860822, -0.395021,
		21.202192, 21.272163, 16.867273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588322, 20.826683, 17.479912>,  <20.977598, 20.669588, 17.143787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588322, 20.826683, 17.479912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.441124, 21.169350, 17.335299>,  <21.352806, 21.374949, 17.248531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.441124, 21.169350, 17.335299>,  <21.588322, 20.826683, 17.479912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.441124, 21.169350, 17.335299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022004, 0.380684, 0.924443,
		0.929568, 0.348145, -0.121240,
		-0.367994, 0.856665, -0.361533,
		21.330727, 21.426350, 17.226839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.083525, 21.355242, 17.711884>,  <21.588322, 20.826683, 17.479912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.083525, 21.355242, 17.711884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.734772, 21.534691, 17.633339>,  <21.525520, 21.642361, 17.586212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.734772, 21.534691, 17.633339>,  <22.083525, 21.355242, 17.711884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.734772, 21.534691, 17.633339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106045, 0.564416, 0.818651,
		0.478092, 0.692945, -0.539680,
		-0.871884, 0.448621, -0.196359,
		21.473206, 21.669277, 17.574430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.137959, 21.948999, 18.121296>,  <22.083525, 21.355242, 17.711884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.137959, 21.948999, 18.121296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.754833, 21.969849, 18.008245>,  <21.524958, 21.982357, 17.940414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.754833, 21.969849, 18.008245>,  <22.137959, 21.948999, 18.121296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754833, 21.969849, 18.008245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201889, 0.577875, 0.790760,
		0.204540, 0.814459, -0.542973,
		-0.957812, 0.052122, -0.282628,
		21.467489, 21.985485, 17.923456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.065485, 22.588446, 18.190533>,  <22.137959, 21.948999, 18.121296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.065485, 22.588446, 18.190533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.694901, 22.438164, 18.181416>,  <21.472549, 22.347994, 18.175945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.694901, 22.438164, 18.181416>,  <22.065485, 22.588446, 18.190533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.694901, 22.438164, 18.181416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293385, 0.682879, 0.669030,
		-0.235794, 0.626515, -0.742886,
		-0.926459, -0.375705, -0.022791,
		21.416964, 22.325453, 18.174578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.602684, 23.142832, 18.214859>,  <22.065485, 22.588446, 18.190533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.602684, 23.142832, 18.214859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.390949, 22.824738, 18.333115>,  <21.263908, 22.633881, 18.404068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.390949, 22.824738, 18.333115>,  <21.602684, 23.142832, 18.214859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390949, 22.824738, 18.333115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335058, 0.516084, 0.788285,
		-0.779447, 0.318212, -0.539633,
		-0.529337, -0.795235, 0.295641,
		21.232147, 22.586166, 18.421806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.098093, 23.464756, 18.522005>,  <21.602684, 23.142832, 18.214859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.098093, 23.464756, 18.522005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.104252, 23.090500, 18.663052>,  <21.107946, 22.865946, 18.747681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.104252, 23.090500, 18.663052>,  <21.098093, 23.464756, 18.522005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104252, 23.090500, 18.663052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151515, 0.346404, 0.925768,
		-0.988335, -0.067680, -0.136431,
		0.015395, -0.935641, 0.352618,
		21.108871, 22.809807, 18.768837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.498966, 24.067665, 18.715500>,  <21.098093, 23.464756, 18.522005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.498966, 24.067665, 18.715500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.788822, 24.325817, 18.618851>,  <20.962736, 24.480709, 18.560862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.788822, 24.325817, 18.618851>,  <20.498966, 24.067665, 18.715500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.788822, 24.325817, 18.618851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206961, -0.130625, -0.969590,
		-0.657317, 0.752609, 0.038913,
		0.724639, 0.645381, -0.241623,
		21.006214, 24.519432, 18.546364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.357586, 24.322222, 18.068478>,  <20.498966, 24.067665, 18.715500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.357586, 24.322222, 18.068478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.747826, 24.408585, 18.084423>,  <20.981970, 24.460403, 18.093990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.747826, 24.408585, 18.084423>,  <20.357586, 24.322222, 18.068478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747826, 24.408585, 18.084423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061748, -0.095575, -0.993505,
		-0.210696, 0.971725, -0.106575,
		0.975600, 0.215908, 0.039864,
		21.040506, 24.473356, 18.096382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450832, 24.802546, 17.448643>,  <20.357586, 24.322222, 18.068478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450832, 24.802546, 17.448643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.822769, 24.688808, 17.542063>,  <21.045931, 24.620565, 17.598114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.822769, 24.688808, 17.542063>,  <20.450832, 24.802546, 17.448643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.822769, 24.688808, 17.542063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187510, -0.179956, -0.965637,
		0.316601, 0.941682, -0.114013,
		0.929841, -0.284343, 0.233549,
		21.101721, 24.603506, 17.612127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985834, 25.284201, 17.110350>,  <20.450832, 24.802546, 17.448643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985834, 25.284201, 17.110350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.177567, 24.940739, 17.182959>,  <21.292606, 24.734661, 17.226524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.177567, 24.940739, 17.182959>,  <20.985834, 25.284201, 17.110350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177567, 24.940739, 17.182959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391056, 0.023794, -0.920059,
		0.785696, 0.511998, 0.347188,
		0.479330, -0.858657, 0.181525,
		21.321365, 24.683142, 17.237415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.533918, 25.323149, 16.655533>,  <20.985834, 25.284201, 17.110350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.533918, 25.323149, 16.655533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.523891, 24.938263, 16.763987>,  <21.517876, 24.707331, 16.829060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.523891, 24.938263, 16.763987>,  <21.533918, 25.323149, 16.655533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.523891, 24.938263, 16.763987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445178, -0.253588, -0.858784,
		0.895092, 0.099176, 0.434713,
		-0.025067, -0.962215, 0.271136,
		21.516371, 24.649599, 16.845327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.221489, 25.005718, 16.391195>,  <21.533918, 25.323149, 16.655533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.221489, 25.005718, 16.391195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.975475, 24.694546, 16.442663>,  <21.827868, 24.507843, 16.473543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.975475, 24.694546, 16.442663>,  <22.221489, 25.005718, 16.391195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.975475, 24.694546, 16.442663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268681, -0.360181, -0.893353,
		0.741310, -0.514873, 0.430539,
		-0.615036, -0.777930, 0.128669,
		21.790964, 24.461166, 16.481264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.532913, 24.306784, 16.190042>,  <22.221489, 25.005718, 16.391195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.532913, 24.306784, 16.190042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.135197, 24.265018, 16.181280>,  <21.896566, 24.239960, 16.176022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.135197, 24.265018, 16.181280>,  <22.532913, 24.306784, 16.190042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135197, 24.265018, 16.181280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065400, -0.434280, -0.898401,
		0.084291, -0.894706, 0.438630,
		-0.994293, -0.104414, -0.021908,
		21.836908, 24.233694, 16.174707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.133066, 23.953339, 20.563036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.914146, 23.618660, 20.555058>,  <18.782795, 23.417852, 20.550270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.914146, 23.618660, 20.555058>,  <19.133066, 23.953339, 20.563036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914146, 23.618660, 20.555058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360841, 0.257401, -0.896403,
		0.755152, -0.483406, -0.442791,
		-0.547301, -0.836698, -0.019944,
		18.749956, 23.367651, 20.549074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.237511, 23.708025, 19.878799>,  <19.133066, 23.953339, 20.563036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.237511, 23.708025, 19.878799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.896694, 23.574932, 20.040447>,  <18.692204, 23.495077, 20.137436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.896694, 23.574932, 20.040447>,  <19.237511, 23.708025, 19.878799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896694, 23.574932, 20.040447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478529, 0.182128, -0.858976,
		0.212214, -0.925265, -0.314406,
		-0.852042, -0.332739, 0.404116,
		18.641081, 23.475113, 20.161682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.961771, 23.164000, 19.377378>,  <19.237511, 23.708025, 19.878799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.961771, 23.164000, 19.377378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.640873, 23.229435, 19.607037>,  <18.448334, 23.268696, 19.744831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.640873, 23.229435, 19.607037>,  <18.961771, 23.164000, 19.377378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.640873, 23.229435, 19.607037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550970, 0.167412, -0.817560,
		-0.229864, -0.972220, -0.044172,
		-0.802243, 0.163590, 0.574146,
		18.400200, 23.278511, 19.779280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403738, 22.815413, 19.061956>,  <18.961771, 23.164000, 19.377378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403738, 22.815413, 19.061956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.211128, 23.079464, 19.292561>,  <18.095562, 23.237894, 19.430923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.211128, 23.079464, 19.292561>,  <18.403738, 22.815413, 19.061956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211128, 23.079464, 19.292561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670008, 0.146789, -0.727696,
		-0.564998, -0.736671, 0.371608,
		-0.481525, 0.660128, 0.576511,
		18.066671, 23.277502, 19.465513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.801870, 22.650333, 18.873268>,  <18.403738, 22.815413, 19.061956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.801870, 22.650333, 18.873268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.781391, 23.024693, 19.012680>,  <17.769104, 23.249308, 19.096327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.781391, 23.024693, 19.012680>,  <17.801870, 22.650333, 18.873268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.781391, 23.024693, 19.012680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598013, 0.250773, -0.761245,
		-0.799850, -0.247399, 0.546840,
		-0.051199, 0.935899, 0.348528,
		17.766031, 23.305462, 19.117239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083208, 22.788609, 18.854507>,  <17.801870, 22.650333, 18.873268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083208, 22.788609, 18.854507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.252365, 23.148663, 18.896315>,  <17.353859, 23.364695, 18.921398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.252365, 23.148663, 18.896315>,  <17.083208, 22.788609, 18.854507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252365, 23.148663, 18.896315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587870, 0.360287, -0.724294,
		-0.689616, 0.244856, 0.681524,
		0.422892, 0.900133, 0.104516,
		17.379232, 23.418703, 18.927670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487207, 23.225645, 19.009998>,  <17.083208, 22.788609, 18.854507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487207, 23.225645, 19.009998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.791573, 23.405872, 18.823238>,  <16.974192, 23.514009, 18.711182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.791573, 23.405872, 18.823238>,  <16.487207, 23.225645, 19.009998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.791573, 23.405872, 18.823238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638261, 0.390286, -0.663550,
		-0.116752, 0.802909, 0.584556,
		0.760915, 0.450570, -0.466900,
		17.019848, 23.541044, 18.683168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.320021, 23.964775, 18.784916>,  <16.487207, 23.225645, 19.009998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.320021, 23.964775, 18.784916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.641655, 23.880302, 18.562620>,  <16.834637, 23.829618, 18.429243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.641655, 23.880302, 18.562620>,  <16.320021, 23.964775, 18.784916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.641655, 23.880302, 18.562620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451715, 0.390725, -0.802052,
		0.386519, 0.895956, 0.218784,
		0.804088, -0.211180, -0.555739,
		16.882881, 23.816948, 18.395899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401663, 24.588497, 18.467319>,  <16.320021, 23.964775, 18.784916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401663, 24.588497, 18.467319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.658264, 24.367378, 18.254568>,  <16.812225, 24.234707, 18.126919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.658264, 24.367378, 18.254568>,  <16.401663, 24.588497, 18.467319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658264, 24.367378, 18.254568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375470, 0.378352, -0.846092,
		0.668953, 0.742473, 0.035155,
		0.641501, -0.552796, -0.531876,
		16.850714, 24.201540, 18.095005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.795166, 25.027885, 17.981159>,  <16.401663, 24.588497, 18.467319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.795166, 25.027885, 17.981159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.789829, 24.653984, 17.839142>,  <16.786627, 24.429644, 17.753931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.789829, 24.653984, 17.839142>,  <16.795166, 25.027885, 17.981159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789829, 24.653984, 17.839142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249771, 0.346934, -0.904020,
		0.968213, 0.076619, -0.238103,
		-0.013341, -0.934755, -0.355043,
		16.785828, 24.373558, 17.732630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285187, 25.052572, 17.405260>,  <16.795166, 25.027885, 17.981159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285187, 25.052572, 17.405260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.028938, 24.749851, 17.353329>,  <16.875189, 24.568218, 17.322170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.028938, 24.749851, 17.353329>,  <17.285187, 25.052572, 17.405260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028938, 24.749851, 17.353329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183529, 0.315091, -0.931147,
		0.745600, -0.572686, -0.340749,
		-0.640622, -0.756800, -0.129828,
		16.836752, 24.522812, 17.314381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370800, 24.875113, 16.725224>,  <17.285187, 25.052572, 17.405260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370800, 24.875113, 16.725224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.032162, 24.672585, 16.790848>,  <16.828978, 24.551067, 16.830221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.032162, 24.672585, 16.790848>,  <17.370800, 24.875113, 16.725224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032162, 24.672585, 16.790848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309495, 0.217554, -0.925680,
		0.432997, -0.834453, -0.340884,
		-0.846597, -0.506319, 0.164059,
		16.778183, 24.520689, 16.840065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998835, 24.633427, 16.515938>,  <17.370800, 24.875113, 16.725224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998835, 24.633427, 16.515938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.334049, 24.781315, 16.355440>,  <18.535179, 24.870047, 16.259142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.334049, 24.781315, 16.355440>,  <17.998835, 24.633427, 16.515938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334049, 24.781315, 16.355440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248040, 0.396859, 0.883730,
		0.485971, -0.840125, 0.240877,
		0.838038, 0.369720, -0.401247,
		18.585461, 24.892231, 16.235065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.588268, 24.569962, 17.074245>,  <17.998835, 24.633427, 16.515938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.588268, 24.569962, 17.074245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.693813, 24.875912, 16.839180>,  <18.757139, 25.059481, 16.698141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.693813, 24.875912, 16.839180>,  <18.588268, 24.569962, 17.074245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.693813, 24.875912, 16.839180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157175, 0.567015, 0.808573,
		0.951669, -0.305716, 0.029394,
		0.263861, 0.764874, -0.587662,
		18.772972, 25.105373, 16.662882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.057810, 24.835197, 17.511417>,  <18.588268, 24.569962, 17.074245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.057810, 24.835197, 17.511417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.993717, 25.133366, 17.252596>,  <18.955261, 25.312265, 17.097303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.993717, 25.133366, 17.252596>,  <19.057810, 24.835197, 17.511417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993717, 25.133366, 17.252596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196444, 0.666492, 0.719166,
		0.967334, -0.011876, -0.253227,
		-0.160233, 0.745418, -0.647053,
		18.945648, 25.356991, 17.058479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.497984, 25.315538, 17.659142>,  <19.057810, 24.835197, 17.511417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.497984, 25.315538, 17.659142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.264992, 25.558887, 17.443512>,  <19.125196, 25.704897, 17.314135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.264992, 25.558887, 17.443512>,  <19.497984, 25.315538, 17.659142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.264992, 25.558887, 17.443512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159591, 0.735879, 0.658038,
		0.797023, 0.297264, -0.525726,
		-0.582482, 0.608372, -0.539072,
		19.090248, 25.741400, 17.281790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876177, 25.890322, 17.579927>,  <19.497984, 25.315538, 17.659142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876177, 25.890322, 17.579927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.485855, 25.975628, 17.560661>,  <19.251661, 26.026812, 17.549103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.485855, 25.975628, 17.560661>,  <19.876177, 25.890322, 17.579927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485855, 25.975628, 17.560661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097217, 0.620547, 0.778120,
		0.195834, 0.754612, -0.626266,
		-0.975806, 0.213267, -0.048163,
		19.193113, 26.039608, 17.546213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786560, 26.646988, 17.597765>,  <19.876177, 25.890322, 17.579927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786560, 26.646988, 17.597765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.424515, 26.515648, 17.705805>,  <19.207287, 26.436844, 17.770630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.424515, 26.515648, 17.705805>,  <19.786560, 26.646988, 17.597765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.424515, 26.515648, 17.705805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003750, 0.641420, 0.767181,
		-0.425152, 0.693373, -0.581790,
		-0.905114, -0.328350, 0.270101,
		19.152981, 26.417143, 17.786835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.340372, 27.313728, 17.864775>,  <19.786560, 26.646988, 17.597765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.340372, 27.313728, 17.864775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.185493, 26.981583, 18.025061>,  <19.092567, 26.782295, 18.121233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.185493, 26.981583, 18.025061>,  <19.340372, 27.313728, 17.864775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185493, 26.981583, 18.025061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009309, 0.438116, 0.898870,
		-0.921951, 0.344307, -0.177366,
		-0.387195, -0.830366, 0.400716,
		19.069336, 26.732473, 18.145275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896812, 27.613483, 18.434580>,  <19.340372, 27.313728, 17.864775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896812, 27.613483, 18.434580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.927437, 27.226341, 18.530405>,  <18.945812, 26.994055, 18.587900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.927437, 27.226341, 18.530405>,  <18.896812, 27.613483, 18.434580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.927437, 27.226341, 18.530405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123175, 0.247608, 0.960998,
		-0.989427, -0.044067, 0.138173,
		0.076561, -0.967857, 0.239563,
		18.950405, 26.935984, 18.602274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.620457, 27.520256, 19.063589>,  <18.896812, 27.613483, 18.434580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.620457, 27.520256, 19.063589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.858932, 27.199837, 19.042107>,  <19.002018, 27.007586, 19.029217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.858932, 27.199837, 19.042107>,  <18.620457, 27.520256, 19.063589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858932, 27.199837, 19.042107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169068, 0.059871, 0.983784,
		-0.784841, -0.595601, 0.171126,
		0.596188, -0.801046, -0.053708,
		19.037788, 26.959522, 19.025993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381620, 27.008408, 19.504232>,  <18.620457, 27.520256, 19.063589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381620, 27.008408, 19.504232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.767548, 26.910545, 19.465721>,  <18.999104, 26.851828, 19.442614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.767548, 26.910545, 19.465721>,  <18.381620, 27.008408, 19.504232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.767548, 26.910545, 19.465721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073579, -0.100310, 0.992232,
		-0.252413, -0.964407, -0.078779,
		0.964818, -0.244656, -0.096280,
		19.056993, 26.837149, 19.436836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494329, 26.449135, 19.980154>,  <18.381620, 27.008408, 19.504232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494329, 26.449135, 19.980154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848022, 26.621132, 19.907228>,  <19.060238, 26.724329, 19.863472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.848022, 26.621132, 19.907228>,  <18.494329, 26.449135, 19.980154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848022, 26.621132, 19.907228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233795, -0.069585, 0.969793,
		0.404316, -0.900147, -0.162059,
		0.884233, 0.429991, -0.182315,
		19.113293, 26.750130, 19.852533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926567, 26.193108, 20.453859>,  <18.494329, 26.449135, 19.980154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926567, 26.193108, 20.453859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.127480, 26.527229, 20.364435>,  <19.248028, 26.727703, 20.310781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.127480, 26.527229, 20.364435>,  <18.926567, 26.193108, 20.453859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.127480, 26.527229, 20.364435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487565, -0.060062, 0.871018,
		0.714138, -0.546496, -0.437434,
		0.502281, 0.835305, -0.223560,
		19.278164, 26.777821, 20.297367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502808, 26.015587, 20.853762>,  <18.926567, 26.193108, 20.453859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502808, 26.015587, 20.853762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.486538, 26.395504, 20.729670>,  <19.476776, 26.623453, 20.655214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.486538, 26.395504, 20.729670>,  <19.502808, 26.015587, 20.853762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486538, 26.395504, 20.729670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347959, 0.304516, 0.886676,
		0.936627, -0.071884, -0.342873,
		-0.040673, 0.949791, -0.310231,
		19.474337, 26.680441, 20.636600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.165794, 26.255245, 21.033337>,  <19.502808, 26.015587, 20.853762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.165794, 26.255245, 21.033337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.946720, 26.589111, 21.010099>,  <19.815275, 26.789431, 20.996157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.946720, 26.589111, 21.010099>,  <20.165794, 26.255245, 21.033337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946720, 26.589111, 21.010099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368263, 0.302827, 0.879021,
		0.751279, 0.460035, -0.473230,
		-0.547687, 0.834664, -0.058094,
		19.782413, 26.839510, 20.992672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.854208, 26.620964, 21.044634>,  <20.165794, 26.255245, 21.033337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.854208, 26.620964, 21.044634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.098515, 26.305973, 21.077717>,  <21.245098, 26.116978, 21.097567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.098515, 26.305973, 21.077717>,  <20.854208, 26.620964, 21.044634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098515, 26.305973, 21.077717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131901, -0.204180, -0.970007,
		0.780747, 0.581539, -0.228576,
		0.610768, -0.787479, 0.082707,
		21.281744, 26.069729, 21.102530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.395588, 26.616907, 20.452280>,  <20.854208, 26.620964, 21.044634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.395588, 26.616907, 20.452280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.336510, 26.242161, 20.579067>,  <21.301062, 26.017313, 20.655140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.336510, 26.242161, 20.579067>,  <21.395588, 26.616907, 20.452280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336510, 26.242161, 20.579067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083022, -0.307609, -0.947884,
		0.985542, -0.166315, -0.032348,
		-0.147697, -0.936865, 0.316969,
		21.292200, 25.961102, 20.674158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827559, 26.264360, 19.975183>,  <21.395588, 26.616907, 20.452280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827559, 26.264360, 19.975183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.623371, 25.956963, 20.129503>,  <21.500858, 25.772524, 20.222095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.623371, 25.956963, 20.129503>,  <21.827559, 26.264360, 19.975183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623371, 25.956963, 20.129503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002637, -0.450053, -0.892998,
		0.859892, -0.454830, 0.231765,
		-0.510469, -0.768493, 0.385797,
		21.470230, 25.726414, 20.245243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.134462, 25.706198, 19.713474>,  <21.827559, 26.264360, 19.975183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.134462, 25.706198, 19.713474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.770821, 25.574070, 19.814997>,  <21.552635, 25.494793, 19.875910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.770821, 25.574070, 19.814997>,  <22.134462, 25.706198, 19.713474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.770821, 25.574070, 19.814997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055793, -0.507239, -0.859998,
		0.412814, -0.795989, 0.442704,
		-0.909105, -0.330319, 0.253806,
		21.498089, 25.474974, 19.891138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.119694, 24.960289, 19.782421>,  <22.134462, 25.706198, 19.713474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.119694, 24.960289, 19.782421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.752628, 25.085331, 19.684298>,  <21.532389, 25.160357, 19.625423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.752628, 25.085331, 19.684298>,  <22.119694, 24.960289, 19.782421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.752628, 25.085331, 19.684298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042653, -0.691266, -0.721340,
		-0.395067, -0.651483, 0.647682,
		-0.917661, 0.312603, -0.245309,
		21.477329, 25.179111, 19.610704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.845894, 24.344673, 19.587877>,  <22.119694, 24.960289, 19.782421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.845894, 24.344673, 19.587877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610817, 24.622700, 19.422228>,  <21.469770, 24.789516, 19.322838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.610817, 24.622700, 19.422228>,  <21.845894, 24.344673, 19.587877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.610817, 24.622700, 19.422228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302949, -0.663650, -0.683952,
		-0.750228, -0.276493, 0.600591,
		-0.587690, 0.695068, -0.414126,
		21.434509, 24.831221, 19.297991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.076433, 24.033554, 19.424635>,  <21.845894, 24.344673, 19.587877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.076433, 24.033554, 19.424635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.176407, 24.348427, 19.199114>,  <21.236391, 24.537352, 19.063801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.176407, 24.348427, 19.199114>,  <21.076433, 24.033554, 19.424635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.176407, 24.348427, 19.199114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288588, -0.495259, -0.819412,
		-0.924256, 0.367506, 0.103389,
		0.249935, 0.787183, -0.563804,
		21.251387, 24.584581, 19.029972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647434, 23.469053, 19.092319>,  <21.076433, 24.033554, 19.424635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647434, 23.469053, 19.092319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.860600, 23.136169, 19.153549>,  <20.988499, 22.936440, 19.190287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.860600, 23.136169, 19.153549>,  <20.647434, 23.469053, 19.092319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860600, 23.136169, 19.153549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012053, 0.188349, 0.982028,
		-0.846083, -0.521492, 0.110405,
		0.532915, -0.832208, 0.153073,
		21.020473, 22.886507, 19.199471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.295443, 23.102177, 19.560053>,  <20.647434, 23.469053, 19.092319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.295443, 23.102177, 19.560053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677727, 22.985340, 19.574455>,  <20.907097, 22.915237, 19.583097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.677727, 22.985340, 19.574455>,  <20.295443, 23.102177, 19.560053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677727, 22.985340, 19.574455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051514, 0.286483, 0.956699,
		-0.289761, -0.912474, 0.288842,
		0.955712, -0.292094, 0.036007,
		20.964439, 22.897713, 19.585257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.393826, 22.600962, 20.209513>,  <20.295443, 23.102177, 19.560053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.393826, 22.600962, 20.209513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.774498, 22.680241, 20.115690>,  <21.002901, 22.727808, 20.059397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.774498, 22.680241, 20.115690>,  <20.393826, 22.600962, 20.209513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774498, 22.680241, 20.115690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254532, -0.081812, 0.963598,
		0.171794, -0.976741, -0.128307,
		0.951683, 0.198199, -0.234557,
		21.060003, 22.739700, 20.045322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810184, 22.127947, 20.555969>,  <20.393826, 22.600962, 20.209513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810184, 22.127947, 20.555969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.028664, 22.449783, 20.462757>,  <21.159750, 22.642885, 20.406830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.028664, 22.449783, 20.462757>,  <20.810184, 22.127947, 20.555969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028664, 22.449783, 20.462757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234809, 0.119975, 0.964609,
		0.804074, -0.581583, -0.123395,
		0.546196, 0.804591, -0.233030,
		21.192522, 22.691160, 20.392849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406357, 22.103004, 21.034203>,  <20.810184, 22.127947, 20.555969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406357, 22.103004, 21.034203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.428864, 22.485676, 20.919935>,  <21.442368, 22.715279, 20.851376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.428864, 22.485676, 20.919935>,  <21.406357, 22.103004, 21.034203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.428864, 22.485676, 20.919935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130218, 0.276643, 0.952109,
		0.989887, -0.090771, -0.109011,
		0.056267, 0.956676, -0.285666,
		21.445744, 22.772678, 20.834236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939117, 22.429384, 21.421091>,  <21.406357, 22.103004, 21.034203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939117, 22.429384, 21.421091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.700974, 22.732265, 21.313616>,  <21.558088, 22.913994, 21.249130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.700974, 22.732265, 21.313616>,  <21.939117, 22.429384, 21.421091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.700974, 22.732265, 21.313616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144090, 0.429613, 0.891443,
		0.790434, 0.492013, -0.364879,
		-0.595358, 0.757203, -0.268687,
		21.522366, 22.959427, 21.233009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.199585, 22.920073, 21.806299>,  <21.939117, 22.429384, 21.421091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.199585, 22.920073, 21.806299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.847019, 23.070953, 21.692581>,  <21.635479, 23.161482, 21.624350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.847019, 23.070953, 21.692581>,  <22.199585, 22.920073, 21.806299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.847019, 23.070953, 21.692581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111819, 0.418142, 0.901473,
		0.458914, 0.826363, -0.326378,
		-0.881416, 0.377203, -0.284294,
		21.582594, 23.184114, 21.607292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240353, 23.626595, 21.956099>,  <22.199585, 22.920073, 21.806299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240353, 23.626595, 21.956099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.846478, 23.561478, 21.931168>,  <21.610151, 23.522408, 21.916210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.846478, 23.561478, 21.931168>,  <22.240353, 23.626595, 21.956099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846478, 23.561478, 21.931168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139934, 0.525025, 0.839504,
		-0.103942, 0.835373, -0.539767,
		-0.984690, -0.162792, -0.062325,
		21.551071, 23.512640, 21.912470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914139, 24.391710, 21.955540>,  <22.240353, 23.626595, 21.956099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914139, 24.391710, 21.955540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.632103, 24.133957, 22.073942>,  <21.462881, 23.979305, 22.144983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.632103, 24.133957, 22.073942>,  <21.914139, 24.391710, 21.955540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632103, 24.133957, 22.073942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304549, 0.652143, 0.694233,
		-0.640391, 0.399347, -0.656065,
		-0.705089, -0.644384, 0.296006,
		21.420576, 23.940641, 22.162745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.270376, 20.429060, 7.408519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899719, 20.282166, 7.440701>,  <17.677326, 20.194029, 7.460010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899719, 20.282166, 7.440701>,  <18.270376, 20.429060, 7.408519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899719, 20.282166, 7.440701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015784, 0.175810, 0.984297,
		-0.375616, 0.913360, -0.157116,
		-0.926641, -0.367238, 0.080454,
		17.621727, 20.171995, 7.464837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873333, 20.897314, 7.751582>,  <18.270376, 20.429060, 7.408519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873333, 20.897314, 7.751582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.725021, 20.531670, 7.817210>,  <17.636034, 20.312283, 7.856587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.725021, 20.531670, 7.817210>,  <17.873333, 20.897314, 7.751582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.725021, 20.531670, 7.817210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242444, 0.075268, 0.967241,
		-0.896517, 0.398411, 0.193714,
		-0.370780, -0.914113, 0.164072,
		17.613787, 20.257435, 7.866432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.396196, 20.889402, 8.333984>,  <17.873333, 20.897314, 7.751582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.396196, 20.889402, 8.333984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.488182, 20.501297, 8.303780>,  <17.543373, 20.268433, 8.285657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.488182, 20.501297, 8.303780>,  <17.396196, 20.889402, 8.333984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.488182, 20.501297, 8.303780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118314, -0.049143, 0.991759,
		-0.965981, -0.237002, 0.103495,
		0.229963, -0.970265, -0.075512,
		17.557171, 20.210217, 8.281126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.100224, 20.592766, 8.919307>,  <17.396196, 20.889402, 8.333984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.100224, 20.592766, 8.919307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.365192, 20.316216, 8.803931>,  <17.524174, 20.150286, 8.734706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.365192, 20.316216, 8.803931>,  <17.100224, 20.592766, 8.919307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365192, 20.316216, 8.803931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126456, -0.276308, 0.952713,
		-0.738380, -0.667574, -0.095604,
		0.662423, -0.691375, -0.288439,
		17.563919, 20.108803, 8.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993547, 19.932405, 9.299977>,  <17.100224, 20.592766, 8.919307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993547, 19.932405, 9.299977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.374096, 19.897274, 9.181872>,  <17.602425, 19.876196, 9.111010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.374096, 19.897274, 9.181872>,  <16.993547, 19.932405, 9.299977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374096, 19.897274, 9.181872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280073, -0.152492, 0.947790,
		-0.128268, -0.984394, -0.120479,
		0.951371, -0.087828, -0.295262,
		17.659508, 19.870926, 9.093294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254076, 19.294436, 9.621268>,  <16.993547, 19.932405, 9.299977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254076, 19.294436, 9.621268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560932, 19.530930, 9.521722>,  <17.745047, 19.672827, 9.461994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.560932, 19.530930, 9.521722>,  <17.254076, 19.294436, 9.621268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560932, 19.530930, 9.521722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469988, -0.253996, 0.845339,
		0.436584, -0.765458, -0.472725,
		0.767142, 0.591236, -0.248865,
		17.791075, 19.708300, 9.447062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.769915, 18.982973, 9.942759>,  <17.254076, 19.294436, 9.621268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.769915, 18.982973, 9.942759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955643, 19.322647, 9.842127>,  <18.067080, 19.526451, 9.781748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.955643, 19.322647, 9.842127>,  <17.769915, 18.982973, 9.942759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.955643, 19.322647, 9.842127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548522, -0.052703, 0.834474,
		0.695363, -0.525461, -0.490267,
		0.464322, 0.849184, -0.251579,
		18.094940, 19.577402, 9.766653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463732, 18.877850, 10.070469>,  <17.769915, 18.982973, 9.942759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463732, 18.877850, 10.070469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.436897, 19.276501, 10.089365>,  <18.420797, 19.515692, 10.100702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.436897, 19.276501, 10.089365>,  <18.463732, 18.877850, 10.070469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436897, 19.276501, 10.089365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631813, 0.005788, 0.775099,
		0.772212, 0.081844, -0.630071,
		-0.067084, 0.996628, 0.047241,
		18.416773, 19.575489, 10.103538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137077, 19.075886, 10.187936>,  <18.463732, 18.877850, 10.070469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.137077, 19.075886, 10.187936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.909515, 19.383705, 10.303962>,  <18.772978, 19.568398, 10.373577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.909515, 19.383705, 10.303962>,  <19.137077, 19.075886, 10.187936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.909515, 19.383705, 10.303962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584595, 0.130337, 0.800788,
		0.578440, 0.625144, -0.524025,
		-0.568907, 0.769550, 0.290064,
		18.738844, 19.614571, 10.390981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649654, 19.666201, 10.304785>,  <19.137077, 19.075886, 10.187936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649654, 19.666201, 10.304785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317123, 19.758438, 10.507059>,  <19.117605, 19.813780, 10.628424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.317123, 19.758438, 10.507059>,  <19.649654, 19.666201, 10.304785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317123, 19.758438, 10.507059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555396, 0.310835, 0.771309,
		0.020673, 0.922068, -0.386477,
		-0.831329, 0.230593, 0.505686,
		19.067724, 19.827616, 10.658765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688826, 20.398945, 10.596247>,  <19.649654, 19.666201, 10.304785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688826, 20.398945, 10.596247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.411949, 20.211559, 10.815850>,  <19.245823, 20.099129, 10.947613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.411949, 20.211559, 10.815850>,  <19.688826, 20.398945, 10.596247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411949, 20.211559, 10.815850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452603, 0.310759, 0.835811,
		-0.562157, 0.827025, -0.003077,
		-0.692193, -0.468464, 0.549009,
		19.204292, 20.071020, 10.980553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565842, 20.890057, 11.043400>,  <19.688826, 20.398945, 10.596247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565842, 20.890057, 11.043400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.430553, 20.563492, 11.230624>,  <19.349380, 20.367554, 11.342958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.430553, 20.563492, 11.230624>,  <19.565842, 20.890057, 11.043400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430553, 20.563492, 11.230624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459995, 0.290481, 0.839062,
		-0.820982, 0.499094, 0.277298,
		-0.338221, -0.816410, 0.468061,
		19.329086, 20.318569, 11.371042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524805, 21.582554, 11.136691>,  <19.565842, 20.890057, 11.043400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524805, 21.582554, 11.136691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.848572, 21.767857, 10.992337>,  <20.042831, 21.879038, 10.905725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.848572, 21.767857, 10.992337>,  <19.524805, 21.582554, 11.136691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.848572, 21.767857, 10.992337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259801, -0.268639, -0.927543,
		-0.526640, 0.844526, -0.097086,
		0.809416, 0.463259, -0.360885,
		20.091396, 21.906834, 10.884071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294960, 22.018011, 10.545379>,  <19.524805, 21.582554, 11.136691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294960, 22.018011, 10.545379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.687641, 21.966324, 10.489428>,  <19.923250, 21.935312, 10.455856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.687641, 21.966324, 10.489428>,  <19.294960, 22.018011, 10.545379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687641, 21.966324, 10.489428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161890, -0.179532, -0.970340,
		0.100271, 0.975229, -0.197166,
		0.981701, -0.129216, -0.139878,
		19.982151, 21.927559, 10.447464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.534119, 22.532146, 10.103724>,  <19.294960, 22.018011, 10.545379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.534119, 22.532146, 10.103724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.780678, 22.217949, 10.081626>,  <19.928614, 22.029430, 10.068367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.780678, 22.217949, 10.081626>,  <19.534119, 22.532146, 10.103724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.780678, 22.217949, 10.081626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175158, -0.068375, -0.982163,
		0.767707, 0.615079, -0.179732,
		0.616397, -0.785495, -0.055244,
		19.965597, 21.982300, 10.065053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937735, 22.822886, 9.518145>,  <19.534119, 22.532146, 10.103724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937735, 22.822886, 9.518145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.976612, 22.429531, 9.579469>,  <19.999939, 22.193518, 9.616263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.976612, 22.429531, 9.579469>,  <19.937735, 22.822886, 9.518145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976612, 22.429531, 9.579469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003869, -0.154411, -0.987999,
		0.995258, 0.095434, -0.018813,
		0.097194, -0.983387, 0.153309,
		20.005770, 22.134516, 9.625462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457335, 22.673420, 9.142239>,  <19.937735, 22.822886, 9.518145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457335, 22.673420, 9.142239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.314636, 22.300224, 9.161289>,  <20.229017, 22.076307, 9.172719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.314636, 22.300224, 9.161289>,  <20.457335, 22.673420, 9.142239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314636, 22.300224, 9.161289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129044, -0.099706, -0.986614,
		0.925247, -0.345822, 0.155966,
		-0.356744, -0.932987, 0.047626,
		20.207613, 22.020329, 9.175577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944939, 22.209326, 8.845573>,  <20.457335, 22.673420, 9.142239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.944939, 22.209326, 8.845573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.590679, 22.023945, 8.833986>,  <20.378124, 21.912716, 8.827034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.590679, 22.023945, 8.833986>,  <20.944939, 22.209326, 8.845573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.590679, 22.023945, 8.833986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121265, -0.170615, -0.977847,
		0.448242, -0.869542, 0.207306,
		-0.885649, -0.463451, -0.028968,
		20.324984, 21.884911, 8.825295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.011856, 21.552113, 8.466854>,  <20.944939, 22.209326, 8.845573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.011856, 21.552113, 8.466854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.630245, 21.661057, 8.416811>,  <20.401279, 21.726423, 8.386786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.630245, 21.661057, 8.416811>,  <21.011856, 21.552113, 8.466854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.630245, 21.661057, 8.416811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076284, -0.183012, -0.980147,
		-0.289852, -0.944629, 0.153821,
		-0.954026, 0.272363, -0.125107,
		20.344038, 21.742765, 8.379279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.802509, 20.990580, 7.977499>,  <21.011856, 21.552113, 8.466854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.802509, 20.990580, 7.977499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.511368, 21.263969, 7.999757>,  <20.336683, 21.428003, 8.013111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.511368, 21.263969, 7.999757>,  <20.802509, 20.990580, 7.977499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.511368, 21.263969, 7.999757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174576, -0.106217, -0.978898,
		-0.663140, -0.722207, 0.196629,
		-0.727852, 0.683473, 0.055643,
		20.293013, 21.469011, 8.016450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.269072, 20.608526, 7.617440>,  <20.802509, 20.990580, 7.977499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.269072, 20.608526, 7.617440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.125919, 20.981964, 7.610294>,  <20.040028, 21.206028, 7.606007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.125919, 20.981964, 7.610294>,  <20.269072, 20.608526, 7.617440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125919, 20.981964, 7.610294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558174, -0.229228, -0.797431,
		-0.748574, -0.275414, 0.603145,
		-0.357881, 0.933596, -0.017865,
		20.018555, 21.262043, 7.604935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571138, 20.470743, 7.461801>,  <20.269072, 20.608526, 7.617440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.571138, 20.470743, 7.461801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.645496, 20.854774, 7.378187>,  <19.690111, 21.085194, 7.328019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.645496, 20.854774, 7.378187>,  <19.571138, 20.470743, 7.461801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645496, 20.854774, 7.378187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451467, -0.105498, -0.886029,
		-0.872709, 0.259079, 0.413832,
		0.185893, 0.960077, -0.209035,
		19.701263, 21.142797, 7.315477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978163, 20.712091, 7.313569>,  <19.571138, 20.470743, 7.461801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978163, 20.712091, 7.313569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.222134, 20.975983, 7.137957>,  <19.368517, 21.134317, 7.032589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.222134, 20.975983, 7.137957>,  <18.978163, 20.712091, 7.313569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.222134, 20.975983, 7.137957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521701, -0.082737, -0.849107,
		-0.596505, 0.746935, 0.293717,
		0.609927, 0.659729, -0.439030,
		19.405111, 21.173901, 7.006248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564346, 21.127247, 6.954542>,  <18.978163, 20.712091, 7.313569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564346, 21.127247, 6.954542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.920723, 21.137711, 6.773198>,  <19.134550, 21.143990, 6.664392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.920723, 21.137711, 6.773198>,  <18.564346, 21.127247, 6.954542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.920723, 21.137711, 6.773198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448464, -0.106309, -0.887456,
		-0.071412, 0.993989, -0.082984,
		0.890943, 0.026160, -0.453360,
		19.188005, 21.145559, 6.637190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487963, 21.559071, 6.393692>,  <18.564346, 21.127247, 6.954542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487963, 21.559071, 6.393692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.824368, 21.379051, 6.273585>,  <19.026211, 21.271040, 6.201521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.824368, 21.379051, 6.273585>,  <18.487963, 21.559071, 6.393692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824368, 21.379051, 6.273585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277072, 0.118416, -0.953525,
		0.464687, 0.885119, -0.025106,
		0.841010, -0.450046, -0.300268,
		19.076670, 21.244038, 6.183505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796690, 21.964157, 5.738687>,  <18.487963, 21.559071, 6.393692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.796690, 21.964157, 5.738687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.976486, 21.606888, 5.744381>,  <19.084364, 21.392527, 5.747797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.976486, 21.606888, 5.744381>,  <18.796690, 21.964157, 5.738687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976486, 21.606888, 5.744381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267222, -0.149650, -0.951944,
		0.852380, 0.424084, -0.305941,
		0.449489, -0.893173, 0.014235,
		19.111332, 21.338936, 5.748652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207422, 22.190653, 6.150525>,  <18.796690, 21.964157, 5.738687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207422, 22.190653, 6.150525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.119961, 22.446011, 5.855326>,  <18.067484, 22.599226, 5.678206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.119961, 22.446011, 5.855326>,  <18.207422, 22.190653, 6.150525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.119961, 22.446011, 5.855326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261110, 0.690441, 0.674621,
		0.940219, 0.340208, 0.015723,
		-0.218656, 0.638396, -0.737997,
		18.054363, 22.637529, 5.633926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.604052, 22.846954, 6.096109>,  <18.207422, 22.190653, 6.150525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.604052, 22.846954, 6.096109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.231335, 22.887798, 5.956775>,  <18.007706, 22.912304, 5.873174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.231335, 22.887798, 5.956775>,  <18.604052, 22.846954, 6.096109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231335, 22.887798, 5.956775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204815, 0.644380, 0.736767,
		0.299692, 0.757857, -0.579514,
		-0.931791, 0.102110, -0.348336,
		17.951797, 22.918432, 5.852274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441868, 23.487404, 5.895401>,  <18.604052, 22.846954, 6.096109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.441868, 23.487404, 5.895401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.071747, 23.352673, 5.965096>,  <17.849674, 23.271833, 6.006914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.071747, 23.352673, 5.965096>,  <18.441868, 23.487404, 5.895401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071747, 23.352673, 5.965096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107809, 0.674143, 0.730690,
		-0.363581, 0.657325, -0.660100,
		-0.925303, -0.336830, 0.174240,
		17.794155, 23.251623, 6.017368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954483, 24.109249, 5.887905>,  <18.441868, 23.487404, 5.895401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954483, 24.109249, 5.887905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.816826, 23.817116, 6.123932>,  <17.734232, 23.641836, 6.265548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.816826, 23.817116, 6.123932>,  <17.954483, 24.109249, 5.887905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816826, 23.817116, 6.123932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074973, 0.647824, 0.758092,
		-0.935919, 0.216652, -0.277699,
		-0.344142, -0.730333, 0.590068,
		17.713583, 23.598017, 6.300952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635448, 24.509014, 6.420011>,  <17.954483, 24.109249, 5.887905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635448, 24.509014, 6.420011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.651894, 24.140568, 6.574856>,  <17.661760, 23.919500, 6.667763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.651894, 24.140568, 6.574856>,  <17.635448, 24.509014, 6.420011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.651894, 24.140568, 6.574856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093599, 0.382186, 0.919333,
		-0.994761, -0.074030, -0.070502,
		0.041113, -0.921116, 0.387113,
		17.664228, 23.864233, 6.690989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.092480, 24.488264, 6.888690>,  <17.635448, 24.509014, 6.420011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.092480, 24.488264, 6.888690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.335079, 24.193249, 7.007482>,  <17.480639, 24.016239, 7.078756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.335079, 24.193249, 7.007482>,  <17.092480, 24.488264, 6.888690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335079, 24.193249, 7.007482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067438, 0.419889, 0.905066,
		-0.792220, -0.528893, 0.304400,
		0.606497, -0.737540, 0.296977,
		17.517029, 23.971987, 7.096575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761259, 24.246134, 7.543111>,  <17.092480, 24.488264, 6.888690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761259, 24.246134, 7.543111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.122776, 24.079369, 7.581765>,  <17.339687, 23.979309, 7.604958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.122776, 24.079369, 7.581765>,  <16.761259, 24.246134, 7.543111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.122776, 24.079369, 7.581765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054633, 0.336349, 0.940151,
		-0.424467, -0.844424, 0.326767,
		0.903794, -0.416915, 0.096635,
		17.393913, 23.954294, 7.610756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812721, 23.563501, 7.997803>,  <16.761259, 24.246134, 7.543111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812721, 23.563501, 7.997803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.161343, 23.758934, 7.981382>,  <17.370516, 23.876194, 7.971530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.161343, 23.758934, 7.981382>,  <16.812721, 23.563501, 7.997803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161343, 23.758934, 7.981382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037943, 0.150686, 0.987853,
		0.488833, -0.859408, 0.149869,
		0.871552, 0.488581, -0.041052,
		17.422808, 23.905508, 7.969067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201412, 23.258789, 8.483635>,  <16.812721, 23.563501, 7.997803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201412, 23.258789, 8.483635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.359108, 23.621315, 8.422754>,  <17.453726, 23.838831, 8.386226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.359108, 23.621315, 8.422754>,  <17.201412, 23.258789, 8.483635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.359108, 23.621315, 8.422754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084168, 0.200528, 0.976066,
		0.915145, -0.371994, 0.155339,
		0.394241, 0.906316, -0.152202,
		17.477381, 23.893209, 8.377093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467861, 23.395643, 9.087845>,  <17.201412, 23.258789, 8.483635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467861, 23.395643, 9.087845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.548286, 23.755260, 8.932258>,  <17.596542, 23.971031, 8.838905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.548286, 23.755260, 8.932258>,  <17.467861, 23.395643, 9.087845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.548286, 23.755260, 8.932258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124847, 0.370319, 0.920476,
		0.971590, -0.233636, -0.037785,
		0.201064, 0.899043, -0.388967,
		17.608606, 24.024973, 8.815567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.202780, 23.524424, 9.261936>,  <17.467861, 23.395643, 9.087845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.202780, 23.524424, 9.261936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.962120, 23.840401, 9.214591>,  <17.817724, 24.029987, 9.186184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.962120, 23.840401, 9.214591>,  <18.202780, 23.524424, 9.261936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962120, 23.840401, 9.214591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179394, 0.278029, 0.943672,
		0.778355, 0.546525, -0.308987,
		-0.601648, 0.789943, -0.118362,
		17.781626, 24.077383, 9.179083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642832, 23.922527, 9.614903>,  <18.202780, 23.524424, 9.261936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.642832, 23.922527, 9.614903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.286423, 24.102287, 9.589224>,  <18.072578, 24.210142, 9.573816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.286423, 24.102287, 9.589224>,  <18.642832, 23.922527, 9.614903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.286423, 24.102287, 9.589224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110986, 0.352782, 0.929100,
		0.440184, 0.820723, -0.364214,
		-0.891022, 0.449398, -0.064200,
		18.019115, 24.237106, 9.569963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692701, 24.710089, 9.738871>,  <18.642832, 23.922527, 9.614903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692701, 24.710089, 9.738871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.319939, 24.612598, 9.846308>,  <18.096281, 24.554104, 9.910770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.319939, 24.612598, 9.846308>,  <18.692701, 24.710089, 9.738871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319939, 24.612598, 9.846308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184423, 0.319238, 0.929556,
		-0.312304, 0.915797, -0.252552,
		-0.931909, -0.243728, 0.268594,
		18.040365, 24.539480, 9.926886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.429745, 25.218718, 10.177110>,  <18.692701, 24.710089, 9.738871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.429745, 25.218718, 10.177110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.140865, 24.949993, 10.242954>,  <17.967537, 24.788757, 10.282461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.140865, 24.949993, 10.242954>,  <18.429745, 25.218718, 10.177110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.140865, 24.949993, 10.242954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036867, 0.200261, 0.979049,
		-0.690702, 0.713137, -0.119860,
		-0.722199, -0.671812, 0.164612,
		17.924206, 24.748449, 10.292337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142321, 25.431402, 10.763526>,  <18.429745, 25.218718, 10.177110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142321, 25.431402, 10.763526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.973587, 25.069286, 10.783564>,  <17.872347, 24.852016, 10.795586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.973587, 25.069286, 10.783564>,  <18.142321, 25.431402, 10.763526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973587, 25.069286, 10.783564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160652, -0.020254, 0.986803,
		-0.892327, 0.424314, 0.153980,
		-0.421833, -0.905289, 0.050093,
		17.847036, 24.797699, 10.798592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.597382, 25.426510, 11.222056>,  <18.142321, 25.431402, 10.763526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.597382, 25.426510, 11.222056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.740696, 25.053814, 11.198418>,  <17.826685, 24.830196, 11.184235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.740696, 25.053814, 11.198418>,  <17.597382, 25.426510, 11.222056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740696, 25.053814, 11.198418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175750, 0.005144, 0.984421,
		-0.916921, -0.363088, 0.165596,
		0.358284, -0.931741, -0.059096,
		17.848181, 24.774292, 11.180689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218128, 24.968719, 11.720781>,  <17.597382, 25.426510, 11.222056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218128, 24.968719, 11.720781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584709, 24.828640, 11.643348>,  <17.804657, 24.744593, 11.596888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.584709, 24.828640, 11.643348>,  <17.218128, 24.968719, 11.720781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.584709, 24.828640, 11.643348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123315, -0.213063, 0.969225,
		-0.380669, -0.912120, -0.152077,
		0.916452, -0.350201, -0.193584,
		17.859646, 24.723579, 11.585273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277887, 24.470037, 12.219771>,  <17.218128, 24.968719, 11.720781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.277887, 24.470037, 12.219771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.650036, 24.540615, 12.091225>,  <17.873325, 24.582962, 12.014096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.650036, 24.540615, 12.091225>,  <17.277887, 24.470037, 12.219771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650036, 24.540615, 12.091225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349858, -0.165290, 0.922105,
		0.109580, -0.970334, -0.215511,
		0.930372, 0.176442, -0.321367,
		17.929148, 24.593548, 11.994815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600014, 23.937643, 12.579612>,  <17.277887, 24.470037, 12.219771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600014, 23.937643, 12.579612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.881542, 24.194408, 12.457906>,  <18.050459, 24.348469, 12.384882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.881542, 24.194408, 12.457906>,  <17.600014, 23.937643, 12.579612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881542, 24.194408, 12.457906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404274, -0.009752, 0.914586,
		0.584120, -0.766713, -0.266374,
		0.703823, 0.641916, -0.304266,
		18.092690, 24.386984, 12.366626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.216028, 23.604673, 12.653602>,  <17.600014, 23.937643, 12.579612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.216028, 23.604673, 12.653602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.270958, 23.998554, 12.696504>,  <18.303917, 24.234882, 12.722244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.270958, 23.998554, 12.696504>,  <18.216028, 23.604673, 12.653602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.270958, 23.998554, 12.696504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524469, -0.164141, 0.835458,
		0.840282, -0.058478, -0.538987,
		0.137325, 0.984702, 0.107254,
		18.312155, 24.293964, 12.728680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.805368, 23.563349, 12.929193>,  <18.216028, 23.604673, 12.653602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.805368, 23.563349, 12.929193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695965, 23.941410, 13.000609>,  <18.630322, 24.168247, 13.043459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.695965, 23.941410, 13.000609>,  <18.805368, 23.563349, 12.929193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.695965, 23.941410, 13.000609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320472, -0.085469, 0.943394,
		0.906912, 0.315245, -0.279518,
		-0.273510, 0.945154, 0.178540,
		18.613913, 24.224957, 13.054172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.331146, 23.923008, 13.348888>,  <18.805368, 23.563349, 12.929193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.331146, 23.923008, 13.348888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.017719, 24.168156, 13.389707>,  <18.829662, 24.315245, 13.414197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.017719, 24.168156, 13.389707>,  <19.331146, 23.923008, 13.348888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017719, 24.168156, 13.389707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280389, 0.202248, 0.938338,
		0.554441, 0.763862, -0.330317,
		-0.783567, 0.612870, 0.102045,
		18.782650, 24.352016, 13.420320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607283, 24.494110, 13.601727>,  <19.331146, 23.923008, 13.348888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607283, 24.494110, 13.601727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.218231, 24.524300, 13.689630>,  <18.984800, 24.542414, 13.742372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.218231, 24.524300, 13.689630>,  <19.607283, 24.494110, 13.601727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218231, 24.524300, 13.689630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231618, 0.239496, 0.942865,
		0.018533, 0.967959, -0.250423,
		-0.972630, 0.075476, 0.219758,
		18.926441, 24.546942, 13.755557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529396, 25.027088, 14.078993>,  <19.607283, 24.494110, 13.601727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.529396, 25.027088, 14.078993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.188457, 24.824192, 14.129924>,  <18.983894, 24.702454, 14.160482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.188457, 24.824192, 14.129924>,  <19.529396, 25.027088, 14.078993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188457, 24.824192, 14.129924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129358, 0.031417, 0.991100,
		-0.506728, 0.861230, 0.038838,
		-0.852346, -0.507243, 0.127327,
		18.932755, 24.672020, 14.168121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.077408, 25.493111, 14.510347>,  <19.529396, 25.027088, 14.078993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.077408, 25.493111, 14.510347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.968899, 25.109398, 14.541806>,  <18.903793, 24.879169, 14.560681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.968899, 25.109398, 14.541806>,  <19.077408, 25.493111, 14.510347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.968899, 25.109398, 14.541806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163162, 0.034696, 0.985989,
		-0.948572, 0.280304, 0.147106,
		-0.271273, -0.959284, 0.078647,
		18.887516, 24.821613, 14.565400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.399206, 25.446230, 14.775084>,  <19.077408, 25.493111, 14.510347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.399206, 25.446230, 14.775084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.521206, 25.080910, 14.883050>,  <18.594406, 24.861717, 14.947829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.521206, 25.080910, 14.883050>,  <18.399206, 25.446230, 14.775084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521206, 25.080910, 14.883050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036452, 0.294405, 0.954986,
		-0.951655, -0.281432, 0.123085,
		0.305000, -0.913303, 0.269913,
		18.612705, 24.806919, 14.964024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.996046, 25.341421, 15.309366>,  <18.399206, 25.446230, 14.775084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.996046, 25.341421, 15.309366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.310734, 25.097576, 15.348248>,  <18.499546, 24.951269, 15.371578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.310734, 25.097576, 15.348248>,  <17.996046, 25.341421, 15.309366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310734, 25.097576, 15.348248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107091, 0.289857, 0.951060,
		-0.607952, -0.737806, 0.293320,
		0.786718, -0.609610, 0.097206,
		18.546749, 24.914694, 15.377410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.736341, 25.020275, 15.926132>,  <17.996046, 25.341421, 15.309366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.736341, 25.020275, 15.926132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.130112, 24.972996, 15.874078>,  <18.366373, 24.944628, 15.842845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.130112, 24.972996, 15.874078>,  <17.736341, 25.020275, 15.926132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.130112, 24.972996, 15.874078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170977, 0.471472, 0.865148,
		-0.040902, -0.873924, 0.484338,
		0.984425, -0.118197, -0.130137,
		18.425440, 24.937536, 15.835037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271309, 24.426872, 16.093838>,  <17.736341, 25.020275, 15.926132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271309, 24.426872, 16.093838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.919468, 24.463249, 16.280613>,  <16.708363, 24.485075, 16.392677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.919468, 24.463249, 16.280613>,  <17.271309, 24.426872, 16.093838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919468, 24.463249, 16.280613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465298, 0.039768, -0.884260,
		-0.098990, -0.995061, 0.007337,
		-0.879601, 0.090947, 0.466937,
		16.655588, 24.490532, 16.420694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841129, 24.014158, 15.706697>,  <17.271309, 24.426872, 16.093838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841129, 24.014158, 15.706697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.617359, 24.290348, 15.890124>,  <16.483097, 24.456062, 16.000181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.617359, 24.290348, 15.890124>,  <16.841129, 24.014158, 15.706697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.617359, 24.290348, 15.890124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624323, 0.012897, -0.781060,
		-0.545218, -0.723240, 0.423866,
		-0.559427, 0.690477, 0.458567,
		16.449532, 24.497492, 16.027695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136171, 23.755106, 15.735617>,  <16.841129, 24.014158, 15.706697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136171, 23.755106, 15.735617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.125648, 24.154839, 15.725461>,  <16.119335, 24.394678, 15.719368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.125648, 24.154839, 15.725461>,  <16.136171, 23.755106, 15.735617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.125648, 24.154839, 15.725461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580341, -0.035948, -0.813580,
		-0.813949, -0.006669, 0.580899,
		-0.026308, 0.999331, -0.025390,
		16.117756, 24.454638, 15.717844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.464487, 23.840187, 15.669950>,  <16.136171, 23.755106, 15.735617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.464487, 23.840187, 15.669950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.651223, 24.178650, 15.567124>,  <15.763265, 24.381727, 15.505429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.651223, 24.178650, 15.567124>,  <15.464487, 23.840187, 15.669950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651223, 24.178650, 15.567124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571975, 0.067209, -0.817513,
		-0.674466, 0.528681, 0.515356,
		0.466840, 0.846156, -0.257062,
		15.791275, 24.432497, 15.490005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976197, 24.187971, 15.242214>,  <15.464487, 23.840187, 15.669950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976197, 24.187971, 15.242214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.318725, 24.371380, 15.147153>,  <15.524240, 24.481424, 15.090117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.318725, 24.371380, 15.147153>,  <14.976197, 24.187971, 15.242214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318725, 24.371380, 15.147153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277291, 0.019987, -0.960578,
		-0.435695, 0.888459, 0.144259,
		0.856318, 0.458521, -0.237654,
		15.575620, 24.508936, 15.075857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
