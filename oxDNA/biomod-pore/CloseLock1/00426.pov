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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.872593, 35.119709, 34.730106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186600, 35.076244, 34.974052>,  <24.375004, 35.050167, 35.120422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186600, 35.076244, 34.974052>,  <23.872593, 35.119709, 34.730106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186600, 35.076244, 34.974052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063468, -0.993423, -0.095302,
		0.616212, 0.036107, -0.786752,
		0.785019, -0.108660, 0.609867,
		24.422106, 35.043648, 35.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361029, 34.669491, 34.360336>,  <23.872593, 35.119709, 34.730106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361029, 34.669491, 34.360336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412951, 34.635239, 34.755470>,  <24.444103, 34.614689, 34.992550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412951, 34.635239, 34.755470>,  <24.361029, 34.669491, 34.360336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412951, 34.635239, 34.755470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023239, -0.996253, -0.083303,
		0.991267, -0.012143, -0.131307,
		0.129804, -0.085627, 0.987835,
		24.451891, 34.609550, 35.051823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106848, 34.729584, 34.426952>,  <24.361029, 34.669491, 34.360336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106848, 34.729584, 34.426952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298750, 35.024921, 34.616554>,  <25.413891, 35.202126, 34.730316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298750, 35.024921, 34.616554>,  <25.106848, 34.729584, 34.426952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298750, 35.024921, 34.616554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776129, 0.609086, -0.163213,
		-0.409220, -0.289590, 0.865261,
		0.479753, 0.738344, 0.474009,
		25.442677, 35.246426, 34.758759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639711, 35.183453, 34.008057>,  <25.106848, 34.729584, 34.426952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639711, 35.183453, 34.008057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661472, 35.089947, 33.619747>,  <25.674528, 35.033844, 33.386761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.661472, 35.089947, 33.619747>,  <25.639711, 35.183453, 34.008057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661472, 35.089947, 33.619747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536286, -0.813248, 0.225885,
		-0.842281, -0.532899, 0.081124,
		0.054400, -0.233765, -0.970770,
		25.677792, 35.019817, 33.328518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946314, 34.532822, 33.995705>,  <25.639711, 35.183453, 34.008057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946314, 34.532822, 33.995705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911644, 34.595379, 33.602150>,  <25.890842, 34.632912, 33.366016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.911644, 34.595379, 33.602150>,  <25.946314, 34.532822, 33.995705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.911644, 34.595379, 33.602150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625972, -0.759746, -0.175911,
		-0.775014, -0.631131, -0.032046,
		-0.086676, 0.156394, -0.983884,
		25.885641, 34.642296, 33.306984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673050, 33.911461, 33.664940>,  <25.946314, 34.532822, 33.995705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673050, 33.911461, 33.664940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879885, 34.122002, 33.394955>,  <26.003984, 34.248325, 33.232964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.879885, 34.122002, 33.394955>,  <25.673050, 33.911461, 33.664940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.879885, 34.122002, 33.394955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405891, -0.845056, -0.348042,
		-0.753574, -0.093994, -0.650608,
		0.517086, 0.526352, -0.674964,
		26.035011, 34.279907, 33.192467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717302, 33.471241, 33.161877>,  <25.673050, 33.911461, 33.664940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717302, 33.471241, 33.161877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027937, 33.716797, 33.105221>,  <26.214317, 33.864128, 33.071228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.027937, 33.716797, 33.105221>,  <25.717302, 33.471241, 33.161877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.027937, 33.716797, 33.105221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525077, -0.754902, -0.392959,
		-0.348153, 0.230797, -0.908583,
		0.776585, 0.613886, -0.141636,
		26.260912, 33.900963, 33.062729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928040, 33.175175, 32.585976>,  <25.717302, 33.471241, 33.161877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928040, 33.175175, 32.585976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229019, 33.405548, 32.713802>,  <26.409607, 33.543770, 32.790497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229019, 33.405548, 32.713802>,  <25.928040, 33.175175, 32.585976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229019, 33.405548, 32.713802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645253, -0.741924, -0.182199,
		0.132160, 0.343297, -0.929882,
		0.752450, 0.575930, 0.319567,
		26.454754, 33.578327, 32.809673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.444624, 33.195915, 32.051140>,  <25.928040, 33.175175, 32.585976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.444624, 33.195915, 32.051140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611399, 33.287712, 32.402935>,  <26.711464, 33.342789, 32.614010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611399, 33.287712, 32.402935>,  <26.444624, 33.195915, 32.051140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611399, 33.287712, 32.402935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575823, -0.815353, -0.060225,
		0.703270, 0.531539, -0.472098,
		0.416939, 0.229491, 0.879486,
		26.736481, 33.356560, 32.666782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130648, 33.043327, 31.969347>,  <26.444624, 33.195915, 32.051140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130648, 33.043327, 31.969347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123976, 33.078934, 32.367702>,  <27.119972, 33.100300, 32.606716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123976, 33.078934, 32.367702>,  <27.130648, 33.043327, 31.969347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123976, 33.078934, 32.367702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655485, -0.751157, 0.078122,
		0.755024, 0.654094, -0.045819,
		-0.016682, 0.089018, 0.995890,
		27.118971, 33.105640, 32.666470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849808, 33.087677, 32.152550>,  <27.130648, 33.043327, 31.969347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849808, 33.087677, 32.152550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639652, 32.943184, 32.460701>,  <27.513559, 32.856487, 32.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639652, 32.943184, 32.460701>,  <27.849808, 33.087677, 32.152550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639652, 32.943184, 32.460701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510172, -0.858341, -0.054545,
		0.680949, 0.364367, 0.635253,
		-0.525389, -0.361230, 0.770376,
		27.482035, 32.834816, 32.691814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307631, 32.733849, 32.460106>,  <27.849808, 33.087677, 32.152550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307631, 32.733849, 32.460106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978895, 32.581738, 32.629799>,  <27.781654, 32.490471, 32.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978895, 32.581738, 32.629799>,  <28.307631, 32.733849, 32.460106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978895, 32.581738, 32.629799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429597, -0.902727, 0.023043,
		0.374206, 0.201188, 0.905258,
		-0.821837, -0.380273, 0.424236,
		27.732344, 32.467655, 32.757069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548723, 32.434471, 32.983772>,  <28.307631, 32.733849, 32.460106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548723, 32.434471, 32.983772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192547, 32.257046, 32.943039>,  <27.978842, 32.150589, 32.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192547, 32.257046, 32.943039>,  <28.548723, 32.434471, 32.983772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192547, 32.257046, 32.943039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430506, -0.893523, 0.127600,
		-0.147589, 0.069780, 0.986584,
		-0.890439, -0.443562, -0.101834,
		27.925415, 32.123978, 32.912487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.455196, 32.035465, 33.600403>,  <28.548723, 32.434471, 32.983772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.455196, 32.035465, 33.600403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194496, 31.868628, 33.347023>,  <28.038076, 31.768526, 33.194996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194496, 31.868628, 33.347023>,  <28.455196, 32.035465, 33.600403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194496, 31.868628, 33.347023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282799, -0.908619, 0.307305,
		-0.703737, 0.021148, 0.710146,
		-0.651751, -0.417090, -0.633448,
		27.998970, 31.743500, 33.156990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191065, 31.524929, 34.025593>,  <28.455196, 32.035465, 33.600403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191065, 31.524929, 34.025593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132320, 31.419804, 33.644150>,  <28.097075, 31.356730, 33.415283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132320, 31.419804, 33.644150>,  <28.191065, 31.524929, 34.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132320, 31.419804, 33.644150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254906, -0.941552, 0.220234,
		-0.955748, -0.210736, 0.205269,
		-0.146861, -0.262812, -0.953605,
		28.088263, 31.340960, 33.358067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708162, 30.941492, 34.082241>,  <28.191065, 31.524929, 34.025593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708162, 30.941492, 34.082241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895472, 30.940584, 33.728809>,  <28.007856, 30.940039, 33.516750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895472, 30.940584, 33.728809>,  <27.708162, 30.941492, 34.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895472, 30.940584, 33.728809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351863, -0.916807, 0.188832,
		-0.810502, -0.399325, -0.428516,
		0.468271, -0.002269, -0.883582,
		28.035954, 30.939903, 33.463734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554220, 30.319679, 33.756851>,  <27.708162, 30.941492, 34.082241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554220, 30.319679, 33.756851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883566, 30.417583, 33.552044>,  <28.081173, 30.476326, 33.429157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883566, 30.417583, 33.552044>,  <27.554220, 30.319679, 33.756851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883566, 30.417583, 33.552044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326138, -0.942425, 0.073944,
		-0.464444, -0.227873, -0.855784,
		0.823362, 0.244761, -0.512022,
		28.130575, 30.491013, 33.398438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649136, 29.758133, 33.237053>,  <27.554220, 30.319679, 33.756851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649136, 29.758133, 33.237053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013622, 29.921301, 33.259995>,  <28.232313, 30.019201, 33.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.013622, 29.921301, 33.259995>,  <27.649136, 29.758133, 33.237053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013622, 29.921301, 33.259995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407394, -0.913009, 0.021100,
		0.060972, 0.004139, -0.998131,
		0.911215, 0.407919, 0.057354,
		28.286987, 30.043676, 33.277199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141861, 29.378489, 32.787823>,  <27.649136, 29.758133, 33.237053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141861, 29.378489, 32.787823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378578, 29.548515, 33.061787>,  <28.520609, 29.650532, 33.226166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378578, 29.548515, 33.061787>,  <28.141861, 29.378489, 32.787823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378578, 29.548515, 33.061787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545658, -0.836646, 0.047764,
		0.593329, 0.345459, -0.727062,
		0.591792, 0.425067, 0.684909,
		28.556116, 29.676035, 33.267258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777697, 29.136618, 32.571751>,  <28.141861, 29.378489, 32.787823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777697, 29.136618, 32.571751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779940, 29.252485, 32.954594>,  <28.781284, 29.322006, 33.184299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779940, 29.252485, 32.954594>,  <28.777697, 29.136618, 32.571751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779940, 29.252485, 32.954594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488003, -0.836208, 0.250219,
		0.872824, 0.465670, -0.146047,
		0.005606, 0.289669, 0.957111,
		28.781622, 29.339386, 33.241726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304686, 28.822241, 32.974800>,  <28.777697, 29.136618, 32.571751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304686, 28.822241, 32.974800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120258, 28.937052, 33.310665>,  <29.009602, 29.005938, 33.512184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120258, 28.937052, 33.310665>,  <29.304686, 28.822241, 32.974800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120258, 28.937052, 33.310665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511785, -0.686993, 0.515864,
		0.724909, 0.667575, 0.169855,
		-0.461067, 0.287025, 0.839663,
		28.981937, 29.023159, 33.562565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806438, 28.988811, 33.431942>,  <29.304686, 28.822241, 32.974800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806438, 28.988811, 33.431942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473791, 28.904303, 33.637379>,  <29.274202, 28.853598, 33.760639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.473791, 28.904303, 33.637379>,  <29.806438, 28.988811, 33.431942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.473791, 28.904303, 33.637379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544454, -0.492453, 0.679014,
		0.109462, 0.844307, 0.524561,
		-0.831618, -0.211273, 0.513591,
		29.224306, 28.840921, 33.791454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881008, 29.146593, 34.218056>,  <29.806438, 28.988811, 33.431942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881008, 29.146593, 34.218056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606100, 28.865229, 34.145531>,  <29.441156, 28.696409, 34.102016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606100, 28.865229, 34.145531>,  <29.881008, 29.146593, 34.218056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606100, 28.865229, 34.145531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426512, -0.592810, 0.683128,
		-0.588005, 0.392160, 0.707433,
		-0.687269, -0.703411, -0.181315,
		29.399920, 28.654205, 34.091137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998219, 29.063070, 34.994732>,  <29.881008, 29.146593, 34.218056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998219, 29.063070, 34.994732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674328, 28.877605, 34.850868>,  <29.479994, 28.766327, 34.764549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674328, 28.877605, 34.850868>,  <29.998219, 29.063070, 34.994732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674328, 28.877605, 34.850868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475189, -0.877718, 0.061702,
		-0.344290, -0.120945, 0.931041,
		-0.809728, -0.463664, -0.359661,
		29.431410, 28.738506, 34.742970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855394, 28.441353, 35.411800>,  <29.998219, 29.063070, 34.994732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855394, 28.441353, 35.411800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625484, 28.346415, 35.098545>,  <29.487539, 28.289452, 34.910591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625484, 28.346415, 35.098545>,  <29.855394, 28.441353, 35.411800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625484, 28.346415, 35.098545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281711, -0.955907, 0.082948,
		-0.768292, -0.172942, 0.616293,
		-0.574774, -0.237345, -0.783136,
		29.453053, 28.275211, 34.863605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857998, 27.789549, 35.537334>,  <29.855394, 28.441353, 35.411800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857998, 27.789549, 35.537334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715862, 27.832453, 35.165909>,  <29.630581, 27.858196, 34.943054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715862, 27.832453, 35.165909>,  <29.857998, 27.789549, 35.537334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715862, 27.832453, 35.165909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501635, -0.816343, -0.286263,
		-0.788731, -0.567520, 0.236273,
		-0.355340, 0.107261, -0.928563,
		29.609261, 27.864632, 34.887341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796524, 27.089340, 35.324799>,  <29.857998, 27.789549, 35.537334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796524, 27.089340, 35.324799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827919, 27.330208, 35.006996>,  <29.846756, 27.474728, 34.816315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827919, 27.330208, 35.006996>,  <29.796524, 27.089340, 35.324799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827919, 27.330208, 35.006996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562731, -0.684613, -0.463291,
		-0.822906, -0.410729, -0.392592,
		0.078486, 0.602168, -0.794502,
		29.851465, 27.510859, 34.768646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578447, 26.750568, 34.648846>,  <29.796524, 27.089340, 35.324799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578447, 26.750568, 34.648846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834110, 27.048185, 34.571003>,  <29.987509, 27.226755, 34.524296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834110, 27.048185, 34.571003>,  <29.578447, 26.750568, 34.648846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834110, 27.048185, 34.571003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608339, -0.643938, -0.463970,
		-0.470531, 0.178162, -0.864210,
		0.639159, 0.744045, -0.194610,
		30.025858, 27.271399, 34.512619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662664, 26.921949, 33.858372>,  <29.578447, 26.750568, 34.648846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662664, 26.921949, 33.858372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979303, 26.967979, 34.098415>,  <30.169287, 26.995598, 34.242443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979303, 26.967979, 34.098415>,  <29.662664, 26.921949, 33.858372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979303, 26.967979, 34.098415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480062, -0.724733, -0.494270,
		0.378040, 0.679352, -0.628941,
		0.791597, 0.115077, 0.600109,
		30.216784, 27.002502, 34.278446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314512, 27.324501, 33.548431>,  <29.662664, 26.921949, 33.858372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314512, 27.324501, 33.548431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401773, 27.039501, 33.815189>,  <30.454130, 26.868502, 33.975246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401773, 27.039501, 33.815189>,  <30.314512, 27.324501, 33.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401773, 27.039501, 33.815189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381368, -0.566779, -0.730288,
		0.898313, 0.413649, 0.148079,
		0.218155, -0.712500, 0.666897,
		30.467220, 26.825750, 34.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066757, 27.249525, 33.669167>,  <30.314512, 27.324501, 33.548431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066757, 27.249525, 33.669167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825609, 26.930500, 33.677540>,  <30.680920, 26.739084, 33.682564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825609, 26.930500, 33.677540>,  <31.066757, 27.249525, 33.669167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825609, 26.930500, 33.677540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536420, -0.424623, -0.729349,
		0.590592, -0.428472, 0.683822,
		-0.602872, -0.797563, 0.020938,
		30.644747, 26.691231, 33.683823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713392, 27.488886, 33.354630>,  <31.066757, 27.249525, 33.669167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713392, 27.488886, 33.354630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057266, 27.689320, 33.314915>,  <32.263592, 27.809580, 33.291084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057266, 27.689320, 33.314915>,  <31.713392, 27.488886, 33.354630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057266, 27.689320, 33.314915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494799, 0.865137, 0.081925,
		0.126948, -0.021302, 0.991681,
		0.859685, 0.501083, -0.099287,
		32.315170, 27.839645, 33.285130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558577, 28.067198, 33.756199>,  <31.713392, 27.488886, 33.354630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558577, 28.067198, 33.756199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892668, 28.137157, 33.547661>,  <32.093124, 28.179134, 33.422539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892668, 28.137157, 33.547661>,  <31.558577, 28.067198, 33.756199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892668, 28.137157, 33.547661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249765, 0.965295, -0.076303,
		0.489908, 0.193944, 0.849927,
		0.835229, 0.174901, -0.521347,
		32.143238, 28.189627, 33.391258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865601, 28.700272, 34.013725>,  <31.558577, 28.067198, 33.756199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865601, 28.700272, 34.013725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017429, 28.622349, 33.651958>,  <32.108528, 28.575596, 33.434898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017429, 28.622349, 33.651958>,  <31.865601, 28.700272, 34.013725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017429, 28.622349, 33.651958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325442, 0.886986, -0.327634,
		0.866033, 0.418697, 0.273277,
		0.379572, -0.194806, -0.904420,
		32.131302, 28.563908, 33.380634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445774, 29.157028, 33.935024>,  <31.865601, 28.700272, 34.013725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445774, 29.157028, 33.935024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296486, 29.042944, 33.581898>,  <32.206913, 28.974493, 33.370022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296486, 29.042944, 33.581898>,  <32.445774, 29.157028, 33.935024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296486, 29.042944, 33.581898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229363, 0.950400, -0.210077,
		0.898943, 0.124079, -0.420127,
		-0.373223, -0.285209, -0.882814,
		32.184521, 28.957382, 33.317055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680702, 29.704901, 33.359241>,  <32.445774, 29.157028, 33.935024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680702, 29.704901, 33.359241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338024, 29.505171, 33.307480>,  <32.132416, 29.385334, 33.276421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338024, 29.505171, 33.307480>,  <32.680702, 29.704901, 33.359241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338024, 29.505171, 33.307480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458100, 0.851817, -0.254072,
		0.237095, -0.158382, -0.958489,
		-0.856697, -0.499323, -0.129406,
		32.081017, 29.355373, 33.268658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482727, 29.595139, 32.656052>,  <32.680702, 29.704901, 33.359241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482727, 29.595139, 32.656052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172943, 29.632559, 32.906315>,  <31.987072, 29.655012, 33.056473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172943, 29.632559, 32.906315>,  <32.482727, 29.595139, 32.656052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172943, 29.632559, 32.906315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240129, 0.871514, -0.427552,
		-0.585273, -0.481363, -0.652492,
		-0.774463, 0.093553, 0.625663,
		31.940603, 29.660625, 33.094013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979544, 29.835846, 32.282799>,  <32.482727, 29.595139, 32.656052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979544, 29.835846, 32.282799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889841, 29.940659, 32.658257>,  <31.836020, 30.003546, 32.883530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889841, 29.940659, 32.658257>,  <31.979544, 29.835846, 32.282799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889841, 29.940659, 32.658257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251224, 0.915076, -0.315473,
		-0.941592, -0.306556, -0.139384,
		-0.224257, 0.262030, 0.938642,
		31.822563, 30.019268, 32.939850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232073, 29.988529, 32.255257>,  <31.979544, 29.835846, 32.282799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232073, 29.988529, 32.255257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424580, 30.181135, 32.548248>,  <31.540083, 30.296700, 32.724045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424580, 30.181135, 32.548248>,  <31.232073, 29.988529, 32.255257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424580, 30.181135, 32.548248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378257, 0.867891, -0.322003,
		-0.790763, -0.122097, 0.599822,
		0.481265, 0.481516, 0.732480,
		31.568958, 30.325590, 32.767994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713627, 30.417336, 32.574348>,  <31.232073, 29.988529, 32.255257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713627, 30.417336, 32.574348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052345, 30.589458, 32.699421>,  <31.255577, 30.692732, 32.774464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052345, 30.589458, 32.699421>,  <30.713627, 30.417336, 32.574348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052345, 30.589458, 32.699421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414299, 0.902241, -0.119656,
		-0.333605, -0.028221, 0.942290,
		0.846796, 0.430307, 0.312684,
		31.306385, 30.718552, 32.793224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624701, 30.852859, 33.093731>,  <30.713627, 30.417336, 32.574348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624701, 30.852859, 33.093731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951387, 30.972515, 32.896355>,  <31.147400, 31.044308, 32.777927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.951387, 30.972515, 32.896355>,  <30.624701, 30.852859, 33.093731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951387, 30.972515, 32.896355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393808, 0.913983, -0.097725,
		0.421766, 0.274136, 0.864270,
		0.816718, 0.299139, -0.493444,
		31.196404, 31.062258, 32.748322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734507, 31.528141, 33.447090>,  <30.624701, 30.852859, 33.093731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734507, 31.528141, 33.447090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956224, 31.539732, 33.114365>,  <31.089254, 31.546686, 32.914730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956224, 31.539732, 33.114365>,  <30.734507, 31.528141, 33.447090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956224, 31.539732, 33.114365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302736, 0.937960, -0.169060,
		0.775312, 0.345529, 0.528677,
		0.554293, 0.028976, -0.831817,
		31.122513, 31.548424, 32.864819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161018, 32.145927, 33.453156>,  <30.734507, 31.528141, 33.447090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161018, 32.145927, 33.453156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147995, 32.046963, 33.065811>,  <31.140181, 31.987585, 32.833405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.147995, 32.046963, 33.065811>,  <31.161018, 32.145927, 33.453156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147995, 32.046963, 33.065811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338924, 0.914204, -0.222176,
		0.940250, 0.320968, -0.113618,
		-0.032559, -0.247409, -0.968364,
		31.138227, 31.972740, 32.775303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492996, 32.694107, 33.051579>,  <31.161018, 32.145927, 33.453156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492996, 32.694107, 33.051579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247221, 32.508354, 32.796452>,  <31.099756, 32.396900, 32.643375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247221, 32.508354, 32.796452>,  <31.492996, 32.694107, 33.051579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247221, 32.508354, 32.796452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311101, 0.885528, -0.345044,
		0.725038, -0.013584, -0.688575,
		-0.614440, -0.464387, -0.637816,
		31.062889, 32.369038, 32.605106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410456, 33.149113, 32.504684>,  <31.492996, 32.694107, 33.051579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410456, 33.149113, 32.504684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097979, 32.921242, 32.402542>,  <30.910492, 32.784519, 32.341259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097979, 32.921242, 32.402542>,  <31.410456, 33.149113, 32.504684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097979, 32.921242, 32.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469615, 0.805742, -0.360890,
		0.411339, -0.162008, -0.896969,
		-0.781193, -0.569678, -0.255351,
		30.863621, 32.750340, 32.325935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250227, 33.303528, 31.790062>,  <31.410456, 33.149113, 32.504684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250227, 33.303528, 31.790062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913847, 33.134308, 31.925018>,  <30.712019, 33.032776, 32.005993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.913847, 33.134308, 31.925018>,  <31.250227, 33.303528, 31.790062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913847, 33.134308, 31.925018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538664, 0.595219, -0.596285,
		0.051440, -0.683185, -0.728432,
		-0.840949, -0.423053, 0.337389,
		30.661562, 33.007393, 32.026234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765448, 33.404499, 31.258535>,  <31.250227, 33.303528, 31.790062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765448, 33.404499, 31.258535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529308, 33.275688, 31.554586>,  <30.387625, 33.198402, 31.732218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.529308, 33.275688, 31.554586>,  <30.765448, 33.404499, 31.258535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529308, 33.275688, 31.554586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740601, 0.580715, -0.338054,
		-0.320939, -0.747708, -0.581318,
		-0.590346, -0.322030, 0.740127,
		30.352205, 33.179077, 31.776625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085913, 33.385006, 31.036343>,  <30.765448, 33.404499, 31.258535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085913, 33.385006, 31.036343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052187, 33.410149, 31.434124>,  <30.031952, 33.425232, 31.672792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052187, 33.410149, 31.434124>,  <30.085913, 33.385006, 31.036343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052187, 33.410149, 31.434124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744655, 0.659171, -0.104797,
		-0.662103, -0.749362, -0.008772,
		-0.084313, 0.062855, 0.994455,
		30.026892, 33.429005, 31.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324841, 33.335117, 31.159122>,  <30.085913, 33.385006, 31.036343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324841, 33.335117, 31.159122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492884, 33.502544, 31.481194>,  <29.593710, 33.603001, 31.674437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.492884, 33.502544, 31.481194>,  <29.324841, 33.335117, 31.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.492884, 33.502544, 31.481194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746791, 0.663556, 0.044694,
		-0.515571, -0.620074, 0.591349,
		0.420107, 0.418571, 0.805176,
		29.618916, 33.628117, 31.722746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772287, 33.369488, 31.649118>,  <29.324841, 33.335117, 31.159122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772287, 33.369488, 31.649118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055300, 33.634262, 31.748106>,  <29.225107, 33.793125, 31.807499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.055300, 33.634262, 31.748106>,  <28.772287, 33.369488, 31.649118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055300, 33.634262, 31.748106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696945, 0.711530, 0.089400,
		-0.116906, -0.235727, 0.964762,
		0.707531, 0.661935, 0.247471,
		29.267559, 33.832844, 31.822348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422939, 33.823650, 31.921789>,  <28.772287, 33.369488, 31.649118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422939, 33.823650, 31.921789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767029, 34.026924, 31.938597>,  <28.973482, 34.148888, 31.948681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767029, 34.026924, 31.938597>,  <28.422939, 33.823650, 31.921789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767029, 34.026924, 31.938597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507894, 0.846557, 0.159326,
		0.045395, -0.158397, 0.986331,
		0.860222, 0.508185, 0.042020,
		29.025095, 34.179379, 31.951202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425018, 34.200977, 32.487938>,  <28.422939, 33.823650, 31.921789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425018, 34.200977, 32.487938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701799, 34.392284, 32.271618>,  <28.867868, 34.507069, 32.141827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701799, 34.392284, 32.271618>,  <28.425018, 34.200977, 32.487938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701799, 34.392284, 32.271618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502678, 0.856845, 0.114596,
		0.518188, 0.192553, 0.833309,
		0.691951, 0.478269, -0.540798,
		28.909384, 34.535767, 32.109379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745031, 34.747772, 32.848846>,  <28.425018, 34.200977, 32.487938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745031, 34.747772, 32.848846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742586, 34.851398, 32.462509>,  <28.741119, 34.913574, 32.230705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742586, 34.851398, 32.462509>,  <28.745031, 34.747772, 32.848846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742586, 34.851398, 32.462509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492442, 0.839847, 0.228382,
		0.870324, 0.477017, 0.122440,
		-0.006111, 0.259061, -0.965842,
		28.740753, 34.929115, 32.172756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673780, 35.467266, 32.928791>,  <28.745031, 34.747772, 32.848846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673780, 35.467266, 32.928791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632177, 35.427574, 32.532948>,  <28.607216, 35.403759, 32.295441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632177, 35.427574, 32.532948>,  <28.673780, 35.467266, 32.928791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632177, 35.427574, 32.532948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355438, 0.933009, -0.056200,
		0.928895, 0.345901, -0.132314,
		-0.104010, -0.099233, -0.989614,
		28.600975, 35.397804, 32.236065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850721, 36.073807, 32.687584>,  <28.673780, 35.467266, 32.928791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850721, 36.073807, 32.687584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617384, 35.920662, 32.401054>,  <28.477381, 35.828773, 32.229137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.617384, 35.920662, 32.401054>,  <28.850721, 36.073807, 32.687584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617384, 35.920662, 32.401054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532243, 0.846380, -0.018939,
		0.613536, 0.370212, -0.697508,
		-0.583345, -0.382863, -0.716327,
		28.442381, 35.805801, 32.186157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781179, 36.517189, 32.160797>,  <28.850721, 36.073807, 32.687584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781179, 36.517189, 32.160797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469181, 36.283379, 32.071419>,  <28.281982, 36.143093, 32.017792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469181, 36.283379, 32.071419>,  <28.781179, 36.517189, 32.160797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469181, 36.283379, 32.071419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556297, 0.811209, -0.180203,
		0.286594, -0.016256, -0.957914,
		-0.779998, -0.584530, -0.223445,
		28.235182, 36.108021, 32.004387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493055, 36.767895, 31.472076>,  <28.781179, 36.517189, 32.160797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493055, 36.767895, 31.472076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201641, 36.586674, 31.677593>,  <28.026793, 36.477943, 31.800903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201641, 36.586674, 31.677593>,  <28.493055, 36.767895, 31.472076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201641, 36.586674, 31.677593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646378, 0.702984, -0.296662,
		-0.226784, -0.548232, -0.804991,
		-0.728535, -0.453051, 0.513791,
		27.983080, 36.450760, 31.831730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694626, 37.370831, 31.921223>,  <28.493055, 36.767895, 31.472076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694626, 37.370831, 31.921223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958979, 37.118565, 32.083946>,  <29.117590, 36.967205, 32.181580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958979, 37.118565, 32.083946>,  <28.694626, 37.370831, 31.921223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958979, 37.118565, 32.083946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726363, 0.673851, -0.135358,
		-0.188763, 0.384946, 0.903430,
		0.660883, -0.630667, 0.406808,
		29.157244, 36.929363, 32.205990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256849, 37.588287, 32.497204>,  <28.694626, 37.370831, 31.921223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256849, 37.588287, 32.497204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409803, 37.302601, 32.262711>,  <29.501575, 37.131187, 32.122013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409803, 37.302601, 32.262711>,  <29.256849, 37.588287, 32.497204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409803, 37.302601, 32.262711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674667, 0.649321, -0.351006,
		0.631351, -0.261295, 0.730151,
		0.382386, -0.714217, -0.586237,
		29.524519, 37.088337, 32.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020388, 37.644333, 32.748684>,  <29.256849, 37.588287, 32.497204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020388, 37.644333, 32.748684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994381, 37.944042, 33.012310>,  <29.978777, 38.123867, 33.170486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.994381, 37.944042, 33.012310>,  <30.020388, 37.644333, 32.748684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994381, 37.944042, 33.012310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221265, -0.633193, 0.741693,
		0.973044, 0.194050, -0.124620,
		-0.065017, 0.749274, 0.659061,
		29.974876, 38.168823, 33.210030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584705, 37.585106, 33.183178>,  <30.020388, 37.644333, 32.748684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584705, 37.585106, 33.183178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274143, 37.748917, 33.374794>,  <30.087807, 37.847202, 33.489765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.274143, 37.748917, 33.374794>,  <30.584705, 37.585106, 33.183178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.274143, 37.748917, 33.374794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101574, -0.668855, 0.736421,
		0.621997, 0.620418, 0.477704,
		-0.776404, 0.409529, 0.479044,
		30.041222, 37.871777, 33.518509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797565, 37.813122, 33.821999>,  <30.584705, 37.585106, 33.183178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797565, 37.813122, 33.821999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422714, 37.675941, 33.847855>,  <30.197803, 37.593632, 33.863369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422714, 37.675941, 33.847855>,  <30.797565, 37.813122, 33.821999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422714, 37.675941, 33.847855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295076, -0.679752, 0.671467,
		-0.186343, 0.648322, 0.738210,
		-0.937127, -0.342951, 0.064637,
		30.141577, 37.573055, 33.867245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670940, 37.840622, 34.535046>,  <30.797565, 37.813122, 33.821999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670940, 37.840622, 34.535046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451019, 37.541061, 34.683025>,  <30.319067, 37.361324, 34.771812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451019, 37.541061, 34.683025>,  <30.670940, 37.840622, 34.535046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451019, 37.541061, 34.683025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077644, 0.395155, 0.915327,
		-0.831677, 0.531975, -0.159110,
		-0.549805, -0.748902, 0.369946,
		30.286077, 37.316391, 34.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421978, 38.099533, 35.109802>,  <30.670940, 37.840622, 34.535046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421978, 38.099533, 35.109802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364670, 37.707016, 35.161240>,  <30.330284, 37.471504, 35.192101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364670, 37.707016, 35.161240>,  <30.421978, 38.099533, 35.109802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364670, 37.707016, 35.161240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249534, 0.089920, 0.964182,
		-0.957709, 0.170228, 0.231983,
		-0.143271, -0.981293, 0.128595,
		30.321688, 37.412628, 35.199818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.935120, 37.907673, 35.710175>,  <30.421978, 38.099533, 35.109802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.935120, 37.907673, 35.710175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207956, 37.624653, 35.636284>,  <30.371658, 37.454842, 35.591949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207956, 37.624653, 35.636284>,  <29.935120, 37.907673, 35.710175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207956, 37.624653, 35.636284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194872, -0.067601, 0.978496,
		-0.704822, -0.703423, 0.091771,
		0.682093, -0.707549, -0.184724,
		30.412584, 37.412388, 35.580868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833382, 37.496544, 36.287441>,  <29.935120, 37.907673, 35.710175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833382, 37.496544, 36.287441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180319, 37.414154, 36.106205>,  <30.388481, 37.364719, 35.997463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180319, 37.414154, 36.106205>,  <29.833382, 37.496544, 36.287441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180319, 37.414154, 36.106205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440185, -0.107396, 0.891461,
		-0.232276, -0.972647, -0.002483,
		0.867343, -0.205972, -0.453090,
		30.440521, 37.352364, 35.970280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169542, 36.750504, 36.571457>,  <29.833382, 37.496544, 36.287441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169542, 36.750504, 36.571457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448780, 36.986286, 36.408875>,  <30.616323, 37.127754, 36.311325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448780, 36.986286, 36.408875>,  <30.169542, 36.750504, 36.571457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448780, 36.986286, 36.408875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549168, -0.076547, 0.832199,
		0.459431, -0.804167, -0.377146,
		0.698096, 0.589454, -0.406455,
		30.658209, 37.163124, 36.286938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808268, 36.428417, 36.618645>,  <30.169542, 36.750504, 36.571457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808268, 36.428417, 36.618645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895348, 36.818821, 36.619499>,  <30.947596, 37.053062, 36.620010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.895348, 36.818821, 36.619499>,  <30.808268, 36.428417, 36.618645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895348, 36.818821, 36.619499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583577, -0.131920, 0.801271,
		0.782332, -0.173193, -0.598298,
		0.217702, 0.976013, 0.002134,
		30.960659, 37.111626, 36.620140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480762, 36.427891, 36.782238>,  <30.808268, 36.428417, 36.618645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480762, 36.427891, 36.782238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367489, 36.802784, 36.863628>,  <31.299524, 37.027721, 36.912460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367489, 36.802784, 36.863628>,  <31.480762, 36.427891, 36.782238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367489, 36.802784, 36.863628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513925, -0.030832, 0.857281,
		0.809746, 0.347337, -0.472937,
		-0.283184, 0.937233, 0.203471,
		31.282534, 37.083954, 36.924671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117947, 36.710522, 37.019249>,  <31.480762, 36.427891, 36.782238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117947, 36.710522, 37.019249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813410, 36.937065, 37.145489>,  <31.630688, 37.072990, 37.221233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813410, 36.937065, 37.145489>,  <32.117947, 36.710522, 37.019249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813410, 36.937065, 37.145489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378117, -0.007562, 0.925727,
		0.526680, 0.824124, -0.208392,
		-0.761338, 0.566359, 0.315598,
		31.585009, 37.106972, 37.240170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401627, 37.294174, 37.360775>,  <32.117947, 36.710522, 37.019249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401627, 37.294174, 37.360775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022026, 37.270248, 37.484592>,  <31.794266, 37.255894, 37.558884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022026, 37.270248, 37.484592>,  <32.401627, 37.294174, 37.360775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022026, 37.270248, 37.484592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313694, -0.277166, 0.908171,
		0.031476, 0.958959, 0.281793,
		-0.949002, -0.059812, 0.309544,
		31.737326, 37.252304, 37.577454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346039, 37.570007, 38.013588>,  <32.401627, 37.294174, 37.360775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346039, 37.570007, 38.013588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995277, 37.378284, 38.028030>,  <31.784821, 37.263252, 38.036697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995277, 37.378284, 38.028030>,  <32.346039, 37.570007, 38.013588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995277, 37.378284, 38.028030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257837, -0.405657, 0.876905,
		-0.405657, 0.778273, 0.479306,
		-0.876905, -0.479306, 0.036109,
		31.732206, 37.234493, 38.038864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298836, 37.529747, 38.698051>,  <32.346039, 37.570007, 38.013588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298836, 37.529747, 38.698051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016827, 37.282928, 38.558228>,  <31.847620, 37.134838, 38.474335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016827, 37.282928, 38.558228>,  <32.298836, 37.529747, 38.698051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016827, 37.282928, 38.558228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096657, -0.571907, 0.814604,
		-0.702565, 0.540530, 0.462850,
		-0.705025, -0.617050, -0.349556,
		31.805319, 37.097813, 38.453362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865208, 37.389175, 39.230373>,  <32.298836, 37.529747, 38.698051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865208, 37.389175, 39.230373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836687, 37.082169, 38.975555>,  <31.819574, 36.897964, 38.822662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836687, 37.082169, 38.975555>,  <31.865208, 37.389175, 39.230373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836687, 37.082169, 38.975555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043961, -0.640472, 0.766723,
		-0.996486, 0.026662, 0.079406,
		-0.071300, -0.767519, -0.637049,
		31.815298, 36.851913, 38.784439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343805, 36.955044, 39.449421>,  <31.865208, 37.389175, 39.230373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343805, 36.955044, 39.449421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557800, 36.699562, 39.228210>,  <31.686197, 36.546272, 39.095482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557800, 36.699562, 39.228210>,  <31.343805, 36.955044, 39.449421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557800, 36.699562, 39.228210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122828, -0.588828, 0.798871,
		-0.835885, -0.495312, -0.236563,
		0.534986, -0.638708, -0.553031,
		31.718296, 36.507950, 39.062302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083450, 36.240135, 39.503391>,  <31.343805, 36.955044, 39.449421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083450, 36.240135, 39.503391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442722, 36.183235, 39.337002>,  <31.658285, 36.149094, 39.237167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442722, 36.183235, 39.337002>,  <31.083450, 36.240135, 39.503391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442722, 36.183235, 39.337002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094776, -0.861299, 0.499181,
		-0.429285, -0.487780, -0.760122,
		0.898182, -0.142249, -0.415973,
		31.712177, 36.140560, 39.212212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016777, 35.655079, 39.264751>,  <31.083450, 36.240135, 39.503391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016777, 35.655079, 39.264751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416117, 35.656784, 39.287647>,  <31.655722, 35.657806, 39.301384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416117, 35.656784, 39.287647>,  <31.016777, 35.655079, 39.264751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416117, 35.656784, 39.287647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022235, -0.890625, 0.454195,
		0.052921, -0.454719, -0.889062,
		0.998351, 0.004268, 0.057243,
		31.715622, 35.658066, 39.304821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232447, 34.911552, 39.186344>,  <31.016777, 35.655079, 39.264751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232447, 34.911552, 39.186344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521856, 35.109959, 39.378380>,  <31.695501, 35.229000, 39.493603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521856, 35.109959, 39.378380>,  <31.232447, 34.911552, 39.186344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521856, 35.109959, 39.378380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183216, -0.808522, 0.559217,
		0.665542, -0.316646, -0.675862,
		0.723523, 0.496011, 0.480091,
		31.738913, 35.258762, 39.522408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791897, 34.476437, 39.097309>,  <31.232447, 34.911552, 39.186344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791897, 34.476437, 39.097309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846247, 34.722832, 39.407688>,  <31.878857, 34.870670, 39.593914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846247, 34.722832, 39.407688>,  <31.791897, 34.476437, 39.097309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846247, 34.722832, 39.407688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152129, -0.786895, 0.598041,
		0.978976, 0.036785, -0.200630,
		0.135875, 0.615990, 0.775948,
		31.887009, 34.907627, 39.640472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418877, 34.312225, 39.446217>,  <31.791897, 34.476437, 39.097309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418877, 34.312225, 39.446217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200241, 34.478115, 39.737217>,  <32.069061, 34.577648, 39.911816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200241, 34.478115, 39.737217>,  <32.418877, 34.312225, 39.446217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200241, 34.478115, 39.737217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124002, -0.819092, 0.560101,
		0.828172, 0.396354, 0.396277,
		-0.546585, 0.414720, 0.727497,
		32.036266, 34.602531, 39.955467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787556, 34.202904, 40.017479>,  <32.418877, 34.312225, 39.446217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787556, 34.202904, 40.017479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430843, 34.293011, 40.174442>,  <32.216816, 34.347073, 40.268620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.430843, 34.293011, 40.174442>,  <32.787556, 34.202904, 40.017479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430843, 34.293011, 40.174442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198361, -0.584832, 0.786527,
		0.406667, 0.779248, 0.476858,
		-0.891782, 0.225265, 0.392404,
		32.163307, 34.360592, 40.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870110, 34.334869, 40.692875>,  <32.787556, 34.202904, 40.017479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870110, 34.334869, 40.692875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484119, 34.232445, 40.670036>,  <32.252525, 34.170990, 40.656334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484119, 34.232445, 40.670036>,  <32.870110, 34.334869, 40.692875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484119, 34.232445, 40.670036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096671, -0.549366, 0.829971,
		-0.243893, 0.795379, 0.554877,
		-0.964972, -0.256065, -0.057096,
		32.194630, 34.155624, 40.652908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584286, 34.454170, 41.341949>,  <32.870110, 34.334869, 40.692875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584286, 34.454170, 41.341949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300915, 34.226608, 41.174870>,  <32.130894, 34.090069, 41.074619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300915, 34.226608, 41.174870>,  <32.584286, 34.454170, 41.341949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300915, 34.226608, 41.174870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074141, -0.528566, 0.845648,
		-0.701878, 0.630050, 0.332272,
		-0.708428, -0.568907, -0.417702,
		32.088387, 34.055935, 41.049561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113075, 34.351585, 41.808098>,  <32.584286, 34.454170, 41.341949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113075, 34.351585, 41.808098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036263, 34.036228, 41.574326>,  <31.990173, 33.847012, 41.434063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036263, 34.036228, 41.574326>,  <32.113075, 34.351585, 41.808098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036263, 34.036228, 41.574326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191819, -0.553870, 0.810206,
		-0.962459, 0.267693, -0.044866,
		-0.192036, -0.788396, -0.584426,
		31.978651, 33.799709, 41.398998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536505, 34.088428, 42.203362>,  <32.113075, 34.351585, 41.808098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536505, 34.088428, 42.203362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670746, 33.810028, 41.949444>,  <31.751289, 33.642990, 41.797092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670746, 33.810028, 41.949444>,  <31.536505, 34.088428, 42.203362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670746, 33.810028, 41.949444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171033, -0.707691, 0.685508,
		-0.926347, -0.121487, -0.356541,
		0.335601, -0.695998, -0.634790,
		31.771425, 33.601227, 41.759007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096790, 33.568180, 42.226364>,  <31.536505, 34.088428, 42.203362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096790, 33.568180, 42.226364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444704, 33.404591, 42.115936>,  <31.653452, 33.306438, 42.049679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444704, 33.404591, 42.115936>,  <31.096790, 33.568180, 42.226364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444704, 33.404591, 42.115936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139841, -0.740862, 0.656938,
		-0.473200, -0.532789, -0.701583,
		0.869785, -0.408973, -0.276070,
		31.705639, 33.281898, 42.033115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035404, 32.967777, 42.402081>,  <31.096790, 33.568180, 42.226364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035404, 32.967777, 42.402081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427921, 32.936954, 42.331509>,  <31.663431, 32.918461, 42.289165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427921, 32.936954, 42.331509>,  <31.035404, 32.967777, 42.402081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427921, 32.936954, 42.331509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074316, -0.693782, 0.716341,
		-0.177603, -0.716051, -0.675076,
		0.981292, -0.077056, -0.176432,
		31.722309, 32.913837, 42.278580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166277, 32.256237, 42.187073>,  <31.035404, 32.967777, 42.402081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166277, 32.256237, 42.187073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510420, 32.403584, 42.327980>,  <31.716906, 32.491989, 42.412525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510420, 32.403584, 42.327980>,  <31.166277, 32.256237, 42.187073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510420, 32.403584, 42.327980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087812, -0.787932, 0.609469,
		0.502069, -0.493428, -0.710250,
		0.860358, 0.368364, 0.352267,
		31.768528, 32.514091, 42.433659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483461, 31.656727, 42.448875>,  <31.166277, 32.256237, 42.187073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483461, 31.656727, 42.448875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686232, 31.961542, 42.610035>,  <31.807894, 32.144432, 42.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686232, 31.961542, 42.610035>,  <31.483461, 31.656727, 42.448875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686232, 31.961542, 42.610035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231218, -0.570485, 0.788089,
		0.830400, -0.306345, -0.465390,
		0.506925, 0.762036, 0.402898,
		31.838310, 32.190151, 42.730904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124310, 31.355896, 42.632740>,  <31.483461, 31.656727, 42.448875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124310, 31.355896, 42.632740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081329, 31.692854, 42.843956>,  <32.055542, 31.895029, 42.970684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081329, 31.692854, 42.843956>,  <32.124310, 31.355896, 42.632740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081329, 31.692854, 42.843956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295833, -0.479964, 0.825904,
		0.949177, 0.244958, -0.197634,
		-0.107454, 0.842396, 0.528037,
		32.049091, 31.945572, 43.002369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753460, 31.379915, 43.106838>,  <32.124310, 31.355896, 42.632740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753460, 31.379915, 43.106838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448647, 31.595390, 43.250572>,  <32.265759, 31.724676, 43.336815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448647, 31.595390, 43.250572>,  <32.753460, 31.379915, 43.106838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448647, 31.595390, 43.250572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180232, -0.356553, 0.916726,
		0.621954, 0.763337, 0.174615,
		-0.762030, 0.538690, 0.359338,
		32.220039, 31.756998, 43.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991867, 31.860365, 43.702770>,  <32.753460, 31.379915, 43.106838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991867, 31.860365, 43.702770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599346, 31.797098, 43.746639>,  <32.363834, 31.759138, 43.772961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599346, 31.797098, 43.746639>,  <32.991867, 31.860365, 43.702770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599346, 31.797098, 43.746639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159441, -0.348866, 0.923510,
		-0.107807, 0.923730, 0.367561,
		-0.981303, -0.158165, 0.109671,
		32.304955, 31.749649, 43.779541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850018, 31.830614, 44.338470>,  <32.991867, 31.860365, 43.702770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850018, 31.830614, 44.338470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486923, 31.695684, 44.238689>,  <32.269066, 31.614727, 44.178822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486923, 31.695684, 44.238689>,  <32.850018, 31.830614, 44.338470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486923, 31.695684, 44.238689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036095, -0.529592, 0.847484,
		-0.417988, 0.778295, 0.468554,
		-0.907735, -0.337326, -0.249456,
		32.214603, 31.594486, 44.163853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487705, 31.806150, 44.978622>,  <32.850018, 31.830614, 44.338470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487705, 31.806150, 44.978622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312309, 31.540720, 44.736168>,  <32.207073, 31.381462, 44.590694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312309, 31.540720, 44.736168>,  <32.487705, 31.806150, 44.978622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312309, 31.540720, 44.736168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069989, -0.647166, 0.759130,
		-0.896008, 0.375292, 0.237331,
		-0.438488, -0.663576, -0.606132,
		32.180763, 31.341648, 44.554329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.977808, 31.577806, 45.363514>,  <32.487705, 31.806150, 44.978622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.977808, 31.577806, 45.363514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013828, 31.308178, 45.070251>,  <32.035439, 31.146400, 44.894295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013828, 31.308178, 45.070251>,  <31.977808, 31.577806, 45.363514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013828, 31.308178, 45.070251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038072, -0.733281, 0.678860,
		-0.995209, -0.089044, -0.040368,
		0.090049, -0.674071, -0.733158,
		32.040844, 31.105957, 44.850304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577101, 31.006668, 45.503635>,  <31.977808, 31.577806, 45.363514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577101, 31.006668, 45.503635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845501, 30.868402, 45.241253>,  <32.006542, 30.785444, 45.083824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845501, 30.868402, 45.241253>,  <31.577101, 31.006668, 45.503635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845501, 30.868402, 45.241253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164751, -0.793059, 0.586443,
		-0.722917, -0.501575, -0.475199,
		0.671005, -0.345660, -0.655951,
		32.046803, 30.764704, 45.044468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575562, 30.359987, 45.691429>,  <31.577101, 31.006668, 45.503635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575562, 30.359987, 45.691429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870821, 30.332806, 45.422947>,  <32.047977, 30.316496, 45.261856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870821, 30.332806, 45.422947>,  <31.575562, 30.359987, 45.691429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870821, 30.332806, 45.422947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338505, -0.823302, 0.455619,
		-0.583565, -0.563522, -0.584718,
		0.738150, -0.067954, -0.671205,
		32.092266, 30.312420, 45.221584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578451, 29.699587, 45.423782>,  <31.575562, 30.359987, 45.691429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578451, 29.699587, 45.423782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949219, 29.848038, 45.401573>,  <32.171680, 29.937109, 45.388248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949219, 29.848038, 45.401573>,  <31.578451, 29.699587, 45.423782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949219, 29.848038, 45.401573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356445, -0.824503, 0.439478,
		0.117327, -0.427151, -0.896536,
		0.926920, 0.371129, -0.055520,
		32.227295, 29.959377, 45.384918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953047, 29.190065, 45.122162>,  <31.578451, 29.699587, 45.423782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953047, 29.190065, 45.122162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205502, 29.441929, 45.303356>,  <32.356976, 29.593046, 45.412071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.205502, 29.441929, 45.303356>,  <31.953047, 29.190065, 45.122162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205502, 29.441929, 45.303356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430388, -0.770120, 0.470831,
		0.645317, -0.102198, -0.757048,
		0.631136, 0.629659, 0.452986,
		32.394844, 29.630827, 45.439251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573818, 28.904318, 44.925079>,  <31.953047, 29.190065, 45.122162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573818, 28.904318, 44.925079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645550, 29.130953, 45.246780>,  <32.688587, 29.266933, 45.439800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645550, 29.130953, 45.246780>,  <32.573818, 28.904318, 44.925079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645550, 29.130953, 45.246780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468922, -0.767890, 0.436413,
		0.864843, 0.298870, -0.403390,
		0.179328, 0.566587, 0.804252,
		32.699348, 29.300928, 45.488056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279610, 28.776497, 45.104401>,  <32.573818, 28.904318, 44.925079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279610, 28.776497, 45.104401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089645, 28.902176, 45.433216>,  <32.975666, 28.977583, 45.630505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089645, 28.902176, 45.433216>,  <33.279610, 28.776497, 45.104401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089645, 28.902176, 45.433216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502593, -0.669943, 0.546422,
		0.722402, 0.672649, 0.160246,
		-0.474906, 0.314198, 0.822036,
		32.947174, 28.996435, 45.679829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738972, 28.718054, 45.619427>,  <33.279610, 28.776497, 45.104401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738972, 28.718054, 45.619427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439659, 28.785002, 45.876198>,  <33.260071, 28.825171, 46.030258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439659, 28.785002, 45.876198>,  <33.738972, 28.718054, 45.619427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439659, 28.785002, 45.876198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558041, -0.364421, 0.745512,
		0.358707, 0.916070, 0.179289,
		-0.748277, 0.167370, 0.641925,
		33.215176, 28.835213, 46.068775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989395, 29.123209, 46.151970>,  <33.738972, 28.718054, 45.619427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989395, 29.123209, 46.151970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668877, 28.933443, 46.297768>,  <33.476566, 28.819584, 46.385246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668877, 28.933443, 46.297768>,  <33.989395, 29.123209, 46.151970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668877, 28.933443, 46.297768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538329, -0.305946, 0.785238,
		-0.261011, 0.825427, 0.500544,
		-0.801296, -0.474413, 0.364496,
		33.428490, 28.791119, 46.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948032, 29.204115, 46.885296>,  <33.989395, 29.123209, 46.151970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948032, 29.204115, 46.885296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746353, 28.871861, 46.790783>,  <33.625347, 28.672508, 46.734074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.746353, 28.871861, 46.790783>,  <33.948032, 29.204115, 46.885296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746353, 28.871861, 46.790783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491991, -0.501149, 0.711894,
		-0.709739, 0.242685, 0.661343,
		-0.504198, -0.830634, -0.236286,
		33.595093, 28.622671, 46.719898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675072, 28.907223, 47.560429>,  <33.948032, 29.204115, 46.885296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675072, 28.907223, 47.560429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653881, 28.590055, 47.317619>,  <33.641167, 28.399755, 47.171936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653881, 28.590055, 47.317619>,  <33.675072, 28.907223, 47.560429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653881, 28.590055, 47.317619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462339, -0.558272, 0.688893,
		-0.885119, -0.244154, 0.396173,
		-0.052976, -0.792919, -0.607020,
		33.637989, 28.352180, 47.135513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444447, 28.277048, 47.952923>,  <33.675072, 28.907223, 47.560429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444447, 28.277048, 47.952923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648972, 28.156208, 47.631104>,  <33.771687, 28.083704, 47.438011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.648972, 28.156208, 47.631104>,  <33.444447, 28.277048, 47.952923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648972, 28.156208, 47.631104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672146, -0.442791, 0.593427,
		-0.535522, -0.844198, -0.023347,
		0.511308, -0.302100, -0.804549,
		33.802364, 28.065578, 47.389740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494652, 27.558846, 47.956387>,  <33.444447, 28.277048, 47.952923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494652, 27.558846, 47.956387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806229, 27.705910, 47.753181>,  <33.993176, 27.794149, 47.631256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806229, 27.705910, 47.753181>,  <33.494652, 27.558846, 47.956387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806229, 27.705910, 47.753181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625511, -0.513153, 0.587716,
		-0.044608, -0.775563, -0.629691,
		0.778939, 0.367662, -0.508015,
		34.039909, 27.816208, 47.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943478, 27.072599, 47.805260>,  <33.494652, 27.558846, 47.956387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943478, 27.072599, 47.805260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337540, 27.020618, 47.760387>,  <33.573978, 26.989429, 47.733463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337540, 27.020618, 47.760387>,  <32.943478, 27.072599, 47.805260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337540, 27.020618, 47.760387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124871, -0.990849, 0.051234,
		-0.117811, -0.036465, -0.992366,
		0.985154, -0.129954, -0.112180,
		33.633087, 26.981632, 47.726734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197910, 26.530840, 47.288059>,  <32.943478, 27.072599, 47.805260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197910, 26.530840, 47.288059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460827, 26.570963, 47.586830>,  <33.618576, 26.595037, 47.766094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460827, 26.570963, 47.586830>,  <33.197910, 26.530840, 47.288059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460827, 26.570963, 47.586830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112529, -0.966929, 0.228880,
		0.745186, -0.234493, -0.624269,
		0.657294, 0.100310, 0.746929,
		33.658016, 26.601055, 47.810909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557945, 25.891130, 47.134686>,  <33.197910, 26.530840, 47.288059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557945, 25.891130, 47.134686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583168, 26.037947, 47.505913>,  <33.598301, 26.126038, 47.728649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.583168, 26.037947, 47.505913>,  <33.557945, 25.891130, 47.134686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583168, 26.037947, 47.505913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427872, -0.850060, 0.307121,
		0.901637, 0.377728, -0.210646,
		0.063054, 0.367041, 0.928065,
		33.602085, 26.148060, 47.784332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277039, 25.917740, 47.404205>,  <33.557945, 25.891130, 47.134686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277039, 25.917740, 47.404205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985153, 25.832224, 47.663994>,  <33.810020, 25.780914, 47.819866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985153, 25.832224, 47.663994>,  <34.277039, 25.917740, 47.404205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985153, 25.832224, 47.663994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194285, -0.975540, -0.102832,
		0.655567, 0.051143, 0.753403,
		-0.729716, -0.213788, 0.649469,
		33.766239, 25.768087, 47.858833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781029, 26.491911, 47.730583>,  <34.277039, 25.917740, 47.404205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781029, 26.491911, 47.730583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983746, 26.154367, 47.801083>,  <35.105377, 25.951841, 47.843384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983746, 26.154367, 47.801083>,  <34.781029, 26.491911, 47.730583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983746, 26.154367, 47.801083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195699, -0.311731, -0.929799,
		0.839562, 0.436721, -0.323125,
		0.506791, -0.843859, 0.176252,
		35.135784, 25.901209, 47.853958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531815, 26.339655, 47.571140>,  <34.781029, 26.491911, 47.730583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531815, 26.339655, 47.571140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208042, 26.111202, 47.516541>,  <35.013779, 25.974131, 47.483780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208042, 26.111202, 47.516541>,  <35.531815, 26.339655, 47.571140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208042, 26.111202, 47.516541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078462, 0.335562, -0.938745,
		0.581951, -0.749138, -0.316426,
		-0.809430, -0.571130, -0.136502,
		34.965214, 25.939863, 47.475590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596897, 25.781458, 47.051544>,  <35.531815, 26.339655, 47.571140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596897, 25.781458, 47.051544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256241, 25.991009, 47.045193>,  <35.051846, 26.116739, 47.041382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256241, 25.991009, 47.045193>,  <35.596897, 25.781458, 47.051544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256241, 25.991009, 47.045193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202128, 0.300343, -0.932168,
		-0.483576, -0.797085, -0.361676,
		-0.851644, 0.523879, -0.015875,
		35.000748, 26.148172, 47.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646313, 26.071978, 46.349308>,  <35.596897, 25.781458, 47.051544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646313, 26.071978, 46.349308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250183, 26.099180, 46.397686>,  <35.012505, 26.115501, 46.426712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250183, 26.099180, 46.397686>,  <35.646313, 26.071978, 46.349308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250183, 26.099180, 46.397686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102278, 0.231201, -0.967515,
		-0.093760, -0.970526, -0.222009,
		-0.990327, 0.068007, 0.120941,
		34.953083, 26.119581, 46.433968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190254, 25.638573, 45.836449>,  <35.646313, 26.071978, 46.349308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190254, 25.638573, 45.836449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981880, 25.952356, 45.971058>,  <34.856857, 26.140627, 46.051823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981880, 25.952356, 45.971058>,  <35.190254, 25.638573, 45.836449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981880, 25.952356, 45.971058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248901, 0.237511, -0.938955,
		-0.816501, -0.572896, 0.071525,
		-0.520936, 0.784461, 0.336523,
		34.825600, 26.187695, 46.072014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512859, 25.534256, 45.597958>,  <35.190254, 25.638573, 45.836449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512859, 25.534256, 45.597958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621475, 25.914633, 45.657253>,  <34.686646, 26.142859, 45.692829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621475, 25.914633, 45.657253>,  <34.512859, 25.534256, 45.597958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621475, 25.914633, 45.657253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130576, 0.189000, -0.973257,
		-0.953527, 0.244925, 0.175492,
		0.271543, 0.950942, 0.148236,
		34.702938, 26.199915, 45.701725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015289, 25.925388, 45.200314>,  <34.512859, 25.534256, 45.597958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015289, 25.925388, 45.200314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293194, 26.203131, 45.275330>,  <34.459938, 26.369776, 45.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293194, 26.203131, 45.275330>,  <34.015289, 25.925388, 45.200314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293194, 26.203131, 45.275330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136397, 0.383220, -0.913531,
		-0.706187, 0.609107, 0.360955,
		0.694764, 0.694356, 0.187544,
		34.501621, 26.411438, 45.331593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627472, 26.525425, 44.955429>,  <34.015289, 25.925388, 45.200314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627472, 26.525425, 44.955429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010944, 26.634523, 44.987755>,  <34.241028, 26.699984, 45.007153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010944, 26.634523, 44.987755>,  <33.627472, 26.525425, 44.955429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010944, 26.634523, 44.987755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089449, 0.558718, -0.824520,
		-0.270039, 0.783226, 0.560032,
		0.958685, 0.272747, 0.080817,
		34.298550, 26.716347, 45.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661991, 27.266350, 44.870842>,  <33.627472, 26.525425, 44.955429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661991, 27.266350, 44.870842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044121, 27.161943, 44.815369>,  <34.273399, 27.099300, 44.782085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.044121, 27.161943, 44.815369>,  <33.661991, 27.266350, 44.870842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.044121, 27.161943, 44.815369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101573, 0.730551, -0.675262,
		0.277571, 0.631004, 0.724422,
		0.955320, -0.261015, -0.138687,
		34.330715, 27.083639, 44.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007168, 27.920485, 44.689381>,  <33.661991, 27.266350, 44.870842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007168, 27.920485, 44.689381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271954, 27.632044, 44.607582>,  <34.430824, 27.458981, 44.558502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271954, 27.632044, 44.607582>,  <34.007168, 27.920485, 44.689381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271954, 27.632044, 44.607582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441399, 0.595543, -0.671190,
		0.605783, 0.354037, 0.712520,
		0.661962, -0.721101, -0.204498,
		34.470543, 27.415714, 44.546234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724892, 28.286985, 44.659290>,  <34.007168, 27.920485, 44.689381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724892, 28.286985, 44.659290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729877, 27.949217, 44.445076>,  <34.732868, 27.746555, 44.316547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729877, 27.949217, 44.445076>,  <34.724892, 28.286985, 44.659290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729877, 27.949217, 44.445076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402045, 0.494607, -0.770534,
		0.915535, -0.205704, 0.345661,
		0.012465, -0.844422, -0.535533,
		34.733616, 27.695890, 44.284416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373520, 28.261518, 44.394615>,  <34.724892, 28.286985, 44.659290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373520, 28.261518, 44.394615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146805, 28.016569, 44.174160>,  <35.010777, 27.869600, 44.041885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146805, 28.016569, 44.174160>,  <35.373520, 28.261518, 44.394615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146805, 28.016569, 44.174160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231843, 0.523382, -0.819952,
		0.790574, -0.592512, -0.154669,
		-0.566782, -0.612373, -0.551141,
		34.976768, 27.832857, 44.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703510, 28.193417, 43.771870>,  <35.373520, 28.261518, 44.394615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703510, 28.193417, 43.771870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325787, 28.099720, 43.679420>,  <35.099152, 28.043503, 43.623951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325787, 28.099720, 43.679420>,  <35.703510, 28.193417, 43.771870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325787, 28.099720, 43.679420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114272, 0.425234, -0.897841,
		0.308593, -0.874247, -0.374783,
		-0.944305, -0.234240, -0.231126,
		35.042496, 28.029448, 43.610081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748505, 27.843851, 43.160885>,  <35.703510, 28.193417, 43.771870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748505, 27.843851, 43.160885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389893, 28.014769, 43.207626>,  <35.174725, 28.117319, 43.235672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.389893, 28.014769, 43.207626>,  <35.748505, 27.843851, 43.160885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389893, 28.014769, 43.207626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115534, 0.480195, -0.869520,
		-0.427651, -0.766051, -0.479876,
		-0.896530, 0.427293, 0.116850,
		35.120934, 28.142956, 43.242680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564556, 27.985085, 42.464973>,  <35.748505, 27.843851, 43.160885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564556, 27.985085, 42.464973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307510, 28.200172, 42.683296>,  <35.153282, 28.329226, 42.814289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307510, 28.200172, 42.683296>,  <35.564556, 27.985085, 42.464973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307510, 28.200172, 42.683296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093994, 0.651652, -0.752671,
		-0.760401, -0.534981, -0.368219,
		-0.642616, 0.537722, 0.545802,
		35.114727, 28.361488, 42.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016109, 28.088795, 42.050251>,  <35.564556, 27.985085, 42.464973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016109, 28.088795, 42.050251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987984, 28.382051, 42.320824>,  <34.971107, 28.558004, 42.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987984, 28.382051, 42.320824>,  <35.016109, 28.088795, 42.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987984, 28.382051, 42.320824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058767, 0.673888, -0.736493,
		-0.995792, -0.091541, -0.004303,
		-0.070319, 0.733140, 0.676432,
		34.966888, 28.601994, 42.523754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537968, 28.422052, 41.804855>,  <35.016109, 28.088795, 42.050251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537968, 28.422052, 41.804855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687263, 28.702927, 42.047382>,  <34.776840, 28.871450, 42.192898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687263, 28.702927, 42.047382>,  <34.537968, 28.422052, 41.804855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687263, 28.702927, 42.047382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148536, 0.690350, -0.708064,
		-0.915767, 0.174218, 0.361967,
		0.373241, 0.702186, 0.606322,
		34.799236, 28.913582, 42.229279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106236, 28.984726, 41.776974>,  <34.537968, 28.422052, 41.804855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106236, 28.984726, 41.776974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425449, 29.165546, 41.936367>,  <34.616978, 29.274038, 42.032001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425449, 29.165546, 41.936367>,  <34.106236, 28.984726, 41.776974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425449, 29.165546, 41.936367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115636, 0.763848, -0.634952,
		-0.591412, 0.460635, 0.661851,
		0.798035, 0.452052, 0.398483,
		34.664860, 29.301163, 42.055912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880356, 29.707987, 41.904747>,  <34.106236, 28.984726, 41.776974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880356, 29.707987, 41.904747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279034, 29.702040, 41.872780>,  <34.518238, 29.698471, 41.853600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279034, 29.702040, 41.872780>,  <33.880356, 29.707987, 41.904747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279034, 29.702040, 41.872780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035421, 0.805421, -0.591643,
		0.073162, 0.592516, 0.802230,
		0.996691, -0.014870, -0.079913,
		34.578041, 29.697578, 41.848804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172432, 30.365471, 42.250629>,  <33.880356, 29.707987, 41.904747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172432, 30.365471, 42.250629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407932, 30.209217, 41.967567>,  <34.549232, 30.115465, 41.797729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407932, 30.209217, 41.967567>,  <34.172432, 30.365471, 42.250629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407932, 30.209217, 41.967567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260543, 0.737032, -0.623620,
		0.765171, 0.551533, 0.332153,
		0.588754, -0.390635, -0.707653,
		34.584560, 30.092026, 41.755272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543068, 30.955839, 42.002426>,  <34.172432, 30.365471, 42.250629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543068, 30.955839, 42.002426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536034, 30.667562, 41.725212>,  <34.531811, 30.494596, 41.558884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536034, 30.667562, 41.725212>,  <34.543068, 30.955839, 42.002426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536034, 30.667562, 41.725212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356568, 0.652087, -0.669061,
		0.934104, 0.235345, -0.268444,
		-0.017589, -0.720691, -0.693033,
		34.530758, 30.451355, 41.517303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464691, 31.443926, 41.534618>,  <34.543068, 30.955839, 42.002426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464691, 31.443926, 41.534618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438000, 31.096899, 41.337490>,  <34.421986, 30.888683, 41.219212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438000, 31.096899, 41.337490>,  <34.464691, 31.443926, 41.534618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438000, 31.096899, 41.337490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332053, 0.485075, -0.808977,
		0.940898, 0.109664, -0.320445,
		-0.066724, -0.867569, -0.492820,
		34.417984, 30.836628, 41.189644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872562, 31.446838, 40.826107>,  <34.464691, 31.443926, 41.534618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872562, 31.446838, 40.826107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603001, 31.152163, 40.803680>,  <34.441265, 30.975357, 40.790222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603001, 31.152163, 40.803680>,  <34.872562, 31.446838, 40.826107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603001, 31.152163, 40.803680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411501, 0.437289, -0.799653,
		0.613616, -0.515814, -0.597839,
		-0.673901, -0.736691, -0.056070,
		34.400829, 30.931156, 40.786861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803505, 31.408913, 40.135078>,  <34.872562, 31.446838, 40.826107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803505, 31.408913, 40.135078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470226, 31.229084, 40.263870>,  <34.270260, 31.121187, 40.341145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470226, 31.229084, 40.263870>,  <34.803505, 31.408913, 40.135078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470226, 31.229084, 40.263870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421280, 0.138883, -0.896233,
		0.358204, -0.882381, -0.305113,
		-0.833194, -0.449572, 0.321981,
		34.220268, 31.094213, 40.360466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715942, 30.964243, 39.637421>,  <34.803505, 31.408913, 40.135078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715942, 30.964243, 39.637421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372875, 31.024967, 39.833931>,  <34.167034, 31.061401, 39.951836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372875, 31.024967, 39.833931>,  <34.715942, 30.964243, 39.637421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372875, 31.024967, 39.833931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471843, 0.147364, -0.869280,
		-0.204364, -0.977362, -0.054758,
		-0.857671, 0.151812, 0.491277,
		34.115574, 31.070511, 39.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124378, 30.554653, 39.244537>,  <34.715942, 30.964243, 39.637421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124378, 30.554653, 39.244537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958809, 30.854029, 39.451805>,  <33.859467, 31.033655, 39.576168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.958809, 30.854029, 39.451805>,  <34.124378, 30.554653, 39.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958809, 30.854029, 39.451805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350557, 0.394269, -0.849506,
		-0.840105, -0.533281, 0.099173,
		-0.413925, 0.748440, 0.518173,
		33.834633, 31.078560, 39.607258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518246, 30.705122, 38.889393>,  <34.124378, 30.554653, 39.244537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518246, 30.705122, 38.889393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555805, 31.034847, 39.112713>,  <33.578339, 31.232681, 39.246704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555805, 31.034847, 39.112713>,  <33.518246, 30.705122, 38.889393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555805, 31.034847, 39.112713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391019, 0.546245, -0.740756,
		-0.915581, -0.148752, 0.373611,
		0.093894, 0.824311, 0.558296,
		33.583973, 31.282141, 39.280201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932068, 31.143660, 38.746986>,  <33.518246, 30.705122, 38.889393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932068, 31.143660, 38.746986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214287, 31.392603, 38.882557>,  <33.383617, 31.541969, 38.963898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214287, 31.392603, 38.882557>,  <32.932068, 31.143660, 38.746986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214287, 31.392603, 38.882557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155870, 0.602836, -0.782492,
		-0.691306, 0.499258, 0.522338,
		0.705549, 0.622358, 0.338925,
		33.425953, 31.579309, 38.984234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593056, 31.835655, 38.645721>,  <32.932068, 31.143660, 38.746986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593056, 31.835655, 38.645721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989368, 31.880888, 38.675568>,  <33.227158, 31.908028, 38.693474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989368, 31.880888, 38.675568>,  <32.593056, 31.835655, 38.645721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989368, 31.880888, 38.675568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013743, 0.631788, -0.775020,
		-0.134778, 0.766849, 0.627517,
		0.990781, 0.113080, 0.074613,
		33.286602, 31.914812, 38.697952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687183, 32.591690, 38.692493>,  <32.593056, 31.835655, 38.645721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687183, 32.591690, 38.692493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998528, 32.380260, 38.556988>,  <33.185333, 32.253403, 38.475685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998528, 32.380260, 38.556988>,  <32.687183, 32.591690, 38.692493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998528, 32.380260, 38.556988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075024, 0.614033, -0.785707,
		0.623315, 0.586150, 0.517597,
		0.778364, -0.528575, -0.338760,
		33.232037, 32.221687, 38.455360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192276, 33.064819, 38.658859>,  <32.687183, 32.591690, 38.692493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192276, 33.064819, 38.658859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323498, 32.773148, 38.418633>,  <33.402229, 32.598145, 38.274498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323498, 32.773148, 38.418633>,  <33.192276, 33.064819, 38.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323498, 32.773148, 38.418633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131753, 0.594219, -0.793438,
		0.935427, 0.339414, 0.098862,
		0.328050, -0.729179, -0.600568,
		33.421913, 32.554394, 38.238461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662811, 33.457748, 38.445786>,  <33.192276, 33.064819, 38.658859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662811, 33.457748, 38.445786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606934, 33.140091, 38.209202>,  <33.573406, 32.949497, 38.067253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606934, 33.140091, 38.209202>,  <33.662811, 33.457748, 38.445786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606934, 33.140091, 38.209202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066142, 0.603463, -0.794643,
		0.987983, -0.071887, -0.136827,
		-0.139694, -0.794144, -0.591457,
		33.565025, 32.901848, 38.031765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153194, 33.574783, 37.815166>,  <33.662811, 33.457748, 38.445786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153194, 33.574783, 37.815166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869423, 33.315117, 37.705402>,  <33.699162, 33.159317, 37.639542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.869423, 33.315117, 37.705402>,  <34.153194, 33.574783, 37.815166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869423, 33.315117, 37.705402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148343, 0.518171, -0.842314,
		0.688994, -0.556851, -0.463902,
		-0.709424, -0.649165, -0.274412,
		33.656597, 33.120369, 37.623077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222168, 33.492779, 37.034046>,  <34.153194, 33.574783, 37.815166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222168, 33.492779, 37.034046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848240, 33.365334, 37.096786>,  <33.623882, 33.288864, 37.134430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848240, 33.365334, 37.096786>,  <34.222168, 33.492779, 37.034046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848240, 33.365334, 37.096786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292232, 0.439197, -0.849533,
		0.201789, -0.839994, -0.503679,
		-0.934816, -0.318617, 0.156848,
		33.567795, 33.269749, 37.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225594, 33.132324, 36.524193>,  <34.222168, 33.492779, 37.034046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225594, 33.132324, 36.524193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870014, 33.259888, 36.655685>,  <33.656666, 33.336426, 36.734581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870014, 33.259888, 36.655685>,  <34.225594, 33.132324, 36.524193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870014, 33.259888, 36.655685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098499, 0.567827, -0.817233,
		-0.447285, -0.758859, -0.473358,
		-0.888951, 0.318911, 0.328728,
		33.603329, 33.355560, 36.754303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895435, 33.382557, 35.928505>,  <34.225594, 33.132324, 36.524193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895435, 33.382557, 35.928505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639328, 33.500839, 36.212082>,  <33.485664, 33.571808, 36.382229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639328, 33.500839, 36.212082>,  <33.895435, 33.382557, 35.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639328, 33.500839, 36.212082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346788, 0.712246, -0.610282,
		-0.685411, -0.636601, -0.353483,
		-0.640273, 0.295711, 0.708947,
		33.447247, 33.589554, 36.424767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263706, 33.477261, 35.603138>,  <33.895435, 33.382557, 35.928505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263706, 33.477261, 35.603138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236557, 33.722900, 35.917660>,  <33.220268, 33.870285, 36.106373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236557, 33.722900, 35.917660>,  <33.263706, 33.477261, 35.603138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236557, 33.722900, 35.917660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149989, 0.772886, -0.616564,
		-0.986355, -0.159783, 0.039653,
		-0.067869, 0.614098, 0.786306,
		33.216198, 33.907131, 36.153553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620464, 33.850517, 35.577694>,  <33.263706, 33.477261, 35.603138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620464, 33.850517, 35.577694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882069, 34.079536, 35.775467>,  <33.039032, 34.216949, 35.894131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882069, 34.079536, 35.775467>,  <32.620464, 33.850517, 35.577694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882069, 34.079536, 35.775467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134821, 0.731342, -0.668553,
		-0.744378, 0.370578, 0.555494,
		0.654007, 0.572548, 0.494433,
		33.078270, 34.251301, 35.923798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473602, 34.481777, 35.372990>,  <32.620464, 33.850517, 35.577694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473602, 34.481777, 35.372990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800724, 34.567825, 35.586502>,  <32.996998, 34.619453, 35.714607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800724, 34.567825, 35.586502>,  <32.473602, 34.481777, 35.372990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800724, 34.567825, 35.586502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114596, 0.848061, -0.517359,
		-0.563971, 0.484267, 0.668896,
		0.817805, 0.215123, 0.533777,
		33.046066, 34.632362, 35.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439461, 35.206520, 35.659954>,  <32.473602, 34.481777, 35.372990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439461, 35.206520, 35.659954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827297, 35.109150, 35.649826>,  <33.059998, 35.050728, 35.643749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827297, 35.109150, 35.649826>,  <32.439461, 35.206520, 35.659954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827297, 35.109150, 35.649826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215704, 0.898839, -0.381522,
		0.115628, 0.364458, 0.924013,
		0.969588, -0.243428, -0.025316,
		33.118176, 35.036121, 35.642231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934116, 35.691795, 35.968407>,  <32.439461, 35.206520, 35.659954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934116, 35.691795, 35.968407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177174, 35.487381, 35.725224>,  <33.323006, 35.364735, 35.579311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177174, 35.487381, 35.725224>,  <32.934116, 35.691795, 35.968407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177174, 35.487381, 35.725224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366063, 0.859540, -0.356635,
		0.704820, -0.005846, 0.709362,
		0.607641, -0.511034, -0.607961,
		33.359467, 35.334072, 35.542835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674725, 35.838520, 36.030643>,  <32.934116, 35.691795, 35.968407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674725, 35.838520, 36.030643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666824, 35.677811, 35.664433>,  <33.662086, 35.581387, 35.444706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666824, 35.677811, 35.664433>,  <33.674725, 35.838520, 36.030643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666824, 35.677811, 35.664433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331697, 0.861211, -0.385088,
		0.943179, -0.311282, 0.116260,
		-0.019747, -0.401770, -0.915527,
		33.660900, 35.557278, 35.389774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363064, 35.835396, 35.723759>,  <33.674725, 35.838520, 36.030643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363064, 35.835396, 35.723759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096207, 35.839165, 35.425808>,  <33.936092, 35.841427, 35.247040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096207, 35.839165, 35.425808>,  <34.363064, 35.835396, 35.723759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096207, 35.839165, 35.425808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437029, 0.814712, -0.381117,
		0.603268, -0.579789, -0.547643,
		-0.667139, 0.009420, -0.744874,
		33.896065, 35.841991, 35.202347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104420, 35.776917, 36.032578>,  <34.363064, 35.835396, 35.723759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104420, 35.776917, 36.032578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024246, 35.570541, 35.699440>,  <34.976143, 35.446716, 35.499557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024246, 35.570541, 35.699440>,  <35.104420, 35.776917, 36.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024246, 35.570541, 35.699440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711673, -0.660912, 0.238151,
		-0.673310, -0.544980, 0.499651,
		-0.200438, -0.515938, -0.832846,
		34.964115, 35.415760, 35.449585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990517, 35.057621, 36.201008>,  <35.104420, 35.776917, 36.032578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990517, 35.057621, 36.201008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094147, 35.074825, 35.815048>,  <35.156326, 35.085148, 35.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094147, 35.074825, 35.815048>,  <34.990517, 35.057621, 36.201008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094147, 35.074825, 35.815048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726200, -0.667331, 0.165238,
		-0.636799, -0.743519, -0.204126,
		0.259077, 0.043012, -0.964898,
		35.171871, 35.087730, 35.525578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927174, 34.482735, 35.814934>,  <34.990517, 35.057621, 36.201008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927174, 34.482735, 35.814934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234852, 34.700489, 35.681080>,  <35.419460, 34.831142, 35.600769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234852, 34.700489, 35.681080>,  <34.927174, 34.482735, 35.814934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234852, 34.700489, 35.681080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638967, -0.649054, 0.412856,
		0.007560, -0.531386, -0.847097,
		0.769197, 0.544388, -0.334631,
		35.465611, 34.863804, 35.580692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458275, 34.122887, 35.519299>,  <34.927174, 34.482735, 35.814934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458275, 34.122887, 35.519299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665119, 34.443630, 35.639042>,  <35.789227, 34.636078, 35.710888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665119, 34.443630, 35.639042>,  <35.458275, 34.122887, 35.519299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665119, 34.443630, 35.639042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764769, -0.589915, 0.259092,
		0.384353, 0.094964, -0.918289,
		0.517108, 0.801862, 0.299361,
		35.820251, 34.684189, 35.728851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133644, 34.028938, 35.277374>,  <35.458275, 34.122887, 35.519299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133644, 34.028938, 35.277374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181946, 34.294899, 35.572216>,  <36.210926, 34.454475, 35.749123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181946, 34.294899, 35.572216>,  <36.133644, 34.028938, 35.277374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181946, 34.294899, 35.572216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755513, -0.543209, 0.366229,
		0.643908, 0.512668, -0.567938,
		0.120755, 0.664903, 0.737104,
		36.218174, 34.494370, 35.793346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791290, 34.113411, 35.348629>,  <36.133644, 34.028938, 35.277374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791290, 34.113411, 35.348629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678249, 34.235527, 35.712372>,  <36.610424, 34.308796, 35.930618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678249, 34.235527, 35.712372>,  <36.791290, 34.113411, 35.348629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678249, 34.235527, 35.712372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729175, -0.547578, 0.410443,
		0.623249, 0.779073, -0.067865,
		-0.282604, 0.305293, 0.909358,
		36.593468, 34.327114, 35.985180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412666, 34.124283, 35.774223>,  <36.791290, 34.113411, 35.348629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412666, 34.124283, 35.774223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122784, 34.111012, 36.049526>,  <36.948853, 34.103050, 36.214706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122784, 34.111012, 36.049526>,  <37.412666, 34.124283, 35.774223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122784, 34.111012, 36.049526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596886, -0.529275, 0.602988,
		0.344274, 0.847801, 0.403371,
		-0.724708, -0.033174, 0.688257,
		36.905373, 34.101059, 36.256004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807869, 34.313652, 36.373898>,  <37.412666, 34.124283, 35.774223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807869, 34.313652, 36.373898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474003, 34.122471, 36.483372>,  <37.273685, 34.007763, 36.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474003, 34.122471, 36.483372>,  <37.807869, 34.313652, 36.373898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474003, 34.122471, 36.483372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482727, -0.395601, 0.781329,
		-0.265167, 0.784260, 0.560913,
		-0.834662, -0.477950, 0.273683,
		37.223602, 33.979084, 36.565475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941776, 34.221161, 37.059063>,  <37.807869, 34.313652, 36.373898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941776, 34.221161, 37.059063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631027, 33.979465, 36.988224>,  <37.444576, 33.834450, 36.945721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631027, 33.979465, 36.988224>,  <37.941776, 34.221161, 37.059063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631027, 33.979465, 36.988224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216497, -0.520450, 0.825991,
		-0.591265, 0.603350, 0.535140,
		-0.776875, -0.604236, -0.177100,
		37.397964, 33.798195, 36.935093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493977, 34.146046, 37.781624>,  <37.941776, 34.221161, 37.059063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493977, 34.146046, 37.781624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406212, 33.832767, 37.548916>,  <37.353554, 33.644798, 37.409290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406212, 33.832767, 37.548916>,  <37.493977, 34.146046, 37.781624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406212, 33.832767, 37.548916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159376, -0.617065, 0.770604,
		-0.962526, 0.076362, 0.260216,
		-0.219415, -0.783198, -0.581771,
		37.340389, 33.597809, 37.374386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087193, 33.698841, 38.258717>,  <37.493977, 34.146046, 37.781624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087193, 33.698841, 38.258717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213665, 33.475933, 37.951607>,  <37.289551, 33.342190, 37.767342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213665, 33.475933, 37.951607>,  <37.087193, 33.698841, 38.258717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213665, 33.475933, 37.951607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246482, -0.733250, 0.633712,
		-0.916119, -0.389613, -0.094484,
		0.316183, -0.557267, -0.767777,
		37.308521, 33.308754, 37.721275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767868, 33.011654, 38.289402>,  <37.087193, 33.698841, 38.258717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767868, 33.011654, 38.289402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069378, 32.957321, 38.032227>,  <37.250286, 32.924721, 37.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069378, 32.957321, 38.032227>,  <36.767868, 33.011654, 38.289402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069378, 32.957321, 38.032227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194457, -0.888476, 0.415688,
		-0.627698, -0.438360, -0.643300,
		0.753778, -0.135832, -0.642938,
		37.295509, 32.916573, 37.839344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646309, 32.331367, 37.978519>,  <36.767868, 33.011654, 38.289402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646309, 32.331367, 37.978519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034809, 32.407669, 37.921562>,  <37.267910, 32.453449, 37.887390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034809, 32.407669, 37.921562>,  <36.646309, 32.331367, 37.978519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034809, 32.407669, 37.921562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219037, -0.950395, 0.220842,
		-0.093200, -0.245683, -0.964859,
		0.971255, 0.190758, -0.142391,
		37.326187, 32.464897, 37.878845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917953, 31.901718, 37.454914>,  <36.646309, 32.331367, 37.978519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917953, 31.901718, 37.454914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207603, 32.012100, 37.707733>,  <37.381393, 32.078327, 37.859425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.207603, 32.012100, 37.707733>,  <36.917953, 31.901718, 37.454914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207603, 32.012100, 37.707733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132710, -0.955087, 0.264947,
		0.676776, -0.107976, -0.728228,
		0.724129, 0.275953, 0.632050,
		37.424843, 32.094887, 37.897346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312458, 31.256832, 37.489929>,  <36.917953, 31.901718, 37.454914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312458, 31.256832, 37.489929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452736, 31.488546, 37.784260>,  <37.536903, 31.627575, 37.960857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452736, 31.488546, 37.784260>,  <37.312458, 31.256832, 37.489929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452736, 31.488546, 37.784260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232180, -0.814980, 0.530943,
		0.907251, -0.015356, -0.420310,
		0.350697, 0.579286, 0.735825,
		37.557945, 31.662333, 38.005009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978390, 30.958260, 37.756626>,  <37.312458, 31.256832, 37.489929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978390, 30.958260, 37.756626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825218, 31.189497, 38.044842>,  <37.733315, 31.328239, 38.217770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825218, 31.189497, 38.044842>,  <37.978390, 30.958260, 37.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825218, 31.189497, 38.044842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116646, -0.743485, 0.658501,
		0.916384, 0.336206, 0.217269,
		-0.382928, 0.578096, 0.720535,
		37.710339, 31.362926, 38.261002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385067, 30.723114, 38.286037>,  <37.978390, 30.958260, 37.756626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385067, 30.723114, 38.286037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091099, 30.918501, 38.474201>,  <37.914719, 31.035732, 38.587101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091099, 30.918501, 38.474201>,  <38.385067, 30.723114, 38.286037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091099, 30.918501, 38.474201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097429, -0.610420, 0.786063,
		0.671114, 0.623528, 0.401022,
		-0.734924, 0.488467, 0.470411,
		37.870621, 31.065041, 38.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602734, 30.744974, 38.978233>,  <38.385067, 30.723114, 38.286037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602734, 30.744974, 38.978233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204842, 30.783581, 38.964405>,  <37.966106, 30.806746, 38.956108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204842, 30.783581, 38.964405>,  <38.602734, 30.744974, 38.978233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204842, 30.783581, 38.964405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090402, -0.666702, 0.739822,
		0.048356, 0.739049, 0.671914,
		-0.994731, 0.096517, -0.034573,
		37.906422, 30.812536, 38.954033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449100, 30.908924, 39.681389>,  <38.602734, 30.744974, 38.978233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449100, 30.908924, 39.681389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100410, 30.813242, 39.510330>,  <37.891197, 30.755833, 39.407696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.100410, 30.813242, 39.510330>,  <38.449100, 30.908924, 39.681389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100410, 30.813242, 39.510330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268054, -0.497770, 0.824847,
		-0.410176, 0.833670, 0.369798,
		-0.871724, -0.239207, -0.427642,
		37.838894, 30.741480, 39.382038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937031, 31.106560, 40.106670>,  <38.449100, 30.908924, 39.681389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937031, 31.106560, 40.106670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795380, 30.808949, 39.880039>,  <37.710388, 30.630381, 39.744061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795380, 30.808949, 39.880039>,  <37.937031, 31.106560, 40.106670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795380, 30.808949, 39.880039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174081, -0.542808, 0.821618,
		-0.918851, 0.389590, 0.062703,
		-0.354130, -0.744029, -0.566580,
		37.689140, 30.585739, 39.710064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252197, 30.884974, 40.425644>,  <37.937031, 31.106560, 40.106670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252197, 30.884974, 40.425644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333439, 30.572079, 40.190067>,  <37.382183, 30.384342, 40.048721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333439, 30.572079, 40.190067>,  <37.252197, 30.884974, 40.425644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333439, 30.572079, 40.190067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300635, -0.622248, 0.722791,
		-0.931862, 0.030256, -0.361548,
		0.203104, -0.782235, -0.588945,
		37.394371, 30.337408, 40.013382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565327, 30.432211, 40.363579>,  <37.252197, 30.884974, 40.425644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565327, 30.432211, 40.363579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896580, 30.228325, 40.270302>,  <37.095333, 30.105993, 40.214336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896580, 30.228325, 40.270302>,  <36.565327, 30.432211, 40.363579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896580, 30.228325, 40.270302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276478, -0.733346, 0.621099,
		-0.487595, -0.449883, -0.748236,
		0.828137, -0.509716, -0.233193,
		37.145020, 30.075411, 40.200344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380432, 29.692720, 40.180977>,  <36.565327, 30.432211, 40.363579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380432, 29.692720, 40.180977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749550, 29.691063, 40.335087>,  <36.971020, 29.690069, 40.427555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749550, 29.691063, 40.335087>,  <36.380432, 29.692720, 40.180977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749550, 29.691063, 40.335087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270264, -0.719650, 0.639579,
		0.274617, -0.694325, -0.665206,
		0.922791, -0.004142, 0.385279,
		37.026386, 29.689821, 40.450672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299740, 29.228863, 40.688168>,  <36.380432, 29.692720, 40.180977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299740, 29.228863, 40.688168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685760, 29.316313, 40.745960>,  <36.917374, 29.368784, 40.780636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685760, 29.316313, 40.745960>,  <36.299740, 29.228863, 40.688168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685760, 29.316313, 40.745960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024456, -0.624066, 0.780989,
		0.260909, -0.750163, -0.607604,
		0.965053, 0.218626, 0.144478,
		36.975277, 29.381901, 40.789303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657806, 28.703646, 40.701698>,  <36.299740, 29.228863, 40.688168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657806, 28.703646, 40.701698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873386, 28.968061, 40.910526>,  <37.002735, 29.126711, 41.035824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873386, 28.968061, 40.910526>,  <36.657806, 28.703646, 40.701698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873386, 28.968061, 40.910526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069219, -0.652451, 0.754663,
		0.839488, -0.370590, -0.397396,
		0.538952, 0.661038, 0.522073,
		37.035072, 29.166372, 41.067146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040035, 28.316200, 41.210384>,  <36.657806, 28.703646, 40.701698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040035, 28.316200, 41.210384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057331, 28.680311, 41.375076>,  <37.067707, 28.898779, 41.473892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057331, 28.680311, 41.375076>,  <37.040035, 28.316200, 41.210384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057331, 28.680311, 41.375076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001755, -0.412048, 0.911160,
		0.999063, -0.040117, -0.016218,
		0.043236, 0.910278, 0.411733,
		37.070301, 28.953394, 41.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542854, 28.291994, 41.652470>,  <37.040035, 28.316200, 41.210384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542854, 28.291994, 41.652470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348946, 28.623316, 41.764835>,  <37.232601, 28.822109, 41.832256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348946, 28.623316, 41.764835>,  <37.542854, 28.291994, 41.652470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348946, 28.623316, 41.764835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064928, -0.286210, 0.955965,
		0.872229, 0.481662, 0.084966,
		-0.484770, 0.828303, 0.280914,
		37.203514, 28.871807, 41.849110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008476, 28.679264, 42.178341>,  <37.542854, 28.291994, 41.652470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008476, 28.679264, 42.178341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629082, 28.790916, 42.238289>,  <37.401443, 28.857908, 42.274258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629082, 28.790916, 42.238289>,  <38.008476, 28.679264, 42.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629082, 28.790916, 42.238289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122604, -0.112816, 0.986023,
		0.292136, 0.953603, 0.072782,
		-0.948486, 0.279129, 0.149874,
		37.344536, 28.874655, 42.283253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996754, 29.172031, 42.704430>,  <38.008476, 28.679264, 42.178341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996754, 29.172031, 42.704430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629654, 29.013327, 42.697311>,  <37.409393, 28.918104, 42.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629654, 29.013327, 42.697311>,  <37.996754, 29.172031, 42.704430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629654, 29.013327, 42.697311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046253, -0.151267, 0.987410,
		-0.394459, 0.905372, 0.157176,
		-0.917749, -0.396763, -0.017793,
		37.354328, 28.894299, 42.691975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628048, 29.397209, 43.281181>,  <37.996754, 29.172031, 42.704430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628048, 29.397209, 43.281181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410629, 29.082916, 43.163078>,  <37.280178, 28.894341, 43.092216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410629, 29.082916, 43.163078>,  <37.628048, 29.397209, 43.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410629, 29.082916, 43.163078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048137, -0.322000, 0.945515,
		-0.837997, 0.528146, 0.137199,
		-0.543548, -0.785734, -0.295258,
		37.247566, 28.847197, 43.074501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117672, 29.496975, 43.764332>,  <37.628048, 29.397209, 43.281181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117672, 29.496975, 43.764332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080147, 29.113119, 43.658283>,  <37.057632, 28.882805, 43.594654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080147, 29.113119, 43.658283>,  <37.117672, 29.496975, 43.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080147, 29.113119, 43.658283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169473, -0.247016, 0.954077,
		-0.981060, 0.134433, -0.139460,
		-0.093811, -0.959641, -0.265121,
		37.052002, 28.825228, 43.578747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610256, 29.350256, 44.202969>,  <37.117672, 29.496975, 43.764332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610256, 29.350256, 44.202969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790245, 29.008327, 44.099579>,  <36.898239, 28.803171, 44.037544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790245, 29.008327, 44.099579>,  <36.610256, 29.350256, 44.202969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790245, 29.008327, 44.099579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211211, -0.383085, 0.899242,
		-0.867706, -0.350043, -0.352925,
		0.449974, -0.854819, -0.258472,
		36.925236, 28.751883, 44.022038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192810, 28.920010, 44.611805>,  <36.610256, 29.350256, 44.202969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192810, 28.920010, 44.611805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524113, 28.708397, 44.537914>,  <36.722893, 28.581429, 44.493580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524113, 28.708397, 44.537914>,  <36.192810, 28.920010, 44.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524113, 28.708397, 44.537914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193723, -0.579662, 0.791495,
		-0.525803, -0.619772, -0.582592,
		0.828252, -0.529032, -0.184724,
		36.772587, 28.549686, 44.482498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061119, 28.128117, 44.699207>,  <36.192810, 28.920010, 44.611805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061119, 28.128117, 44.699207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455830, 28.153921, 44.758698>,  <36.692654, 28.169405, 44.794392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455830, 28.153921, 44.758698>,  <36.061119, 28.128117, 44.699207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455830, 28.153921, 44.758698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100429, -0.476908, 0.873197,
		0.127262, -0.876582, -0.464120,
		0.986772, 0.064514, 0.148726,
		36.751862, 28.173275, 44.803314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326927, 27.470152, 44.877926>,  <36.061119, 28.128117, 44.699207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326927, 27.470152, 44.877926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620403, 27.714979, 44.995956>,  <36.796490, 27.861876, 45.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.620403, 27.714979, 44.995956>,  <36.326927, 27.470152, 44.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620403, 27.714979, 44.995956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017022, -0.450684, 0.892521,
		0.679271, -0.649811, -0.341081,
		0.733690, 0.612070, 0.295076,
		36.840511, 27.898600, 45.084480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862019, 27.104437, 45.156853>,  <36.326927, 27.470152, 44.877926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862019, 27.104437, 45.156853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967400, 27.460976, 45.304417>,  <37.030628, 27.674898, 45.392956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.967400, 27.460976, 45.304417>,  <36.862019, 27.104437, 45.156853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967400, 27.460976, 45.304417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376311, -0.447084, 0.811484,
		0.888248, -0.074959, -0.453207,
		0.263450, 0.891346, 0.368913,
		37.046436, 27.728380, 45.415092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607838, 27.012058, 45.476089>,  <36.862019, 27.104437, 45.156853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607838, 27.012058, 45.476089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389591, 27.307482, 45.634499>,  <37.258644, 27.484735, 45.729542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.389591, 27.307482, 45.634499>,  <37.607838, 27.012058, 45.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389591, 27.307482, 45.634499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368218, -0.213222, 0.904960,
		0.752808, 0.639582, -0.155613,
		-0.545616, 0.738560, 0.396021,
		37.225906, 27.529049, 45.753304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965214, 27.207195, 45.997128>,  <37.607838, 27.012058, 45.476089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965214, 27.207195, 45.997128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618797, 27.391911, 46.073788>,  <37.410950, 27.502739, 46.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618797, 27.391911, 46.073788>,  <37.965214, 27.207195, 45.997128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618797, 27.391911, 46.073788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074945, -0.259090, 0.962941,
		0.494328, 0.848308, 0.189773,
		-0.866039, 0.461786, 0.191652,
		37.358986, 27.530447, 46.131283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006081, 27.655272, 46.655212>,  <37.965214, 27.207195, 45.997128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006081, 27.655272, 46.655212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631626, 27.539455, 46.575397>,  <37.406952, 27.469965, 46.527508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631626, 27.539455, 46.575397>,  <38.006081, 27.655272, 46.655212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631626, 27.539455, 46.575397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057701, -0.433262, 0.899419,
		-0.346869, 0.853492, 0.388886,
		-0.936137, -0.289541, -0.199533,
		37.350784, 27.452593, 46.515537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.164280, 28.301319, 46.858807>,  <38.006081, 27.655272, 46.655212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.164280, 28.301319, 46.858807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321182, 28.571688, 47.108372>,  <38.415321, 28.733910, 47.258110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321182, 28.571688, 47.108372>,  <38.164280, 28.301319, 46.858807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321182, 28.571688, 47.108372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161551, 0.617109, -0.770115,
		-0.905561, 0.402873, 0.132867,
		0.392252, 0.675922, 0.623914,
		38.438858, 28.774464, 47.295547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848248, 28.965860, 46.633175>,  <38.164280, 28.301319, 46.858807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848248, 28.965860, 46.633175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183815, 29.039812, 46.837933>,  <38.385155, 29.084183, 46.960785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183815, 29.039812, 46.837933>,  <37.848248, 28.965860, 46.633175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183815, 29.039812, 46.837933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279331, 0.660951, -0.696504,
		-0.467105, 0.727298, 0.502843,
		0.838920, 0.184880, 0.511891,
		38.435490, 29.095276, 46.991501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850296, 29.654715, 46.681721>,  <37.848248, 28.965860, 46.633175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850296, 29.654715, 46.681721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231354, 29.539494, 46.720688>,  <38.459988, 29.470362, 46.744068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231354, 29.539494, 46.720688>,  <37.850296, 29.654715, 46.681721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231354, 29.539494, 46.720688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270701, 0.657455, -0.703188,
		0.138508, 0.696261, 0.704298,
		0.952647, -0.288051, 0.097416,
		38.517147, 29.453077, 46.749912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263699, 30.286047, 46.366627>,  <37.850296, 29.654715, 46.681721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263699, 30.286047, 46.366627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543224, 30.006001, 46.425266>,  <38.710941, 29.837973, 46.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543224, 30.006001, 46.425266>,  <38.263699, 30.286047, 46.366627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543224, 30.006001, 46.425266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530515, 0.369821, -0.762749,
		0.479799, 0.610794, 0.629860,
		0.698818, -0.700117, 0.146595,
		38.752869, 29.795965, 46.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853367, 30.657833, 46.482269>,  <38.263699, 30.286047, 46.366627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853367, 30.657833, 46.482269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959652, 30.291800, 46.360931>,  <39.023422, 30.072180, 46.288128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.959652, 30.291800, 46.360931>,  <38.853367, 30.657833, 46.482269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959652, 30.291800, 46.360931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599299, 0.403256, -0.691539,
		0.755140, 0.001960, 0.655560,
		0.265714, -0.915085, -0.303340,
		39.039368, 30.017275, 46.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575684, 30.730049, 46.398773>,  <38.853367, 30.657833, 46.482269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575684, 30.730049, 46.398773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439346, 30.425333, 46.178410>,  <39.357544, 30.242504, 46.046192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439346, 30.425333, 46.178410>,  <39.575684, 30.730049, 46.398773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439346, 30.425333, 46.178410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493189, 0.354003, -0.794636,
		0.800369, -0.542549, 0.255047,
		-0.340841, -0.761789, -0.550913,
		39.337093, 30.196796, 46.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154156, 30.624878, 46.017105>,  <39.575684, 30.730049, 46.398773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154156, 30.624878, 46.017105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862999, 30.424667, 45.829639>,  <39.688305, 30.304541, 45.717159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862999, 30.424667, 45.829639>,  <40.154156, 30.624878, 46.017105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862999, 30.424667, 45.829639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359855, 0.302950, -0.882454,
		0.583671, -0.810984, -0.040400,
		-0.727896, -0.500525, -0.468660,
		39.644630, 30.274509, 45.689041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531601, 30.367044, 45.443531>,  <40.154156, 30.624878, 46.017105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531601, 30.367044, 45.443531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143028, 30.369963, 45.348644>,  <39.909885, 30.371714, 45.291714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.143028, 30.369963, 45.348644>,  <40.531601, 30.367044, 45.443531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143028, 30.369963, 45.348644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231321, 0.252603, -0.939512,
		0.053068, -0.967543, -0.247073,
		-0.971429, 0.007295, -0.237218,
		39.851601, 30.372150, 45.277477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526279, 30.152369, 44.792309>,  <40.531601, 30.367044, 45.443531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526279, 30.152369, 44.792309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169949, 30.328363, 44.837620>,  <39.956150, 30.433960, 44.864807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169949, 30.328363, 44.837620>,  <40.526279, 30.152369, 44.792309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169949, 30.328363, 44.837620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072092, 0.383060, -0.920906,
		-0.448578, -0.812206, -0.372961,
		-0.890831, 0.439986, 0.113279,
		39.902699, 30.460360, 44.871605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174576, 30.033390, 44.176182>,  <40.526279, 30.152369, 44.792309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174576, 30.033390, 44.176182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998474, 30.345407, 44.354038>,  <39.892811, 30.532618, 44.460751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998474, 30.345407, 44.354038>,  <40.174576, 30.033390, 44.176182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998474, 30.345407, 44.354038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268188, 0.358362, -0.894233,
		-0.856883, -0.512940, 0.051427,
		-0.440258, 0.780044, 0.444639,
		39.866398, 30.579420, 44.487431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602211, 30.214514, 43.673889>,  <40.174576, 30.033390, 44.176182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602211, 30.214514, 43.673889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668804, 30.529608, 43.911125>,  <39.708759, 30.718664, 44.053467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.668804, 30.529608, 43.911125>,  <39.602211, 30.214514, 43.673889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668804, 30.529608, 43.911125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023384, 0.604468, -0.796286,
		-0.985767, 0.118699, 0.119054,
		0.166483, 0.787737, 0.593089,
		39.718750, 30.765928, 44.089050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963238, 30.531199, 43.628635>,  <39.602211, 30.214514, 43.673889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963238, 30.531199, 43.628635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269760, 30.775291, 43.709026>,  <39.453674, 30.921747, 43.757263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.269760, 30.775291, 43.709026>,  <38.963238, 30.531199, 43.628635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269760, 30.775291, 43.709026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250647, 0.571987, -0.781029,
		-0.591567, 0.548131, 0.591270,
		0.766305, 0.610232, 0.200982,
		39.499653, 30.958361, 43.769321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697716, 31.178028, 43.525791>,  <38.963238, 30.531199, 43.628635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697716, 31.178028, 43.525791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087532, 31.265846, 43.544014>,  <39.321423, 31.318537, 43.554947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087532, 31.265846, 43.544014>,  <38.697716, 31.178028, 43.525791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087532, 31.265846, 43.544014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106655, 0.632600, -0.767100,
		-0.197229, 0.742710, 0.639908,
		0.974539, 0.219543, 0.045553,
		39.379894, 31.331709, 43.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663052, 31.829208, 43.551456>,  <38.697716, 31.178028, 43.525791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663052, 31.829208, 43.551456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027676, 31.745054, 43.410149>,  <39.246449, 31.694563, 43.325363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027676, 31.745054, 43.410149>,  <38.663052, 31.829208, 43.551456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027676, 31.745054, 43.410149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099594, 0.720619, -0.686140,
		0.398925, 0.660641, 0.635934,
		0.911559, -0.210383, -0.353270,
		39.301144, 31.681940, 43.304169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996811, 32.383640, 43.483250>,  <38.663052, 31.829208, 43.551456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996811, 32.383640, 43.483250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167141, 32.145939, 43.210327>,  <39.269337, 32.003319, 43.046574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.167141, 32.145939, 43.210327>,  <38.996811, 32.383640, 43.483250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167141, 32.145939, 43.210327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448431, 0.516357, -0.729579,
		0.785866, 0.616637, -0.046605,
		0.425821, -0.594250, -0.682307,
		39.294888, 31.967663, 43.005634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331501, 32.825218, 43.006165>,  <38.996811, 32.383640, 43.483250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331501, 32.825218, 43.006165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343742, 32.477604, 42.808643>,  <39.351089, 32.269035, 42.690132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343742, 32.477604, 42.808643>,  <39.331501, 32.825218, 43.006165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343742, 32.477604, 42.808643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197054, 0.479088, -0.855361,
		0.979915, 0.123485, -0.156584,
		0.030607, -0.869037, -0.493799,
		39.352924, 32.216892, 42.660503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876465, 32.899330, 42.393688>,  <39.331501, 32.825218, 43.006165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876465, 32.899330, 42.393688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602234, 32.624405, 42.297695>,  <39.437695, 32.459450, 42.240101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602234, 32.624405, 42.297695>,  <39.876465, 32.899330, 42.393688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602234, 32.624405, 42.297695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162224, 0.465588, -0.870007,
		0.709696, -0.557525, -0.430694,
		-0.685577, -0.687309, -0.239981,
		39.396561, 32.418213, 42.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043674, 32.765175, 41.748695>,  <39.876465, 32.899330, 42.393688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043674, 32.765175, 41.748695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691547, 32.578255, 41.781345>,  <39.480270, 32.466103, 41.800938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691547, 32.578255, 41.781345>,  <40.043674, 32.765175, 41.748695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691547, 32.578255, 41.781345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190015, 0.189694, -0.963281,
		0.434661, -0.863506, -0.255787,
		-0.880321, -0.467304, 0.081627,
		39.427452, 32.438065, 41.805832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017635, 32.381157, 41.234257>,  <40.043674, 32.765175, 41.748695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017635, 32.381157, 41.234257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628216, 32.419434, 41.317242>,  <39.394562, 32.442398, 41.367035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.628216, 32.419434, 41.317242>,  <40.017635, 32.381157, 41.234257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628216, 32.419434, 41.317242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160304, 0.360929, -0.918713,
		-0.162790, -0.927671, -0.336044,
		-0.973552, 0.095688, 0.207465,
		39.336151, 32.448139, 41.379482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654724, 31.981586, 40.730598>,  <40.017635, 32.381157, 41.234257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654724, 31.981586, 40.730598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431709, 32.268936, 40.897015>,  <39.297901, 32.441345, 40.996864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431709, 32.268936, 40.897015>,  <39.654724, 31.981586, 40.730598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431709, 32.268936, 40.897015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166409, 0.587704, -0.791778,
		-0.813300, -0.372215, -0.447212,
		-0.557540, 0.718373, 0.416040,
		39.264446, 32.484447, 41.021828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126450, 32.041348, 40.261909>,  <39.654724, 31.981586, 40.730598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126450, 32.041348, 40.261909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117157, 32.394970, 40.448627>,  <39.111580, 32.607143, 40.560658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117157, 32.394970, 40.448627>,  <39.126450, 32.041348, 40.261909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117157, 32.394970, 40.448627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022857, 0.466331, -0.884315,
		-0.999469, -0.031217, 0.009371,
		-0.023235, 0.884059, 0.466797,
		39.110188, 32.660187, 40.588665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546528, 32.367001, 39.950829>,  <39.126450, 32.041348, 40.261909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546528, 32.367001, 39.950829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770870, 32.665428, 40.094398>,  <38.905476, 32.844482, 40.180538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770870, 32.665428, 40.094398>,  <38.546528, 32.367001, 39.950829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770870, 32.665428, 40.094398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079561, 0.480091, -0.873604,
		-0.824080, 0.461412, 0.328621,
		0.560859, 0.746064, 0.358923,
		38.939129, 32.889248, 40.202076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103828, 32.934116, 39.823723>,  <38.546528, 32.367001, 39.950829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103828, 32.934116, 39.823723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474113, 33.064995, 39.899605>,  <38.696285, 33.143524, 39.945133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474113, 33.064995, 39.899605>,  <38.103828, 32.934116, 39.823723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474113, 33.064995, 39.899605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044496, 0.592319, -0.804474,
		-0.375591, 0.736274, 0.562879,
		0.925717, 0.327199, 0.189709,
		38.751827, 33.163155, 39.956516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112282, 33.710426, 39.635475>,  <38.103828, 32.934116, 39.823723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112282, 33.710426, 39.635475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494709, 33.595200, 39.613728>,  <38.724167, 33.526066, 39.600677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494709, 33.595200, 39.613728>,  <38.112282, 33.710426, 39.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494709, 33.595200, 39.613728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109244, 0.522218, -0.845786,
		0.272034, 0.802687, 0.530745,
		0.956066, -0.288064, -0.054372,
		38.781528, 33.508781, 39.597416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575779, 34.309586, 39.566219>,  <38.112282, 33.710426, 39.635475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575779, 34.309586, 39.566219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756348, 33.978046, 39.434017>,  <38.864689, 33.779125, 39.354694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756348, 33.978046, 39.434017>,  <38.575779, 34.309586, 39.566219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756348, 33.978046, 39.434017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347422, 0.504427, -0.790476,
		0.821900, 0.242010, 0.515667,
		0.451419, -0.828846, -0.330508,
		38.891773, 33.729393, 39.334866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180790, 34.537907, 39.432796>,  <38.575779, 34.309586, 39.566219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180790, 34.537907, 39.432796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161007, 34.192760, 39.231594>,  <39.149136, 33.985672, 39.110874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161007, 34.192760, 39.231594>,  <39.180790, 34.537907, 39.432796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161007, 34.192760, 39.231594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522778, 0.406760, -0.749166,
		0.851033, -0.300013, 0.430970,
		-0.049458, -0.862866, -0.503006,
		39.146168, 33.933899, 39.080692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877502, 34.353008, 39.176800>,  <39.180790, 34.537907, 39.432796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877502, 34.353008, 39.176800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592293, 34.169750, 38.964500>,  <39.421165, 34.059795, 38.837120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592293, 34.169750, 38.964500>,  <39.877502, 34.353008, 39.176800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592293, 34.169750, 38.964500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398159, 0.358497, -0.844363,
		0.577116, -0.813375, -0.073201,
		-0.713026, -0.458150, -0.530747,
		39.378384, 34.032307, 38.805275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149273, 34.003330, 38.652119>,  <39.877502, 34.353008, 39.176800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149273, 34.003330, 38.652119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781132, 34.052979, 38.503773>,  <39.560246, 34.082767, 38.414764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781132, 34.052979, 38.503773>,  <40.149273, 34.003330, 38.652119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781132, 34.052979, 38.503773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390984, 0.313396, -0.865399,
		0.008816, -0.941477, -0.336963,
		-0.920355, 0.124118, -0.370865,
		39.505024, 34.090214, 38.392513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232059, 33.923943, 37.948574>,  <40.149273, 34.003330, 38.652119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232059, 33.923943, 37.948574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852577, 34.049297, 37.965313>,  <39.624889, 34.124512, 37.975357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852577, 34.049297, 37.965313>,  <40.232059, 33.923943, 37.948574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852577, 34.049297, 37.965313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056851, 0.299274, -0.952472,
		-0.311019, -0.901233, -0.301739,
		-0.948702, 0.313392, 0.041844,
		39.567966, 34.143314, 37.977867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913704, 33.930885, 37.129631>,  <40.232059, 33.923943, 37.948574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913704, 33.930885, 37.129631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681984, 34.168331, 37.353073>,  <39.542953, 34.310799, 37.487137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681984, 34.168331, 37.353073>,  <39.913704, 33.930885, 37.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681984, 34.168331, 37.353073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135665, 0.605529, -0.784174,
		-0.803748, -0.530051, -0.270248,
		-0.579296, 0.593616, 0.558603,
		39.508194, 34.346416, 37.520653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493557, 34.137589, 36.629845>,  <39.913704, 33.930885, 37.129631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493557, 34.137589, 36.629845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453014, 34.413849, 36.916267>,  <39.428688, 34.579605, 37.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453014, 34.413849, 36.916267>,  <39.493557, 34.137589, 36.629845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453014, 34.413849, 36.916267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207528, 0.689248, -0.694168,
		-0.972963, -0.218963, 0.073466,
		-0.101361, 0.690646, 0.716054,
		39.422607, 34.621044, 37.131084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895897, 34.514805, 36.463093>,  <39.493557, 34.137589, 36.629845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895897, 34.514805, 36.463093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111744, 34.754242, 36.699905>,  <39.241253, 34.897903, 36.841991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111744, 34.754242, 36.699905>,  <38.895897, 34.514805, 36.463093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111744, 34.754242, 36.699905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184707, 0.770238, -0.610424,
		-0.821402, 0.220041, 0.526196,
		0.539614, 0.598595, 0.592032,
		39.273628, 34.933819, 36.877514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588017, 35.187840, 36.347378>,  <38.895897, 34.514805, 36.463093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588017, 35.187840, 36.347378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922737, 35.282291, 36.544968>,  <39.123569, 35.338963, 36.663521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922737, 35.282291, 36.544968>,  <38.588017, 35.187840, 36.347378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922737, 35.282291, 36.544968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010449, 0.908941, -0.416794,
		-0.547407, 0.343613, 0.763070,
		0.836801, 0.236130, 0.493970,
		39.173779, 35.353130, 36.693157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429535, 35.768463, 36.654182>,  <38.588017, 35.187840, 36.347378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429535, 35.768463, 36.654182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826336, 35.767590, 36.603687>,  <39.064415, 35.767067, 36.573391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.826336, 35.767590, 36.603687>,  <38.429535, 35.768463, 36.654182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826336, 35.767590, 36.603687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051557, 0.905682, -0.420812,
		0.115248, 0.423953, 0.898322,
		0.991998, -0.002183, -0.126236,
		39.123936, 35.766933, 36.565815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514816, 36.461494, 36.634491>,  <38.429535, 35.768463, 36.654182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514816, 36.461494, 36.634491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866344, 36.321453, 36.504814>,  <39.077263, 36.237427, 36.427010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866344, 36.321453, 36.504814>,  <38.514816, 36.461494, 36.634491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866344, 36.321453, 36.504814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054267, 0.748362, -0.661067,
		0.474054, 0.563367, 0.676676,
		0.878822, -0.350103, -0.324191,
		39.129990, 36.216423, 36.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935020, 37.059307, 36.607128>,  <38.514816, 36.461494, 36.634491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935020, 37.059307, 36.607128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 36.803211, 36.365658>,  <39.239048, 36.649551, 36.220776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125038, 36.803211, 36.365658>,  <38.935020, 37.059307, 36.607128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125038, 36.803211, 36.365658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121252, 0.631856, -0.765543,
		0.871570, 0.436861, 0.222527,
		0.475041, -0.640242, -0.603677,
		39.267551, 36.611137, 36.184555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590225, 37.469326, 36.344032>,  <38.935020, 37.059307, 36.607128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590225, 37.469326, 36.344032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524071, 37.170361, 36.086655>,  <39.484379, 36.990982, 35.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524071, 37.170361, 36.086655>,  <39.590225, 37.469326, 36.344032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524071, 37.170361, 36.086655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003129, 0.652027, -0.758189,
		0.986224, -0.127408, -0.105499,
		-0.165387, -0.747414, -0.643444,
		39.474453, 36.946136, 35.893623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140869, 37.482773, 35.720551>,  <39.590225, 37.469326, 36.344032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140869, 37.482773, 35.720551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819046, 37.274021, 35.607182>,  <39.625954, 37.148769, 35.539158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819046, 37.274021, 35.607182>,  <40.140869, 37.482773, 35.720551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819046, 37.274021, 35.607182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000229, 0.477517, -0.878622,
		0.593878, -0.706835, -0.384308,
		-0.804555, -0.521883, -0.283425,
		39.577679, 37.117455, 35.522156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273441, 37.403748, 35.058784>,  <40.140869, 37.482773, 35.720551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273441, 37.403748, 35.058784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883450, 37.316757, 35.077179>,  <39.649452, 37.264565, 35.088215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883450, 37.316757, 35.077179>,  <40.273441, 37.403748, 35.058784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883450, 37.316757, 35.077179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144704, 0.463937, -0.873970,
		0.168734, -0.858759, -0.483800,
		-0.974982, -0.217477, 0.045984,
		39.590954, 37.251514, 35.090973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867718, 37.517063, 34.567554>,  <40.273441, 37.403748, 35.058784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867718, 37.517063, 34.567554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264225, 37.465279, 34.577530>,  <41.502129, 37.434208, 34.583515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264225, 37.465279, 34.577530>,  <40.867718, 37.517063, 34.567554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264225, 37.465279, 34.577530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130751, -0.941035, 0.312023,
		-0.016926, -0.312560, -0.949747,
		0.991271, -0.129462, 0.024939,
		41.561607, 37.426441, 34.585011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189098, 37.010857, 34.125267>,  <40.867718, 37.517063, 34.567554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189098, 37.010857, 34.125267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356159, 37.031540, 34.488121>,  <41.456394, 37.043949, 34.705833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356159, 37.031540, 34.488121>,  <41.189098, 37.010857, 34.125267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356159, 37.031540, 34.488121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260083, -0.949801, 0.173880,
		0.870590, -0.308551, -0.383236,
		0.417649, 0.051705, 0.907136,
		41.481453, 37.047050, 34.760262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692749, 36.461494, 34.190025>,  <41.189098, 37.010857, 34.125267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692749, 36.461494, 34.190025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546749, 36.567005, 34.547169>,  <41.459148, 36.630310, 34.761456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546749, 36.567005, 34.547169>,  <41.692749, 36.461494, 34.190025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546749, 36.567005, 34.547169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304197, -0.940178, 0.153396,
		0.879910, -0.215616, 0.423401,
		-0.364997, 0.263772, 0.892861,
		41.437248, 36.646137, 34.815025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031273, 36.104088, 34.716290>,  <41.692749, 36.461494, 34.190025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031273, 36.104088, 34.716290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653080, 36.201157, 34.803177>,  <41.426167, 36.259396, 34.855309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653080, 36.201157, 34.803177>,  <42.031273, 36.104088, 34.716290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653080, 36.201157, 34.803177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190092, -0.952739, 0.236966,
		0.264453, 0.182756, 0.946924,
		-0.945479, 0.242669, 0.217214,
		41.369438, 36.273956, 34.868340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677231, 35.905666, 35.390625>,  <42.031273, 36.104088, 34.716290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677231, 35.905666, 35.390625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411613, 35.890408, 35.091938>,  <41.252243, 35.881252, 34.912727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411613, 35.890408, 35.091938>,  <41.677231, 35.905666, 35.390625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411613, 35.890408, 35.091938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131863, -0.977069, 0.167175,
		-0.735971, 0.209477, 0.643790,
		-0.664047, -0.038144, -0.746717,
		41.212399, 35.878963, 34.867924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057064, 35.547516, 35.484703>,  <41.677231, 35.905666, 35.390625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057064, 35.547516, 35.484703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098484, 35.499374, 35.089775>,  <41.123337, 35.470490, 34.852818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098484, 35.499374, 35.089775>,  <41.057064, 35.547516, 35.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098484, 35.499374, 35.089775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053363, -0.990551, 0.126340,
		-0.993192, -0.065768, -0.096146,
		0.103546, -0.120349, -0.987317,
		41.129547, 35.463268, 34.793579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502201, 35.114407, 35.210892>,  <41.057064, 35.547516, 35.484703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502201, 35.114407, 35.210892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850544, 35.081276, 35.017090>,  <41.059551, 35.061398, 34.900810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850544, 35.081276, 35.017090>,  <40.502201, 35.114407, 35.210892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850544, 35.081276, 35.017090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009210, -0.988276, 0.152397,
		-0.491445, -0.128254, -0.861414,
		0.870860, -0.082829, -0.484502,
		41.111801, 35.056427, 34.871738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498367, 34.471729, 34.850388>,  <40.502201, 35.114407, 35.210892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498367, 34.471729, 34.850388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894001, 34.525536, 34.826328>,  <41.131382, 34.557819, 34.811893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894001, 34.525536, 34.826328>,  <40.498367, 34.471729, 34.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894001, 34.525536, 34.826328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125763, -0.983356, -0.131128,
		-0.076783, 0.122133, -0.989539,
		0.989084, 0.134516, -0.060146,
		41.190727, 34.565891, 34.808285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771072, 34.187672, 34.195339>,  <40.498367, 34.471729, 34.850388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771072, 34.187672, 34.195339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023407, 34.160904, 34.504551>,  <41.174809, 34.144844, 34.690079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023407, 34.160904, 34.504551>,  <40.771072, 34.187672, 34.195339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023407, 34.160904, 34.504551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166283, -0.961469, -0.218924,
		0.757891, 0.266645, -0.595400,
		0.630834, -0.066915, 0.773027,
		41.212658, 34.140831, 34.736458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497883, 34.089695, 33.954380>,  <40.771072, 34.187672, 34.195339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497883, 34.089695, 33.954380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456093, 33.941002, 34.323357>,  <41.431019, 33.851788, 34.544743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456093, 33.941002, 34.323357>,  <41.497883, 34.089695, 33.954380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456093, 33.941002, 34.323357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037435, -0.928332, -0.369863,
		0.993822, -0.004112, 0.110907,
		-0.104479, -0.371730, 0.922443,
		41.424747, 33.829483, 34.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994526, 33.593880, 34.006176>,  <41.497883, 34.089695, 33.954380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994526, 33.593880, 34.006176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760769, 33.502056, 34.317509>,  <41.620514, 33.446964, 34.504307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.760769, 33.502056, 34.317509>,  <41.994526, 33.593880, 34.006176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760769, 33.502056, 34.317509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289669, -0.954974, -0.064166,
		0.758012, 0.187959, 0.624571,
		-0.584388, -0.229557, 0.778327,
		41.585453, 33.433189, 34.551006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399471, 33.102093, 34.508121>,  <41.994526, 33.593880, 34.006176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399471, 33.102093, 34.508121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012127, 33.051521, 34.594177>,  <41.779720, 33.021179, 34.645809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012127, 33.051521, 34.594177>,  <42.399471, 33.102093, 34.508121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012127, 33.051521, 34.594177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149302, -0.984355, 0.093566,
		0.199943, 0.122726, 0.972091,
		-0.968366, -0.126427, 0.215138,
		41.721619, 33.013592, 34.658718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406212, 32.426903, 34.930923>,  <42.399471, 33.102093, 34.508121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406212, 32.426903, 34.930923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033741, 32.491657, 34.800259>,  <41.810261, 32.530510, 34.721859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.033741, 32.491657, 34.800259>,  <42.406212, 32.426903, 34.930923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.033741, 32.491657, 34.800259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198338, -0.976753, 0.081333,
		-0.305904, 0.140525, 0.941634,
		-0.931174, 0.161882, -0.326665,
		41.754391, 32.540222, 34.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013134, 32.067173, 35.350029>,  <42.406212, 32.426903, 34.930923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013134, 32.067173, 35.350029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781792, 32.118259, 35.027740>,  <41.642986, 32.148911, 34.834366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781792, 32.118259, 35.027740>,  <42.013134, 32.067173, 35.350029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781792, 32.118259, 35.027740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277446, -0.959589, 0.047048,
		-0.767154, 0.250755, 0.590420,
		-0.578358, 0.127717, -0.805724,
		41.608284, 32.156574, 34.786022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542404, 31.531603, 35.377117>,  <42.013134, 32.067173, 35.350029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542404, 31.531603, 35.377117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518490, 31.608284, 34.985264>,  <41.504143, 31.654293, 34.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518490, 31.608284, 34.985264>,  <41.542404, 31.531603, 35.377117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518490, 31.608284, 34.985264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271798, -0.947432, -0.168816,
		-0.960496, 0.256168, 0.108748,
		-0.059786, 0.191705, -0.979630,
		41.500553, 31.665796, 34.691376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888561, 31.411196, 35.206421>,  <41.542404, 31.531603, 35.377117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888561, 31.411196, 35.206421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036606, 31.418331, 34.834892>,  <41.125431, 31.422611, 34.611977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036606, 31.418331, 34.834892>,  <40.888561, 31.411196, 35.206421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036606, 31.418331, 34.834892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502742, -0.836911, -0.216400,
		-0.781198, 0.547048, -0.300780,
		0.370107, 0.017837, -0.928818,
		41.147636, 31.423683, 34.556248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332005, 31.102526, 34.729351>,  <40.888561, 31.411196, 35.206421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332005, 31.102526, 34.729351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679390, 31.092211, 34.531319>,  <40.887821, 31.086021, 34.412498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679390, 31.092211, 34.531319>,  <40.332005, 31.102526, 34.729351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679390, 31.092211, 34.531319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260708, -0.873161, -0.411850,
		-0.421661, 0.486749, -0.765035,
		0.868466, -0.025789, -0.495077,
		40.939930, 31.084475, 34.382797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228352, 30.848480, 34.160629>,  <40.332005, 31.102526, 34.729351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228352, 30.848480, 34.160629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622261, 30.779743, 34.171108>,  <40.858608, 30.738501, 34.177395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622261, 30.779743, 34.171108>,  <40.228352, 30.848480, 34.160629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622261, 30.779743, 34.171108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153953, -0.932188, -0.327602,
		0.080717, 0.318581, -0.944453,
		0.984776, -0.171845, 0.026197,
		40.917694, 30.728189, 34.178967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388336, 30.530867, 33.470062>,  <40.228352, 30.848480, 34.160629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388336, 30.530867, 33.470062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670441, 30.437939, 33.737980>,  <40.839703, 30.382181, 33.898731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.670441, 30.437939, 33.737980>,  <40.388336, 30.530867, 33.470062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670441, 30.437939, 33.737980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010070, -0.941403, -0.337132,
		0.708871, 0.244513, -0.661600,
		0.705266, -0.232321, 0.669796,
		40.882019, 30.368242, 33.938919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867229, 30.310730, 33.069271>,  <40.388336, 30.530867, 33.470062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867229, 30.310730, 33.069271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987511, 30.172361, 33.424782>,  <41.059677, 30.089340, 33.638088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.987511, 30.172361, 33.424782>,  <40.867229, 30.310730, 33.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987511, 30.172361, 33.424782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049405, -0.925002, -0.376737,
		0.952439, 0.157194, -0.261056,
		0.300698, -0.345921, 0.888774,
		41.077721, 30.068584, 33.691414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410835, 29.784798, 32.974102>,  <40.867229, 30.310730, 33.069271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410835, 29.784798, 32.974102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262070, 29.708651, 33.337517>,  <41.172810, 29.662962, 33.555565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262070, 29.708651, 33.337517>,  <41.410835, 29.784798, 32.974102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262070, 29.708651, 33.337517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079502, -0.968617, -0.235500,
		0.924857, -0.159816, 0.345106,
		-0.371912, -0.190368, 0.908538,
		41.150497, 29.651541, 33.610077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792252, 29.266256, 33.152470>,  <41.410835, 29.784798, 32.974102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792252, 29.266256, 33.152470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454685, 29.255302, 33.366783>,  <41.252148, 29.248730, 33.495369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.454685, 29.255302, 33.366783>,  <41.792252, 29.266256, 33.152470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.454685, 29.255302, 33.366783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035633, -0.993630, -0.106909,
		0.535295, -0.109313, 0.837562,
		-0.843913, -0.027383, 0.535781,
		41.201511, 29.247087, 33.527519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917862, 28.727312, 33.519016>,  <41.792252, 29.266256, 33.152470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917862, 28.727312, 33.519016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525204, 28.778267, 33.575794>,  <41.289608, 28.808840, 33.609859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525204, 28.778267, 33.575794>,  <41.917862, 28.727312, 33.519016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525204, 28.778267, 33.575794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122026, -0.991465, 0.045894,
		0.146576, 0.027731, 0.988811,
		-0.981644, 0.127388, 0.141941,
		41.230709, 28.816483, 33.618378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692955, 28.489285, 34.073990>,  <41.917862, 28.727312, 33.519016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692955, 28.489285, 34.073990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323864, 28.496250, 33.919964>,  <41.102409, 28.500429, 33.827549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323864, 28.496250, 33.919964>,  <41.692955, 28.489285, 34.073990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323864, 28.496250, 33.919964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085436, -0.983370, 0.160264,
		-0.375866, 0.180778, 0.908870,
		-0.922727, 0.017412, -0.385061,
		41.047047, 28.501474, 33.804447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388710, 27.954821, 34.470520>,  <41.692955, 28.489285, 34.073990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388710, 27.954821, 34.470520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135902, 28.011675, 34.165798>,  <40.984219, 28.045788, 33.982964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.135902, 28.011675, 34.165798>,  <41.388710, 27.954821, 34.470520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135902, 28.011675, 34.165798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249369, -0.968052, 0.026271,
		-0.733735, 0.206575, 0.647271,
		-0.632019, 0.142134, -0.761807,
		40.946297, 28.054316, 33.937256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713173, 27.761896, 34.795681>,  <41.388710, 27.954821, 34.470520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713173, 27.761896, 34.795681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736202, 27.740854, 34.396900>,  <40.750019, 27.728230, 34.157631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736202, 27.740854, 34.396900>,  <40.713173, 27.761896, 34.795681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736202, 27.740854, 34.396900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225871, -0.973403, 0.038316,
		-0.972454, 0.222977, -0.067928,
		0.057578, -0.052603, -0.996954,
		40.753475, 27.725073, 34.097813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212494, 27.293421, 34.613548>,  <40.713173, 27.761896, 34.795681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212494, 27.293421, 34.613548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417496, 27.290756, 34.270084>,  <40.540497, 27.289158, 34.064007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417496, 27.290756, 34.270084>,  <40.212494, 27.293421, 34.613548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417496, 27.290756, 34.270084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312787, -0.932716, -0.179457,
		-0.799690, 0.360550, -0.480104,
		0.512504, -0.006660, -0.858659,
		40.571247, 27.288757, 34.012486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739403, 26.971132, 34.248226>,  <40.212494, 27.293421, 34.613548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739403, 26.971132, 34.248226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096325, 26.924892, 34.073677>,  <40.310478, 26.897148, 33.968948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.096325, 26.924892, 34.073677>,  <39.739403, 26.971132, 34.248226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096325, 26.924892, 34.073677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167799, -0.982330, -0.082894,
		-0.419082, 0.147191, -0.895938,
		0.892308, -0.115598, -0.436375,
		40.364017, 26.890213, 33.942764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662643, 26.612621, 33.548206>,  <39.739403, 26.971132, 34.248226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662643, 26.612621, 33.548206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023117, 26.541224, 33.706200>,  <40.239399, 26.498384, 33.800995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023117, 26.541224, 33.706200>,  <39.662643, 26.612621, 33.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023117, 26.541224, 33.706200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175563, -0.983489, -0.043889,
		0.396298, -0.029793, -0.917638,
		0.901180, -0.178497, 0.394986,
		40.293472, 26.487675, 33.824696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127083, 26.045305, 33.149357>,  <39.662643, 26.612621, 33.548206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127083, 26.045305, 33.149357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225891, 26.048752, 33.536945>,  <40.285175, 26.050819, 33.769497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225891, 26.048752, 33.536945>,  <40.127083, 26.045305, 33.149357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225891, 26.048752, 33.536945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180903, -0.981970, 0.054849,
		0.951973, -0.188839, -0.241012,
		0.247024, 0.008615, 0.968971,
		40.299999, 26.051336, 33.827637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462635, 25.433237, 33.066288>,  <40.127083, 26.045305, 33.149357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462635, 25.433237, 33.066288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370472, 25.427156, 33.455479>,  <40.315174, 25.423508, 33.688992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370472, 25.427156, 33.455479>,  <40.462635, 25.433237, 33.066288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370472, 25.427156, 33.455479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474448, -0.871224, -0.125966,
		0.849594, -0.490649, 0.193528,
		-0.230411, -0.015201, 0.972974,
		40.301350, 25.422596, 33.747372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651352, 24.715979, 33.353043>,  <40.462635, 25.433237, 33.066288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651352, 24.715979, 33.353043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349197, 24.871317, 33.564163>,  <40.167904, 24.964520, 33.690838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349197, 24.871317, 33.564163>,  <40.651352, 24.715979, 33.353043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349197, 24.871317, 33.564163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490437, -0.869244, -0.062335,
		0.434585, -0.305942, 0.847075,
		-0.755386, 0.388348, 0.527806,
		40.122581, 24.987822, 33.722504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239235, 25.045454, 32.975056>,  <40.651352, 24.715979, 33.353043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239235, 25.045454, 32.975056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575069, 25.040056, 32.757832>,  <41.776569, 25.036818, 32.627499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.575069, 25.040056, 32.757832>,  <41.239235, 25.045454, 32.975056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575069, 25.040056, 32.757832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532466, 0.218445, 0.817779,
		0.107590, -0.975756, 0.190591,
		0.839586, -0.013498, -0.543059,
		41.826946, 25.036007, 32.594913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685257, 24.582384, 33.211781>,  <41.239235, 25.045454, 32.975056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685257, 24.582384, 33.211781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942524, 24.829874, 33.031330>,  <42.096886, 24.978369, 32.923061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942524, 24.829874, 33.031330>,  <41.685257, 24.582384, 33.211781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942524, 24.829874, 33.031330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617003, -0.069857, 0.783854,
		0.453476, -0.782495, -0.426685,
		0.643169, 0.618725, -0.451123,
		42.135475, 25.015491, 32.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327305, 24.152306, 33.170757>,  <41.685257, 24.582384, 33.211781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327305, 24.152306, 33.170757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342785, 24.550655, 33.203583>,  <42.352074, 24.789665, 33.223278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.342785, 24.550655, 33.203583>,  <42.327305, 24.152306, 33.170757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342785, 24.550655, 33.203583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600959, -0.088808, 0.794331,
		0.798342, 0.018578, -0.601918,
		0.038698, 0.995876, 0.082064,
		42.354393, 24.849419, 33.228203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986694, 24.507778, 33.402447>,  <42.327305, 24.152306, 33.170757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.986694, 24.507778, 33.402447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695477, 24.753201, 33.524761>,  <42.520744, 24.900454, 33.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695477, 24.753201, 33.524761>,  <42.986694, 24.507778, 33.402447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695477, 24.753201, 33.524761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351585, -0.048738, 0.934886,
		0.588508, 0.788146, -0.180233,
		-0.728043, 0.613555, 0.305783,
		42.477062, 24.937267, 33.616497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288857, 25.140705, 33.711952>,  <42.986694, 24.507778, 33.402447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288857, 25.140705, 33.711952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921467, 25.070835, 33.853874>,  <42.701031, 25.028913, 33.939030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.921467, 25.070835, 33.853874>,  <43.288857, 25.140705, 33.711952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921467, 25.070835, 33.853874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356638, 0.021879, 0.933987,
		-0.170909, 0.984383, 0.042201,
		-0.918477, -0.174677, 0.354807,
		42.645924, 25.018433, 33.960316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352398, 25.067104, 34.504295>,  <43.288857, 25.140705, 33.711952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352398, 25.067104, 34.504295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020210, 25.277548, 34.431053>,  <42.820896, 25.403814, 34.387108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020210, 25.277548, 34.431053>,  <43.352398, 25.067104, 34.504295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020210, 25.277548, 34.431053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057341, 0.246222, 0.967516,
		0.554102, 0.813994, -0.174313,
		-0.830471, 0.526107, -0.183107,
		42.771069, 25.435381, 34.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518559, 25.481071, 35.061394>,  <43.352398, 25.067104, 34.504295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518559, 25.481071, 35.061394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134178, 25.493912, 34.951458>,  <42.903549, 25.501616, 34.885498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134178, 25.493912, 34.951458>,  <43.518559, 25.481071, 35.061394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134178, 25.493912, 34.951458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257740, 0.257531, 0.931261,
		0.100675, 0.965737, -0.239202,
		-0.960955, 0.032103, -0.274836,
		42.845890, 25.503542, 34.869007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121391, 26.157255, 35.063801>,  <43.518559, 25.481071, 35.061394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121391, 26.157255, 35.063801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185444, 26.165525, 35.458553>,  <43.223877, 26.170486, 35.695404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185444, 26.165525, 35.458553>,  <43.121391, 26.157255, 35.063801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185444, 26.165525, 35.458553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339934, 0.939780, 0.035471,
		-0.926716, -0.341154, 0.157516,
		0.160131, 0.020674, 0.986879,
		43.233482, 26.171728, 35.754616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559490, 26.418934, 35.398914>,  <43.121391, 26.157255, 35.063801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559490, 26.418934, 35.398914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 26.504339, 35.646965>,  <43.042618, 26.555582, 35.795795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861446, 26.504339, 35.646965>,  <42.559490, 26.418934, 35.398914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861446, 26.504339, 35.646965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174561, 0.976829, -0.123830,
		-0.632199, -0.014772, 0.774665,
		0.754886, 0.213512, 0.620129,
		43.087914, 26.568392, 35.833004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504452, 27.097385, 35.293385>,  <42.559490, 26.418934, 35.398914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504452, 27.097385, 35.293385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786240, 27.065693, 35.575504>,  <42.955311, 27.046677, 35.744778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.786240, 27.065693, 35.575504>,  <42.504452, 27.097385, 35.293385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.786240, 27.065693, 35.575504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163030, 0.985241, -0.052159,
		-0.690757, 0.151729, 0.706988,
		0.704468, -0.079231, 0.705299,
		42.997581, 27.041924, 35.787094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.336758, 27.507137, 35.791939>,  <42.504452, 27.097385, 35.293385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.336758, 27.507137, 35.791939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729691, 27.446514, 35.835846>,  <42.965450, 27.410141, 35.862190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729691, 27.446514, 35.835846>,  <42.336758, 27.507137, 35.791939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729691, 27.446514, 35.835846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135925, 0.981044, 0.138118,
		-0.128616, -0.120758, 0.984315,
		0.982335, -0.151557, 0.109764,
		43.024391, 27.401047, 35.868774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550190, 27.835442, 36.373802>,  <42.336758, 27.507137, 35.791939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550190, 27.835442, 36.373802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873798, 27.795649, 36.142078>,  <43.067963, 27.771772, 36.003044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873798, 27.795649, 36.142078>,  <42.550190, 27.835442, 36.373802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873798, 27.795649, 36.142078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258558, 0.945331, 0.198741,
		0.527864, -0.310568, 0.790511,
		0.809017, -0.099485, -0.579306,
		43.116505, 27.765802, 35.968288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045456, 28.259811, 36.676468>,  <42.550190, 27.835442, 36.373802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045456, 28.259811, 36.676468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190411, 28.217827, 36.306026>,  <43.277382, 28.192636, 36.083763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190411, 28.217827, 36.306026>,  <43.045456, 28.259811, 36.676468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190411, 28.217827, 36.306026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447447, 0.891238, 0.074074,
		0.817600, -0.441223, 0.369937,
		0.362385, -0.104964, -0.926099,
		43.299126, 28.186338, 36.028198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742702, 28.489300, 36.739471>,  <43.045456, 28.259811, 36.676468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742702, 28.489300, 36.739471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662315, 28.508232, 36.348091>,  <43.614082, 28.519592, 36.113262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662315, 28.508232, 36.348091>,  <43.742702, 28.489300, 36.739471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662315, 28.508232, 36.348091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359065, 0.932873, -0.028624,
		0.911418, -0.357081, -0.204473,
		-0.200968, 0.047331, -0.978454,
		43.602024, 28.522430, 36.054554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457050, 28.637545, 36.416004>,  <43.742702, 28.489300, 36.739471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457050, 28.637545, 36.416004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161156, 28.744499, 36.169006>,  <43.983620, 28.808672, 36.020809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161156, 28.744499, 36.169006>,  <44.457050, 28.637545, 36.416004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161156, 28.744499, 36.169006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364127, 0.930758, -0.033174,
		0.565866, -0.249386, -0.785877,
		-0.739735, 0.267387, -0.617492,
		43.939236, 28.824715, 35.983757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745720, 29.212814, 36.069324>,  <44.457050, 28.637545, 36.416004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745720, 29.212814, 36.069324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365730, 29.281118, 35.964714>,  <44.137737, 29.322102, 35.901947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365730, 29.281118, 35.964714>,  <44.745720, 29.212814, 36.069324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365730, 29.281118, 35.964714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146217, 0.983035, 0.110737,
		0.275999, 0.066957, -0.958823,
		-0.949971, 0.170759, -0.261526,
		44.080738, 29.332346, 35.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738598, 29.788382, 35.580891>,  <44.745720, 29.212814, 36.069324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738598, 29.788382, 35.580891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372570, 29.762627, 35.740143>,  <44.152954, 29.747173, 35.835693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.372570, 29.762627, 35.740143>,  <44.738598, 29.788382, 35.580891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.372570, 29.762627, 35.740143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029064, 0.995135, 0.094136,
		-0.402251, 0.074570, -0.912487,
		-0.915068, -0.064387, 0.398127,
		44.098049, 29.743311, 35.859581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320240, 30.271179, 35.201290>,  <44.738598, 29.788382, 35.580891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320240, 30.271179, 35.201290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166134, 30.209843, 35.565281>,  <44.073669, 30.173040, 35.783676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166134, 30.209843, 35.565281>,  <44.320240, 30.271179, 35.201290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166134, 30.209843, 35.565281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021455, 0.987319, 0.157292,
		-0.922555, 0.041076, -0.383674,
		-0.385270, -0.153343, 0.909974,
		44.050552, 30.163839, 35.838272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754597, 30.683519, 35.163773>,  <44.320240, 30.271179, 35.201290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754597, 30.683519, 35.163773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845367, 30.638760, 35.550758>,  <43.899830, 30.611904, 35.782948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.845367, 30.638760, 35.550758>,  <43.754597, 30.683519, 35.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.845367, 30.638760, 35.550758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146204, 0.978206, 0.147437,
		-0.962876, -0.174904, 0.205619,
		0.226925, -0.111901, 0.967462,
		43.913445, 30.605188, 35.840996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298130, 31.037954, 35.412796>,  <43.754597, 30.683519, 35.163773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298130, 31.037954, 35.412796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597446, 30.997129, 35.674988>,  <43.777035, 30.972633, 35.832302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597446, 30.997129, 35.674988>,  <43.298130, 31.037954, 35.412796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597446, 30.997129, 35.674988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080009, 0.994766, 0.063556,
		-0.658533, 0.004886, 0.752537,
		0.748287, -0.102063, 0.655477,
		43.821934, 30.966511, 35.871632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050713, 31.417398, 35.942284>,  <43.298130, 31.037954, 35.412796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050713, 31.417398, 35.942284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439556, 31.375448, 36.026196>,  <43.672863, 31.350279, 36.076542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439556, 31.375448, 36.026196>,  <43.050713, 31.417398, 35.942284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439556, 31.375448, 36.026196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067464, 0.981687, 0.178153,
		-0.224622, -0.159031, 0.961381,
		0.972108, -0.104876, 0.209780,
		43.731190, 31.343987, 36.089130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156921, 31.837698, 36.478901>,  <43.050713, 31.417398, 35.942284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156921, 31.837698, 36.478901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544132, 31.786057, 36.392872>,  <43.776459, 31.755072, 36.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544132, 31.786057, 36.392872>,  <43.156921, 31.837698, 36.478901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544132, 31.786057, 36.392872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154532, 0.982297, 0.105890,
		0.197596, -0.135740, 0.970840,
		0.968027, -0.129102, -0.215074,
		43.834541, 31.747326, 36.328350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518219, 32.068470, 37.009960>,  <43.156921, 31.837698, 36.478901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518219, 32.068470, 37.009960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751366, 32.093021, 36.685863>,  <43.891254, 32.107754, 36.491405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.751366, 32.093021, 36.685863>,  <43.518219, 32.068470, 37.009960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.751366, 32.093021, 36.685863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106358, 0.982801, 0.150964,
		0.805574, -0.174168, 0.566318,
		0.582871, 0.061380, -0.810243,
		43.926228, 32.111435, 36.442791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862488, 32.672768, 37.254059>,  <43.518219, 32.068470, 37.009960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862488, 32.672768, 37.254059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929176, 32.593063, 36.867794>,  <43.969189, 32.545242, 36.636036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.929176, 32.593063, 36.867794>,  <43.862488, 32.672768, 37.254059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.929176, 32.593063, 36.867794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294940, 0.944605, -0.143989,
		0.940858, -0.260805, 0.216259,
		0.166726, -0.199257, -0.965660,
		43.979195, 32.533287, 36.578094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.515865, 32.716007, 37.028496>,  <43.862488, 32.672768, 37.254059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.515865, 32.716007, 37.028496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285408, 32.801655, 36.712975>,  <44.147133, 32.853043, 36.523663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285408, 32.801655, 36.712975>,  <44.515865, 32.716007, 37.028496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285408, 32.801655, 36.712975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430041, 0.900109, -0.069773,
		0.695073, -0.379418, -0.610669,
		-0.576141, 0.214116, -0.788806,
		44.112564, 32.865891, 36.476334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961395, 33.045666, 36.749176>,  <44.515865, 32.716007, 37.028496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961395, 33.045666, 36.749176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666340, 33.130386, 36.492729>,  <44.489307, 33.181221, 36.338860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.666340, 33.130386, 36.492729>,  <44.961395, 33.045666, 36.749176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.666340, 33.130386, 36.492729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298935, 0.953838, -0.028823,
		0.605418, -0.212914, -0.766901,
		-0.737636, 0.211804, -0.641118,
		44.445049, 33.193928, 36.300392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267422, 33.504219, 36.345280>,  <44.961395, 33.045666, 36.749176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267422, 33.504219, 36.345280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880753, 33.555515, 36.256653>,  <44.648750, 33.586292, 36.203476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.880753, 33.555515, 36.256653>,  <45.267422, 33.504219, 36.345280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880753, 33.555515, 36.256653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176637, 0.960577, -0.214690,
		0.185298, -0.246672, -0.951219,
		-0.966677, 0.128239, -0.221564,
		44.590748, 33.593987, 36.190182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654236, 33.994255, 35.812943>,  <45.267422, 33.504219, 36.345280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654236, 33.994255, 35.812943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357815, 34.150715, 36.031242>,  <45.179962, 34.244591, 36.162224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.357815, 34.150715, 36.031242>,  <45.654236, 33.994255, 35.812943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.357815, 34.150715, 36.031242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543191, 0.827024, 0.144829,
		-0.394698, 0.403772, -0.825337,
		-0.741051, 0.391152, 0.545750,
		45.135498, 34.268059, 36.194969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.741219, 34.692310, 35.605694>,  <45.654236, 33.994255, 35.812943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.741219, 34.692310, 35.605694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027744, 34.693378, 35.884800>,  <46.199661, 34.694019, 36.052265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027744, 34.693378, 35.884800>,  <45.741219, 34.692310, 35.605694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027744, 34.693378, 35.884800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665673, 0.297207, -0.684505,
		-0.209209, 0.954809, 0.211119,
		0.716318, 0.002668, 0.697769,
		46.242641, 34.694180, 36.094131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107479, 35.417065, 35.536690>,  <45.741219, 34.692310, 35.605694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107479, 35.417065, 35.536690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321545, 35.122570, 35.702366>,  <46.449986, 34.945873, 35.801773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.321545, 35.122570, 35.702366>,  <46.107479, 35.417065, 35.536690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.321545, 35.122570, 35.702366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785589, 0.253497, -0.564437,
		0.310565, 0.627448, 0.714043,
		0.535163, -0.736239, 0.414189,
		46.482094, 34.901699, 35.826622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536583, 34.944237, 34.996727>,  <46.107479, 35.417065, 35.536690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536583, 34.944237, 34.996727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495296, 34.547352, 35.024605>,  <46.470524, 34.309219, 35.041332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495296, 34.547352, 35.024605>,  <46.536583, 34.944237, 34.996727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495296, 34.547352, 35.024605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896684, 0.123148, 0.425196,
		-0.430469, -0.018609, -0.902414,
		-0.103218, -0.992214, 0.069697,
		46.464333, 34.249687, 35.045513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.325718, 34.849300, 34.976635>,  <46.536583, 34.944237, 34.996727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.325718, 34.849300, 34.976635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649448, 34.776733, 35.200089>,  <47.843689, 34.733192, 35.334160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649448, 34.776733, 35.200089>,  <47.325718, 34.849300, 34.976635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649448, 34.776733, 35.200089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574341, 0.443556, -0.688034,
		-0.122966, 0.877694, 0.463177,
		0.809328, -0.181417, 0.558638,
		47.892246, 34.722309, 35.367680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.822094, 34.558266, 43.489151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435989, 34.551296, 43.384872>,  <34.204327, 34.547115, 43.322304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435989, 34.551296, 43.384872>,  <34.822094, 34.558266, 43.489151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435989, 34.551296, 43.384872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223255, 0.463353, -0.857590,
		0.135737, -0.886002, -0.443368,
		-0.965263, -0.017422, -0.260698,
		34.146412, 34.546070, 43.306664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662033, 34.016525, 42.857361>,  <34.822094, 34.558266, 43.489151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662033, 34.016525, 42.857361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402901, 34.320282, 42.881500>,  <34.247421, 34.502537, 42.895985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.402901, 34.320282, 42.881500>,  <34.662033, 34.016525, 42.857361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402901, 34.320282, 42.881500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279078, 0.310295, -0.908753,
		-0.708821, -0.571880, -0.412948,
		-0.647834, 0.759388, 0.060345,
		34.208549, 34.548100, 42.899605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367229, 34.070625, 42.161694>,  <34.662033, 34.016525, 42.857361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367229, 34.070625, 42.161694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272976, 34.418793, 42.334595>,  <34.216423, 34.627693, 42.438335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272976, 34.418793, 42.334595>,  <34.367229, 34.070625, 42.161694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272976, 34.418793, 42.334595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106120, 0.465160, -0.878843,
		-0.966031, -0.161212, -0.201975,
		-0.235631, 0.870423, 0.432252,
		34.202286, 34.679920, 42.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884499, 34.366821, 41.625729>,  <34.367229, 34.070625, 42.161694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884499, 34.366821, 41.625729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973499, 34.680878, 41.856915>,  <34.026901, 34.869312, 41.995628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973499, 34.680878, 41.856915>,  <33.884499, 34.366821, 41.625729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973499, 34.680878, 41.856915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014573, 0.595440, -0.803267,
		-0.974823, 0.170307, 0.143930,
		0.222504, 0.785141, 0.577967,
		34.040249, 34.916420, 42.030304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556866, 34.845280, 41.340908>,  <33.884499, 34.366821, 41.625729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556866, 34.845280, 41.340908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788166, 35.065540, 41.581711>,  <33.926945, 35.197697, 41.726192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.788166, 35.065540, 41.581711>,  <33.556866, 34.845280, 41.340908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788166, 35.065540, 41.581711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043820, 0.715856, -0.696871,
		-0.814683, 0.429345, 0.389814,
		0.578249, 0.550647, 0.602010,
		33.961639, 35.230736, 41.762314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323860, 35.517288, 41.425999>,  <33.556866, 34.845280, 41.340908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323860, 35.517288, 41.425999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721218, 35.521412, 41.471706>,  <33.959633, 35.523888, 41.499130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.721218, 35.521412, 41.471706>,  <33.323860, 35.517288, 41.425999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721218, 35.521412, 41.471706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076004, 0.686914, -0.722754,
		-0.085943, 0.726666, 0.681594,
		0.993397, 0.010311, 0.114265,
		34.019238, 35.524506, 41.505985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396694, 36.155823, 41.630371>,  <33.323860, 35.517288, 41.425999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396694, 36.155823, 41.630371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728794, 36.000496, 41.470421>,  <33.928055, 35.907299, 41.374451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.728794, 36.000496, 41.470421>,  <33.396694, 36.155823, 41.630371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728794, 36.000496, 41.470421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113516, 0.584565, -0.803366,
		0.545715, 0.712384, 0.441253,
		0.830246, -0.388320, -0.399873,
		33.977867, 35.883999, 41.350460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847729, 36.706203, 41.449375>,  <33.396694, 36.155823, 41.630371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847729, 36.706203, 41.449375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946960, 36.392597, 41.221771>,  <34.006500, 36.204433, 41.085209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946960, 36.392597, 41.221771>,  <33.847729, 36.706203, 41.449375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946960, 36.392597, 41.221771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293174, 0.499067, -0.815464,
		0.923311, 0.369122, -0.106043,
		0.248083, -0.784016, -0.569011,
		34.021385, 36.157391, 41.051067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107441, 37.029835, 40.792030>,  <33.847729, 36.706203, 41.449375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107441, 37.029835, 40.792030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098694, 36.642136, 40.693981>,  <34.093445, 36.409515, 40.635151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098694, 36.642136, 40.693981>,  <34.107441, 37.029835, 40.792030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098694, 36.642136, 40.693981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205388, 0.244303, -0.947698,
		0.978436, 0.029620, -0.204415,
		-0.021869, -0.969246, -0.245119,
		34.092133, 36.351360, 40.620445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708214, 36.978561, 40.417797>,  <34.107441, 37.029835, 40.792030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708214, 36.978561, 40.417797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436337, 36.698181, 40.331360>,  <34.273212, 36.529953, 40.279499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436337, 36.698181, 40.331360>,  <34.708214, 36.978561, 40.417797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436337, 36.698181, 40.331360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060471, 0.347152, -0.935857,
		0.731003, -0.623024, -0.278343,
		-0.679689, -0.700947, -0.216095,
		34.232430, 36.487896, 40.266533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899990, 36.550190, 39.840179>,  <34.708214, 36.978561, 40.417797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899990, 36.550190, 39.840179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501663, 36.566505, 39.872864>,  <34.262665, 36.576294, 39.892475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501663, 36.566505, 39.872864>,  <34.899990, 36.550190, 39.840179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501663, 36.566505, 39.872864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064132, 0.324718, -0.943634,
		-0.065019, -0.944931, -0.320745,
		-0.995821, 0.040784, 0.081714,
		34.202915, 36.578739, 39.897377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706444, 36.483559, 39.187733>,  <34.899990, 36.550190, 39.840179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706444, 36.483559, 39.187733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400017, 36.637608, 39.393578>,  <34.216160, 36.730038, 39.517082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400017, 36.637608, 39.393578>,  <34.706444, 36.483559, 39.187733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400017, 36.637608, 39.393578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145961, 0.675474, -0.722793,
		-0.625970, -0.628820, -0.461245,
		-0.766066, 0.385124, 0.514610,
		34.170197, 36.753143, 39.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192944, 36.577175, 38.712673>,  <34.706444, 36.483559, 39.187733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192944, 36.577175, 38.712673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.134201, 36.844448, 39.004417>,  <34.098953, 37.004810, 39.179462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.134201, 36.844448, 39.004417>,  <34.192944, 36.577175, 38.712673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134201, 36.844448, 39.004417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079617, 0.726978, -0.682030,
		-0.985948, -0.158233, -0.053566,
		-0.146861, 0.668181, 0.729360,
		34.090141, 37.044903, 39.223225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547642, 36.901905, 38.592091>,  <34.192944, 36.577175, 38.712673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547642, 36.901905, 38.592091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774300, 37.155903, 38.802120>,  <33.910294, 37.308300, 38.928139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.774300, 37.155903, 38.802120>,  <33.547642, 36.901905, 38.592091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774300, 37.155903, 38.802120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095372, 0.683518, -0.723677,
		-0.818427, 0.359986, 0.447869,
		0.566640, 0.634991, 0.525077,
		33.944290, 37.346401, 38.959644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246620, 37.547749, 38.435757>,  <33.547642, 36.901905, 38.592091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246620, 37.547749, 38.435757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595150, 37.636543, 38.610806>,  <33.804268, 37.689819, 38.715836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.595150, 37.636543, 38.610806>,  <33.246620, 37.547749, 38.435757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595150, 37.636543, 38.610806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091905, 0.802216, -0.589918,
		-0.482023, 0.554230, 0.678589,
		0.871325, 0.221988, 0.437623,
		33.856548, 37.703140, 38.742092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279804, 38.288673, 38.452816>,  <33.246620, 37.547749, 38.435757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279804, 38.288673, 38.452816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661308, 38.178844, 38.501743>,  <33.890209, 38.112949, 38.531101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.661308, 38.178844, 38.501743>,  <33.279804, 38.288673, 38.452816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661308, 38.178844, 38.501743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287308, 0.713139, -0.639442,
		0.088340, 0.645015, 0.759046,
		0.953756, -0.274568, 0.122320,
		33.947433, 38.096474, 38.538441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686176, 38.853081, 38.454353>,  <33.279804, 38.288673, 38.452816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686176, 38.853081, 38.454353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970791, 38.588890, 38.358456>,  <34.141560, 38.430374, 38.300919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.970791, 38.588890, 38.358456>,  <33.686176, 38.853081, 38.454353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970791, 38.588890, 38.358456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351127, 0.629778, -0.692885,
		0.608624, 0.408832, 0.680024,
		0.711538, -0.660481, -0.239745,
		34.184254, 38.390747, 38.286533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419544, 39.085445, 38.549675>,  <33.686176, 38.853081, 38.454353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419544, 39.085445, 38.549675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449387, 38.803642, 38.267372>,  <34.467293, 38.634560, 38.097988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.449387, 38.803642, 38.267372>,  <34.419544, 39.085445, 38.549675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449387, 38.803642, 38.267372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257653, 0.697320, -0.668850,
		0.963353, -0.131944, 0.233541,
		0.074602, -0.704511, -0.705761,
		34.471767, 38.592289, 38.055645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977055, 39.312904, 38.104797>,  <34.419544, 39.085445, 38.549675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977055, 39.312904, 38.104797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747604, 39.072578, 37.882099>,  <34.609932, 38.928383, 37.748482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747604, 39.072578, 37.882099>,  <34.977055, 39.312904, 38.104797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747604, 39.072578, 37.882099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082329, 0.633961, -0.768970,
		0.814968, -0.486939, -0.314193,
		-0.573628, -0.600819, -0.556747,
		34.575516, 38.892334, 37.715076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374458, 39.282883, 37.614822>,  <34.977055, 39.312904, 38.104797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374458, 39.282883, 37.614822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039822, 39.143684, 37.445583>,  <34.839039, 39.060165, 37.344040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.039822, 39.143684, 37.445583>,  <35.374458, 39.282883, 37.614822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039822, 39.143684, 37.445583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185349, 0.546972, -0.816375,
		0.515510, -0.761396, -0.393096,
		-0.836597, -0.347990, -0.423094,
		34.788845, 39.039288, 37.318653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574963, 39.075218, 36.951347>,  <35.374458, 39.282883, 37.614822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574963, 39.075218, 36.951347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178471, 39.122639, 36.928017>,  <34.940575, 39.151093, 36.914021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.178471, 39.122639, 36.928017>,  <35.574963, 39.075218, 36.951347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178471, 39.122639, 36.928017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099674, 0.381242, -0.919086,
		-0.086724, -0.916842, -0.389717,
		-0.991234, 0.118552, -0.058322,
		34.881100, 39.158203, 36.910519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329681, 38.858273, 36.233780>,  <35.574963, 39.075218, 36.951347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329681, 38.858273, 36.233780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024673, 39.070255, 36.382210>,  <34.841667, 39.197445, 36.471268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.024673, 39.070255, 36.382210>,  <35.329681, 38.858273, 36.233780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024673, 39.070255, 36.382210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146000, 0.417815, -0.896724,
		-0.630270, -0.737952, -0.241220,
		-0.762524, 0.529960, 0.371077,
		34.795918, 39.229244, 36.493534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972893, 38.498013, 35.759850>,  <35.329681, 38.858273, 36.233780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972893, 38.498013, 35.759850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361942, 38.528816, 35.672150>,  <35.595371, 38.547298, 35.619530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.361942, 38.528816, 35.672150>,  <34.972893, 38.498013, 35.759850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361942, 38.528816, 35.672150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223868, -0.563502, 0.795204,
		-0.062308, -0.822518, -0.565316,
		0.972626, 0.077008, -0.219246,
		35.653728, 38.551918, 35.606377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232937, 37.825760, 35.815239>,  <34.972893, 38.498013, 35.759850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232937, 37.825760, 35.815239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549969, 38.066231, 35.856049>,  <35.740189, 38.210514, 35.880535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.549969, 38.066231, 35.856049>,  <35.232937, 37.825760, 35.815239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549969, 38.066231, 35.856049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268064, -0.493800, 0.827226,
		0.547686, -0.628294, -0.552528,
		0.792579, 0.601173, 0.102025,
		35.787743, 38.246582, 35.886658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736683, 37.366085, 36.019245>,  <35.232937, 37.825760, 35.815239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736683, 37.366085, 36.019245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877861, 37.725273, 36.124371>,  <35.962566, 37.940788, 36.187447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877861, 37.725273, 36.124371>,  <35.736683, 37.366085, 36.019245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877861, 37.725273, 36.124371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503220, -0.418989, 0.755790,
		0.788796, -0.134500, -0.599759,
		0.352946, 0.897974, 0.262814,
		35.983746, 37.994667, 36.203217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422718, 37.291618, 36.117825>,  <35.736683, 37.366085, 36.019245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422718, 37.291618, 36.117825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384983, 37.636105, 36.317589>,  <36.362343, 37.842796, 36.437447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384983, 37.636105, 36.317589>,  <36.422718, 37.291618, 36.117825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384983, 37.636105, 36.317589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443454, -0.412777, 0.795590,
		0.891318, 0.296523, -0.342967,
		-0.094342, 0.861214, 0.499410,
		36.356682, 37.894470, 36.467411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084660, 37.423992, 36.503899>,  <36.422718, 37.291618, 36.117825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084660, 37.423992, 36.503899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805111, 37.631638, 36.700714>,  <36.637383, 37.756226, 36.818802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805111, 37.631638, 36.700714>,  <37.084660, 37.423992, 36.503899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805111, 37.631638, 36.700714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323725, -0.383855, 0.864787,
		0.637797, 0.763658, 0.100213,
		-0.698869, 0.519117, 0.492037,
		36.595451, 37.787373, 36.848324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433788, 37.552605, 37.089550>,  <37.084660, 37.423992, 36.503899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433788, 37.552605, 37.089550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043911, 37.591805, 37.169910>,  <36.809982, 37.615326, 37.218124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043911, 37.591805, 37.169910>,  <37.433788, 37.552605, 37.089550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043911, 37.591805, 37.169910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107346, -0.583104, 0.805274,
		0.196064, 0.806464, 0.557830,
		-0.974698, 0.098004, 0.200897,
		36.751503, 37.621204, 37.230179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378998, 37.766968, 37.784363>,  <37.433788, 37.552605, 37.089550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378998, 37.766968, 37.784363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033245, 37.581558, 37.706409>,  <36.825794, 37.470310, 37.659637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.033245, 37.581558, 37.706409>,  <37.378998, 37.766968, 37.784363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033245, 37.581558, 37.706409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082467, -0.513016, 0.854409,
		-0.496021, 0.722467, 0.481669,
		-0.864385, -0.463527, -0.194887,
		36.773930, 37.442501, 37.647942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024921, 37.991356, 38.357704>,  <37.378998, 37.766968, 37.784363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024921, 37.991356, 38.357704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823139, 37.676971, 38.214714>,  <36.702068, 37.488342, 38.128918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.823139, 37.676971, 38.214714>,  <37.024921, 37.991356, 38.357704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823139, 37.676971, 38.214714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053910, -0.441880, 0.895453,
		-0.861753, 0.432445, 0.265280,
		-0.504456, -0.785960, -0.357478,
		36.671803, 37.441185, 38.107471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674660, 37.780682, 38.865005>,  <37.024921, 37.991356, 38.357704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674660, 37.780682, 38.865005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620918, 37.450996, 38.644958>,  <36.588673, 37.253185, 38.512932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620918, 37.450996, 38.644958>,  <36.674660, 37.780682, 38.865005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620918, 37.450996, 38.644958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027264, -0.558011, 0.829386,
		-0.990558, 0.096434, 0.097442,
		-0.134354, -0.824211, -0.550113,
		36.580612, 37.203732, 38.479923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084846, 37.379524, 39.101669>,  <36.674660, 37.780682, 38.865005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084846, 37.379524, 39.101669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304688, 37.117626, 38.894112>,  <36.436592, 36.960487, 38.769577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.304688, 37.117626, 38.894112>,  <36.084846, 37.379524, 39.101669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304688, 37.117626, 38.894112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201390, -0.706625, 0.678325,
		-0.810791, -0.268308, -0.520220,
		0.549600, -0.654746, -0.518890,
		36.469566, 36.921204, 38.738445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711826, 36.682278, 39.161682>,  <36.084846, 37.379524, 39.101669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711826, 36.682278, 39.161682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091255, 36.621563, 39.050564>,  <36.318913, 36.585133, 38.983894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.091255, 36.621563, 39.050564>,  <35.711826, 36.682278, 39.161682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091255, 36.621563, 39.050564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104399, -0.678444, 0.727196,
		-0.298845, -0.718801, -0.627708,
		0.948574, -0.151787, -0.277791,
		36.375828, 36.576027, 38.967228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800041, 35.979031, 39.085087>,  <35.711826, 36.682278, 39.161682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800041, 35.979031, 39.085087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171864, 36.107906, 39.156773>,  <36.394958, 36.185230, 39.199783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.171864, 36.107906, 39.156773>,  <35.800041, 35.979031, 39.085087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171864, 36.107906, 39.156773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110187, -0.706671, 0.698910,
		0.351830, -0.629929, -0.692391,
		0.929556, 0.322190, 0.179218,
		36.450729, 36.204563, 39.210537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256828, 35.396664, 38.931187>,  <35.800041, 35.979031, 39.085087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256828, 35.396664, 38.931187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439781, 35.657158, 39.173405>,  <36.549553, 35.813454, 39.318737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439781, 35.657158, 39.173405>,  <36.256828, 35.396664, 38.931187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439781, 35.657158, 39.173405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284348, -0.752304, 0.594294,
		0.842582, -0.099636, -0.529271,
		0.457386, 0.651239, 0.605546,
		36.576996, 35.852528, 39.355068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807419, 34.992863, 39.159443>,  <36.256828, 35.396664, 38.931187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807419, 34.992863, 39.159443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786835, 35.298843, 39.416252>,  <36.774483, 35.482433, 39.570339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.786835, 35.298843, 39.416252>,  <36.807419, 34.992863, 39.159443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786835, 35.298843, 39.416252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257463, -0.610984, 0.748606,
		0.964917, 0.203823, -0.165505,
		-0.051462, 0.764954, 0.642025,
		36.771397, 35.528328, 39.608860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407784, 35.069763, 39.512051>,  <36.807419, 34.992863, 39.159443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407784, 35.069763, 39.512051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147369, 35.272961, 39.737652>,  <36.991119, 35.394878, 39.873013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147369, 35.272961, 39.737652>,  <37.407784, 35.069763, 39.512051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147369, 35.272961, 39.737652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415346, -0.383508, 0.824869,
		0.635326, 0.771274, 0.038685,
		-0.651037, 0.507993, 0.563998,
		36.952057, 35.425358, 39.906853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811146, 35.351959, 40.083263>,  <37.407784, 35.069763, 39.512051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811146, 35.351959, 40.083263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426682, 35.309944, 40.185356>,  <37.196003, 35.284733, 40.246613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.426682, 35.309944, 40.185356>,  <37.811146, 35.351959, 40.083263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426682, 35.309944, 40.185356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276003, -0.368595, 0.887671,
		0.000836, 0.923636, 0.383269,
		-0.961156, -0.105041, 0.255235,
		37.138336, 35.278431, 40.261925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725380, 35.508297, 40.734020>,  <37.811146, 35.351959, 40.083263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725380, 35.508297, 40.734020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354996, 35.367943, 40.678200>,  <37.132767, 35.283730, 40.644707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.354996, 35.367943, 40.678200>,  <37.725380, 35.508297, 40.734020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354996, 35.367943, 40.678200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051180, -0.482769, 0.874251,
		-0.374133, 0.802381, 0.464983,
		-0.925962, -0.350884, -0.139554,
		37.077206, 35.262676, 40.636333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419434, 35.468613, 41.385689>,  <37.725380, 35.508297, 40.734020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419434, 35.468613, 41.385689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178921, 35.228493, 41.174747>,  <37.034611, 35.084423, 41.048183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.178921, 35.228493, 41.174747>,  <37.419434, 35.468613, 41.385689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178921, 35.228493, 41.174747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042494, -0.635030, 0.771318,
		-0.797905, 0.486190, 0.356325,
		-0.601284, -0.600297, -0.527353,
		36.998535, 35.048405, 41.016541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.838970, 35.338608, 41.851498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812458, 35.038700, 41.588146>,  <36.796551, 34.858757, 41.430138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.812458, 35.038700, 41.588146>,  <36.838970, 35.338608, 41.851498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812458, 35.038700, 41.588146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278334, -0.619744, 0.733790,
		-0.958195, 0.231886, -0.167607,
		-0.066282, -0.749764, -0.658377,
		36.792572, 34.813770, 41.390633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134663, 35.188511, 41.824619>,  <36.838970, 35.338608, 41.851498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134663, 35.188511, 41.824619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351646, 34.879421, 41.692776>,  <36.481838, 34.693970, 41.613670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351646, 34.879421, 41.692776>,  <36.134663, 35.188511, 41.824619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351646, 34.879421, 41.692776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327579, -0.555856, 0.764013,
		-0.773582, -0.306474, -0.554657,
		0.542460, -0.772721, -0.329606,
		36.514385, 34.647606, 41.593895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723534, 34.554726, 41.830734>,  <36.134663, 35.188511, 41.824619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723534, 34.554726, 41.830734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093349, 34.402954, 41.844963>,  <36.315239, 34.311890, 41.853500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093349, 34.402954, 41.844963>,  <35.723534, 34.554726, 41.830734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093349, 34.402954, 41.844963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240695, -0.509003, 0.826427,
		-0.295464, -0.772625, -0.561918,
		0.924536, -0.379430, 0.035574,
		36.370708, 34.289124, 41.855637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613361, 33.861530, 41.990253>,  <35.723534, 34.554726, 41.830734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613361, 33.861530, 41.990253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988407, 33.937397, 42.106804>,  <36.213436, 33.982918, 42.176735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.988407, 33.937397, 42.106804>,  <35.613361, 33.861530, 41.990253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988407, 33.937397, 42.106804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162412, -0.502083, 0.849432,
		0.307402, -0.843766, -0.439958,
		0.937617, 0.189663, 0.291379,
		36.269691, 33.994297, 42.194218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892071, 33.165279, 42.147758>,  <35.613361, 33.861530, 41.990253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892071, 33.165279, 42.147758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120247, 33.426571, 42.346912>,  <36.257153, 33.583347, 42.466404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.120247, 33.426571, 42.346912>,  <35.892071, 33.165279, 42.147758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120247, 33.426571, 42.346912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173559, -0.496629, 0.850433,
		0.802792, -0.571534, -0.169924,
		0.570441, 0.653229, 0.497885,
		36.291378, 33.622540, 42.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355560, 32.770447, 42.377880>,  <35.892071, 33.165279, 42.147758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355560, 32.770447, 42.377880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369942, 33.096981, 42.608463>,  <36.378571, 33.292900, 42.746815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.369942, 33.096981, 42.608463>,  <36.355560, 32.770447, 42.377880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369942, 33.096981, 42.608463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098293, -0.576927, 0.810859,
		0.994508, 0.027508, -0.100983,
		0.035955, 0.816332, 0.576463,
		36.380730, 33.341881, 42.781403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866425, 32.671497, 42.879627>,  <36.355560, 32.770447, 42.377880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866425, 32.671497, 42.879627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692886, 32.979996, 43.065941>,  <36.588764, 33.165096, 43.177731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.692886, 32.979996, 43.065941>,  <36.866425, 32.671497, 42.879627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692886, 32.979996, 43.065941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131329, -0.457316, 0.879554,
		0.891365, 0.442760, 0.097116,
		-0.433844, 0.771249, 0.465783,
		36.562733, 33.211372, 43.205677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280266, 32.789597, 43.478756>,  <36.866425, 32.671497, 42.879627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280266, 32.789597, 43.478756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917934, 32.942699, 43.551392>,  <36.700535, 33.034561, 43.594975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.917934, 32.942699, 43.551392>,  <37.280266, 32.789597, 43.478756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917934, 32.942699, 43.551392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056278, -0.316121, 0.947048,
		0.419897, 0.868079, 0.264810,
		-0.905825, 0.382760, 0.181592,
		36.646187, 33.057526, 43.605869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412411, 33.092854, 44.129219>,  <37.280266, 32.789597, 43.478756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412411, 33.092854, 44.129219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017075, 33.044952, 44.091591>,  <36.779873, 33.016212, 44.069016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.017075, 33.044952, 44.091591>,  <37.412411, 33.092854, 44.129219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017075, 33.044952, 44.091591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066768, -0.214422, 0.974456,
		-0.136869, 0.969371, 0.203925,
		-0.988336, -0.119757, -0.094071,
		36.720573, 33.009026, 44.063370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223450, 33.523193, 44.672287>,  <37.412411, 33.092854, 44.129219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223450, 33.523193, 44.672287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911285, 33.290257, 44.581223>,  <36.723988, 33.150494, 44.526585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911285, 33.290257, 44.581223>,  <37.223450, 33.523193, 44.672287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911285, 33.290257, 44.581223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069834, -0.280640, 0.957269,
		-0.621352, 0.762964, 0.178347,
		-0.780413, -0.582347, -0.227657,
		36.677162, 33.115551, 44.512924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665562, 33.681549, 45.175186>,  <37.223450, 33.523193, 44.672287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665562, 33.681549, 45.175186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582390, 33.323280, 45.017937>,  <36.532486, 33.108318, 44.923588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.582390, 33.323280, 45.017937>,  <36.665562, 33.681549, 45.175186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582390, 33.323280, 45.017937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188560, -0.357663, 0.914616,
		-0.959798, 0.264299, -0.094520,
		-0.207926, -0.895669, -0.393120,
		36.520012, 33.054581, 44.900002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245296, 33.396286, 45.665962>,  <36.665562, 33.681549, 45.175186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245296, 33.396286, 45.665962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379383, 33.076420, 45.466702>,  <36.459835, 32.884499, 45.347145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379383, 33.076420, 45.466702>,  <36.245296, 33.396286, 45.665962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379383, 33.076420, 45.466702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034157, -0.538717, 0.841794,
		-0.941522, -0.265168, -0.207901,
		0.335217, -0.799669, -0.498157,
		36.479950, 32.836521, 45.317253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701412, 32.797863, 45.784737>,  <36.245296, 33.396286, 45.665962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701412, 32.797863, 45.784737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076256, 32.671677, 45.724998>,  <36.301163, 32.595963, 45.689156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076256, 32.671677, 45.724998>,  <35.701412, 32.797863, 45.784737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076256, 32.671677, 45.724998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030995, -0.501404, 0.864658,
		-0.347653, -0.805652, -0.479649,
		0.937111, -0.315467, -0.149343,
		36.357388, 32.577038, 45.680195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703289, 32.151600, 46.039898>,  <35.701412, 32.797863, 45.784737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703289, 32.151600, 46.039898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096828, 32.206059, 45.993408>,  <36.332951, 32.238735, 45.965515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096828, 32.206059, 45.993408>,  <35.703289, 32.151600, 46.039898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096828, 32.206059, 45.993408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178637, -0.704923, 0.686419,
		0.011527, -0.696094, -0.717858,
		0.983847, 0.136149, -0.116223,
		36.391983, 32.246902, 45.958542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988400, 31.438742, 46.120129>,  <35.703289, 32.151600, 46.039898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988400, 31.438742, 46.120129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279495, 31.704145, 46.189590>,  <36.454151, 31.863388, 46.231270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279495, 31.704145, 46.189590>,  <35.988400, 31.438742, 46.120129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279495, 31.704145, 46.189590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251042, -0.493318, 0.832836,
		0.638260, -0.562490, -0.525574,
		0.727737, 0.663507, 0.173656,
		36.497818, 31.903198, 46.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420143, 30.946873, 46.397514>,  <35.988400, 31.438742, 46.120129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420143, 30.946873, 46.397514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597946, 31.291546, 46.495426>,  <36.704628, 31.498350, 46.554173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597946, 31.291546, 46.495426>,  <36.420143, 30.946873, 46.397514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597946, 31.291546, 46.495426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328368, -0.410975, 0.850455,
		0.833421, -0.297654, -0.465630,
		0.444504, 0.861685, 0.244775,
		36.731297, 31.550051, 46.568859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174271, 30.866947, 46.426662>,  <36.420143, 30.946873, 46.397514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174271, 30.866947, 46.426662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043621, 31.161655, 46.663467>,  <36.965229, 31.338482, 46.805550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043621, 31.161655, 46.663467>,  <37.174271, 30.866947, 46.426662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043621, 31.161655, 46.663467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375603, -0.473600, 0.796634,
		0.867316, 0.482565, -0.122043,
		-0.326627, 0.736773, 0.592014,
		36.945633, 31.382687, 46.841072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694328, 30.939945, 46.864388>,  <37.174271, 30.866947, 46.426662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694328, 30.939945, 46.864388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379944, 31.112101, 47.041939>,  <37.191311, 31.215395, 47.148468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379944, 31.112101, 47.041939>,  <37.694328, 30.939945, 46.864388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379944, 31.112101, 47.041939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323136, -0.326120, 0.888385,
		0.527109, 0.841671, 0.117244,
		-0.785964, 0.430389, 0.443876,
		37.144154, 31.241217, 47.175102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908073, 31.173428, 47.502270>,  <37.694328, 30.939945, 46.864388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908073, 31.173428, 47.502270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511269, 31.155115, 47.549297>,  <37.273186, 31.144129, 47.577515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.511269, 31.155115, 47.549297>,  <37.908073, 31.173428, 47.502270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511269, 31.155115, 47.549297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117354, -0.676944, 0.726619,
		0.046322, 0.734610, 0.676907,
		-0.992009, -0.045780, 0.117566,
		37.213665, 31.141380, 47.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849159, 31.279413, 48.160191>,  <37.908073, 31.173428, 47.502270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849159, 31.279413, 48.160191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528107, 31.071777, 48.042664>,  <37.335476, 30.947195, 47.972145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.528107, 31.071777, 48.042664>,  <37.849159, 31.279413, 48.160191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528107, 31.071777, 48.042664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096049, -0.598641, 0.795238,
		-0.588692, 0.610061, 0.530346,
		-0.802631, -0.519090, -0.293819,
		37.287319, 30.916050, 47.954517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425182, 31.230879, 48.785027>,  <37.849159, 31.279413, 48.160191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425182, 31.230879, 48.785027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282768, 30.958422, 48.529125>,  <37.197319, 30.794947, 48.375584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.282768, 30.958422, 48.529125>,  <37.425182, 31.230879, 48.785027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282768, 30.958422, 48.529125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029121, -0.692369, 0.720956,
		-0.934020, 0.238052, 0.266341,
		-0.356031, -0.681143, -0.639754,
		37.175961, 30.754078, 48.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896809, 30.934185, 49.120789>,  <37.425182, 31.230879, 48.785027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896809, 30.934185, 49.120789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981243, 30.668003, 48.834400>,  <37.031902, 30.508293, 48.662567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981243, 30.668003, 48.834400>,  <36.896809, 30.934185, 49.120789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981243, 30.668003, 48.834400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007907, -0.731286, 0.682025,
		-0.977435, -0.149628, -0.149104,
		0.211087, -0.665456, -0.715968,
		37.044571, 30.468367, 48.619610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279293, 30.377542, 49.126865>,  <36.896809, 30.934185, 49.120789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279293, 30.377542, 49.126865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628597, 30.260807, 48.970791>,  <36.838181, 30.190765, 48.877148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.628597, 30.260807, 48.970791>,  <36.279293, 30.377542, 49.126865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628597, 30.260807, 48.970791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041525, -0.753301, 0.656363,
		-0.485481, -0.589379, -0.645710,
		0.873260, -0.291839, -0.390187,
		36.890575, 30.173256, 48.853733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146374, 29.622881, 48.845848>,  <36.279293, 30.377542, 49.126865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146374, 29.622881, 48.845848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515385, 29.717722, 48.967655>,  <36.736790, 29.774628, 49.040741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.515385, 29.717722, 48.967655>,  <36.146374, 29.622881, 48.845848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515385, 29.717722, 48.967655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041865, -0.722892, 0.689691,
		0.383662, -0.649005, -0.656959,
		0.922524, 0.237105, 0.304517,
		36.792141, 29.788853, 49.059010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391121, 29.477564, 49.121849>,  <36.146374, 29.622881, 48.845848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391121, 29.477564, 49.121849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008087, 29.408604, 49.214211>,  <34.778267, 29.367228, 49.269627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.008087, 29.408604, 49.214211>,  <35.391121, 29.477564, 49.121849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008087, 29.408604, 49.214211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288104, 0.556518, -0.779284,
		0.005848, -0.812752, -0.582581,
		-0.957581, -0.172401, 0.230902,
		34.720814, 29.356884, 49.283482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051220, 29.192215, 48.531368>,  <35.391121, 29.477564, 49.121849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051220, 29.192215, 48.531368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777199, 29.373430, 48.759563>,  <34.612785, 29.482161, 48.896481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777199, 29.373430, 48.759563>,  <35.051220, 29.192215, 48.531368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777199, 29.373430, 48.759563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278586, 0.560665, -0.779773,
		-0.673120, -0.693116, -0.257875,
		-0.685054, 0.453041, 0.570487,
		34.571682, 29.509342, 48.930710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526485, 29.322578, 48.022522>,  <35.051220, 29.192215, 48.531368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526485, 29.322578, 48.022522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419140, 29.537752, 48.342175>,  <34.354733, 29.666857, 48.533966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419140, 29.537752, 48.342175>,  <34.526485, 29.322578, 48.022522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419140, 29.537752, 48.342175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303797, 0.739968, -0.600129,
		-0.914160, -0.403825, -0.035156,
		-0.268362, 0.537934, 0.799130,
		34.338631, 29.699133, 48.581913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904133, 29.523462, 47.907482>,  <34.526485, 29.322578, 48.022522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904133, 29.523462, 47.907482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041405, 29.789062, 48.173214>,  <34.123768, 29.948423, 48.332653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041405, 29.789062, 48.173214>,  <33.904133, 29.523462, 47.907482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041405, 29.789062, 48.173214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321594, 0.747596, -0.581100,
		-0.882499, -0.014221, 0.470099,
		0.343180, 0.664001, 0.664326,
		34.144360, 29.988262, 48.372513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319736, 29.986246, 47.912727>,  <33.904133, 29.523462, 47.907482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319736, 29.986246, 47.912727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633770, 30.174835, 48.073406>,  <33.822189, 30.287989, 48.169815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.633770, 30.174835, 48.073406>,  <33.319736, 29.986246, 47.912727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633770, 30.174835, 48.073406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174995, 0.790947, -0.586327,
		-0.594158, 0.390019, 0.703463,
		0.785081, 0.471474, 0.401696,
		33.869293, 30.316277, 48.193916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083412, 30.584330, 47.885998>,  <33.319736, 29.986246, 47.912727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083412, 30.584330, 47.885998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478832, 30.639322, 47.910843>,  <33.716084, 30.672318, 47.925751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.478832, 30.639322, 47.910843>,  <33.083412, 30.584330, 47.885998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478832, 30.639322, 47.910843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067181, 0.769822, -0.634713,
		-0.135080, 0.623275, 0.770247,
		0.988554, 0.137483, 0.062115,
		33.775398, 30.680567, 47.929478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176685, 31.205999, 47.752724>,  <33.083412, 30.584330, 47.885998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176685, 31.205999, 47.752724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551605, 31.083208, 47.686707>,  <33.776558, 31.009533, 47.647095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551605, 31.083208, 47.686707>,  <33.176685, 31.205999, 47.752724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551605, 31.083208, 47.686707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, 0.584465, -0.809950,
		0.345099, 0.751109, 0.562798,
		0.937297, -0.306979, -0.165042,
		33.832794, 30.991114, 47.637196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608253, 31.897535, 47.689312>,  <33.176685, 31.205999, 47.752724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608253, 31.897535, 47.689312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790478, 31.602053, 47.490604>,  <33.899811, 31.424763, 47.371380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.790478, 31.602053, 47.490604>,  <33.608253, 31.897535, 47.689312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790478, 31.602053, 47.490604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229210, 0.636560, -0.736379,
		0.860191, 0.221600, 0.459310,
		0.455560, -0.738705, -0.496770,
		33.927147, 31.380442, 47.341572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198139, 32.206245, 47.354340>,  <33.608253, 31.897535, 47.689312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198139, 32.206245, 47.354340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114952, 31.873400, 47.148685>,  <34.065041, 31.673693, 47.025291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.114952, 31.873400, 47.148685>,  <34.198139, 32.206245, 47.354340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114952, 31.873400, 47.148685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190172, 0.481201, -0.855734,
		0.959471, -0.275737, 0.058172,
		-0.207965, -0.832115, -0.514135,
		34.052563, 31.623766, 46.994446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792370, 32.108475, 46.899170>,  <34.198139, 32.206245, 47.354340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792370, 32.108475, 46.899170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487041, 31.883371, 46.772270>,  <34.303844, 31.748308, 46.696133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.487041, 31.883371, 46.772270>,  <34.792370, 32.108475, 46.899170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487041, 31.883371, 46.772270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085006, 0.399311, -0.912866,
		0.640408, -0.723773, -0.256963,
		-0.763316, -0.562763, -0.317247,
		34.258045, 31.714542, 46.677097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041561, 32.152893, 46.301445>,  <34.792370, 32.108475, 46.899170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041561, 32.152893, 46.301445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665642, 32.025234, 46.252571>,  <34.440090, 31.948639, 46.223248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.665642, 32.025234, 46.252571>,  <35.041561, 32.152893, 46.301445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665642, 32.025234, 46.252571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022772, 0.298258, -0.954214,
		0.340978, -0.899548, -0.273034,
		-0.939795, -0.319149, -0.122184,
		34.383701, 31.929491, 46.215916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951931, 31.752914, 45.662071>,  <35.041561, 32.152893, 46.301445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951931, 31.752914, 45.662071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584267, 31.890207, 45.739368>,  <34.363670, 31.972584, 45.785748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.584267, 31.890207, 45.739368>,  <34.951931, 31.752914, 45.662071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584267, 31.890207, 45.739368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102500, 0.265266, -0.958711,
		-0.380320, -0.901014, -0.208640,
		-0.919157, 0.343232, 0.193240,
		34.308521, 31.993177, 45.797340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536884, 31.604710, 45.117058>,  <34.951931, 31.752914, 45.662071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536884, 31.604710, 45.117058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319218, 31.897024, 45.281902>,  <34.188618, 32.072411, 45.380810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319218, 31.897024, 45.281902>,  <34.536884, 31.604710, 45.117058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319218, 31.897024, 45.281902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202493, 0.362286, -0.909805,
		-0.814174, -0.578535, -0.049166,
		-0.544166, 0.730784, 0.412113,
		34.155968, 32.116261, 45.405537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991539, 31.718260, 44.630104>,  <34.536884, 31.604710, 45.117058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991539, 31.718260, 44.630104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987679, 32.050011, 44.853546>,  <33.985363, 32.249062, 44.987610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.987679, 32.050011, 44.853546>,  <33.991539, 31.718260, 44.630104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987679, 32.050011, 44.853546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140340, 0.551976, -0.821965,
		-0.990056, -0.086329, 0.111067,
		-0.009653, 0.829379, 0.558603,
		33.984783, 32.298824, 45.021126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471478, 32.212162, 44.362869>,  <33.991539, 31.718260, 44.630104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471478, 32.212162, 44.362869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679195, 32.462761, 44.595360>,  <33.803825, 32.613121, 44.734856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.679195, 32.462761, 44.595360>,  <33.471478, 32.212162, 44.362869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679195, 32.462761, 44.595360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326539, 0.773979, -0.542521,
		-0.789751, 0.091933, 0.606499,
		0.519294, 0.626502, 0.581231,
		33.834984, 32.650711, 44.769730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041809, 32.787643, 44.424301>,  <33.471478, 32.212162, 44.362869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041809, 32.787643, 44.424301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416969, 32.916836, 44.474941>,  <33.642067, 32.994350, 44.505325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.416969, 32.916836, 44.474941>,  <33.041809, 32.787643, 44.424301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416969, 32.916836, 44.474941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226769, 0.846987, -0.480821,
		-0.262525, 0.422253, 0.867631,
		0.937900, 0.322980, 0.126601,
		33.698338, 33.013729, 44.512920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010838, 33.573479, 44.619534>,  <33.041809, 32.787643, 44.424301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010838, 33.573479, 44.619534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355930, 33.448219, 44.460724>,  <33.562984, 33.373062, 44.365437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.355930, 33.448219, 44.460724>,  <33.010838, 33.573479, 44.619534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355930, 33.448219, 44.460724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001345, 0.783742, -0.621085,
		0.505658, 0.536364, 0.675739,
		0.862733, -0.313148, -0.397027,
		33.614750, 33.354275, 44.341618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311810, 34.179024, 44.637341>,  <33.010838, 33.573479, 44.619534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311810, 34.179024, 44.637341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508739, 33.958080, 44.368263>,  <33.626900, 33.825512, 44.206818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.508739, 33.958080, 44.368263>,  <33.311810, 34.179024, 44.637341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508739, 33.958080, 44.368263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072563, 0.744106, -0.664109,
		0.867380, 0.375772, 0.326263,
		0.492327, -0.552361, -0.672690,
		33.656437, 33.792374, 44.166458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826412, 34.631329, 44.446541>,  <33.311810, 34.179024, 44.637341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826412, 34.631329, 44.446541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788109, 34.358212, 44.156818>,  <33.765125, 34.194340, 43.982986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788109, 34.358212, 44.156818>,  <33.826412, 34.631329, 44.446541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788109, 34.358212, 44.156818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260398, 0.685127, -0.680289,
		0.960741, -0.253752, 0.112192,
		-0.095759, -0.682796, -0.724307,
		33.759380, 34.153374, 43.939526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391258, 34.825550, 44.038639>,  <33.826412, 34.631329, 44.446541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391258, 34.825550, 44.038639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115299, 34.616005, 43.838799>,  <33.949722, 34.490280, 43.718895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.115299, 34.616005, 43.838799>,  <34.391258, 34.825550, 44.038639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115299, 34.616005, 43.838799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069559, 0.638989, -0.766065,
		0.720554, -0.563261, -0.404400,
		-0.689901, -0.523861, -0.499606,
		33.908329, 34.458847, 43.688915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.463570, 26.354811, 34.265060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119778, 26.371229, 34.061253>,  <40.913502, 26.381081, 33.938969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.119778, 26.371229, 34.061253>,  <41.463570, 26.354811, 34.265060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119778, 26.371229, 34.061253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067462, 0.997160, -0.033467,
		0.506703, -0.063138, -0.859805,
		-0.859477, 0.041046, -0.509524,
		40.861935, 26.383543, 33.908394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603592, 26.767271, 33.597443>,  <41.463570, 26.354811, 34.265060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603592, 26.767271, 33.597443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.214005, 26.798651, 33.682510>,  <40.980251, 26.817478, 33.733551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.214005, 26.798651, 33.682510>,  <41.603592, 26.767271, 33.597443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214005, 26.798651, 33.682510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035867, 0.979721, -0.197129,
		-0.223825, -0.184370, -0.957032,
		-0.973969, 0.078449, 0.212674,
		40.921814, 26.822186, 33.746311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314945, 27.070095, 32.975597>,  <41.603592, 26.767271, 33.597443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314945, 27.070095, 32.975597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088978, 27.143024, 33.297497>,  <40.953396, 27.186783, 33.490635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088978, 27.143024, 33.297497>,  <41.314945, 27.070095, 32.975597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088978, 27.143024, 33.297497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064999, 0.962420, -0.263674,
		-0.822580, -0.201263, -0.531842,
		-0.564923, 0.182323, 0.804749,
		40.919502, 27.197721, 33.538921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754490, 27.629875, 32.786728>,  <41.314945, 27.070095, 32.975597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754490, 27.629875, 32.786728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772526, 27.672915, 33.183998>,  <40.783348, 27.698738, 33.422359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772526, 27.672915, 33.183998>,  <40.754490, 27.629875, 32.786728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772526, 27.672915, 33.183998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058811, 0.992744, -0.104884,
		-0.997250, -0.053680, 0.051089,
		0.045088, 0.107600, 0.993171,
		40.786053, 27.705194, 33.481949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188530, 28.089262, 32.883392>,  <40.754490, 27.629875, 32.786728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188530, 28.089262, 32.883392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.438725, 28.091957, 33.195477>,  <40.588840, 28.093575, 33.382725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.438725, 28.091957, 33.195477>,  <40.188530, 28.089262, 32.883392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438725, 28.091957, 33.195477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066540, 0.996781, 0.044734,
		-0.777394, -0.079895, 0.623919,
		0.625484, 0.006740, 0.780208,
		40.626369, 28.093979, 33.429539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948746, 28.542265, 33.239540>,  <40.188530, 28.089262, 32.883392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948746, 28.542265, 33.239540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296925, 28.522814, 33.435482>,  <40.505833, 28.511143, 33.553047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.296925, 28.522814, 33.435482>,  <39.948746, 28.542265, 33.239540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296925, 28.522814, 33.435482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020848, 0.990574, 0.135384,
		-0.491823, -0.128057, 0.861226,
		0.870445, -0.048630, 0.489857,
		40.558060, 28.508224, 33.582439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967583, 29.061897, 33.668510>,  <39.948746, 28.542265, 33.239540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967583, 29.061897, 33.668510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355541, 28.965303, 33.681026>,  <40.588318, 28.907347, 33.688538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355541, 28.965303, 33.681026>,  <39.967583, 29.061897, 33.668510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355541, 28.965303, 33.681026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227688, 0.944935, 0.235066,
		-0.086334, -0.220866, 0.971476,
		0.969899, -0.241487, 0.031291,
		40.646511, 28.892857, 33.690414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221466, 29.204199, 34.295830>,  <39.967583, 29.061897, 33.668510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221466, 29.204199, 34.295830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550148, 29.201878, 34.067879>,  <40.747356, 29.200485, 33.931107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550148, 29.201878, 34.067879>,  <40.221466, 29.204199, 34.295830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550148, 29.201878, 34.067879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318100, 0.834361, 0.450171,
		0.472875, -0.551188, 0.687445,
		0.821706, -0.005801, -0.569882,
		40.796661, 29.200138, 33.896915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644051, 29.405844, 34.750092>,  <40.221466, 29.204199, 34.295830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644051, 29.405844, 34.750092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822754, 29.485647, 34.401241>,  <40.929977, 29.533529, 34.191933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.822754, 29.485647, 34.401241>,  <40.644051, 29.405844, 34.750092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822754, 29.485647, 34.401241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305839, 0.882032, 0.358445,
		0.840754, -0.426869, 0.333039,
		0.446760, 0.199508, -0.872125,
		40.956783, 29.545500, 34.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431950, 29.525743, 34.839577>,  <40.644051, 29.405844, 34.750092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431950, 29.525743, 34.839577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317253, 29.714262, 34.505951>,  <41.248436, 29.827374, 34.305775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317253, 29.714262, 34.505951>,  <41.431950, 29.525743, 34.839577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317253, 29.714262, 34.505951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304357, 0.870331, 0.387157,
		0.908376, -0.142839, -0.393002,
		-0.286740, 0.471297, -0.834062,
		41.231232, 29.855652, 34.255733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863815, 29.991961, 34.799553>,  <41.431950, 29.525743, 34.839577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863815, 29.991961, 34.799553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577442, 30.108324, 34.545685>,  <41.405617, 30.178143, 34.393364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577442, 30.108324, 34.545685>,  <41.863815, 29.991961, 34.799553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577442, 30.108324, 34.545685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304710, 0.948102, 0.090850,
		0.628160, -0.128347, -0.767425,
		-0.715937, 0.290910, -0.634669,
		41.362659, 30.195597, 34.355286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151558, 30.594488, 34.537243>,  <41.863815, 29.991961, 34.799553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151558, 30.594488, 34.537243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782032, 30.633631, 34.389194>,  <41.560318, 30.657116, 34.300365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782032, 30.633631, 34.389194>,  <42.151558, 30.594488, 34.537243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782032, 30.633631, 34.389194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144703, 0.984314, -0.100933,
		0.354440, -0.146801, -0.923484,
		-0.923815, 0.097856, -0.370123,
		41.504887, 30.662987, 34.278156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162228, 30.897394, 33.902081>,  <42.151558, 30.594488, 34.537243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162228, 30.897394, 33.902081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791565, 30.968657, 34.034477>,  <41.569168, 31.011414, 34.113914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.791565, 30.968657, 34.034477>,  <42.162228, 30.897394, 33.902081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791565, 30.968657, 34.034477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174011, 0.983831, -0.042380,
		-0.333195, 0.018325, -0.942680,
		-0.926661, 0.178158, 0.330997,
		41.513565, 31.022104, 34.133778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855679, 31.432026, 33.476288>,  <42.162228, 30.897394, 33.902081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855679, 31.432026, 33.476288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620804, 31.439573, 33.799980>,  <41.479877, 31.444101, 33.994194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.620804, 31.439573, 33.799980>,  <41.855679, 31.432026, 33.476288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.620804, 31.439573, 33.799980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109116, 0.992448, 0.056034,
		-0.802063, 0.121203, -0.584811,
		-0.587187, 0.018870, 0.809232,
		41.444649, 31.445234, 34.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347069, 31.940794, 33.437561>,  <41.855679, 31.432026, 33.476288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347069, 31.940794, 33.437561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387680, 31.863491, 33.827911>,  <41.412048, 31.817108, 34.062122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.387680, 31.863491, 33.827911>,  <41.347069, 31.940794, 33.437561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387680, 31.863491, 33.827911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087990, 0.978849, 0.184693,
		-0.990934, 0.067116, 0.116388,
		0.101531, -0.193259, 0.975880,
		41.418140, 31.805513, 34.120674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944370, 32.432755, 33.677727>,  <41.347069, 31.940794, 33.437561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944370, 32.432755, 33.677727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137043, 32.309971, 34.006058>,  <41.252647, 32.236301, 34.203056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.137043, 32.309971, 34.006058>,  <40.944370, 32.432755, 33.677727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137043, 32.309971, 34.006058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002439, 0.936175, 0.351527,
		-0.876341, -0.171327, 0.450192,
		0.481684, -0.306960, 0.820826,
		41.281548, 32.217884, 34.252304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577904, 32.702744, 34.221222>,  <40.944370, 32.432755, 33.677727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577904, 32.702744, 34.221222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945660, 32.639114, 34.365124>,  <41.166313, 32.600937, 34.451466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.945660, 32.639114, 34.365124>,  <40.577904, 32.702744, 34.221222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.945660, 32.639114, 34.365124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076017, 0.825483, 0.559285,
		-0.385939, -0.541547, 0.746846,
		0.919387, -0.159077, 0.359753,
		41.221478, 32.591393, 34.473049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530037, 32.751163, 34.977409>,  <40.577904, 32.702744, 34.221222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530037, 32.751163, 34.977409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912205, 32.842564, 34.902618>,  <41.141506, 32.897404, 34.857742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.912205, 32.842564, 34.902618>,  <40.530037, 32.751163, 34.977409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912205, 32.842564, 34.902618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129374, 0.893255, 0.430532,
		0.265396, -0.387149, 0.882995,
		0.955420, 0.228498, -0.186979,
		41.198830, 32.911114, 34.846523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842144, 33.070580, 35.514709>,  <40.530037, 32.751163, 34.977409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842144, 33.070580, 35.514709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078999, 33.172653, 35.208961>,  <41.221111, 33.233898, 35.025513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.078999, 33.172653, 35.208961>,  <40.842144, 33.070580, 35.514709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.078999, 33.172653, 35.208961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135289, 0.903592, 0.406471,
		0.794401, -0.344096, 0.500525,
		0.592136, 0.255185, -0.764366,
		41.256638, 33.249210, 34.979652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473160, 33.311741, 35.815147>,  <40.842144, 33.070580, 35.514709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473160, 33.311741, 35.815147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429153, 33.469917, 35.450397>,  <41.402748, 33.564823, 35.231548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.429153, 33.469917, 35.450397>,  <41.473160, 33.311741, 35.815147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429153, 33.469917, 35.450397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159120, 0.912622, 0.376566,
		0.981110, -0.103669, -0.163329,
		-0.110020, 0.395441, -0.911878,
		41.396149, 33.588551, 35.176834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037502, 33.787567, 35.686043>,  <41.473160, 33.311741, 35.815147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037502, 33.787567, 35.686043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.757572, 33.892067, 35.420113>,  <41.589615, 33.954765, 35.260555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.757572, 33.892067, 35.420113>,  <42.037502, 33.787567, 35.686043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757572, 33.892067, 35.420113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193131, 0.965258, 0.176002,
		0.687709, -0.005227, -0.725968,
		-0.699827, 0.261245, -0.664826,
		41.547623, 33.970440, 35.220665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613945, 34.094284, 36.040123>,  <42.037502, 33.787567, 35.686043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613945, 34.094284, 36.040123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698261, 33.800133, 36.297737>,  <42.748852, 33.623642, 36.452305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.698261, 33.800133, 36.297737>,  <42.613945, 34.094284, 36.040123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698261, 33.800133, 36.297737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503540, -0.646391, -0.573259,
		0.837863, -0.203461, -0.506547,
		0.210792, -0.735379, 0.644038,
		42.761497, 33.579517, 36.490948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336098, 33.842869, 36.288696>,  <42.613945, 34.094284, 36.040123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336098, 33.842869, 36.288696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721409, 33.775517, 36.205032>,  <43.952595, 33.735107, 36.154835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721409, 33.775517, 36.205032>,  <43.336098, 33.842869, 36.288696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721409, 33.775517, 36.205032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212902, -0.953611, -0.212834,
		-0.163622, 0.249549, -0.954439,
		0.963276, -0.168377, -0.209161,
		44.010391, 33.725002, 36.142284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400455, 33.550575, 35.576435>,  <43.336098, 33.842869, 36.288696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400455, 33.550575, 35.576435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722595, 33.437122, 35.784657>,  <43.915878, 33.369049, 35.909588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.722595, 33.437122, 35.784657>,  <43.400455, 33.550575, 35.576435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722595, 33.437122, 35.784657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284325, -0.955330, -0.080649,
		0.520172, -0.083055, -0.850013,
		0.805345, -0.283631, 0.520551,
		43.964199, 33.352032, 35.940823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548534, 32.899658, 35.349274>,  <43.400455, 33.550575, 35.576435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548534, 32.899658, 35.349274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726929, 32.926445, 35.706287>,  <43.833965, 32.942516, 35.920494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726929, 32.926445, 35.706287>,  <43.548534, 32.899658, 35.349274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726929, 32.926445, 35.706287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020982, -0.996141, 0.085222,
		0.894794, -0.056734, -0.442860,
		0.445986, 0.066964, 0.892531,
		43.860725, 32.946533, 35.974049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086948, 32.482975, 35.257236>,  <43.548534, 32.899658, 35.349274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086948, 32.482975, 35.257236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073540, 32.492607, 35.656895>,  <44.065495, 32.498386, 35.896690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.073540, 32.492607, 35.656895>,  <44.086948, 32.482975, 35.257236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.073540, 32.492607, 35.656895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168564, -0.985252, 0.029400,
		0.985121, 0.169406, 0.028970,
		-0.033523, 0.024080, 0.999148,
		44.063484, 32.499832, 35.956638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.678120, 32.147602, 35.391506>,  <44.086948, 32.482975, 35.257236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.678120, 32.147602, 35.391506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441723, 32.126709, 35.713501>,  <44.299885, 32.114174, 35.906696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.441723, 32.126709, 35.713501>,  <44.678120, 32.147602, 35.391506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441723, 32.126709, 35.713501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304234, -0.938643, 0.162452,
		0.747107, 0.340912, 0.570622,
		-0.590992, -0.052233, 0.804984,
		44.264423, 32.111038, 35.954998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018101, 31.644436, 35.867359>,  <44.678120, 32.147602, 35.391506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018101, 31.644436, 35.867359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641632, 31.665854, 36.000820>,  <44.415752, 31.678703, 36.080898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.641632, 31.665854, 36.000820>,  <45.018101, 31.644436, 35.867359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641632, 31.665854, 36.000820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014488, -0.980067, 0.198140,
		0.337615, 0.191318, 0.921636,
		-0.941173, 0.053543, 0.333657,
		44.359280, 31.681917, 36.100918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978481, 31.077517, 36.226906>,  <45.018101, 31.644436, 35.867359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978481, 31.077517, 36.226906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594780, 31.190506, 36.229374>,  <44.364559, 31.258299, 36.230854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.594780, 31.190506, 36.229374>,  <44.978481, 31.077517, 36.226906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594780, 31.190506, 36.229374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274720, -0.937580, 0.213245,
		0.066019, 0.202862, 0.976979,
		-0.959255, 0.282474, 0.006168,
		44.307003, 31.275248, 36.231224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.680275, 30.790758, 36.818714>,  <44.978481, 31.077517, 36.226906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.680275, 30.790758, 36.818714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376396, 30.851469, 36.565784>,  <44.194069, 30.887896, 36.414028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376396, 30.851469, 36.565784>,  <44.680275, 30.790758, 36.818714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376396, 30.851469, 36.565784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277893, -0.954893, 0.104667,
		-0.587914, 0.255233, 0.767602,
		-0.759692, 0.151776, -0.632323,
		44.148487, 30.897001, 36.376087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.132465, 30.340269, 37.072189>,  <44.680275, 30.790758, 36.818714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.132465, 30.340269, 37.072189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042686, 30.442110, 36.695934>,  <43.988819, 30.503214, 36.470181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.042686, 30.442110, 36.695934>,  <44.132465, 30.340269, 37.072189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042686, 30.442110, 36.695934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275038, -0.942573, -0.189499,
		-0.934868, 0.216178, 0.281585,
		-0.224449, 0.254603, -0.940639,
		43.975353, 30.518492, 36.413742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493500, 29.986822, 36.978710>,  <44.132465, 30.340269, 37.072189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493500, 29.986822, 36.978710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672024, 30.060688, 36.628464>,  <43.779137, 30.105007, 36.418316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.672024, 30.060688, 36.628464>,  <43.493500, 29.986822, 36.978710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.672024, 30.060688, 36.628464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337591, -0.871436, -0.355852,
		-0.828760, 0.454421, -0.326586,
		0.446306, 0.184663, -0.875620,
		43.805916, 30.116087, 36.365776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946850, 29.826963, 36.437683>,  <43.493500, 29.986822, 36.978710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946850, 29.826963, 36.437683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305664, 29.782169, 36.266666>,  <43.520950, 29.755293, 36.164055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.305664, 29.782169, 36.266666>,  <42.946850, 29.826963, 36.437683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305664, 29.782169, 36.266666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307748, -0.852575, -0.422382,
		-0.317211, 0.510465, -0.799251,
		0.897033, -0.111984, -0.427541,
		43.574776, 29.748573, 36.138405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785160, 29.528284, 35.747658>,  <42.946850, 29.826963, 36.437683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785160, 29.528284, 35.747658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177876, 29.467581, 35.793377>,  <43.413506, 29.431158, 35.820808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.177876, 29.467581, 35.793377>,  <42.785160, 29.528284, 35.747658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177876, 29.467581, 35.793377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086879, -0.893652, -0.440271,
		0.168961, 0.422322, -0.890560,
		0.981786, -0.151760, 0.114301,
		43.472412, 29.422052, 35.827667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048740, 29.221813, 35.107224>,  <42.785160, 29.528284, 35.747658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048740, 29.221813, 35.107224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310741, 29.104134, 35.385624>,  <43.467941, 29.033525, 35.552666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310741, 29.104134, 35.385624>,  <43.048740, 29.221813, 35.107224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310741, 29.104134, 35.385624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002403, -0.920276, -0.391263,
		0.755623, 0.257950, -0.602076,
		0.655003, -0.294200, 0.696001,
		43.507244, 29.015873, 35.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355686, 28.648272, 34.754715>,  <43.048740, 29.221813, 35.107224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355686, 28.648272, 34.754715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429817, 28.612289, 35.146137>,  <43.474297, 28.590700, 35.380989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429817, 28.612289, 35.146137>,  <43.355686, 28.648272, 34.754715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429817, 28.612289, 35.146137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165175, -0.978782, -0.121257,
		0.968696, 0.184104, -0.166534,
		0.185325, -0.089954, 0.978552,
		43.485416, 28.585302, 35.439701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738140, 28.019407, 34.799320>,  <43.355686, 28.648272, 34.754715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738140, 28.019407, 34.799320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.635567, 28.048363, 35.184860>,  <43.574024, 28.065735, 35.416183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.635567, 28.048363, 35.184860>,  <43.738140, 28.019407, 34.799320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635567, 28.048363, 35.184860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094616, -0.990522, 0.099564,
		0.961920, 0.116727, 0.247154,
		-0.256433, 0.072388, 0.963847,
		43.558636, 28.070080, 35.474014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.234764, 27.712189, 35.302155>,  <43.738140, 28.019407, 34.799320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.234764, 27.712189, 35.302155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886414, 27.713875, 35.498749>,  <43.677402, 27.714888, 35.616707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886414, 27.713875, 35.498749>,  <44.234764, 27.712189, 35.302155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886414, 27.713875, 35.498749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065370, -0.990086, 0.124324,
		0.487139, 0.140399, 0.861965,
		-0.870874, 0.004217, 0.491487,
		43.625153, 27.715139, 35.646194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322693, 27.397888, 35.840500>,  <44.234764, 27.712189, 35.302155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322693, 27.397888, 35.840500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923820, 27.380836, 35.865227>,  <43.684498, 27.370605, 35.880062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.923820, 27.380836, 35.865227>,  <44.322693, 27.397888, 35.840500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923820, 27.380836, 35.865227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067795, -0.865044, 0.497095,
		0.032283, 0.499882, 0.865492,
		-0.997177, -0.042629, 0.061816,
		43.624668, 27.368048, 35.883770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104000, 27.185936, 36.608109>,  <44.322693, 27.397888, 35.840500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104000, 27.185936, 36.608109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777779, 27.136179, 36.382050>,  <43.582047, 27.106325, 36.246414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.777779, 27.136179, 36.382050>,  <44.104000, 27.185936, 36.608109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777779, 27.136179, 36.382050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033025, -0.965025, 0.260069,
		-0.577731, 0.230765, 0.782926,
		-0.815558, -0.124393, -0.565147,
		43.533112, 27.098862, 36.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924511, 26.541203, 36.824715>,  <44.104000, 27.185936, 36.608109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924511, 26.541203, 36.824715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649014, 26.590729, 36.538971>,  <43.483715, 26.620445, 36.367523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.649014, 26.590729, 36.538971>,  <43.924511, 26.541203, 36.824715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649014, 26.590729, 36.538971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225736, -0.972955, 0.049005,
		-0.688970, 0.195008, 0.698062,
		-0.688740, 0.123815, -0.714358,
		43.442390, 26.627872, 36.324665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255100, 26.201197, 37.061832>,  <43.924511, 26.541203, 36.824715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255100, 26.201197, 37.061832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282993, 26.205070, 36.662827>,  <43.299728, 26.207394, 36.423424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282993, 26.205070, 36.662827>,  <43.255100, 26.201197, 37.061832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282993, 26.205070, 36.662827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302240, -0.952748, -0.030375,
		-0.950678, 0.303608, -0.063509,
		0.069730, 0.009682, -0.997519,
		43.303913, 26.207975, 36.363571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.631363, 36.693424, 39.383396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258915, 36.551403, 39.350040>,  <37.035446, 36.466190, 39.330029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258915, 36.551403, 39.350040>,  <37.631363, 36.693424, 39.383396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258915, 36.551403, 39.350040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090661, 0.446788, -0.890035,
		0.353266, -0.821169, -0.448202,
		-0.931119, -0.355053, -0.083387,
		36.979580, 36.444885, 39.325024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631603, 36.298168, 38.709499>,  <37.631363, 36.693424, 39.383396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631603, 36.298168, 38.709499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262367, 36.412766, 38.812126>,  <37.040825, 36.481525, 38.873703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262367, 36.412766, 38.812126>,  <37.631603, 36.298168, 38.709499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262367, 36.412766, 38.812126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130784, 0.393514, -0.909968,
		-0.361664, -0.873537, -0.325779,
		-0.923090, 0.286496, 0.256565,
		36.985439, 36.498714, 38.889095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292328, 36.064499, 38.210655>,  <37.631603, 36.298168, 38.709499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292328, 36.064499, 38.210655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085857, 36.364090, 38.376839>,  <36.961975, 36.543842, 38.476547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085857, 36.364090, 38.376839>,  <37.292328, 36.064499, 38.210655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085857, 36.364090, 38.376839> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386021, 0.229571, -0.893468,
		-0.764561, -0.621558, 0.170622,
		-0.516172, 0.748975, 0.415456,
		36.931007, 36.588783, 38.501476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636681, 36.162457, 37.749123>,  <37.292328, 36.064499, 38.210655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636681, 36.162457, 37.749123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613838, 36.490154, 37.977360>,  <36.600132, 36.686771, 38.114304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613838, 36.490154, 37.977360>,  <36.636681, 36.162457, 37.749123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613838, 36.490154, 37.977360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434088, 0.494303, -0.753148,
		-0.899059, -0.290700, 0.327394,
		-0.057108, 0.819242, 0.570597,
		36.596706, 36.735928, 38.148540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015953, 36.416107, 37.682674>,  <36.636681, 36.162457, 37.749123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015953, 36.416107, 37.682674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204758, 36.740948, 37.819897>,  <36.318043, 36.935852, 37.902229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204758, 36.740948, 37.819897>,  <36.015953, 36.416107, 37.682674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204758, 36.740948, 37.819897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354092, 0.531004, -0.769840,
		-0.807354, 0.241905, 0.538202,
		0.472016, 0.812106, 0.343052,
		36.346363, 36.984581, 37.922813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573654, 37.014488, 37.424404>,  <36.015953, 36.416107, 37.682674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573654, 37.014488, 37.424404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942570, 37.144684, 37.507771>,  <36.163921, 37.222801, 37.557789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942570, 37.144684, 37.507771>,  <35.573654, 37.014488, 37.424404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942570, 37.144684, 37.507771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060318, 0.653856, -0.754211,
		-0.381760, 0.683030, 0.622679,
		0.922291, 0.325486, 0.208417,
		36.219257, 37.242329, 37.570297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505684, 37.738350, 37.302448>,  <35.573654, 37.014488, 37.424404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505684, 37.738350, 37.302448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901714, 37.682274, 37.298473>,  <36.139332, 37.648628, 37.296089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901714, 37.682274, 37.298473>,  <35.505684, 37.738350, 37.302448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901714, 37.682274, 37.298473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097177, 0.733961, -0.672203,
		0.101530, 0.664566, 0.740300,
		0.990075, -0.140189, -0.009938,
		36.198738, 37.640217, 37.295490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661915, 38.397842, 37.467083>,  <35.505684, 37.738350, 37.302448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661915, 38.397842, 37.467083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958702, 38.213760, 37.272068>,  <36.136776, 38.103310, 37.155060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958702, 38.213760, 37.272068>,  <35.661915, 38.397842, 37.467083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958702, 38.213760, 37.272068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108693, 0.635001, -0.764827,
		0.661563, 0.620470, 0.421131,
		0.741971, -0.460207, -0.487533,
		36.181293, 38.075699, 37.125809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231186, 38.874958, 37.185345>,  <35.661915, 38.397842, 37.467083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231186, 38.874958, 37.185345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205448, 38.556900, 36.944145>,  <36.190006, 38.366066, 36.799427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205448, 38.556900, 36.944145>,  <36.231186, 38.874958, 37.185345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205448, 38.556900, 36.944145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074385, 0.606387, -0.791683,
		0.995152, -0.006084, -0.098163,
		-0.064341, -0.795146, -0.602995,
		36.186146, 38.318356, 36.763248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465466, 39.088802, 36.588856>,  <36.231186, 38.874958, 37.185345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465466, 39.088802, 36.588856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349430, 38.730965, 36.452892>,  <36.279808, 38.516262, 36.371315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349430, 38.730965, 36.452892>,  <36.465466, 39.088802, 36.588856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349430, 38.730965, 36.452892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152226, 0.393798, -0.906504,
		0.944814, -0.211227, -0.250419,
		-0.290092, -0.894598, -0.339912,
		36.262402, 38.462585, 36.350918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858788, 38.931313, 36.049137>,  <36.465466, 39.088802, 36.588856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858788, 38.931313, 36.049137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527489, 38.715416, 35.988895>,  <36.328709, 38.585876, 35.952751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527489, 38.715416, 35.988895>,  <36.858788, 38.931313, 36.049137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527489, 38.715416, 35.988895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161718, 0.487564, -0.857979,
		0.536523, -0.686261, -0.491109,
		-0.828245, -0.539747, -0.150608,
		36.279015, 38.553493, 35.943714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901333, 38.707260, 35.409565>,  <36.858788, 38.931313, 36.049137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901333, 38.707260, 35.409565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507732, 38.678337, 35.474701>,  <36.271572, 38.660984, 35.513783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507732, 38.678337, 35.474701>,  <36.901333, 38.707260, 35.409565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507732, 38.678337, 35.474701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176269, 0.261744, -0.948904,
		0.025995, -0.962424, -0.270303,
		-0.983999, -0.072312, 0.162842,
		36.212532, 38.656643, 35.523552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099380, 38.391106, 34.757580>,  <36.901333, 38.707260, 35.409565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099380, 38.391106, 34.757580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836788, 38.183231, 34.976288>,  <36.679234, 38.058506, 35.107513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836788, 38.183231, 34.976288>,  <37.099380, 38.391106, 34.757580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836788, 38.183231, 34.976288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550458, -0.825630, -0.123817,
		0.515779, 0.219693, 0.828074,
		-0.656481, -0.519682, 0.546775,
		36.639843, 38.027328, 35.140320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503838, 37.931759, 35.249512>,  <37.099380, 38.391106, 34.757580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503838, 37.931759, 35.249512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149677, 37.776279, 35.147549>,  <36.937180, 37.682991, 35.086372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149677, 37.776279, 35.147549>,  <37.503838, 37.931759, 35.249512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149677, 37.776279, 35.147549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443895, -0.869766, -0.215556,
		-0.137919, -0.304004, 0.942635,
		-0.885401, -0.388701, -0.254903,
		36.884056, 37.659668, 35.071079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727055, 37.252735, 34.999294>,  <37.503838, 37.931759, 35.249512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727055, 37.252735, 34.999294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697052, 36.995094, 35.303795>,  <37.679050, 36.840508, 35.486496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697052, 36.995094, 35.303795>,  <37.727055, 37.252735, 34.999294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697052, 36.995094, 35.303795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607919, 0.575598, 0.546920,
		-0.790449, 0.503799, 0.348392,
		-0.075004, -0.644106, 0.761250,
		37.674549, 36.801861, 35.532169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295074, 37.033691, 35.327736>,  <37.727055, 37.252735, 34.999294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295074, 37.033691, 35.327736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679054, 37.083786, 35.227482>,  <38.909443, 37.113842, 35.167328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679054, 37.083786, 35.227482>,  <38.295074, 37.033691, 35.327736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679054, 37.083786, 35.227482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240854, -0.825877, 0.509819,
		-0.143146, -0.549766, -0.822962,
		0.959947, 0.125235, -0.250635,
		38.967037, 37.121357, 35.152290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618633, 36.414410, 35.085438>,  <38.295074, 37.033691, 35.327736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618633, 36.414410, 35.085438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922321, 36.640739, 35.214077>,  <39.104534, 36.776539, 35.291260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922321, 36.640739, 35.214077>,  <38.618633, 36.414410, 35.085438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922321, 36.640739, 35.214077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333139, -0.762355, 0.554828,
		0.559111, -0.314097, -0.767293,
		0.759219, 0.565826, 0.321602,
		39.150085, 36.810486, 35.310558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211151, 36.006207, 35.055447>,  <38.618633, 36.414410, 35.085438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211151, 36.006207, 35.055447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277611, 36.303677, 35.314476>,  <39.317486, 36.482159, 35.469894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277611, 36.303677, 35.314476>,  <39.211151, 36.006207, 35.055447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277611, 36.303677, 35.314476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277958, -0.665390, 0.692817,
		0.946114, 0.064883, -0.317266,
		0.166153, 0.743671, 0.647570,
		39.327457, 36.526779, 35.508747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844372, 35.835819, 35.353199>,  <39.211151, 36.006207, 35.055447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844372, 35.835819, 35.353199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664585, 36.073845, 35.619698>,  <39.556713, 36.216660, 35.779594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664585, 36.073845, 35.619698>,  <39.844372, 35.835819, 35.353199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664585, 36.073845, 35.619698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155805, -0.682172, 0.714399,
		0.879607, 0.424900, 0.213896,
		-0.449462, 0.595065, 0.666245,
		39.529747, 36.252365, 35.819572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275772, 35.883537, 35.875923>,  <39.844372, 35.835819, 35.353199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275772, 35.883537, 35.875923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929623, 35.979729, 36.051788>,  <39.721935, 36.037441, 36.157307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929623, 35.979729, 36.051788>,  <40.275772, 35.883537, 35.875923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929623, 35.979729, 36.051788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203352, -0.633358, 0.746663,
		0.458021, 0.735546, 0.499187,
		-0.865370, 0.240476, 0.439666,
		39.670013, 36.051872, 36.183689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349155, 35.501511, 36.410522>,  <40.275772, 35.883537, 35.875923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349155, 35.501511, 36.410522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966331, 35.608307, 36.455681>,  <39.736637, 35.672382, 36.482777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966331, 35.608307, 36.455681>,  <40.349155, 35.501511, 36.410522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966331, 35.608307, 36.455681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106207, -0.685362, 0.720416,
		0.269719, 0.677494, 0.684291,
		-0.957064, 0.266987, 0.112900,
		39.679211, 35.688404, 36.489552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344208, 35.717430, 37.083187>,  <40.349155, 35.501511, 36.410522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344208, 35.717430, 37.083187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966270, 35.622211, 36.993210>,  <39.739506, 35.565083, 36.939224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966270, 35.622211, 36.993210>,  <40.344208, 35.717430, 37.083187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.966270, 35.622211, 36.993210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020514, -0.642455, 0.766048,
		-0.326868, 0.728413, 0.602139,
		-0.944847, -0.238045, -0.224941,
		39.682816, 35.550797, 36.925728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948364, 35.700848, 37.747242>,  <40.344208, 35.717430, 37.083187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948364, 35.700848, 37.747242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721115, 35.486042, 37.497810>,  <39.584766, 35.357159, 37.348152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.721115, 35.486042, 37.497810>,  <39.948364, 35.700848, 37.747242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721115, 35.486042, 37.497810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283839, -0.583375, 0.760992,
		-0.772444, 0.609334, 0.179004,
		-0.568124, -0.537016, -0.623578,
		39.550678, 35.324936, 37.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450871, 35.436619, 38.161701>,  <39.948364, 35.700848, 37.747242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450871, 35.436619, 38.161701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413563, 35.200977, 37.840641>,  <39.391178, 35.059593, 37.648003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413563, 35.200977, 37.840641>,  <39.450871, 35.436619, 38.161701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413563, 35.200977, 37.840641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200344, -0.778575, 0.594714,
		-0.975276, 0.216276, -0.045407,
		-0.093269, -0.589107, -0.802655,
		39.385582, 35.024246, 37.599846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770042, 35.127029, 38.228260>,  <39.450871, 35.436619, 38.161701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770042, 35.127029, 38.228260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996136, 34.891472, 37.997189>,  <39.131790, 34.750137, 37.858547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996136, 34.891472, 37.997189>,  <38.770042, 35.127029, 38.228260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996136, 34.891472, 37.997189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322915, -0.802343, 0.501968,
		-0.759101, -0.097190, -0.643677,
		0.565236, -0.588898, -0.577675,
		39.165707, 34.714802, 37.823887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347660, 34.647682, 37.899654>,  <38.770042, 35.127029, 38.228260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347660, 34.647682, 37.899654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706615, 34.477005, 37.944603>,  <38.921989, 34.374599, 37.971573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706615, 34.477005, 37.944603>,  <38.347660, 34.647682, 37.899654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706615, 34.477005, 37.944603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425217, -0.768268, 0.478493,
		-0.117840, -0.477175, -0.870872,
		0.897388, -0.426695, 0.112371,
		38.975830, 34.348995, 37.978313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248566, 33.924545, 38.080833>,  <38.347660, 34.647682, 37.899654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248566, 33.924545, 38.080833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632053, 33.990177, 38.173733>,  <38.862144, 34.029556, 38.229473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632053, 33.990177, 38.173733>,  <38.248566, 33.924545, 38.080833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632053, 33.990177, 38.173733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096562, -0.580347, 0.808624,
		0.267459, -0.797669, -0.540546,
		0.958718, 0.164078, 0.232244,
		38.919670, 34.039402, 38.243404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623196, 33.254829, 38.059513>,  <38.248566, 33.924545, 38.080833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623196, 33.254829, 38.059513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828514, 33.508518, 38.290787>,  <38.951706, 33.660732, 38.429550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828514, 33.508518, 38.290787>,  <38.623196, 33.254829, 38.059513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828514, 33.508518, 38.290787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052412, -0.649282, 0.758740,
		0.856610, -0.419761, -0.300033,
		0.513296, 0.634219, 0.578182,
		38.982502, 33.698784, 38.464241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615704, 32.576553, 37.710064>,  <38.623196, 33.254829, 38.059513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615704, 32.576553, 37.710064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217743, 32.556137, 37.744846>,  <37.978966, 32.543888, 37.765717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217743, 32.556137, 37.744846>,  <38.615704, 32.576553, 37.710064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217743, 32.556137, 37.744846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094855, 0.766337, -0.635398,
		-0.034208, -0.640408, -0.767272,
		-0.994903, -0.051044, 0.086960,
		37.919273, 32.540825, 37.770935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436096, 32.938210, 37.203243>,  <38.615704, 32.576553, 37.710064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436096, 32.938210, 37.203243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077724, 32.884445, 37.372593>,  <37.862701, 32.852188, 37.474201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077724, 32.884445, 37.372593>,  <38.436096, 32.938210, 37.203243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077724, 32.884445, 37.372593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407706, 0.627146, -0.663674,
		-0.176315, -0.767217, -0.616677,
		-0.895929, -0.134407, 0.423374,
		37.808945, 32.844124, 37.499603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858376, 32.687401, 36.626526>,  <38.436096, 32.938210, 37.203243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858376, 32.687401, 36.626526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691875, 32.855724, 36.948929>,  <37.591976, 32.956718, 37.142372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691875, 32.855724, 36.948929>,  <37.858376, 32.687401, 36.626526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691875, 32.855724, 36.948929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585220, 0.554448, -0.591697,
		-0.695882, -0.717989, 0.015475,
		-0.416252, 0.420808, 0.806012,
		37.567001, 32.981968, 37.190731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148552, 32.613743, 36.565380>,  <37.858376, 32.687401, 36.626526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148552, 32.613743, 36.565380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199772, 32.920731, 36.816647>,  <37.230503, 33.104923, 36.967407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199772, 32.920731, 36.816647>,  <37.148552, 32.613743, 36.565380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199772, 32.920731, 36.816647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644989, 0.545587, -0.535093,
		-0.753387, -0.336642, 0.564872,
		0.128052, 0.767468, 0.628168,
		37.238186, 33.150970, 37.005096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487045, 32.895851, 36.630112>,  <37.148552, 32.613743, 36.565380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487045, 32.895851, 36.630112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750084, 33.172657, 36.749226>,  <36.907909, 33.338741, 36.820694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750084, 33.172657, 36.749226>,  <36.487045, 32.895851, 36.630112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750084, 33.172657, 36.749226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467494, 0.684796, -0.559020,
		-0.590772, 0.228400, 0.773836,
		0.657600, 0.692017, 0.297782,
		36.947365, 33.380260, 36.838562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050632, 33.414635, 36.807133>,  <36.487045, 32.895851, 36.630112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050632, 33.414635, 36.807133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412964, 33.574371, 36.750572>,  <36.630363, 33.670216, 36.716637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412964, 33.574371, 36.750572>,  <36.050632, 33.414635, 36.807133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412964, 33.574371, 36.750572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416488, 0.778383, -0.469743,
		-0.077523, 0.484401, 0.871405,
		0.905830, 0.399346, -0.141404,
		36.684711, 33.694176, 36.708153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989811, 34.128311, 37.147785>,  <36.050632, 33.414635, 36.807133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989811, 34.128311, 37.147785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257172, 34.091496, 36.852551>,  <36.417587, 34.069405, 36.675411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257172, 34.091496, 36.852551>,  <35.989811, 34.128311, 37.147785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257172, 34.091496, 36.852551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431451, 0.760332, -0.485537,
		0.605877, 0.642981, 0.468497,
		0.668403, -0.092042, -0.738082,
		36.457691, 34.063885, 36.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176292, 34.853767, 37.036476>,  <35.989811, 34.128311, 37.147785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176292, 34.853767, 37.036476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326843, 34.686657, 36.705708>,  <36.417171, 34.586391, 36.507244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326843, 34.686657, 36.705708>,  <36.176292, 34.853767, 37.036476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326843, 34.686657, 36.705708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411663, 0.724193, -0.553243,
		0.829985, 0.548641, 0.100585,
		0.376375, -0.417777, -0.826925,
		36.439754, 34.561325, 36.457630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412777, 35.412231, 36.688145>,  <36.176292, 34.853767, 37.036476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412777, 35.412231, 36.688145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336727, 35.114933, 36.431572>,  <36.291096, 34.936554, 36.277626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336727, 35.114933, 36.431572>,  <36.412777, 35.412231, 36.688145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336727, 35.114933, 36.431572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490354, 0.637914, -0.593818,
		0.850532, 0.201631, -0.485737,
		-0.190126, -0.743244, -0.641437,
		36.279690, 34.891960, 36.239140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501251, 35.679745, 36.076687>,  <36.412777, 35.412231, 36.688145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501251, 35.679745, 36.076687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267342, 35.372200, 35.973232>,  <36.126995, 35.187675, 35.911160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267342, 35.372200, 35.973232>,  <36.501251, 35.679745, 36.076687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267342, 35.372200, 35.973232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479215, 0.584682, -0.654598,
		0.654518, -0.258846, -0.710356,
		-0.584772, -0.768859, -0.258642,
		36.091911, 35.141541, 35.895641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608444, 35.648777, 35.276848>,  <36.501251, 35.679745, 36.076687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608444, 35.648777, 35.276848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277164, 35.479519, 35.423836>,  <36.078396, 35.377964, 35.512028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277164, 35.479519, 35.423836>,  <36.608444, 35.648777, 35.276848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277164, 35.479519, 35.423836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547771, 0.472584, -0.690370,
		0.118469, -0.773052, -0.623182,
		-0.828198, -0.423148, 0.367469,
		36.028706, 35.352573, 35.534077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242401, 35.127434, 34.753689>,  <36.608444, 35.648777, 35.276848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242401, 35.127434, 34.753689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007374, 35.322807, 35.011742>,  <35.866356, 35.440033, 35.166573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007374, 35.322807, 35.011742>,  <36.242401, 35.127434, 34.753689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007374, 35.322807, 35.011742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572818, 0.312042, -0.757964,
		-0.571525, -0.814898, 0.096440,
		-0.587570, 0.488438, 0.645128,
		35.831104, 35.469337, 35.205280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.084656, 29.250811, 39.782097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805470, 29.496597, 39.929218>,  <37.637959, 29.644070, 40.017490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.805470, 29.496597, 39.929218>,  <38.084656, 29.250811, 39.782097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805470, 29.496597, 39.929218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019928, 0.496730, -0.867676,
		-0.715854, -0.612937, -0.334455,
		-0.697965, 0.614465, 0.367801,
		37.596081, 29.680937, 40.039558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546623, 29.281561, 39.253929>,  <38.084656, 29.250811, 39.782097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546623, 29.281561, 39.253929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521721, 29.609955, 39.480946>,  <37.506779, 29.806992, 39.617157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.521721, 29.609955, 39.480946>,  <37.546623, 29.281561, 39.253929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521721, 29.609955, 39.480946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166752, 0.569211, -0.805104,
		-0.984032, 0.044520, -0.172336,
		-0.062252, 0.820985, 0.567546,
		37.503044, 29.856251, 39.651211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253658, 29.739977, 38.781628>,  <37.546623, 29.281561, 39.253929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253658, 29.739977, 38.781628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378693, 29.985851, 39.071304>,  <37.453712, 30.133375, 39.245110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378693, 29.985851, 39.071304>,  <37.253658, 29.739977, 38.781628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378693, 29.985851, 39.071304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144938, 0.722604, -0.675896,
		-0.938767, 0.316238, 0.136784,
		0.312585, 0.614684, 0.724192,
		37.472469, 30.170256, 39.288563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880322, 30.299877, 38.667728>,  <37.253658, 29.739977, 38.781628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880322, 30.299877, 38.667728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192291, 30.420435, 38.887138>,  <37.379475, 30.492769, 39.018784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.192291, 30.420435, 38.887138>,  <36.880322, 30.299877, 38.667728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192291, 30.420435, 38.887138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055412, 0.839720, -0.540185,
		-0.623415, 0.451699, 0.638218,
		0.779925, 0.301394, 0.548524,
		37.426270, 30.510853, 39.051697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603878, 30.975872, 38.992863>,  <36.880322, 30.299877, 38.667728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603878, 30.975872, 38.992863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003014, 30.951445, 38.983158>,  <37.242496, 30.936789, 38.977333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.003014, 30.951445, 38.983158>,  <36.603878, 30.975872, 38.992863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003014, 30.951445, 38.983158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046035, 0.913110, -0.405106,
		0.046895, 0.403113, 0.913948,
		0.997838, -0.061071, -0.024263,
		37.302364, 30.933123, 38.975880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863499, 31.604542, 39.176151>,  <36.603878, 30.975872, 38.992863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863499, 31.604542, 39.176151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179432, 31.435324, 38.998524>,  <37.368992, 31.333792, 38.891949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.179432, 31.435324, 38.998524>,  <36.863499, 31.604542, 39.176151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179432, 31.435324, 38.998524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090347, 0.796389, -0.597998,
		0.606631, 0.432199, 0.667236,
		0.789833, -0.423047, -0.444066,
		37.416382, 31.308411, 38.865303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370377, 32.130199, 39.275005>,  <36.863499, 31.604542, 39.176151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370377, 32.130199, 39.275005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465282, 31.901405, 38.960926>,  <37.522224, 31.764130, 38.772476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465282, 31.901405, 38.960926>,  <37.370377, 32.130199, 39.275005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465282, 31.901405, 38.960926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213391, 0.819226, -0.532290,
		0.947718, -0.041260, 0.316431,
		0.237266, -0.571985, -0.785200,
		37.536461, 31.729811, 38.725365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881371, 32.478683, 38.981800>,  <37.370377, 32.130199, 39.275005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881371, 32.478683, 38.981800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.776684, 32.218670, 38.696434>,  <37.713871, 32.062664, 38.525215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.776684, 32.218670, 38.696434>,  <37.881371, 32.478683, 38.981800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776684, 32.218670, 38.696434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157071, 0.700639, -0.696012,
		0.952277, -0.294217, -0.081271,
		-0.261721, -0.650031, -0.713416,
		37.698166, 32.023659, 38.482410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478390, 32.461327, 38.474449>,  <37.881371, 32.478683, 38.981800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478390, 32.461327, 38.474449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143906, 32.337494, 38.293381>,  <37.943214, 32.263195, 38.184738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143906, 32.337494, 38.293381>,  <38.478390, 32.461327, 38.474449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143906, 32.337494, 38.293381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023726, 0.845078, -0.534115,
		0.547892, -0.435894, -0.714010,
		-0.836212, -0.309579, -0.452670,
		37.893044, 32.244621, 38.157581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161652, 32.763794, 38.476292>,  <38.478390, 32.461327, 38.474449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161652, 32.763794, 38.476292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162567, 33.129803, 38.637646>,  <39.163116, 33.349407, 38.734459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.162567, 33.129803, 38.637646>,  <39.161652, 32.763794, 38.476292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162567, 33.129803, 38.637646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076726, -0.402039, 0.912402,
		0.997050, -0.033042, 0.069285,
		0.002292, 0.915026, 0.403388,
		39.163254, 33.404312, 38.758663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638927, 32.733318, 39.016991>,  <39.161652, 32.763794, 38.476292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638927, 32.733318, 39.016991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417351, 33.057842, 39.091736>,  <39.284405, 33.252556, 39.136581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.417351, 33.057842, 39.091736>,  <39.638927, 32.733318, 39.016991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417351, 33.057842, 39.091736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141083, -0.129726, 0.981462,
		0.820512, 0.570040, -0.042601,
		-0.553946, 0.811311, 0.186864,
		39.251167, 33.301235, 39.147797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049255, 33.072838, 39.536644>,  <39.638927, 32.733318, 39.016991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049255, 33.072838, 39.536644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670715, 33.201359, 39.550430>,  <39.443592, 33.278473, 39.558701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.670715, 33.201359, 39.550430>,  <40.049255, 33.072838, 39.536644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670715, 33.201359, 39.550430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012383, -0.142626, 0.989699,
		0.322907, 0.936175, 0.138953,
		-0.946350, 0.321301, 0.034462,
		39.386810, 33.297749, 39.560768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993423, 33.485607, 40.121380>,  <40.049255, 33.072838, 39.536644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993423, 33.485607, 40.121380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617931, 33.367241, 40.050697>,  <39.392635, 33.296223, 40.008289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.617931, 33.367241, 40.050697>,  <39.993423, 33.485607, 40.121380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617931, 33.367241, 40.050697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161837, -0.074209, 0.984023,
		-0.304301, 0.952327, 0.021772,
		-0.938728, -0.295915, -0.176703,
		39.336311, 33.278465, 39.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679100, 33.803703, 40.680668>,  <39.993423, 33.485607, 40.121380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679100, 33.803703, 40.680668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424641, 33.522655, 40.553143>,  <39.271965, 33.354027, 40.476627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.424641, 33.522655, 40.553143>,  <39.679100, 33.803703, 40.680668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424641, 33.522655, 40.553143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273189, -0.181315, 0.944718,
		-0.721580, 0.688080, -0.076603,
		-0.636153, -0.702617, -0.318810,
		39.233795, 33.311871, 40.457500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036415, 33.893173, 41.121502>,  <39.679100, 33.803703, 40.680668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036415, 33.893173, 41.121502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050781, 33.518719, 40.981579>,  <39.059402, 33.294048, 40.897625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.050781, 33.518719, 40.981579>,  <39.036415, 33.893173, 41.121502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050781, 33.518719, 40.981579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190736, -0.350021, 0.917118,
		-0.980984, 0.033780, -0.191126,
		0.035918, -0.936133, -0.349808,
		39.061558, 33.237881, 40.876637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476677, 33.395008, 41.495399>,  <39.036415, 33.893173, 41.121502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476677, 33.395008, 41.495399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744907, 33.138844, 41.345623>,  <38.905846, 32.985146, 41.255756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744907, 33.138844, 41.345623>,  <38.476677, 33.395008, 41.495399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744907, 33.138844, 41.345623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020928, -0.488210, 0.872475,
		-0.741543, -0.592899, -0.313981,
		0.670579, -0.640407, -0.374437,
		38.946079, 32.946720, 41.233292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145725, 32.757454, 41.665623>,  <38.476677, 33.395008, 41.495399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145725, 32.757454, 41.665623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513901, 32.633541, 41.570271>,  <38.734806, 32.559193, 41.513062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.513901, 32.633541, 41.570271>,  <38.145725, 32.757454, 41.665623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513901, 32.633541, 41.570271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029388, -0.662963, 0.748075,
		-0.389778, -0.681553, -0.619321,
		0.920440, -0.309784, -0.238379,
		38.790031, 32.540607, 41.498756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170479, 32.050690, 41.713825>,  <38.145725, 32.757454, 41.665623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170479, 32.050690, 41.713825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550728, 32.164257, 41.763969>,  <38.778877, 32.232399, 41.794056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.550728, 32.164257, 41.763969>,  <38.170479, 32.050690, 41.713825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550728, 32.164257, 41.763969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105673, -0.675882, 0.729395,
		0.291820, -0.680128, -0.672508,
		0.950618, 0.283918, 0.125365,
		38.835915, 32.249432, 41.801579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582348, 31.451389, 41.833645>,  <38.170479, 32.050690, 41.713825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582348, 31.451389, 41.833645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847260, 31.731310, 41.940727>,  <39.006207, 31.899263, 42.004978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.847260, 31.731310, 41.940727>,  <38.582348, 31.451389, 41.833645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847260, 31.731310, 41.940727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220421, -0.523456, 0.823049,
		0.716105, -0.486076, -0.500923,
		0.662275, 0.699803, 0.267708,
		39.045940, 31.941250, 42.021038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277912, 31.117275, 41.993641>,  <38.582348, 31.451389, 41.833645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277912, 31.117275, 41.993641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285736, 31.463457, 42.193882>,  <39.290432, 31.671165, 42.314026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.285736, 31.463457, 42.193882>,  <39.277912, 31.117275, 41.993641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285736, 31.463457, 42.193882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521390, -0.436056, 0.733490,
		0.853095, 0.246665, -0.459767,
		0.019558, 0.865454, 0.500606,
		39.291603, 31.723093, 42.344063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932724, 31.143705, 42.257114>,  <39.277912, 31.117275, 41.993641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932724, 31.143705, 42.257114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723225, 31.383883, 42.498829>,  <39.597527, 31.527988, 42.643856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.723225, 31.383883, 42.498829>,  <39.932724, 31.143705, 42.257114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723225, 31.383883, 42.498829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344451, -0.499514, 0.794883,
		0.779131, 0.624462, 0.054794,
		-0.523745, 0.600444, 0.604284,
		39.566101, 31.564016, 42.680115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463238, 31.311022, 42.742886>,  <39.932724, 31.143705, 42.257114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463238, 31.311022, 42.742886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117939, 31.416523, 42.915043>,  <39.910759, 31.479824, 43.018337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.117939, 31.416523, 42.915043>,  <40.463238, 31.311022, 42.742886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117939, 31.416523, 42.915043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353795, -0.292013, 0.888571,
		0.360041, 0.919328, 0.158766,
		-0.863249, 0.263751, 0.430390,
		39.858963, 31.495647, 43.044159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649796, 31.616592, 43.424160>,  <40.463238, 31.311022, 42.742886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649796, 31.616592, 43.424160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260162, 31.532629, 43.457867>,  <40.026382, 31.482252, 43.478092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.260162, 31.532629, 43.457867>,  <40.649796, 31.616592, 43.424160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260162, 31.532629, 43.457867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136272, -0.247268, 0.959317,
		-0.180531, 0.945938, 0.269464,
		-0.974083, -0.209907, 0.084266,
		39.967937, 31.469658, 43.483147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.319660, 32.631893, 43.881348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583067, 32.383789, 43.710873>,  <31.741110, 32.234928, 43.608589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.583067, 32.383789, 43.710873>,  <31.319660, 32.631893, 43.881348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583067, 32.383789, 43.710873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050537, 0.601482, -0.797287,
		0.750869, 0.503488, 0.427430,
		0.658515, -0.620259, -0.426189,
		31.780621, 32.197712, 43.583015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846657, 33.009674, 43.740253>,  <31.319660, 32.631893, 43.881348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846657, 33.009674, 43.740253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910564, 32.689739, 43.508827>,  <31.948908, 32.497780, 43.369972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910564, 32.689739, 43.508827>,  <31.846657, 33.009674, 43.740253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910564, 32.689739, 43.508827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099701, 0.596175, -0.796640,
		0.982107, 0.069593, 0.174993,
		0.159767, -0.799833, -0.578569,
		31.958494, 32.449791, 43.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372448, 33.286072, 43.360878>,  <31.846657, 33.009674, 43.740253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372448, 33.286072, 43.360878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210464, 32.969311, 43.178055>,  <32.113274, 32.779255, 43.068363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.210464, 32.969311, 43.178055>,  <32.372448, 33.286072, 43.360878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210464, 32.969311, 43.178055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014124, 0.505235, -0.862866,
		0.914228, -0.342966, -0.215782,
		-0.404954, -0.791904, -0.457056,
		32.088978, 32.731739, 43.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848251, 33.182320, 42.788063>,  <32.372448, 33.286072, 43.360878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848251, 33.182320, 42.788063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509480, 32.986359, 42.705399>,  <32.306217, 32.868782, 42.655800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.509480, 32.986359, 42.705399>,  <32.848251, 33.182320, 42.788063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509480, 32.986359, 42.705399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013311, 0.369018, -0.929327,
		0.531541, -0.789824, -0.306010,
		-0.846928, -0.489902, -0.206662,
		32.255402, 32.839390, 42.643398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007389, 32.804710, 42.206490>,  <32.848251, 33.182320, 42.788063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007389, 32.804710, 42.206490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608471, 32.833714, 42.201672>,  <32.369122, 32.851116, 42.198780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.608471, 32.833714, 42.201672>,  <33.007389, 32.804710, 42.206490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608471, 32.833714, 42.201672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047844, 0.515951, -0.855281,
		-0.055797, -0.853544, -0.518025,
		-0.997295, 0.072506, -0.012048,
		32.309284, 32.855465, 42.198055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770126, 32.767094, 41.511223>,  <33.007389, 32.804710, 42.206490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770126, 32.767094, 41.511223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438824, 32.916908, 41.677940>,  <32.240044, 33.006798, 41.777973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.438824, 32.916908, 41.677940>,  <32.770126, 32.767094, 41.511223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438824, 32.916908, 41.677940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188092, 0.514830, -0.836404,
		-0.527842, -0.771151, -0.355962,
		-0.828254, 0.374536, 0.416796,
		32.190346, 33.029270, 41.802979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283642, 32.699791, 41.014149>,  <32.770126, 32.767094, 41.511223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283642, 32.699791, 41.014149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111263, 32.972935, 41.250111>,  <32.007835, 33.136822, 41.391689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.111263, 32.972935, 41.250111>,  <32.283642, 32.699791, 41.014149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111263, 32.972935, 41.250111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428354, 0.420572, -0.799770,
		-0.794226, -0.597350, 0.111258,
		-0.430951, 0.682855, 0.589907,
		31.981977, 33.177792, 41.427082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699389, 32.798275, 40.661907>,  <32.283642, 32.699791, 41.014149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699389, 32.798275, 40.661907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783995, 33.122734, 40.880009>,  <31.834759, 33.317410, 41.010872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783995, 33.122734, 40.880009>,  <31.699389, 32.798275, 40.661907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783995, 33.122734, 40.880009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136767, 0.576953, -0.805245,
		-0.967758, 0.095748, 0.232973,
		0.211515, 0.811146, 0.545256,
		31.847448, 33.366077, 41.043587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263702, 33.343147, 40.394127>,  <31.699389, 32.798275, 40.661907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263702, 33.343147, 40.394127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543226, 33.536293, 40.605225>,  <31.710941, 33.652180, 40.731884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.543226, 33.536293, 40.605225>,  <31.263702, 33.343147, 40.394127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543226, 33.536293, 40.605225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040005, 0.710245, -0.702817,
		-0.714188, 0.512247, 0.477010,
		0.698810, 0.482861, 0.527741,
		31.752869, 33.681152, 40.763546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929905, 34.054920, 40.643578>,  <31.263702, 33.343147, 40.394127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929905, 34.054920, 40.643578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328539, 34.082855, 40.661213>,  <31.567719, 34.099617, 40.671795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.328539, 34.082855, 40.661213>,  <30.929905, 34.054920, 40.643578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328539, 34.082855, 40.661213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038878, 0.867675, -0.495608,
		-0.072863, 0.492201, 0.867426,
		0.996584, 0.069836, 0.044086,
		31.627514, 34.103806, 40.674438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109629, 34.612881, 40.979107>,  <30.929905, 34.054920, 40.643578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109629, 34.612881, 40.979107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422083, 34.557503, 40.735580>,  <31.609556, 34.524277, 40.589466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422083, 34.557503, 40.735580>,  <31.109629, 34.612881, 40.979107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422083, 34.557503, 40.735580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070270, 0.949415, -0.306062,
		0.620393, 0.281858, 0.731894,
		0.781137, -0.138449, -0.608816,
		31.656424, 34.515968, 40.552937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407631, 35.307266, 40.821835>,  <31.109629, 34.612881, 40.979107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407631, 35.307266, 40.821835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605330, 35.079029, 40.559494>,  <31.723948, 34.942085, 40.402088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.605330, 35.079029, 40.559494>,  <31.407631, 35.307266, 40.821835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605330, 35.079029, 40.559494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165644, 0.802431, -0.573295,
		0.853396, 0.174710, 0.491113,
		0.494245, -0.570597, -0.655851,
		31.753603, 34.907848, 40.362740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057613, 35.681091, 40.646542>,  <31.407631, 35.307266, 40.821835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057613, 35.681091, 40.646542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018871, 35.436653, 40.332298>,  <31.995626, 35.289989, 40.143753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018871, 35.436653, 40.332298>,  <32.057613, 35.681091, 40.646542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018871, 35.436653, 40.332298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062290, 0.784049, -0.617566,
		0.993347, -0.108750, -0.037875,
		-0.096856, -0.611098, -0.785607,
		31.989815, 35.253323, 40.096615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672215, 35.824562, 40.270916>,  <32.057613, 35.681091, 40.646542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672215, 35.824562, 40.270916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385921, 35.674831, 40.035084>,  <32.214146, 35.584991, 39.893585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.385921, 35.674831, 40.035084>,  <32.672215, 35.824562, 40.270916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385921, 35.674831, 40.035084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040625, 0.820474, -0.570239,
		0.697191, -0.432091, -0.572033,
		-0.715734, -0.374326, -0.589581,
		32.171200, 35.562534, 39.858208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382282, 35.527733, 39.934959>,  <32.672215, 35.824562, 40.270916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382282, 35.527733, 39.934959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640041, 35.817455, 40.033047>,  <33.794697, 35.991287, 40.091900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.640041, 35.817455, 40.033047>,  <33.382282, 35.527733, 39.934959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640041, 35.817455, 40.033047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399134, -0.592113, 0.700067,
		0.652257, -0.353249, -0.670653,
		0.644400, 0.724304, 0.245216,
		33.833363, 36.034748, 40.106613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993244, 35.191921, 40.147152>,  <33.382282, 35.527733, 39.934959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993244, 35.191921, 40.147152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046059, 35.552948, 40.311073>,  <34.077747, 35.769562, 40.409428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.046059, 35.552948, 40.311073>,  <33.993244, 35.191921, 40.147152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046059, 35.552948, 40.311073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244628, -0.430309, 0.868902,
		0.960584, -0.014480, -0.277611,
		0.132040, 0.902565, 0.409806,
		34.085670, 35.823719, 40.434013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671055, 35.135662, 40.515015>,  <33.993244, 35.191921, 40.147152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671055, 35.135662, 40.515015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476624, 35.458065, 40.650112>,  <34.359962, 35.651508, 40.731171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.476624, 35.458065, 40.650112>,  <34.671055, 35.135662, 40.515015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476624, 35.458065, 40.650112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371190, -0.159458, 0.914763,
		0.791165, 0.570017, -0.221673,
		-0.486083, 0.806011, 0.337742,
		34.330799, 35.699867, 40.751434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193104, 35.637917, 40.927994>,  <34.671055, 35.135662, 40.515015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193104, 35.637917, 40.927994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808716, 35.653030, 41.037617>,  <34.578083, 35.662098, 41.103390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.808716, 35.653030, 41.037617>,  <35.193104, 35.637917, 40.927994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808716, 35.653030, 41.037617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265611, -0.150981, 0.952185,
		0.077355, 0.987814, 0.135053,
		-0.960972, 0.037784, 0.274053,
		34.520424, 35.664364, 41.119831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281616, 35.686409, 41.562374>,  <35.193104, 35.637917, 40.927994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281616, 35.686409, 41.562374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886688, 35.627953, 41.537601>,  <34.649731, 35.592880, 41.522739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886688, 35.627953, 41.537601>,  <35.281616, 35.686409, 41.562374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886688, 35.627953, 41.537601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040438, -0.145700, 0.988502,
		-0.153480, 0.978476, 0.137943,
		-0.987324, -0.146137, -0.061930,
		34.590492, 35.584110, 41.519024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026199, 35.763012, 42.338116>,  <35.281616, 35.686409, 41.562374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026199, 35.763012, 42.338116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694553, 35.609901, 42.175121>,  <34.495564, 35.518036, 42.077324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.694553, 35.609901, 42.175121>,  <35.026199, 35.763012, 42.338116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694553, 35.609901, 42.175121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323373, -0.266217, 0.908052,
		-0.456063, 0.884652, 0.096945,
		-0.829118, -0.382779, -0.407485,
		34.445820, 35.495068, 42.052876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357594, 35.969837, 42.779274>,  <35.026199, 35.763012, 42.338116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357594, 35.969837, 42.779274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285530, 35.646648, 42.554874>,  <34.242290, 35.452736, 42.420235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285530, 35.646648, 42.554874>,  <34.357594, 35.969837, 42.779274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285530, 35.646648, 42.554874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361674, -0.475965, 0.801654,
		-0.914732, 0.347322, -0.206475,
		-0.180157, -0.807976, -0.560998,
		34.231483, 35.404255, 42.386574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677769, 35.748741, 42.996162>,  <34.357594, 35.969837, 42.779274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677769, 35.748741, 42.996162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854282, 35.437519, 42.817322>,  <33.960190, 35.250786, 42.710018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.854282, 35.437519, 42.817322>,  <33.677769, 35.748741, 42.996162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854282, 35.437519, 42.817322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376232, -0.612747, 0.694975,
		-0.814690, -0.138465, -0.563123,
		0.441282, -0.778054, -0.447103,
		33.986668, 35.204102, 42.683189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168808, 35.328499, 42.738155>,  <33.677769, 35.748741, 42.996162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168808, 35.328499, 42.738155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488747, 35.101719, 42.816963>,  <33.680710, 34.965649, 42.864246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.488747, 35.101719, 42.816963>,  <33.168808, 35.328499, 42.738155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488747, 35.101719, 42.816963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531372, -0.516239, 0.671671,
		-0.279097, -0.641921, -0.714173,
		0.799843, -0.566952, 0.197018,
		33.728699, 34.931633, 42.876068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874134, 34.653011, 42.869797>,  <33.168808, 35.328499, 42.738155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874134, 34.653011, 42.869797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246616, 34.623749, 43.012627>,  <33.470108, 34.606194, 43.098324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.246616, 34.623749, 43.012627>,  <32.874134, 34.653011, 42.869797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246616, 34.623749, 43.012627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305388, -0.691371, 0.654786,
		0.198970, -0.718787, -0.666150,
		0.931208, -0.073152, 0.357070,
		33.525978, 34.601803, 43.119747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106647, 33.901878, 42.861233>,  <32.874134, 34.653011, 42.869797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106647, 33.901878, 42.861233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383911, 34.040981, 43.113770>,  <33.550270, 34.124443, 43.265293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383911, 34.040981, 43.113770>,  <33.106647, 33.901878, 42.861233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383911, 34.040981, 43.113770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142598, -0.792437, 0.593051,
		0.706542, -0.501105, -0.499692,
		0.693155, 0.347760, 0.631346,
		33.591858, 34.145309, 43.303173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537075, 33.301662, 43.032795>,  <33.106647, 33.901878, 42.861233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537075, 33.301662, 43.032795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582043, 33.579796, 43.316730>,  <33.609024, 33.746677, 43.487091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582043, 33.579796, 43.316730>,  <33.537075, 33.301662, 43.032795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582043, 33.579796, 43.316730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026925, -0.711975, 0.701689,
		0.993296, -0.097998, -0.061320,
		0.112422, 0.695333, 0.709840,
		33.615768, 33.788395, 43.529682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197895, 33.131863, 43.222675>,  <33.537075, 33.301662, 43.032795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197895, 33.131863, 43.222675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.032482, 33.321476, 43.533619>,  <33.933235, 33.435246, 43.720184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.032482, 33.321476, 43.533619>,  <34.197895, 33.131863, 43.222675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032482, 33.321476, 43.533619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411387, -0.664377, 0.623990,
		0.812251, 0.577833, 0.079727,
		-0.413531, 0.474038, 0.777354,
		33.908424, 33.463688, 43.766827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770092, 33.193954, 43.812881>,  <34.197895, 33.131863, 43.222675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770092, 33.193954, 43.812881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409157, 33.233070, 43.980797>,  <34.192596, 33.256542, 44.081547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.409157, 33.233070, 43.980797>,  <34.770092, 33.193954, 43.812881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409157, 33.233070, 43.980797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274184, -0.621238, 0.734089,
		0.332575, 0.777496, 0.533754,
		-0.902340, 0.097793, 0.419785,
		34.138454, 33.262409, 44.106731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463207, 33.535412, 43.877193>,  <34.770092, 33.193954, 43.812881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463207, 33.535412, 43.877193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820492, 33.375465, 43.794949>,  <36.034863, 33.279499, 43.745602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.820492, 33.375465, 43.794949>,  <35.463207, 33.535412, 43.877193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820492, 33.375465, 43.794949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032540, 0.513585, -0.857421,
		0.448450, 0.759171, 0.471754,
		0.893215, -0.399862, -0.205614,
		36.088455, 33.255508, 43.733265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885654, 34.188305, 43.719917>,  <35.463207, 33.535412, 43.877193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885654, 34.188305, 43.719917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088047, 33.880390, 43.564274>,  <36.209480, 33.695641, 43.470886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088047, 33.880390, 43.564274>,  <35.885654, 34.188305, 43.719917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088047, 33.880390, 43.564274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124792, 0.511704, -0.850051,
		0.853470, 0.381550, 0.354975,
		0.505979, -0.769791, -0.389109,
		36.239841, 33.649452, 43.447540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462574, 34.503963, 43.405331>,  <35.885654, 34.188305, 43.719917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462574, 34.503963, 43.405331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451393, 34.141441, 43.236652>,  <36.444683, 33.923927, 43.135445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451393, 34.141441, 43.236652>,  <36.462574, 34.503963, 43.405331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451393, 34.141441, 43.236652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198178, 0.408463, -0.891001,
		0.979767, -0.108479, 0.168191,
		-0.027955, -0.906306, -0.421697,
		36.443008, 33.869549, 43.110142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132282, 34.417320, 43.069729>,  <36.462574, 34.503963, 43.405331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132282, 34.417320, 43.069729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882793, 34.152660, 42.903263>,  <36.733101, 33.993866, 42.803383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.882793, 34.152660, 42.903263>,  <37.132282, 34.417320, 43.069729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882793, 34.152660, 42.903263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271092, 0.316260, -0.909114,
		0.733128, -0.679855, -0.017892,
		-0.623724, -0.661647, -0.416162,
		36.695675, 33.954166, 42.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520157, 34.130085, 42.515366>,  <37.132282, 34.417320, 43.069729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520157, 34.130085, 42.515366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134743, 34.076733, 42.422585>,  <36.903492, 34.044720, 42.366917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134743, 34.076733, 42.422585>,  <37.520157, 34.130085, 42.515366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134743, 34.076733, 42.422585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185670, 0.290897, -0.938566,
		0.192663, -0.947411, -0.255525,
		-0.963539, -0.133383, -0.231951,
		36.845680, 34.036716, 42.353001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473423, 33.699387, 41.905399>,  <37.520157, 34.130085, 42.515366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473423, 33.699387, 41.905399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.117161, 33.879257, 41.878471>,  <36.903404, 33.987179, 41.862316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.117161, 33.879257, 41.878471>,  <37.473423, 33.699387, 41.905399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117161, 33.879257, 41.878471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240758, 0.340815, -0.908780,
		-0.385712, -0.825613, -0.411811,
		-0.890652, 0.449674, -0.067316,
		36.849964, 34.014160, 41.858276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153973, 33.550983, 41.196972>,  <37.473423, 33.699387, 41.905399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153973, 33.550983, 41.196972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958717, 33.882374, 41.306767>,  <36.841564, 34.081207, 41.372643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.958717, 33.882374, 41.306767>,  <37.153973, 33.550983, 41.196972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958717, 33.882374, 41.306767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196271, 0.410655, -0.890416,
		-0.850410, -0.380774, -0.363063,
		-0.488141, 0.828477, 0.274490,
		36.812275, 34.130917, 41.389114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766617, 33.737072, 40.631298>,  <37.153973, 33.550983, 41.196972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766617, 33.737072, 40.631298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757938, 34.077663, 40.840878>,  <36.752731, 34.282017, 40.966625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.757938, 34.077663, 40.840878>,  <36.766617, 33.737072, 40.631298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757938, 34.077663, 40.840878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093430, 0.523503, -0.846886,
		-0.995389, 0.030574, -0.090913,
		-0.021701, 0.851475, 0.523946,
		36.751427, 34.333107, 40.998062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340992, 34.196854, 40.318573>,  <36.766617, 33.737072, 40.631298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340992, 34.196854, 40.318573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571445, 34.448654, 40.527111>,  <36.709717, 34.599735, 40.652233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.571445, 34.448654, 40.527111>,  <36.340992, 34.196854, 40.318573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571445, 34.448654, 40.527111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000573, 0.638150, -0.769912,
		-0.817355, 0.443274, 0.368021,
		0.576135, 0.629502, 0.521341,
		36.744286, 34.637505, 40.683514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937180, 34.781025, 40.393322>,  <36.340992, 34.196854, 40.318573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937180, 34.781025, 40.393322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315735, 34.897591, 40.449081>,  <36.542866, 34.967529, 40.482536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315735, 34.897591, 40.449081>,  <35.937180, 34.781025, 40.393322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315735, 34.897591, 40.449081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118962, 0.715579, -0.688327,
		-0.300339, 0.634840, 0.711881,
		0.946385, 0.291419, 0.139395,
		36.599651, 34.985016, 40.490898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893852, 35.467781, 40.716087>,  <35.937180, 34.781025, 40.393322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893852, 35.467781, 40.716087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272301, 35.426315, 40.593372>,  <36.499371, 35.401436, 40.519745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.272301, 35.426315, 40.593372>,  <35.893852, 35.467781, 40.716087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272301, 35.426315, 40.593372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128054, 0.750388, -0.648475,
		0.297432, 0.652818, 0.696680,
		0.946117, -0.103665, -0.306785,
		36.556137, 35.395214, 40.501335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238266, 36.100475, 40.731937>,  <35.893852, 35.467781, 40.716087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238266, 36.100475, 40.731937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465622, 35.881184, 40.486538>,  <36.602036, 35.749607, 40.339298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.465622, 35.881184, 40.486538>,  <36.238266, 36.100475, 40.731937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465622, 35.881184, 40.486538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042874, 0.764381, -0.643338,
		0.821641, 0.339364, 0.457972,
		0.568391, -0.548228, -0.613496,
		36.636139, 35.716717, 40.302490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584717, 36.576443, 40.361534>,  <36.238266, 36.100475, 40.731937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584717, 36.576443, 40.361534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662811, 36.250622, 40.143036>,  <36.709667, 36.055130, 40.011936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662811, 36.250622, 40.143036>,  <36.584717, 36.576443, 40.361534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662811, 36.250622, 40.143036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069774, 0.544016, -0.836169,
		0.978271, 0.201363, 0.049376,
		0.195235, -0.814555, -0.546245,
		36.721382, 36.006256, 39.979164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316219, 36.684948, 40.111797>,  <36.584717, 36.576443, 40.361534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316219, 36.684948, 40.111797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094723, 36.437557, 39.888779>,  <36.961826, 36.289124, 39.754967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094723, 36.437557, 39.888779>,  <37.316219, 36.684948, 40.111797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094723, 36.437557, 39.888779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037230, 0.650518, -0.758578,
		0.831856, -0.440814, -0.337193,
		-0.553742, -0.618474, -0.557549,
		36.928600, 36.252014, 39.721516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.589466, 27.829954, 33.661247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470381, 27.794153, 34.041428>,  <29.398930, 27.772673, 34.269535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.470381, 27.794153, 34.041428>,  <29.589466, 27.829954, 33.661247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470381, 27.794153, 34.041428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445250, 0.893696, -0.055307,
		-0.844464, -0.439654, -0.305916,
		-0.297712, -0.089504, 0.950451,
		29.381067, 27.767302, 34.326561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808392, 27.936441, 33.796539>,  <29.589466, 27.829954, 33.661247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808392, 27.936441, 33.796539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997942, 28.034529, 34.134842>,  <29.111671, 28.093380, 34.337826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.997942, 28.034529, 34.134842>,  <28.808392, 27.936441, 33.796539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997942, 28.034529, 34.134842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269327, 0.954781, -0.125924,
		-0.838395, -0.168114, 0.518490,
		0.473875, 0.245217, 0.845761,
		29.140104, 28.108093, 34.388569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363890, 28.289042, 34.266342>,  <28.808392, 27.936441, 33.796539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363890, 28.289042, 34.266342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733686, 28.425762, 34.333851>,  <28.955564, 28.507795, 34.374355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733686, 28.425762, 34.333851>,  <28.363890, 28.289042, 34.266342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733686, 28.425762, 34.333851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226156, 0.848198, -0.478972,
		-0.306868, 0.404637, 0.861453,
		0.924492, 0.341803, 0.168774,
		29.011034, 28.528303, 34.384483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207745, 28.890406, 34.653698>,  <28.363890, 28.289042, 34.266342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207745, 28.890406, 34.653698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.537485, 28.894192, 34.427296>,  <28.735329, 28.896463, 34.291454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.537485, 28.894192, 34.427296>,  <28.207745, 28.890406, 34.653698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537485, 28.894192, 34.427296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378709, 0.752378, -0.538987,
		0.420745, 0.658664, 0.623808,
		0.824350, 0.009466, -0.566001,
		28.784790, 28.897032, 34.257496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246445, 29.513386, 34.484001>,  <28.207745, 28.890406, 34.653698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246445, 29.513386, 34.484001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488865, 29.331270, 34.223106>,  <28.634317, 29.222000, 34.066570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.488865, 29.331270, 34.223106>,  <28.246445, 29.513386, 34.484001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488865, 29.331270, 34.223106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126401, 0.754441, -0.644082,
		0.785318, 0.472790, 0.399681,
		0.606051, -0.455289, -0.652238,
		28.670681, 29.194683, 34.027435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857601, 29.823254, 34.439129>,  <28.246445, 29.513386, 34.484001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857601, 29.823254, 34.439129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829355, 29.651974, 34.078762>,  <28.812408, 29.549206, 33.862541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.829355, 29.651974, 34.078762>,  <28.857601, 29.823254, 34.439129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829355, 29.651974, 34.078762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103430, 0.895164, -0.433571,
		0.992127, -0.123797, -0.018921,
		-0.070612, -0.428200, -0.900921,
		28.808172, 29.523514, 33.808487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389864, 30.192991, 34.076637>,  <28.857601, 29.823254, 34.439129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389864, 30.192991, 34.076637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107586, 30.049026, 33.832520>,  <28.938219, 29.962648, 33.686050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107586, 30.049026, 33.832520>,  <29.389864, 30.192991, 34.076637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107586, 30.049026, 33.832520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100193, 0.903408, -0.416913,
		0.701395, -0.233066, -0.673591,
		-0.705696, -0.359909, -0.610294,
		28.895878, 29.941053, 33.649429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449856, 30.658775, 33.414368>,  <29.389864, 30.192991, 34.076637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449856, 30.658775, 33.414368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100901, 30.465506, 33.384758>,  <28.891527, 30.349543, 33.366993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.100901, 30.465506, 33.384758>,  <29.449856, 30.658775, 33.414368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100901, 30.465506, 33.384758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439913, 0.842082, -0.312050,
		0.213111, -0.239663, -0.947177,
		-0.872388, -0.483177, -0.074026,
		28.839184, 30.320553, 33.362549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.164030, 30.785936, 32.726479>,  <29.449856, 30.658775, 33.414368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.164030, 30.785936, 32.726479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841263, 30.695593, 32.944790>,  <28.647602, 30.641386, 33.075775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841263, 30.695593, 32.944790>,  <29.164030, 30.785936, 32.726479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841263, 30.695593, 32.944790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510445, 0.731577, -0.451930,
		-0.297207, -0.643260, -0.705610,
		-0.806916, -0.225858, 0.545779,
		28.599188, 30.627836, 33.108524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578856, 30.875753, 32.275242>,  <29.164030, 30.785936, 32.726479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578856, 30.875753, 32.275242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433147, 30.911072, 32.646080>,  <28.345722, 30.932262, 32.868584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.433147, 30.911072, 32.646080>,  <28.578856, 30.875753, 32.275242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433147, 30.911072, 32.646080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604721, 0.734652, -0.307570,
		-0.708251, -0.672674, -0.214219,
		-0.364270, 0.088294, 0.927098,
		28.323866, 30.937559, 32.924210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916895, 31.068670, 32.126625>,  <28.578856, 30.875753, 32.275242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916895, 31.068670, 32.126625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938995, 31.152866, 32.517036>,  <27.952255, 31.203384, 32.751286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938995, 31.152866, 32.517036>,  <27.916895, 31.068670, 32.126625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938995, 31.152866, 32.517036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640735, 0.757182, -0.127022,
		-0.765771, -0.618360, 0.176706,
		0.055253, 0.210492, 0.976033,
		27.955572, 31.216013, 32.809845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265343, 31.220312, 32.232407>,  <27.916895, 31.068670, 32.126625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265343, 31.220312, 32.232407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466408, 31.381748, 32.538204>,  <27.587048, 31.478609, 32.721684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.466408, 31.381748, 32.538204>,  <27.265343, 31.220312, 32.232407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466408, 31.381748, 32.538204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494590, 0.859562, -0.128581,
		-0.709021, -0.313477, 0.631682,
		0.502663, 0.403590, 0.764490,
		27.617207, 31.502825, 32.767551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754864, 31.475330, 32.724651>,  <27.265343, 31.220312, 32.232407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754864, 31.475330, 32.724651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083317, 31.683184, 32.819077>,  <27.280388, 31.807896, 32.875732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.083317, 31.683184, 32.819077>,  <26.754864, 31.475330, 32.724651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083317, 31.683184, 32.819077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549041, 0.832143, 0.078052,
		-0.155878, -0.193699, 0.968598,
		0.821131, 0.519633, 0.236061,
		27.329657, 31.839073, 32.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647272, 31.913078, 33.223427>,  <26.754864, 31.475330, 32.724651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647272, 31.913078, 33.223427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974003, 32.094730, 33.081127>,  <27.170042, 32.203720, 32.995747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.974003, 32.094730, 33.081127>,  <26.647272, 31.913078, 33.223427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974003, 32.094730, 33.081127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426872, 0.890618, 0.156781,
		0.388036, 0.023796, 0.921337,
		0.816828, 0.454130, -0.355750,
		27.219051, 32.230968, 32.974403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784975, 32.448620, 33.709965>,  <26.647272, 31.913078, 33.223427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784975, 32.448620, 33.709965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972258, 32.567600, 33.377148>,  <27.084627, 32.638988, 33.177456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972258, 32.567600, 33.377148>,  <26.784975, 32.448620, 33.709965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972258, 32.567600, 33.377148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294425, 0.940343, 0.170493,
		0.833124, 0.165150, 0.527853,
		0.468207, 0.297455, -0.832047,
		27.112720, 32.656837, 33.127533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088226, 33.065372, 33.904285>,  <26.784975, 32.448620, 33.709965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088226, 33.065372, 33.904285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041145, 33.069881, 33.507092>,  <27.012897, 33.072586, 33.268776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041145, 33.069881, 33.507092>,  <27.088226, 33.065372, 33.904285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041145, 33.069881, 33.507092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359998, 0.931433, 0.053243,
		0.925499, 0.363739, -0.105576,
		-0.117703, 0.011269, -0.992985,
		27.005835, 33.073261, 33.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350765, 33.697975, 33.773216>,  <27.088226, 33.065372, 33.904285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350765, 33.697975, 33.773216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160112, 33.594433, 33.437164>,  <27.045721, 33.532307, 33.235535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.160112, 33.594433, 33.437164>,  <27.350765, 33.697975, 33.773216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160112, 33.594433, 33.437164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472800, 0.881164, -0.003260,
		0.741134, 0.395659, -0.542378,
		-0.476634, -0.258852, -0.840128,
		27.017122, 33.516777, 33.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381609, 34.292702, 33.266281>,  <27.350765, 33.697975, 33.773216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381609, 34.292702, 33.266281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065166, 34.076946, 33.150894>,  <26.875301, 33.947495, 33.081661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065166, 34.076946, 33.150894>,  <27.381609, 34.292702, 33.266281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065166, 34.076946, 33.150894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514208, 0.841853, -0.163933,
		0.331271, 0.018645, -0.943351,
		-0.791106, -0.539385, -0.288469,
		26.827835, 33.915131, 33.064354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217852, 34.738602, 32.760464>,  <27.381609, 34.292702, 33.266281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217852, 34.738602, 32.760464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933916, 34.481804, 32.876377>,  <26.763556, 34.327724, 32.945927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933916, 34.481804, 32.876377>,  <27.217852, 34.738602, 32.760464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933916, 34.481804, 32.876377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646116, 0.757299, 0.095044,
		-0.280472, -0.119769, -0.952361,
		-0.709838, -0.641992, 0.289786,
		26.720964, 34.289207, 32.963314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720739, 35.035576, 32.441261>,  <27.217852, 34.738602, 32.760464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720739, 35.035576, 32.441261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525393, 34.786160, 32.685455>,  <26.408184, 34.636509, 32.831974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525393, 34.786160, 32.685455>,  <26.720739, 35.035576, 32.441261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525393, 34.786160, 32.685455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597368, 0.748857, 0.286991,
		-0.636119, -0.224530, -0.738200,
		-0.488368, -0.623538, 0.610489,
		26.378881, 34.599098, 32.868603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047617, 35.699142, 32.341152>,  <26.720739, 35.035576, 32.441261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047617, 35.699142, 32.341152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312729, 35.902233, 32.120995>,  <27.471796, 36.024090, 31.988901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312729, 35.902233, 32.120995>,  <27.047617, 35.699142, 32.341152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312729, 35.902233, 32.120995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613577, -0.789565, 0.010506,
		-0.429235, -0.344671, -0.834841,
		0.662782, 0.507730, -0.550391,
		27.511564, 36.054550, 31.955877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255774, 35.318275, 31.767254>,  <27.047617, 35.699142, 32.341152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255774, 35.318275, 31.767254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561810, 35.573208, 31.804012>,  <27.745432, 35.726166, 31.826067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.561810, 35.573208, 31.804012>,  <27.255774, 35.318275, 31.767254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561810, 35.573208, 31.804012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637544, -0.769796, 0.030844,
		0.090400, 0.034990, -0.995291,
		0.765092, 0.637330, 0.091898,
		27.791338, 35.764408, 31.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828215, 35.186859, 31.211420>,  <27.255774, 35.318275, 31.767254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828215, 35.186859, 31.211420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015495, 35.377483, 31.509058>,  <28.127865, 35.491856, 31.687641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015495, 35.377483, 31.509058>,  <27.828215, 35.186859, 31.211420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015495, 35.377483, 31.509058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773996, -0.627435, -0.085175,
		0.426281, 0.615807, -0.662621,
		0.468203, 0.476558, 0.744096,
		28.155956, 35.520451, 31.732286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370644, 35.122654, 31.010216>,  <27.828215, 35.186859, 31.211420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370644, 35.122654, 31.010216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453503, 35.210014, 31.391665>,  <28.503218, 35.262428, 31.620533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.453503, 35.210014, 31.391665>,  <28.370644, 35.122654, 31.010216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453503, 35.210014, 31.391665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763184, -0.645934, -0.017852,
		0.612077, 0.731486, -0.300481,
		0.207149, 0.218396, 0.953621,
		28.515648, 35.275532, 31.677752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.035114, 35.289688, 30.992228>,  <28.370644, 35.122654, 31.010216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.035114, 35.289688, 30.992228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939920, 35.165932, 31.360497>,  <28.882805, 35.091679, 31.581459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.939920, 35.165932, 31.360497>,  <29.035114, 35.289688, 30.992228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939920, 35.165932, 31.360497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767889, -0.640365, -0.016704,
		0.594736, 0.703000, 0.389974,
		-0.237983, -0.309391, 0.920674,
		28.868525, 35.073112, 31.636700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695196, 35.219021, 31.330046>,  <29.035114, 35.289688, 30.992228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695196, 35.219021, 31.330046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449249, 35.008759, 31.565205>,  <29.301682, 34.882603, 31.706301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449249, 35.008759, 31.565205>,  <29.695196, 35.219021, 31.330046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449249, 35.008759, 31.565205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713279, -0.688673, 0.130243,
		0.336408, 0.499418, 0.798381,
		-0.614869, -0.525653, 0.587899,
		29.264790, 34.851063, 31.741575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106413, 34.931358, 31.741076>,  <29.695196, 35.219021, 31.330046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106413, 34.931358, 31.741076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784695, 34.716805, 31.843367>,  <29.591663, 34.588074, 31.904741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.784695, 34.716805, 31.843367>,  <30.106413, 34.931358, 31.741076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784695, 34.716805, 31.843367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575210, -0.810774, 0.108527,
		0.149126, 0.234386, 0.960638,
		-0.804297, -0.536384, 0.255729,
		29.543406, 34.555889, 31.920086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237364, 34.575924, 32.335819>,  <30.106413, 34.931358, 31.741076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237364, 34.575924, 32.335819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939863, 34.365654, 32.170654>,  <29.761362, 34.239491, 32.071556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.939863, 34.365654, 32.170654>,  <30.237364, 34.575924, 32.335819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.939863, 34.365654, 32.170654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573557, -0.819108, 0.009695,
		-0.343315, -0.229618, 0.910720,
		-0.743752, -0.525678, -0.412911,
		29.716738, 34.207951, 32.046780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928740, 34.064232, 32.867649>,  <30.237364, 34.575924, 32.335819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928740, 34.064232, 32.867649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868895, 33.935688, 32.493626>,  <29.832987, 33.858562, 32.269211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.868895, 33.935688, 32.493626>,  <29.928740, 34.064232, 32.867649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868895, 33.935688, 32.493626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520036, -0.829912, 0.202015,
		-0.840939, -0.456042, 0.291285,
		-0.149613, -0.321361, -0.935063,
		29.824011, 33.839279, 32.213108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762466, 33.429852, 32.996857>,  <29.928740, 34.064232, 32.867649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762466, 33.429852, 32.996857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841455, 33.442963, 32.604954>,  <29.888849, 33.450829, 32.369812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.841455, 33.442963, 32.604954>,  <29.762466, 33.429852, 32.996857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841455, 33.442963, 32.604954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574653, -0.813587, 0.088603,
		-0.794216, -0.580519, -0.179496,
		0.197471, 0.032778, -0.979760,
		29.900696, 33.452797, 32.311024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536856, 32.893898, 32.762386>,  <29.762466, 33.429852, 32.996857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536856, 32.893898, 32.762386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796511, 32.978680, 32.470169>,  <29.952305, 33.029549, 32.294838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796511, 32.978680, 32.470169>,  <29.536856, 32.893898, 32.762386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796511, 32.978680, 32.470169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495748, -0.846297, 0.194973,
		-0.576934, -0.488731, -0.654438,
		0.649139, 0.211950, -0.730545,
		29.991253, 33.042263, 32.251007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654476, 32.347977, 32.461517>,  <29.536856, 32.893898, 32.762386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654476, 32.347977, 32.461517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962643, 32.556404, 32.314575>,  <30.147543, 32.681461, 32.226410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962643, 32.556404, 32.314575>,  <29.654476, 32.347977, 32.461517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962643, 32.556404, 32.314575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596639, -0.792332, 0.127406,
		-0.224681, -0.317334, -0.921313,
		0.770416, 0.521065, -0.367356,
		30.193768, 32.712723, 32.204369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897518, 31.916603, 31.969353>,  <29.654476, 32.347977, 32.461517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897518, 31.916603, 31.969353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187502, 32.173717, 32.068356>,  <30.361492, 32.327988, 32.127758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.187502, 32.173717, 32.068356>,  <29.897518, 31.916603, 31.969353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187502, 32.173717, 32.068356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631580, -0.763728, 0.133513,
		0.274849, 0.059529, -0.959643,
		0.724958, 0.642787, 0.247507,
		30.404989, 32.366554, 32.142609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480799, 31.738504, 31.617685>,  <29.897518, 31.916603, 31.969353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480799, 31.738504, 31.617685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632811, 31.946777, 31.923487>,  <30.724018, 32.071743, 32.106968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632811, 31.946777, 31.923487>,  <30.480799, 31.738504, 31.617685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632811, 31.946777, 31.923487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575792, -0.780017, 0.245026,
		0.723907, 0.347078, -0.596234,
		0.380029, 0.520683, 0.764504,
		30.746819, 32.102982, 32.152840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114496, 31.612789, 31.488361>,  <30.480799, 31.738504, 31.617685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114496, 31.612789, 31.488361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.106956, 31.712181, 31.875742>,  <31.102432, 31.771816, 32.108170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.106956, 31.712181, 31.875742>,  <31.114496, 31.612789, 31.488361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106956, 31.712181, 31.875742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650401, -0.732616, 0.200629,
		0.759357, 0.633665, -0.147804,
		-0.018848, 0.248480, 0.968454,
		31.101301, 31.786726, 32.166279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787018, 31.510082, 31.749233>,  <31.114496, 31.612789, 31.488361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787018, 31.510082, 31.749233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.590107, 31.531702, 32.096737>,  <31.471960, 31.544674, 32.305241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.590107, 31.531702, 32.096737>,  <31.787018, 31.510082, 31.749233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590107, 31.531702, 32.096737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506183, -0.794182, 0.336236,
		0.708125, 0.605272, 0.363600,
		-0.492279, 0.054049, 0.868758,
		31.442423, 31.547916, 32.357365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332485, 31.418886, 32.295383>,  <31.787018, 31.510082, 31.749233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332485, 31.418886, 32.295383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968414, 31.322470, 32.430126>,  <31.749971, 31.264620, 32.510971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.968414, 31.322470, 32.430126>,  <32.332485, 31.418886, 32.295383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968414, 31.322470, 32.430126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409040, -0.651155, 0.639284,
		0.065249, 0.719650, 0.691264,
		-0.910181, -0.241042, 0.336853,
		31.695360, 31.250156, 32.531181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365036, 31.367041, 33.099003>,  <32.332485, 31.418886, 32.295383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365036, 31.367041, 33.099003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046993, 31.152054, 32.986622>,  <31.856167, 31.023062, 32.919193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.046993, 31.152054, 32.986622>,  <32.365036, 31.367041, 33.099003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046993, 31.152054, 32.986622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306846, -0.756103, 0.578060,
		-0.523116, 0.373412, 0.766103,
		-0.795107, -0.537468, -0.280950,
		31.808460, 30.990814, 32.902336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054039, 31.003180, 33.734486>,  <32.365036, 31.367041, 33.099003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054039, 31.003180, 33.734486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884886, 30.785402, 33.444729>,  <31.783394, 30.654736, 33.270874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.884886, 30.785402, 33.444729>,  <32.054039, 31.003180, 33.734486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884886, 30.785402, 33.444729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212476, -0.836681, 0.504796,
		-0.880920, 0.059555, 0.469503,
		-0.422887, -0.544443, -0.724395,
		31.758020, 30.622070, 33.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742363, 30.487169, 34.119484>,  <32.054039, 31.003180, 33.734486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742363, 30.487169, 34.119484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769457, 30.355234, 33.742844>,  <31.785713, 30.276073, 33.516857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769457, 30.355234, 33.742844>,  <31.742363, 30.487169, 34.119484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769457, 30.355234, 33.742844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192859, -0.921643, 0.336718,
		-0.978886, -0.204405, 0.001183,
		0.067736, -0.329837, -0.941605,
		31.789778, 30.256283, 33.460361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320751, 29.943022, 33.995773>,  <31.742363, 30.487169, 34.119484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320751, 29.943022, 33.995773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.616611, 29.856377, 33.740902>,  <31.794128, 29.804390, 33.587978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.616611, 29.856377, 33.740902>,  <31.320751, 29.943022, 33.995773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616611, 29.856377, 33.740902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068975, -0.917398, 0.391949,
		-0.669444, -0.333855, -0.663615,
		0.739653, -0.216615, -0.637174,
		31.838507, 29.791391, 33.549751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147049, 29.261616, 33.682980>,  <31.320751, 29.943022, 33.995773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147049, 29.261616, 33.682980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544441, 29.303181, 33.664211>,  <31.782877, 29.328119, 33.652950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544441, 29.303181, 33.664211>,  <31.147049, 29.261616, 33.682980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544441, 29.303181, 33.664211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113932, -0.920404, 0.374000,
		-0.004322, -0.376907, -0.926241,
		0.993479, 0.103912, -0.046920,
		31.842485, 29.334354, 33.650135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.572845, 31.669678, 44.158470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.224831, 31.515348, 44.035717>,  <40.016022, 31.422750, 43.962067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.224831, 31.515348, 44.035717>,  <40.572845, 31.669678, 44.158470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224831, 31.515348, 44.035717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145947, -0.393013, 0.907877,
		-0.470887, 0.834675, 0.285626,
		-0.870037, -0.385821, -0.306883,
		39.963818, 31.399603, 43.943653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083099, 31.808369, 44.778625>,  <40.572845, 31.669678, 44.158470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083099, 31.808369, 44.778625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920208, 31.508085, 44.570549>,  <39.822472, 31.327915, 44.445705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920208, 31.508085, 44.570549>,  <40.083099, 31.808369, 44.778625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920208, 31.508085, 44.570549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323498, -0.414071, 0.850820,
		-0.854114, 0.514760, -0.074230,
		-0.407232, -0.750711, -0.520188,
		39.798038, 31.282871, 44.414494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285889, 31.622532, 45.036018>,  <40.083099, 31.808369, 44.778625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285889, 31.622532, 45.036018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483238, 31.312321, 44.878464>,  <39.601646, 31.126194, 44.783932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483238, 31.312321, 44.878464>,  <39.285889, 31.622532, 45.036018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483238, 31.312321, 44.878464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209818, -0.545573, 0.811373,
		-0.844134, -0.317663, -0.431889,
		0.493370, -0.775526, -0.393885,
		39.631248, 31.079662, 44.760300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777203, 31.073635, 45.064159>,  <39.285889, 31.622532, 45.036018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777203, 31.073635, 45.064159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128654, 30.895220, 44.995964>,  <39.339523, 30.788170, 44.955048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.128654, 30.895220, 44.995964>,  <38.777203, 31.073635, 45.064159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128654, 30.895220, 44.995964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241445, -0.723011, 0.647270,
		-0.411972, -0.527545, -0.742950,
		0.878626, -0.446039, -0.170488,
		39.392242, 30.761408, 44.944817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534252, 30.413363, 45.033222>,  <38.777203, 31.073635, 45.064159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534252, 30.413363, 45.033222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928986, 30.397436, 45.095924>,  <39.165825, 30.387880, 45.133545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.928986, 30.397436, 45.095924>,  <38.534252, 30.413363, 45.033222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928986, 30.397436, 45.095924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151328, -0.569278, 0.808098,
		0.057062, -0.821180, -0.567809,
		0.986835, -0.039814, 0.156751,
		39.225037, 30.385492, 45.142948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730045, 29.763481, 44.937775>,  <38.534252, 30.413363, 45.033222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730045, 29.763481, 44.937775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.991325, 29.927847, 45.192165>,  <39.148094, 30.026466, 45.344799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.991325, 29.927847, 45.192165>,  <38.730045, 29.763481, 44.937775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991325, 29.927847, 45.192165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203953, -0.713404, 0.670416,
		0.729196, -0.567629, -0.382191,
		0.653204, 0.410916, 0.635981,
		39.187286, 30.051121, 45.382961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996254, 29.175602, 45.210964>,  <38.730045, 29.763481, 44.937775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996254, 29.175602, 45.210964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094685, 29.476126, 45.455906>,  <39.153744, 29.656441, 45.602871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.094685, 29.476126, 45.455906>,  <38.996254, 29.175602, 45.210964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094685, 29.476126, 45.455906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157326, -0.592443, 0.790101,
		0.956397, -0.290764, -0.027586,
		0.246076, 0.751311, 0.612355,
		39.168507, 29.701519, 45.639614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235809, 28.889029, 45.734245>,  <38.996254, 29.175602, 45.210964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235809, 28.889029, 45.734245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.164864, 29.244797, 45.902756>,  <39.122295, 29.458258, 46.003864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.164864, 29.244797, 45.902756>,  <39.235809, 28.889029, 45.734245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164864, 29.244797, 45.902756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172533, -0.449538, 0.876441,
		0.968903, 0.082766, 0.233186,
		-0.177366, 0.889419, 0.421278,
		39.111652, 29.511621, 46.029140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512493, 28.752468, 46.431629>,  <39.235809, 28.889029, 45.734245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512493, 28.752468, 46.431629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286228, 29.082150, 46.442318>,  <39.150467, 29.279959, 46.448730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.286228, 29.082150, 46.442318>,  <39.512493, 28.752468, 46.431629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286228, 29.082150, 46.442318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379885, -0.289214, 0.878659,
		0.731922, 0.486875, 0.476700,
		-0.565666, 0.824201, 0.026725,
		39.116528, 29.329411, 46.450336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774658, 29.206944, 46.948288>,  <39.512493, 28.752468, 46.431629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774658, 29.206944, 46.948288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383366, 29.251423, 46.878201>,  <39.148590, 29.278111, 46.836147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.383366, 29.251423, 46.878201>,  <39.774658, 29.206944, 46.948288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383366, 29.251423, 46.878201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206202, -0.425568, 0.881120,
		0.023411, 0.898068, 0.439233,
		-0.978229, 0.111198, -0.175220,
		39.089897, 29.284782, 46.825634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495304, 29.334913, 47.646255>,  <39.774658, 29.206944, 46.948288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495304, 29.334913, 47.646255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170952, 29.259642, 47.424603>,  <38.976341, 29.214479, 47.291611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.170952, 29.259642, 47.424603>,  <39.495304, 29.334913, 47.646255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170952, 29.259642, 47.424603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430347, -0.449935, 0.782534,
		-0.396579, 0.873011, 0.283862,
		-0.810880, -0.188177, -0.554132,
		38.927689, 29.203188, 47.258362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902702, 29.752357, 47.934807>,  <39.495304, 29.334913, 47.646255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902702, 29.752357, 47.934807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777466, 29.422993, 47.745506>,  <38.702324, 29.225374, 47.631927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.777466, 29.422993, 47.745506>,  <38.902702, 29.752357, 47.934807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777466, 29.422993, 47.745506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349608, -0.363386, 0.863554,
		-0.883033, 0.435824, -0.174098,
		-0.313093, -0.823413, -0.473249,
		38.683537, 29.175968, 47.603531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197067, 29.789949, 48.197426>,  <38.902702, 29.752357, 47.934807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197067, 29.789949, 48.197426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373383, 29.453455, 48.072186>,  <38.479172, 29.251558, 47.997040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.373383, 29.453455, 48.072186>,  <38.197067, 29.789949, 48.197426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373383, 29.453455, 48.072186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018284, -0.357157, 0.933865,
		-0.897427, -0.405908, -0.172810,
		0.440784, -0.841236, -0.313101,
		38.505619, 29.201084, 47.978256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733433, 29.251759, 48.192451>,  <38.197067, 29.789949, 48.197426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733433, 29.251759, 48.192451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117149, 29.169622, 48.270004>,  <38.347382, 29.120340, 48.316536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.117149, 29.169622, 48.270004>,  <37.733433, 29.251759, 48.192451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117149, 29.169622, 48.270004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229199, -0.164991, 0.959294,
		-0.164991, -0.964683, -0.205339,
		-0.959294, 0.205339, -0.193882,
		38.404938, 29.108021, 48.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322762, 29.578650, 47.689754>,  <37.733433, 29.251759, 48.192451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322762, 29.578650, 47.689754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218864, 29.841515, 47.972786>,  <37.156525, 29.999233, 48.142605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218864, 29.841515, 47.972786>,  <37.322762, 29.578650, 47.689754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218864, 29.841515, 47.972786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169539, 0.690314, -0.703366,
		-0.950679, -0.302657, -0.067890,
		-0.259744, 0.657165, 0.707579,
		37.140942, 30.038664, 48.185059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660133, 29.899050, 47.543205>,  <37.322762, 29.578650, 47.689754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660133, 29.899050, 47.543205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823006, 30.167049, 47.791496>,  <36.920731, 30.327850, 47.940472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.823006, 30.167049, 47.791496>,  <36.660133, 29.899050, 47.543205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823006, 30.167049, 47.791496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249973, 0.735419, -0.629819,
		-0.878474, 0.101285, 0.466931,
		0.407181, 0.670000, 0.620728,
		36.945160, 30.368050, 47.977715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131569, 30.395561, 47.691963>,  <36.660133, 29.899050, 47.543205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131569, 30.395561, 47.691963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479977, 30.573046, 47.776283>,  <36.689022, 30.679537, 47.826878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.479977, 30.573046, 47.776283>,  <36.131569, 30.395561, 47.691963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479977, 30.573046, 47.776283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273744, 0.794733, -0.541723,
		-0.407902, 0.414147, 0.813694,
		0.871023, 0.443714, 0.210802,
		36.741283, 30.706160, 47.839523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914196, 31.027464, 47.802261>,  <36.131569, 30.395561, 47.691963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914196, 31.027464, 47.802261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302204, 31.053604, 47.708633>,  <36.535011, 31.069288, 47.652458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.302204, 31.053604, 47.708633>,  <35.914196, 31.027464, 47.802261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302204, 31.053604, 47.708633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211480, 0.701503, -0.680566,
		0.119724, 0.709664, 0.694293,
		0.970022, 0.065349, -0.234066,
		36.593212, 31.073208, 47.638412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081299, 31.829185, 47.711281>,  <35.914196, 31.027464, 47.802261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081299, 31.829185, 47.711281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396904, 31.652929, 47.540028>,  <36.586266, 31.547174, 47.437275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396904, 31.652929, 47.540028>,  <36.081299, 31.829185, 47.711281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396904, 31.652929, 47.540028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092574, 0.774166, -0.626176,
		0.607367, 0.454425, 0.651616,
		0.789009, -0.440641, -0.428135,
		36.633606, 31.520737, 47.411587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426929, 32.454117, 47.393177>,  <36.081299, 31.829185, 47.711281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426929, 32.454117, 47.393177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597691, 32.120159, 47.254204>,  <36.700146, 31.919785, 47.170818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.597691, 32.120159, 47.254204>,  <36.426929, 32.454117, 47.393177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597691, 32.120159, 47.254204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313646, 0.497056, -0.809050,
		0.848163, 0.236414, 0.474055,
		0.426902, -0.834892, -0.347434,
		36.725761, 31.869692, 47.149975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151730, 32.650864, 47.108242>,  <36.426929, 32.454117, 47.393177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151730, 32.650864, 47.108242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014236, 32.315651, 46.938747>,  <36.931740, 32.114525, 46.837051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.014236, 32.315651, 46.938747>,  <37.151730, 32.650864, 47.108242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014236, 32.315651, 46.938747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022704, 0.443686, -0.895895,
		0.938792, -0.317571, -0.133484,
		-0.343736, -0.838028, -0.423739,
		36.911118, 32.064243, 46.811626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508198, 32.702286, 46.517620>,  <37.151730, 32.650864, 47.108242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508198, 32.702286, 46.517620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202606, 32.458363, 46.433277>,  <37.019249, 32.312008, 46.382671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202606, 32.458363, 46.433277>,  <37.508198, 32.702286, 46.517620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202606, 32.458363, 46.433277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020669, 0.349753, -0.936614,
		0.644906, -0.711198, -0.279809,
		-0.763982, -0.609811, -0.210858,
		36.973412, 32.275421, 46.370018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644077, 32.268475, 45.862507>,  <37.508198, 32.702286, 46.517620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644077, 32.268475, 45.862507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247421, 32.305603, 45.898365>,  <37.009426, 32.327881, 45.919880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.247421, 32.305603, 45.898365>,  <37.644077, 32.268475, 45.862507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247421, 32.305603, 45.898365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052515, 0.344281, -0.937397,
		-0.117870, -0.934267, -0.336528,
		-0.991640, 0.092818, 0.089643,
		36.949928, 32.333450, 45.925259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478645, 32.045036, 45.264984>,  <37.644077, 32.268475, 45.862507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478645, 32.045036, 45.264984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131496, 32.201103, 45.387997>,  <36.923206, 32.294743, 45.461803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131496, 32.201103, 45.387997>,  <37.478645, 32.045036, 45.264984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131496, 32.201103, 45.387997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216104, 0.260896, -0.940868,
		-0.447327, -0.883008, -0.142107,
		-0.867869, 0.390165, 0.307528,
		36.871136, 32.318153, 45.480255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988350, 31.775599, 44.814346>,  <37.478645, 32.045036, 45.264984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988350, 31.775599, 44.814346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812984, 32.094273, 44.980762>,  <36.707767, 32.285477, 45.080612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.812984, 32.094273, 44.980762>,  <36.988350, 31.775599, 44.814346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812984, 32.094273, 44.980762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413403, 0.232282, -0.880422,
		-0.798057, -0.557979, 0.227517,
		-0.438409, 0.796683, 0.416045,
		36.681461, 32.333279, 45.105576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482471, 31.914536, 44.351532>,  <36.988350, 31.775599, 44.814346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482471, 31.914536, 44.351532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493191, 32.268219, 44.538059>,  <36.499622, 32.480431, 44.649975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493191, 32.268219, 44.538059>,  <36.482471, 31.914536, 44.351532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493191, 32.268219, 44.538059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406199, 0.435872, -0.803130,
		-0.913392, -0.167899, 0.370845,
		0.026796, 0.884209, 0.466322,
		36.501228, 32.533482, 44.677956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790485, 32.135307, 44.273186>,  <36.482471, 31.914536, 44.351532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790485, 32.135307, 44.273186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043041, 32.438969, 44.336479>,  <36.194576, 32.621166, 44.374454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.043041, 32.438969, 44.336479>,  <35.790485, 32.135307, 44.273186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043041, 32.438969, 44.336479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304605, 0.430446, -0.849666,
		-0.713137, 0.488270, 0.503020,
		0.631389, 0.759150, 0.158237,
		36.232456, 32.666714, 44.383949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383640, 32.789364, 44.119900>,  <35.790485, 32.135307, 44.273186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383640, 32.789364, 44.119900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768093, 32.899578, 44.112949>,  <35.998764, 32.965706, 44.108780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.768093, 32.899578, 44.112949>,  <35.383640, 32.789364, 44.119900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768093, 32.899578, 44.112949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167379, 0.531488, -0.830364,
		-0.219560, 0.800999, 0.556950,
		0.961134, 0.275536, -0.017377,
		36.056435, 32.982239, 44.107735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983471, 33.269749, 44.581039>,  <35.383640, 32.789364, 44.119900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983471, 33.269749, 44.581039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596600, 33.170956, 44.557178>,  <34.364475, 33.111679, 44.542862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.596600, 33.170956, 44.557178>,  <34.983471, 33.269749, 44.581039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596600, 33.170956, 44.557178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091207, -0.556596, 0.825761,
		-0.237151, 0.793221, 0.560856,
		-0.967182, -0.246984, -0.059650,
		34.306446, 33.096859, 44.539284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720158, 33.406967, 45.359638>,  <34.983471, 33.269749, 44.581039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720158, 33.406967, 45.359638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457073, 33.171371, 45.171806>,  <34.299221, 33.030014, 45.059109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457073, 33.171371, 45.171806>,  <34.720158, 33.406967, 45.359638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457073, 33.171371, 45.171806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040115, -0.595116, 0.802638,
		-0.752200, 0.546742, 0.367788,
		-0.657713, -0.588990, -0.469579,
		34.259758, 32.994675, 45.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225258, 33.327049, 45.755596>,  <34.720158, 33.406967, 45.359638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225258, 33.327049, 45.755596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169197, 33.006649, 45.522785>,  <34.135559, 32.814411, 45.383099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.169197, 33.006649, 45.522785>,  <34.225258, 33.327049, 45.755596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169197, 33.006649, 45.522785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285506, -0.530169, 0.798378,
		-0.948073, 0.278068, -0.154385,
		-0.140153, -0.800999, -0.582029,
		34.127151, 32.766350, 45.348175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596390, 33.105484, 45.951214>,  <34.225258, 33.327049, 45.755596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596390, 33.105484, 45.951214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745667, 32.781483, 45.770267>,  <33.835232, 32.587082, 45.661701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745667, 32.781483, 45.770267>,  <33.596390, 33.105484, 45.951214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745667, 32.781483, 45.770267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281799, -0.563517, 0.776555,
		-0.883923, -0.162325, -0.438555,
		0.373187, -0.810000, -0.452363,
		33.857624, 32.538483, 45.634560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092518, 32.408524, 45.989799>,  <33.596390, 33.105484, 45.951214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092518, 32.408524, 45.989799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460674, 32.268909, 45.919312>,  <33.681568, 32.185139, 45.877018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.460674, 32.268909, 45.919312>,  <33.092518, 32.408524, 45.989799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460674, 32.268909, 45.919312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099913, -0.645675, 0.757048,
		-0.378018, -0.679173, -0.629147,
		0.920391, -0.349037, -0.176219,
		33.736794, 32.164200, 45.866447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086224, 31.711740, 46.033054>,  <33.092518, 32.408524, 45.989799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086224, 31.711740, 46.033054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474655, 31.782206, 46.097507>,  <33.707714, 31.824484, 46.136181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.474655, 31.782206, 46.097507>,  <33.086224, 31.711740, 46.033054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474655, 31.782206, 46.097507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005793, -0.692123, 0.721756,
		0.238672, -0.699952, -0.673129,
		0.971083, 0.176162, 0.161135,
		33.765980, 31.835054, 46.145847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334282, 31.013332, 46.100071>,  <33.086224, 31.711740, 46.033054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334282, 31.013332, 46.100071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620701, 31.241711, 46.260715>,  <33.792553, 31.378738, 46.357101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620701, 31.241711, 46.260715>,  <33.334282, 31.013332, 46.100071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620701, 31.241711, 46.260715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114310, -0.663477, 0.739413,
		0.688627, -0.483548, -0.540347,
		0.716049, 0.570946, 0.401614,
		33.835514, 31.412994, 46.381199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374210, 30.567942, 45.464130>,  <33.334282, 31.013332, 46.100071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374210, 30.567942, 45.464130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021317, 30.383392, 45.426617>,  <32.809582, 30.272663, 45.404106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021317, 30.383392, 45.426617>,  <33.374210, 30.567942, 45.464130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021317, 30.383392, 45.426617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223540, 0.585810, -0.779010,
		0.414354, -0.666306, -0.619957,
		-0.882236, -0.461371, -0.093787,
		32.756645, 30.244980, 45.398479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300079, 30.517878, 44.683083>,  <33.374210, 30.567942, 45.464130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300079, 30.517878, 44.683083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937717, 30.448360, 44.837551>,  <32.720299, 30.406651, 44.930233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.937717, 30.448360, 44.837551>,  <33.300079, 30.517878, 44.683083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937717, 30.448360, 44.837551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412611, 0.567481, -0.712543,
		-0.095309, -0.804836, -0.585795,
		-0.905908, -0.173793, 0.386170,
		32.665947, 30.396223, 44.953403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895763, 30.363230, 44.124680>,  <33.300079, 30.517878, 44.683083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895763, 30.363230, 44.124680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653008, 30.496164, 44.413467>,  <32.507355, 30.575924, 44.586739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653008, 30.496164, 44.413467>,  <32.895763, 30.363230, 44.124680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653008, 30.496164, 44.413467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462044, 0.591584, -0.660714,
		-0.646683, -0.734562, -0.205474,
		-0.606891, 0.332335, 0.721967,
		32.470940, 30.595865, 44.630058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263371, 30.337984, 43.804222>,  <32.895763, 30.363230, 44.124680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263371, 30.337984, 43.804222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206814, 30.561781, 44.130898>,  <32.172878, 30.696058, 44.326900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206814, 30.561781, 44.130898>,  <32.263371, 30.337984, 43.804222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206814, 30.561781, 44.130898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531802, 0.652900, -0.539359,
		-0.834981, -0.510578, 0.205221,
		-0.141396, 0.559492, 0.816686,
		32.164394, 30.729628, 44.375904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449610, 30.472342, 43.903027>,  <32.263371, 30.337984, 43.804222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449610, 30.472342, 43.903027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686541, 30.749161, 44.068058>,  <31.828699, 30.915253, 44.167076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686541, 30.749161, 44.068058>,  <31.449610, 30.472342, 43.903027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686541, 30.749161, 44.068058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365436, 0.687137, -0.627933,
		-0.718058, 0.221169, 0.659907,
		0.592326, 0.692046, 0.412581,
		31.864239, 30.956774, 44.191833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007158, 31.095631, 43.885967>,  <31.449610, 30.472342, 43.903027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007158, 31.095631, 43.885967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382421, 31.224005, 43.937901>,  <31.607580, 31.301029, 43.969063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.382421, 31.224005, 43.937901>,  <31.007158, 31.095631, 43.885967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382421, 31.224005, 43.937901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098165, 0.606236, -0.789203,
		-0.331995, 0.727653, 0.600250,
		0.938159, 0.320935, 0.129837,
		31.663870, 31.320286, 43.976852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063917, 31.798429, 43.917000>,  <31.007158, 31.095631, 43.885967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063917, 31.798429, 43.917000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403662, 31.651367, 43.765522>,  <31.607510, 31.563129, 43.674637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.403662, 31.651367, 43.765522>,  <31.063917, 31.798429, 43.917000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403662, 31.651367, 43.765522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052217, 0.655433, -0.753446,
		0.525219, 0.659724, 0.537503,
		0.849363, -0.367657, -0.378695,
		31.658470, 31.541071, 43.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.678127, 27.827126, 46.912437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.688683, 27.513069, 47.159939>,  <36.695015, 27.324635, 47.308441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.688683, 27.513069, 47.159939>,  <36.678127, 27.827126, 46.912437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688683, 27.513069, 47.159939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817613, 0.339181, 0.465258,
		-0.575163, -0.518177, -0.632993,
		0.026387, -0.785142, 0.618753,
		36.696598, 27.277527, 47.345566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191193, 27.988579, 46.378269>,  <36.678127, 27.827126, 46.912437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191193, 27.988579, 46.378269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564938, 27.863665, 46.309624>,  <36.789185, 27.788715, 46.268436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564938, 27.863665, 46.309624>,  <36.191193, 27.988579, 46.378269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564938, 27.863665, 46.309624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056723, 0.605820, -0.793577,
		0.351792, 0.731750, 0.583767,
		0.934358, -0.312287, -0.171616,
		36.845245, 27.769978, 46.258141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692337, 28.632654, 46.252201>,  <36.191193, 27.988579, 46.378269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692337, 28.632654, 46.252201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840767, 28.297560, 46.091949>,  <36.929825, 28.096502, 45.995800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840767, 28.297560, 46.091949>,  <36.692337, 28.632654, 46.252201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840767, 28.297560, 46.091949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200215, 0.493459, -0.846411,
		0.906764, 0.233867, 0.350836,
		0.371070, -0.837738, -0.400627,
		36.952087, 28.046238, 45.971760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225101, 28.947851, 45.851635>,  <36.692337, 28.632654, 46.252201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225101, 28.947851, 45.851635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174427, 28.572327, 45.723522>,  <37.144024, 28.347012, 45.646652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.174427, 28.572327, 45.723522>,  <37.225101, 28.947851, 45.851635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174427, 28.572327, 45.723522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272693, 0.277486, -0.921216,
		0.953725, -0.204041, 0.220855,
		-0.126681, -0.938812, -0.320286,
		37.136421, 28.290684, 45.627438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854115, 28.762953, 45.411121>,  <37.225101, 28.947851, 45.851635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854115, 28.762953, 45.411121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550377, 28.520750, 45.315823>,  <37.368134, 28.375429, 45.258644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.550377, 28.520750, 45.315823>,  <37.854115, 28.762953, 45.411121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550377, 28.520750, 45.315823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072581, 0.285043, -0.955763,
		0.646631, -0.743044, -0.172497,
		-0.759342, -0.605505, -0.238249,
		37.322575, 28.339098, 45.244347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060097, 28.327406, 44.881149>,  <37.854115, 28.762953, 45.411121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060097, 28.327406, 44.881149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660915, 28.318272, 44.857273>,  <37.421406, 28.312792, 44.842945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.660915, 28.318272, 44.857273>,  <38.060097, 28.327406, 44.881149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660915, 28.318272, 44.857273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058036, 0.067375, -0.996038,
		0.026761, -0.997467, -0.065913,
		-0.997956, -0.022829, -0.059692,
		37.361530, 28.311420, 44.839367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928917, 28.060457, 44.223122>,  <38.060097, 28.327406, 44.881149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928917, 28.060457, 44.223122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.557209, 28.190119, 44.293987>,  <37.334187, 28.267916, 44.336506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.557209, 28.190119, 44.293987>,  <37.928917, 28.060457, 44.223122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557209, 28.190119, 44.293987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100006, 0.240931, -0.965376,
		-0.355615, -0.914810, -0.191472,
		-0.929267, 0.324153, 0.177165,
		37.278427, 28.287365, 44.347137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459076, 27.614101, 43.774426>,  <37.928917, 28.060457, 44.223122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459076, 27.614101, 43.774426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.302299, 27.975889, 43.841740>,  <37.208233, 28.192963, 43.882130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.302299, 27.975889, 43.841740>,  <37.459076, 27.614101, 43.774426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302299, 27.975889, 43.841740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174312, 0.106603, -0.978903,
		-0.903328, -0.413003, 0.115879,
		-0.391936, 0.904469, 0.168289,
		37.184719, 28.247231, 43.892227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838631, 27.589479, 43.404667>,  <37.459076, 27.614101, 43.774426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838631, 27.589479, 43.404667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.924648, 27.977280, 43.451694>,  <36.976261, 28.209959, 43.479912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.924648, 27.977280, 43.451694>,  <36.838631, 27.589479, 43.404667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924648, 27.977280, 43.451694> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305098, 0.181058, -0.934951,
		-0.927723, 0.165187, 0.334729,
		0.215047, 0.969501, 0.117573,
		36.989162, 28.268129, 43.486965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494587, 27.833988, 42.797142>,  <36.838631, 27.589479, 43.404667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494587, 27.833988, 42.797142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.698944, 28.164778, 42.891041>,  <36.821556, 28.363251, 42.947380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.698944, 28.164778, 42.891041>,  <36.494587, 27.833988, 42.797142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698944, 28.164778, 42.891041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235662, 0.397348, -0.886892,
		-0.826714, 0.397781, 0.397887,
		0.510889, 0.826973, 0.234751,
		36.852211, 28.412870, 42.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152508, 28.415342, 42.575764>,  <36.494587, 27.833988, 42.797142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152508, 28.415342, 42.575764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512875, 28.581409, 42.626328>,  <36.729095, 28.681049, 42.656666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.512875, 28.581409, 42.626328>,  <36.152508, 28.415342, 42.575764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512875, 28.581409, 42.626328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117234, 0.513267, -0.850184,
		-0.417852, 0.751127, 0.511084,
		0.900919, 0.415168, 0.126412,
		36.783150, 28.705959, 42.664249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040176, 29.139811, 42.406284>,  <36.152508, 28.415342, 42.575764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040176, 29.139811, 42.406284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426079, 29.042870, 42.365276>,  <36.657619, 28.984705, 42.340672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.426079, 29.042870, 42.365276>,  <36.040176, 29.139811, 42.406284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426079, 29.042870, 42.365276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033099, 0.498255, -0.866399,
		0.261051, 0.832471, 0.488717,
		0.964757, -0.242351, -0.102516,
		36.715508, 28.970165, 42.334522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774292, 29.870131, 42.429222>,  <36.040176, 29.139811, 42.406284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774292, 29.870131, 42.429222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.442089, 29.680519, 42.312222>,  <35.242767, 29.566753, 42.242020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.442089, 29.680519, 42.312222>,  <35.774292, 29.870131, 42.429222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442089, 29.680519, 42.312222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077367, -0.618208, 0.782198,
		-0.551608, 0.626991, 0.550100,
		-0.830507, -0.474027, -0.292500,
		35.192936, 29.538311, 42.224472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408669, 29.769644, 43.050426>,  <35.774292, 29.870131, 42.429222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408669, 29.769644, 43.050426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221516, 29.516514, 42.803650>,  <35.109222, 29.364635, 42.655582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.221516, 29.516514, 42.803650>,  <35.408669, 29.769644, 43.050426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221516, 29.516514, 42.803650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227696, -0.588184, 0.776012,
		-0.853956, 0.503558, 0.131109,
		-0.467883, -0.632827, -0.616941,
		35.081150, 29.326666, 42.618568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973309, 29.485228, 43.429291>,  <35.408669, 29.769644, 43.050426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973309, 29.485228, 43.429291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937088, 29.208570, 43.142673>,  <34.915356, 29.042576, 42.970703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937088, 29.208570, 43.142673>,  <34.973309, 29.485228, 43.429291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937088, 29.208570, 43.142673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197821, -0.692669, 0.693597,
		-0.976047, 0.204551, -0.074101,
		-0.090548, -0.691642, -0.716542,
		34.909924, 29.001078, 42.927711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243626, 29.138420, 43.435043>,  <34.973309, 29.485228, 43.429291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243626, 29.138420, 43.435043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.502163, 28.886213, 43.263142>,  <34.657284, 28.734888, 43.160000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.502163, 28.886213, 43.263142>,  <34.243626, 29.138420, 43.435043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502163, 28.886213, 43.263142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180899, -0.673769, 0.716457,
		-0.741296, -0.385332, -0.549545,
		0.646341, -0.630519, -0.429756,
		34.696064, 28.697058, 43.134216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859131, 28.433767, 43.294018>,  <34.243626, 29.138420, 43.435043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859131, 28.433767, 43.294018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251873, 28.358179, 43.300274>,  <34.487518, 28.312826, 43.304028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.251873, 28.358179, 43.300274>,  <33.859131, 28.433767, 43.294018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251873, 28.358179, 43.300274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158980, -0.775454, 0.611062,
		-0.103347, -0.602463, -0.791428,
		0.981858, -0.188973, 0.015639,
		34.546429, 28.301487, 43.304966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867332, 27.764498, 43.186398>,  <33.859131, 28.433767, 43.294018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867332, 27.764498, 43.186398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.217327, 27.860909, 43.354355>,  <34.427322, 27.918755, 43.455128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.217327, 27.860909, 43.354355>,  <33.867332, 27.764498, 43.186398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217327, 27.860909, 43.354355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122006, -0.729516, 0.672994,
		0.468527, -0.640088, -0.608909,
		0.874984, 0.241025, 0.419893,
		34.479824, 27.933216, 43.480324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223877, 27.176357, 43.195881>,  <33.867332, 27.764498, 43.186398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223877, 27.176357, 43.195881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426781, 27.400684, 43.457623>,  <34.548523, 27.535280, 43.614666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.426781, 27.400684, 43.457623>,  <34.223877, 27.176357, 43.195881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426781, 27.400684, 43.457623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150818, -0.689800, 0.708117,
		0.848495, -0.457886, -0.265325,
		0.507258, 0.560817, 0.654349,
		34.578957, 27.568930, 43.653927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681400, 26.667072, 43.467510>,  <34.223877, 27.176357, 43.195881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681400, 26.667072, 43.467510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.671249, 26.981293, 43.714821>,  <34.665157, 27.169825, 43.863209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.671249, 26.981293, 43.714821>,  <34.681400, 26.667072, 43.467510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671249, 26.981293, 43.714821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094572, -0.617591, 0.780793,
		0.995194, -0.038657, 0.089964,
		-0.025378, 0.785549, 0.618279,
		34.663635, 27.216957, 43.900303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090599, 26.463295, 43.986568>,  <34.681400, 26.667072, 43.467510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090599, 26.463295, 43.986568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.916397, 26.774656, 44.167419>,  <34.811878, 26.961473, 44.275932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.916397, 26.774656, 44.167419>,  <35.090599, 26.463295, 43.986568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916397, 26.774656, 44.167419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072716, -0.470202, 0.879558,
		0.897246, 0.415927, 0.148172,
		-0.435503, 0.778405, 0.452131,
		34.785748, 27.008179, 44.303059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507950, 26.555672, 44.528236>,  <35.090599, 26.463295, 43.986568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507950, 26.555672, 44.528236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155582, 26.731651, 44.598011>,  <34.944160, 26.837238, 44.639877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155582, 26.731651, 44.598011>,  <35.507950, 26.555672, 44.528236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155582, 26.731651, 44.598011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034944, -0.307113, 0.951031,
		0.471977, 0.843876, 0.255167,
		-0.880918, 0.439949, 0.174439,
		34.891308, 26.863636, 44.650341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598034, 26.984207, 45.092285>,  <35.507950, 26.555672, 44.528236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598034, 26.984207, 45.092285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.209335, 26.892651, 45.069260>,  <34.976116, 26.837717, 45.055443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.209335, 26.892651, 45.069260>,  <35.598034, 26.984207, 45.092285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209335, 26.892651, 45.069260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013270, -0.190533, 0.981591,
		-0.235647, 0.954623, 0.182113,
		-0.971748, -0.228893, -0.057566,
		34.917812, 26.823982, 45.051991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321918, 27.372845, 45.647747>,  <35.598034, 26.984207, 45.092285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321918, 27.372845, 45.647747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071548, 27.081223, 45.536972>,  <34.921326, 26.906250, 45.470509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.071548, 27.081223, 45.536972>,  <35.321918, 27.372845, 45.647747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071548, 27.081223, 45.536972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153786, -0.232744, 0.960302,
		-0.764567, 0.643670, 0.033563,
		-0.625929, -0.729054, -0.276935,
		34.883770, 26.862507, 45.453892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676323, 27.456266, 45.906975>,  <35.321918, 27.372845, 45.647747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676323, 27.456266, 45.906975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698502, 27.061359, 45.847332>,  <34.711807, 26.824415, 45.811546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.698502, 27.061359, 45.847332>,  <34.676323, 27.456266, 45.906975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698502, 27.061359, 45.847332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247059, -0.158257, 0.955990,
		-0.967413, -0.016165, -0.252687,
		0.055443, -0.987266, -0.149106,
		34.715134, 26.765181, 45.802601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131760, 27.197432, 46.290977>,  <34.676323, 27.456266, 45.906975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131760, 27.197432, 46.290977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.393326, 26.901630, 46.227066>,  <34.550266, 26.724150, 46.188721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.393326, 26.901630, 46.227066>,  <34.131760, 27.197432, 46.290977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393326, 26.901630, 46.227066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000620, -0.210659, 0.977559,
		-0.756567, -0.639340, -0.137294,
		0.653915, -0.739504, -0.159774,
		34.589500, 26.679779, 46.179134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450424, 27.370878, 46.336494>,  <34.131760, 27.197432, 46.290977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450424, 27.370878, 46.336494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.533142, 27.678410, 46.578533>,  <33.582771, 27.862928, 46.723755>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.533142, 27.678410, 46.578533>,  <33.450424, 27.370878, 46.336494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533142, 27.678410, 46.578533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826267, 0.468436, -0.312811,
		-0.523946, -0.435281, 0.732128,
		0.206795, 0.768829, 0.605093,
		33.595181, 27.909058, 46.760059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816055, 27.567492, 46.545631>,  <33.450424, 27.370878, 46.336494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816055, 27.567492, 46.545631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062572, 27.880634, 46.579861>,  <33.210484, 28.068520, 46.600399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.062572, 27.880634, 46.579861>,  <32.816055, 27.567492, 46.545631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062572, 27.880634, 46.579861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651269, 0.567738, -0.503509,
		-0.442757, 0.254579, 0.859742,
		0.616291, 0.782856, 0.085571,
		33.247459, 28.115492, 46.605534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385521, 28.094900, 46.762444>,  <32.816055, 27.567492, 46.545631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385521, 28.094900, 46.762444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717350, 28.286995, 46.648476>,  <32.916447, 28.402252, 46.580093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.717350, 28.286995, 46.648476>,  <32.385521, 28.094900, 46.762444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717350, 28.286995, 46.648476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558284, 0.703018, -0.440550,
		-0.011264, 0.524536, 0.851314,
		0.829573, 0.480237, -0.284922,
		32.966221, 28.431067, 46.563000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198360, 28.845367, 46.936966>,  <32.385521, 28.094900, 46.762444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198360, 28.845367, 46.936966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481907, 28.828274, 46.655346>,  <32.652035, 28.818018, 46.486374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.481907, 28.828274, 46.655346>,  <32.198360, 28.845367, 46.936966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481907, 28.828274, 46.655346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367373, 0.829719, -0.420243,
		0.602123, 0.556544, 0.572457,
		0.708862, -0.042733, -0.704052,
		32.694565, 28.815454, 46.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510620, 29.427000, 46.816544>,  <32.198360, 28.845367, 46.936966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510620, 29.427000, 46.816544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.650455, 29.299337, 46.464195>,  <32.734356, 29.222740, 46.252789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.650455, 29.299337, 46.464195>,  <32.510620, 29.427000, 46.816544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650455, 29.299337, 46.464195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121118, 0.916905, -0.380283,
		0.929042, 0.239631, 0.281882,
		0.349586, -0.319158, -0.880868,
		32.755333, 29.203590, 46.199936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888676, 29.964815, 46.551205>,  <32.510620, 29.427000, 46.816544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888676, 29.964815, 46.551205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799175, 29.754755, 46.222778>,  <32.745476, 29.628719, 46.025723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.799175, 29.754755, 46.222778>,  <32.888676, 29.964815, 46.551205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799175, 29.754755, 46.222778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152865, 0.850908, -0.502581,
		0.962584, 0.013061, -0.270667,
		-0.223749, -0.525153, -0.821067,
		32.732052, 29.597210, 45.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362701, 30.262262, 46.137623>,  <32.888676, 29.964815, 46.551205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362701, 30.262262, 46.137623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070183, 30.091320, 45.924992>,  <32.894672, 29.988754, 45.797413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.070183, 30.091320, 45.924992>,  <33.362701, 30.262262, 46.137623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070183, 30.091320, 45.924992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034619, 0.801624, -0.596826,
		0.681182, -0.418053, -0.601018,
		-0.731295, -0.427354, -0.531579,
		32.850796, 29.963114, 45.765518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949196, 30.525948, 46.389080>,  <33.362701, 30.262262, 46.137623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949196, 30.525948, 46.389080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.981441, 30.877668, 46.576839>,  <34.000790, 31.088701, 46.689495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.981441, 30.877668, 46.576839>,  <33.949196, 30.525948, 46.389080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981441, 30.877668, 46.576839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288418, -0.471361, 0.833447,
		0.954105, 0.068195, -0.291603,
		0.080613, 0.879300, 0.469397,
		34.005627, 31.141459, 46.717659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448570, 30.353168, 46.825161>,  <33.949196, 30.525948, 46.389080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448570, 30.353168, 46.825161> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320210, 30.696829, 46.984600>,  <34.243195, 30.903025, 47.080265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.320210, 30.696829, 46.984600>,  <34.448570, 30.353168, 46.825161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320210, 30.696829, 46.984600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226392, -0.339076, 0.913112,
		0.919657, 0.383259, -0.085695,
		-0.320902, 0.859151, 0.398600,
		34.223938, 30.954575, 47.104179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.925018, 30.356886, 47.356033>,  <34.448570, 30.353168, 46.825161>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.925018, 30.356886, 47.356033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.604748, 30.579384, 47.445034>,  <34.412586, 30.712883, 47.498432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.604748, 30.579384, 47.445034>,  <34.925018, 30.356886, 47.356033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604748, 30.579384, 47.445034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073024, -0.278009, 0.957799,
		0.594630, 0.783135, 0.181976,
		-0.800677, 0.556247, 0.222500,
		34.364544, 30.746258, 47.511784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017147, 30.772528, 48.012180>,  <34.925018, 30.356886, 47.356033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017147, 30.772528, 48.012180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617779, 30.751801, 48.003464>,  <34.378159, 30.739365, 47.998234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.617779, 30.751801, 48.003464>,  <35.017147, 30.772528, 48.012180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617779, 30.751801, 48.003464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011232, -0.563757, 0.825864,
		-0.055080, 0.824314, 0.563447,
		-0.998419, -0.051817, -0.021793,
		34.318253, 30.736256, 47.996925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846146, 31.012669, 48.669277>,  <35.017147, 30.772528, 48.012180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846146, 31.012669, 48.669277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553932, 30.787136, 48.515179>,  <34.378605, 30.651817, 48.422718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553932, 30.787136, 48.515179>,  <34.846146, 31.012669, 48.669277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553932, 30.787136, 48.515179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011549, -0.574277, 0.818580,
		-0.682781, 0.593549, 0.426039,
		-0.730532, -0.563831, -0.385250,
		34.334774, 30.617987, 48.399605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411411, 30.942459, 49.254330>,  <34.846146, 31.012669, 48.669277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411411, 30.942459, 49.254330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327187, 30.647602, 48.997494>,  <34.276653, 30.470688, 48.843391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.327187, 30.647602, 48.997494>,  <34.411411, 30.942459, 49.254330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327187, 30.647602, 48.997494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029370, -0.661292, 0.749554,
		-0.977139, 0.138970, 0.160893,
		-0.210563, -0.737144, -0.642093,
		34.264019, 30.426458, 48.804867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874554, 30.445196, 49.545856>,  <34.411411, 30.942459, 49.254330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874554, 30.445196, 49.545856> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029068, 30.216606, 49.256252>,  <34.121777, 30.079453, 49.082489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.029068, 30.216606, 49.256252>,  <33.874554, 30.445196, 49.545856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029068, 30.216606, 49.256252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085844, -0.803811, 0.588659,
		-0.918375, -0.165239, -0.359560,
		0.386287, -0.571476, -0.724015,
		34.144955, 30.045164, 49.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464153, 29.938385, 49.551258>,  <33.874554, 30.445196, 49.545856>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464153, 29.938385, 49.551258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807339, 29.815615, 49.386478>,  <34.013248, 29.741953, 49.287613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807339, 29.815615, 49.386478>,  <33.464153, 29.938385, 49.551258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807339, 29.815615, 49.386478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112133, -0.894450, 0.432879,
		-0.501325, -0.325201, -0.801821,
		0.857962, -0.306924, -0.411944,
		34.064728, 29.723537, 49.262894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471344, 29.285122, 49.528671>,  <33.464153, 29.938385, 49.551258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471344, 29.285122, 49.528671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.868832, 29.293839, 49.484783>,  <34.107327, 29.299068, 49.458450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.868832, 29.293839, 49.484783>,  <33.471344, 29.285122, 49.528671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868832, 29.293839, 49.484783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072518, -0.872322, 0.483525,
		-0.085174, -0.488447, -0.868427,
		0.993723, 0.021793, -0.109720,
		34.166950, 29.300377, 49.451866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.918919, 40.004395, 37.106068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176746, 39.776169, 36.902508>,  <34.331444, 39.639233, 36.780373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176746, 39.776169, 36.902508>,  <33.918919, 40.004395, 37.106068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176746, 39.776169, 36.902508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299582, -0.800888, 0.518487,
		-0.703400, -0.181747, -0.687165,
		0.644576, -0.570566, -0.508897,
		34.370117, 39.605000, 36.749840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572536, 39.278988, 36.790386>,  <33.918919, 40.004395, 37.106068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572536, 39.278988, 36.790386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969215, 39.247684, 36.831196>,  <34.207222, 39.228901, 36.855682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969215, 39.247684, 36.831196>,  <33.572536, 39.278988, 36.790386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969215, 39.247684, 36.831196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117611, -0.872813, 0.473673,
		0.051980, -0.481740, -0.874771,
		0.991698, -0.078261, 0.102027,
		34.266724, 39.224205, 36.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658516, 38.598686, 36.874695>,  <33.572536, 39.278988, 36.790386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658516, 38.598686, 36.874695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021996, 38.722744, 36.986469>,  <34.240082, 38.797180, 37.053532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021996, 38.722744, 36.986469>,  <33.658516, 38.598686, 36.874695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021996, 38.722744, 36.986469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038218, -0.728358, 0.684130,
		0.415707, -0.610987, -0.673709,
		0.908695, 0.310146, 0.279432,
		34.294605, 38.815788, 37.070297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098392, 37.979221, 36.961849>,  <33.658516, 38.598686, 36.874695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098392, 37.979221, 36.961849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246590, 38.259514, 37.205723>,  <34.335506, 38.427689, 37.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246590, 38.259514, 37.205723>,  <34.098392, 37.979221, 36.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246590, 38.259514, 37.205723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099077, -0.682463, 0.724174,
		0.923537, -0.207894, -0.322273,
		0.370490, 0.700731, 0.609682,
		34.357738, 38.469734, 37.388626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595810, 37.590145, 37.282448>,  <34.098392, 37.979221, 36.961849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595810, 37.590145, 37.282448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541218, 37.909008, 37.517704>,  <34.508465, 38.100327, 37.658859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541218, 37.909008, 37.517704>,  <34.595810, 37.590145, 37.282448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541218, 37.909008, 37.517704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011409, -0.592393, 0.805568,
		0.990577, 0.116653, 0.071754,
		-0.136479, 0.797159, 0.588142,
		34.500275, 38.148155, 37.694145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024937, 37.522556, 37.888306>,  <34.595810, 37.590145, 37.282448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024937, 37.522556, 37.888306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739754, 37.777641, 38.004936>,  <34.568645, 37.930695, 38.074913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739754, 37.777641, 38.004936>,  <35.024937, 37.522556, 37.888306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739754, 37.777641, 38.004936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001447, -0.417152, 0.908836,
		0.701208, 0.647538, 0.298333,
		-0.712956, 0.637715, 0.291573,
		34.525867, 37.968956, 38.092407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229160, 37.741409, 38.627441>,  <35.024937, 37.522556, 37.888306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229160, 37.741409, 38.627441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847046, 37.858124, 38.608318>,  <34.617775, 37.928150, 38.596844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847046, 37.858124, 38.608318>,  <35.229160, 37.741409, 38.627441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847046, 37.858124, 38.608318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190409, -0.483394, 0.854444,
		0.226202, 0.825344, 0.517339,
		-0.955289, 0.291783, -0.047809,
		34.560459, 37.945660, 38.593975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045315, 37.987309, 39.286648>,  <35.229160, 37.741409, 38.627441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045315, 37.987309, 39.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692108, 37.895645, 39.122810>,  <34.480183, 37.840649, 39.024509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.692108, 37.895645, 39.122810>,  <35.045315, 37.987309, 39.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692108, 37.895645, 39.122810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252027, -0.504692, 0.825692,
		-0.395931, 0.832330, 0.387899,
		-0.883018, -0.229156, -0.409593,
		34.427204, 37.826897, 38.999931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563187, 38.106316, 39.865211>,  <35.045315, 37.987309, 39.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563187, 38.106316, 39.865211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388813, 37.874947, 39.589417>,  <34.284191, 37.736126, 39.423939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388813, 37.874947, 39.589417>,  <34.563187, 38.106316, 39.865211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388813, 37.874947, 39.589417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230391, -0.668856, 0.706789,
		-0.869991, 0.466962, 0.158310,
		-0.435931, -0.578427, -0.689483,
		34.258034, 37.701420, 39.382572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860706, 37.894192, 40.191582>,  <34.563187, 38.106316, 39.865211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860706, 37.894192, 40.191582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942474, 37.643654, 39.890675>,  <33.991535, 37.493332, 39.710129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942474, 37.643654, 39.890675>,  <33.860706, 37.894192, 40.191582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942474, 37.643654, 39.890675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279369, -0.773865, 0.568407,
		-0.938172, 0.093968, -0.333172,
		0.204418, -0.626341, -0.752269,
		34.003799, 37.455750, 39.664993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248646, 37.366428, 40.159035>,  <33.860706, 37.894192, 40.191582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248646, 37.366428, 40.159035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532692, 37.173607, 39.953758>,  <33.703121, 37.057915, 39.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532692, 37.173607, 39.953758>,  <33.248646, 37.366428, 40.159035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532692, 37.173607, 39.953758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257535, -0.856197, 0.447887,
		-0.655295, -0.185888, -0.732144,
		0.710116, -0.482051, -0.513189,
		33.745728, 37.028992, 39.799801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915627, 36.633629, 40.044159>,  <33.248646, 37.366428, 40.159035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915627, 36.633629, 40.044159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309208, 36.594128, 39.984711>,  <33.545357, 36.570427, 39.949043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309208, 36.594128, 39.984711>,  <32.915627, 36.633629, 40.044159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309208, 36.594128, 39.984711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015592, -0.782115, 0.622939,
		-0.177755, -0.615259, -0.768023,
		0.983951, -0.098755, -0.148618,
		33.604393, 36.564503, 39.940125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941856, 35.951782, 39.583237>,  <32.915627, 36.633629, 40.044159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941856, 35.951782, 39.583237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568314, 35.841461, 39.492168>,  <32.344189, 35.775269, 39.437527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568314, 35.841461, 39.492168>,  <32.941856, 35.951782, 39.583237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568314, 35.841461, 39.492168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085802, 0.790793, -0.606039,
		0.347193, -0.546421, -0.762155,
		-0.933860, -0.275807, -0.227674,
		32.288155, 35.758720, 39.423866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896286, 35.862461, 38.889214>,  <32.941856, 35.951782, 39.583237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896286, 35.862461, 38.889214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513088, 35.937866, 38.975670>,  <32.283169, 35.983109, 39.027542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.513088, 35.937866, 38.975670>,  <32.896286, 35.862461, 38.889214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513088, 35.937866, 38.975670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001880, 0.749481, -0.662023,
		-0.286793, -0.634618, -0.717642,
		-0.957990, 0.188514, 0.216140,
		32.225693, 35.994419, 39.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405281, 35.818966, 38.266449>,  <32.896286, 35.862461, 38.889214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405281, 35.818966, 38.266449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193951, 36.036919, 38.526901>,  <32.067150, 36.167690, 38.683170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193951, 36.036919, 38.526901>,  <32.405281, 35.818966, 38.266449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193951, 36.036919, 38.526901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274252, 0.616266, -0.738243,
		-0.803526, -0.568609, -0.176156,
		-0.528330, 0.544886, 0.651128,
		32.035450, 36.200386, 38.722240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694742, 35.861168, 37.965416>,  <32.405281, 35.818966, 38.266449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694742, 35.861168, 37.965416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731449, 36.163464, 38.224781>,  <31.753473, 36.344841, 38.380402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731449, 36.163464, 38.224781>,  <31.694742, 35.861168, 37.965416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731449, 36.163464, 38.224781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508426, 0.595445, -0.622052,
		-0.856202, -0.272587, 0.438879,
		0.091765, 0.755739, 0.648411,
		31.758978, 36.390186, 38.419304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036684, 36.112469, 38.112507>,  <31.694742, 35.861168, 37.965416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036684, 36.112469, 38.112507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291508, 36.405415, 38.208668>,  <31.444403, 36.581184, 38.266365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291508, 36.405415, 38.208668>,  <31.036684, 36.112469, 38.112507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291508, 36.405415, 38.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504210, 0.631833, -0.588692,
		-0.583033, 0.253818, 0.771783,
		0.637059, 0.732368, 0.240402,
		31.482626, 36.625126, 38.280788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598839, 36.609978, 38.059540>,  <31.036684, 36.112469, 38.112507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598839, 36.609978, 38.059540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959581, 36.782475, 38.049103>,  <31.176027, 36.885971, 38.042843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959581, 36.782475, 38.049103>,  <30.598839, 36.609978, 38.059540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959581, 36.782475, 38.049103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357251, 0.710438, -0.606342,
		-0.242947, 0.556154, 0.794776,
		0.901858, 0.431243, -0.026088,
		31.230139, 36.911846, 38.041275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470629, 37.325657, 38.002308>,  <30.598839, 36.609978, 38.059540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470629, 37.325657, 38.002308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847370, 37.303341, 37.869766>,  <31.073416, 37.289951, 37.790241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847370, 37.303341, 37.869766>,  <30.470629, 37.325657, 38.002308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847370, 37.303341, 37.869766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223587, 0.632070, -0.741955,
		0.250834, 0.772901, 0.582844,
		0.941855, -0.055791, -0.331355,
		31.129927, 37.286602, 37.770359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643639, 37.986320, 37.626816>,  <30.470629, 37.325657, 38.002308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643639, 37.986320, 37.626816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908861, 37.709988, 37.511501>,  <31.067995, 37.544189, 37.442314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.908861, 37.709988, 37.511501>,  <30.643639, 37.986320, 37.626816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908861, 37.709988, 37.511501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080784, 0.316826, -0.945037,
		0.744195, 0.649904, 0.154266,
		0.663059, -0.690830, -0.288283,
		31.107779, 37.502739, 37.425018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120306, 38.301491, 37.150177>,  <30.643639, 37.986320, 37.626816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120306, 38.301491, 37.150177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163757, 37.911144, 37.074398>,  <31.189827, 37.676937, 37.028931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.163757, 37.911144, 37.074398>,  <31.120306, 38.301491, 37.150177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163757, 37.911144, 37.074398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023710, 0.193066, -0.980899,
		0.993800, 0.102060, 0.044110,
		0.108627, -0.975863, -0.189449,
		31.196346, 37.618385, 37.017563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370302, 38.254726, 36.407722>,  <31.120306, 38.301491, 37.150177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370302, 38.254726, 36.407722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245464, 37.880035, 36.471138>,  <31.170563, 37.655220, 36.509186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245464, 37.880035, 36.471138>,  <31.370302, 38.254726, 36.407722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245464, 37.880035, 36.471138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345550, -0.043520, -0.937390,
		0.884982, -0.347335, -0.310105,
		-0.312093, -0.936731, 0.158537,
		31.151836, 37.599018, 36.518700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595263, 37.869076, 35.742813>,  <31.370302, 38.254726, 36.407722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595263, 37.869076, 35.742813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312441, 37.653267, 35.925674>,  <31.142748, 37.523781, 36.035393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.312441, 37.653267, 35.925674>,  <31.595263, 37.869076, 35.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312441, 37.653267, 35.925674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367412, -0.272090, -0.889368,
		0.604222, -0.796795, -0.005845,
		-0.707053, -0.539523, 0.457155,
		31.100325, 37.491409, 36.062820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630556, 37.179558, 35.557915>,  <31.595263, 37.869076, 35.742813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630556, 37.179558, 35.557915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255640, 37.284904, 35.649239>,  <31.030691, 37.348114, 35.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255640, 37.284904, 35.649239>,  <31.630556, 37.179558, 35.557915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255640, 37.284904, 35.649239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309748, -0.329007, -0.892082,
		-0.159826, -0.906859, 0.389952,
		-0.937290, 0.263364, 0.228314,
		30.974453, 37.363914, 35.717731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403339, 36.607994, 35.386826>,  <31.630556, 37.179558, 35.557915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403339, 36.607994, 35.386826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101749, 36.870197, 35.369720>,  <30.920795, 37.027519, 35.359455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.101749, 36.870197, 35.369720>,  <31.403339, 36.607994, 35.386826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101749, 36.870197, 35.369720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367284, -0.474638, -0.799888,
		-0.544631, -0.587390, 0.598623,
		-0.753976, 0.655509, -0.042764,
		30.875557, 37.066849, 35.356892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786678, 36.694221, 34.864643>,  <31.403339, 36.607994, 35.386826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786678, 36.694221, 34.864643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725929, 36.771282, 34.476868>,  <30.689480, 36.817520, 34.244202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725929, 36.771282, 34.476868>,  <30.786678, 36.694221, 34.864643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725929, 36.771282, 34.476868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907489, 0.415837, -0.059532,
		0.391662, -0.888799, -0.237984,
		-0.151875, 0.192652, -0.969443,
		30.680367, 36.829079, 34.186035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368227, 36.325871, 34.525513>,  <30.786678, 36.694221, 34.864643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368227, 36.325871, 34.525513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209982, 36.663731, 34.381264>,  <31.115034, 36.866447, 34.294712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209982, 36.663731, 34.381264>,  <31.368227, 36.325871, 34.525513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209982, 36.663731, 34.381264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852272, 0.483954, 0.198550,
		0.342232, -0.228802, -0.911332,
		-0.395614, 0.844653, -0.360626,
		31.091297, 36.917126, 34.273075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862089, 36.237309, 33.976452>,  <31.368227, 36.325871, 34.525513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862089, 36.237309, 33.976452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138683, 36.271423, 33.689518>,  <32.304638, 36.291893, 33.517357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138683, 36.271423, 33.689518>,  <31.862089, 36.237309, 33.976452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138683, 36.271423, 33.689518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660620, 0.327116, 0.675704,
		0.292281, -0.941128, 0.169854,
		0.691486, 0.085286, -0.717338,
		32.346130, 36.297012, 33.474316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434799, 35.891651, 34.301003>,  <31.862089, 36.237309, 33.976452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434799, 35.891651, 34.301003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530914, 36.144844, 34.006630>,  <32.588581, 36.296761, 33.830006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530914, 36.144844, 34.006630>,  <32.434799, 35.891651, 34.301003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530914, 36.144844, 34.006630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848618, 0.231108, 0.475853,
		0.471286, -0.738868, -0.481626,
		0.240284, 0.632980, -0.735935,
		32.603001, 36.334740, 33.785851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107983, 35.729023, 34.198895>,  <32.434799, 35.891651, 34.301003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107983, 35.729023, 34.198895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389408, 35.761292, 34.481312>,  <33.558262, 35.780655, 34.650761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389408, 35.761292, 34.481312>,  <33.107983, 35.729023, 34.198895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389408, 35.761292, 34.481312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220414, -0.919763, 0.324736,
		0.675589, -0.384092, -0.629327,
		0.703560, 0.080676, 0.706041,
		33.600475, 35.785496, 34.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433365, 34.992847, 34.271332>,  <33.107983, 35.729023, 34.198895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433365, 34.992847, 34.271332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554390, 35.183304, 34.601604>,  <33.627003, 35.297577, 34.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554390, 35.183304, 34.601604>,  <33.433365, 34.992847, 34.271332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554390, 35.183304, 34.601604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104577, -0.844466, 0.525301,
		0.947376, -0.245282, -0.205708,
		0.302561, 0.476145, 0.825677,
		33.645157, 35.326149, 34.849308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033245, 34.734951, 34.661423>,  <33.433365, 34.992847, 34.271332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033245, 34.734951, 34.661423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823517, 34.923328, 34.945198>,  <33.697681, 35.036354, 35.115463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823517, 34.923328, 34.945198>,  <34.033245, 34.734951, 34.661423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823517, 34.923328, 34.945198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032859, -0.843712, 0.535789,
		0.850889, 0.257612, 0.457847,
		-0.524317, 0.470941, 0.709441,
		33.666222, 35.064610, 35.158031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310436, 34.704506, 35.349022>,  <34.033245, 34.734951, 34.661423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310436, 34.704506, 35.349022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930550, 34.791908, 35.438732>,  <33.702618, 34.844349, 35.492558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930550, 34.791908, 35.438732>,  <34.310436, 34.704506, 35.349022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930550, 34.791908, 35.438732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022587, -0.666587, 0.745085,
		0.312307, 0.712682, 0.628130,
		-0.949713, 0.218508, 0.224278,
		33.645638, 34.857460, 35.506016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227428, 34.907646, 36.122593>,  <34.310436, 34.704506, 35.349022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227428, 34.907646, 36.122593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863976, 34.798054, 35.996536>,  <33.645905, 34.732296, 35.920902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863976, 34.798054, 35.996536>,  <34.227428, 34.907646, 36.122593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863976, 34.798054, 35.996536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096453, -0.596564, 0.796749,
		-0.406298, 0.754351, 0.515633,
		-0.908636, -0.273983, -0.315141,
		33.591385, 34.715858, 35.901993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804474, 34.876774, 36.730827>,  <34.227428, 34.907646, 36.122593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804474, 34.876774, 36.730827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566124, 34.691940, 36.468098>,  <33.423115, 34.581039, 36.310459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566124, 34.691940, 36.468098>,  <33.804474, 34.876774, 36.730827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566124, 34.691940, 36.468098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280714, -0.646442, 0.709445,
		-0.752421, 0.607117, 0.255483,
		-0.595871, -0.462084, -0.656823,
		33.387363, 34.553314, 36.271049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148102, 34.777130, 37.078934>,  <33.804474, 34.876774, 36.730827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148102, 34.777130, 37.078934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172119, 34.496410, 36.794998>,  <33.186527, 34.327980, 36.624638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172119, 34.496410, 36.794998>,  <33.148102, 34.777130, 37.078934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172119, 34.496410, 36.794998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198417, -0.705325, 0.680550,
		-0.978277, 0.099984, -0.181596,
		0.060040, -0.701798, -0.709842,
		33.190132, 34.285870, 36.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747272, 34.194012, 37.300549>,  <33.148102, 34.777130, 37.078934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747272, 34.194012, 37.300549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979897, 34.007584, 37.033844>,  <33.119469, 33.895729, 36.873821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979897, 34.007584, 37.033844>,  <32.747272, 34.194012, 37.300549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979897, 34.007584, 37.033844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031813, -0.832019, 0.553834,
		-0.812882, -0.300875, -0.498695,
		0.581558, -0.466067, -0.666762,
		33.154362, 33.867764, 36.833817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394890, 33.647400, 37.226955>,  <32.747272, 34.194012, 37.300549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394890, 33.647400, 37.226955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762039, 33.556576, 37.096752>,  <32.982330, 33.502083, 37.018631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762039, 33.556576, 37.096752>,  <32.394890, 33.647400, 37.226955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762039, 33.556576, 37.096752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009109, -0.832006, 0.554692,
		-0.396769, -0.506172, -0.765744,
		0.917873, -0.227060, -0.325504,
		33.037399, 33.488457, 36.999100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367977, 32.919510, 37.369843>,  <32.394890, 33.647400, 37.226955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367977, 32.919510, 37.369843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749863, 32.998947, 37.281227>,  <32.978992, 33.046608, 37.228058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749863, 32.998947, 37.281227>,  <32.367977, 32.919510, 37.369843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749863, 32.998947, 37.281227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292676, -0.760720, 0.579350,
		-0.053478, -0.617955, -0.784393,
		0.954715, 0.198590, -0.221542,
		33.036278, 33.058525, 37.214764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744175, 32.404636, 37.108757>,  <32.367977, 32.919510, 37.369843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744175, 32.404636, 37.108757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028870, 32.615845, 37.294067>,  <33.199688, 32.742569, 37.405254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028870, 32.615845, 37.294067>,  <32.744175, 32.404636, 37.108757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028870, 32.615845, 37.294067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251594, -0.807384, 0.533696,
		0.655845, -0.263293, -0.707491,
		0.711736, 0.528023, 0.463276,
		33.242390, 32.774250, 37.433048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259418, 31.893641, 37.274506>,  <32.744175, 32.404636, 37.108757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259418, 31.893641, 37.274506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361111, 32.210979, 37.495762>,  <33.422127, 32.401382, 37.628517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361111, 32.210979, 37.495762>,  <33.259418, 31.893641, 37.274506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361111, 32.210979, 37.495762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166009, -0.599244, 0.783165,
		0.952790, -0.107276, -0.284047,
		0.254228, 0.793347, 0.553145,
		33.437378, 32.448982, 37.661705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956333, 31.616623, 37.461983>,  <33.259418, 31.893641, 37.274506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956333, 31.616623, 37.461983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792427, 31.904383, 37.686325>,  <33.694084, 32.077038, 37.820930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792427, 31.904383, 37.686325>,  <33.956333, 31.616623, 37.461983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792427, 31.904383, 37.686325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225810, -0.515713, 0.826468,
		0.883802, 0.465303, 0.048873,
		-0.409762, 0.719398, 0.560858,
		33.669498, 32.120201, 37.854584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474827, 31.609844, 38.089386>,  <33.956333, 31.616623, 37.461983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474827, 31.609844, 38.089386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126667, 31.780813, 38.187134>,  <33.917770, 31.883394, 38.245781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126667, 31.780813, 38.187134>,  <34.474827, 31.609844, 38.089386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126667, 31.780813, 38.187134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063822, -0.394196, 0.916808,
		0.488192, 0.813585, 0.315829,
		-0.870399, 0.427421, 0.244368,
		33.865547, 31.909040, 38.260445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600491, 31.969715, 38.778030>,  <34.474827, 31.609844, 38.089386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600491, 31.969715, 38.778030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201008, 31.955418, 38.763523>,  <33.961319, 31.946840, 38.754818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.201008, 31.955418, 38.763523>,  <34.600491, 31.969715, 38.778030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201008, 31.955418, 38.763523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024952, -0.277284, 0.960464,
		-0.044385, 0.960123, 0.276033,
		-0.998703, -0.035743, -0.036265,
		33.901398, 31.944695, 38.752644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362541, 32.416359, 39.371464>,  <34.600491, 31.969715, 38.778030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362541, 32.416359, 39.371464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084011, 32.156235, 39.249992>,  <33.916893, 32.000160, 39.177109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084011, 32.156235, 39.249992>,  <34.362541, 32.416359, 39.371464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084011, 32.156235, 39.249992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046343, -0.462965, 0.885164,
		-0.716226, 0.602292, 0.352513,
		-0.696328, -0.650314, -0.303675,
		33.875114, 31.961140, 39.158890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973095, 32.278717, 39.917072>,  <34.362541, 32.416359, 39.371464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973095, 32.278717, 39.917072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812767, 31.973061, 39.714909>,  <33.716572, 31.789667, 39.593613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812767, 31.973061, 39.714909>,  <33.973095, 32.278717, 39.917072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812767, 31.973061, 39.714909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013040, -0.546842, 0.837134,
		-0.916065, 0.342128, 0.209219,
		-0.400817, -0.764141, -0.505405,
		33.692524, 31.743818, 39.563286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302555, 32.017536, 40.266750>,  <33.973095, 32.278717, 39.917072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302555, 32.017536, 40.266750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475895, 31.721777, 40.060642>,  <33.579899, 31.544321, 39.936977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475895, 31.721777, 40.060642>,  <33.302555, 32.017536, 40.266750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475895, 31.721777, 40.060642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147693, -0.505749, 0.849944,
		-0.889043, -0.444422, -0.109961,
		0.433346, -0.739397, -0.515271,
		33.605900, 31.499958, 39.906059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030521, 31.362926, 40.578194>,  <33.302555, 32.017536, 40.266750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030521, 31.362926, 40.578194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370861, 31.268848, 40.390263>,  <33.575066, 31.212402, 40.277504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370861, 31.268848, 40.390263>,  <33.030521, 31.362926, 40.578194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370861, 31.268848, 40.390263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250894, -0.603800, 0.756622,
		-0.461635, -0.761649, -0.454735,
		0.850850, -0.235193, -0.469828,
		33.626114, 31.198290, 40.249313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077927, 30.614592, 40.541168>,  <33.030521, 31.362926, 40.578194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077927, 30.614592, 40.541168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435928, 30.792860, 40.533749>,  <33.650730, 30.899820, 40.529297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435928, 30.792860, 40.533749>,  <33.077927, 30.614592, 40.541168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435928, 30.792860, 40.533749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328203, -0.629808, 0.704006,
		0.302076, -0.636175, -0.709951,
		0.895004, 0.445672, -0.018545,
		33.704430, 30.926561, 40.528187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493896, 30.022491, 40.680508>,  <33.077927, 30.614592, 40.541168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493896, 30.022491, 40.680508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776451, 30.304544, 40.705185>,  <33.945984, 30.473776, 40.719994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776451, 30.304544, 40.705185>,  <33.493896, 30.022491, 40.680508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776451, 30.304544, 40.705185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461394, -0.524803, 0.715330,
		0.536780, -0.476834, -0.696058,
		0.706386, 0.705132, 0.061695,
		33.988365, 30.516085, 40.723694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179607, 29.664083, 40.621464>,  <33.493896, 30.022491, 40.680508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179607, 29.664083, 40.621464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275330, 30.011349, 40.795372>,  <34.332764, 30.219707, 40.899719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.275330, 30.011349, 40.795372>,  <34.179607, 29.664083, 40.621464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275330, 30.011349, 40.795372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615488, -0.481959, 0.623610,
		0.750937, 0.118363, -0.649680,
		0.239307, 0.868162, 0.434772,
		34.347122, 30.271797, 40.925804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898258, 29.631292, 40.616684>,  <34.179607, 29.664083, 40.621464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898258, 29.631292, 40.616684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784657, 29.892517, 40.897499>,  <34.716496, 30.049252, 41.065987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784657, 29.892517, 40.897499>,  <34.898258, 29.631292, 40.616684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784657, 29.892517, 40.897499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563883, -0.478422, 0.673163,
		0.775486, 0.587044, -0.232379,
		-0.284001, 0.653064, 0.702034,
		34.699455, 30.088436, 41.108109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542553, 29.908575, 40.946838>,  <34.898258, 29.631292, 40.616684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542553, 29.908575, 40.946838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230019, 29.920248, 41.196209>,  <35.042496, 29.927252, 41.345829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230019, 29.920248, 41.196209>,  <35.542553, 29.908575, 40.946838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230019, 29.920248, 41.196209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503331, -0.561145, 0.657095,
		0.369007, 0.827203, 0.423756,
		-0.781340, 0.029184, 0.623423,
		34.995617, 29.929003, 41.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870026, 29.753853, 41.672981>,  <35.542553, 29.908575, 40.946838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870026, 29.753853, 41.672981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475471, 29.739725, 41.737221>,  <35.238739, 29.731249, 41.775764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475471, 29.739725, 41.737221>,  <35.870026, 29.753853, 41.672981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475471, 29.739725, 41.737221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149884, -0.594868, 0.789726,
		0.067643, 0.803047, 0.592064,
		-0.986387, -0.035321, 0.160602,
		35.179554, 29.729128, 41.785400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496361, 29.840174, 42.244766>,  <35.870026, 29.753853, 41.672981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496361, 29.840174, 42.244766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739243, 29.542233, 42.134132>,  <36.884972, 29.363468, 42.067753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739243, 29.542233, 42.134132>,  <36.496361, 29.840174, 42.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739243, 29.542233, 42.134132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263646, 0.517259, -0.814207,
		0.749527, 0.421473, 0.510460,
		0.607207, -0.744851, -0.276580,
		36.921406, 29.318777, 42.051159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043747, 30.216724, 41.999947>,  <36.496361, 29.840174, 42.244766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043747, 30.216724, 41.999947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016800, 29.847424, 41.848652>,  <37.000633, 29.625843, 41.757874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016800, 29.847424, 41.848652>,  <37.043747, 30.216724, 41.999947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016800, 29.847424, 41.848652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051783, 0.375353, -0.925435,
		0.996384, -0.081931, 0.022522,
		-0.067368, -0.923254, -0.378238,
		36.996590, 29.570448, 41.735180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649479, 30.052528, 41.718006>,  <37.043747, 30.216724, 41.999947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649479, 30.052528, 41.718006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459251, 29.768887, 41.509773>,  <37.345116, 29.598701, 41.384834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459251, 29.768887, 41.509773>,  <37.649479, 30.052528, 41.718006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459251, 29.768887, 41.509773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454611, 0.308516, -0.835552,
		0.753101, -0.634024, 0.175647,
		-0.475570, -0.709106, -0.520578,
		37.316582, 29.556154, 41.353600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085979, 30.046947, 41.185947>,  <37.649479, 30.052528, 41.718006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085979, 30.046947, 41.185947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767570, 29.829647, 41.079189>,  <37.576527, 29.699266, 41.015133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.767570, 29.829647, 41.079189>,  <38.085979, 30.046947, 41.185947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767570, 29.829647, 41.079189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203200, 0.175513, -0.963278,
		0.570145, -0.821021, -0.029323,
		-0.796018, -0.543250, -0.266899,
		37.528767, 29.666672, 40.999119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332359, 29.594269, 40.656078>,  <38.085979, 30.046947, 41.185947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332359, 29.594269, 40.656078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935654, 29.631001, 40.620384>,  <37.697628, 29.653040, 40.598969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935654, 29.631001, 40.620384>,  <38.332359, 29.594269, 40.656078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935654, 29.631001, 40.620384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120539, 0.434449, -0.892594,
		-0.043198, -0.896003, -0.441942,
		-0.991768, 0.091830, -0.089236,
		37.638123, 29.658550, 40.593613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
