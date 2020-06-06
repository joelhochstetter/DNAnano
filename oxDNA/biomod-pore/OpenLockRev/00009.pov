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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.680973, 34.179157, 49.227375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491989, 34.472099, 49.423512>,  <40.378597, 34.647865, 49.541191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491989, 34.472099, 49.423512>,  <40.680973, 34.179157, 49.227375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491989, 34.472099, 49.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874166, 0.460286, 0.154828,
		-0.112306, 0.501787, -0.857669,
		-0.472463, 0.732357, 0.490338,
		40.350250, 34.691807, 49.570614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995575, 34.742443, 49.042286>,  <40.680973, 34.179157, 49.227375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995575, 34.742443, 49.042286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863003, 34.776340, 49.418152>,  <40.783459, 34.796680, 49.643673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863003, 34.776340, 49.418152>,  <40.995575, 34.742443, 49.042286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863003, 34.776340, 49.418152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832373, 0.495166, 0.248930,
		-0.444194, 0.864656, -0.234653,
		-0.331431, 0.084746, 0.939666,
		40.763573, 34.801765, 49.700050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086273, 35.464603, 49.238869>,  <40.995575, 34.742443, 49.042286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086273, 35.464603, 49.238869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043457, 35.233242, 49.562347>,  <41.017769, 35.094425, 49.756435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.043457, 35.233242, 49.562347>,  <41.086273, 35.464603, 49.238869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.043457, 35.233242, 49.562347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810417, 0.420449, 0.407979,
		-0.575992, 0.699055, 0.423740,
		-0.107039, -0.578399, 0.808701,
		41.011345, 35.059723, 49.804958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051582, 35.849758, 49.867805>,  <41.086273, 35.464603, 49.238869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051582, 35.849758, 49.867805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187351, 35.490799, 49.980572>,  <41.268814, 35.275425, 50.048229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187351, 35.490799, 49.980572>,  <41.051582, 35.849758, 49.867805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187351, 35.490799, 49.980572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814371, 0.430342, 0.389365,
		-0.470732, 0.097422, 0.876881,
		0.339426, -0.897393, 0.281913,
		41.289181, 35.221581, 50.065147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.264400, 35.915379, 50.564117>,  <41.051582, 35.849758, 49.867805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.264400, 35.915379, 50.564117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443012, 35.595417, 50.403732>,  <41.550179, 35.403442, 50.307503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443012, 35.595417, 50.403732>,  <41.264400, 35.915379, 50.564117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443012, 35.595417, 50.403732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889587, 0.348715, 0.295014,
		-0.096162, -0.488421, 0.867293,
		0.446529, -0.799902, -0.400959,
		41.576973, 35.355446, 50.283443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764412, 35.931473, 50.991093>,  <41.264400, 35.915379, 50.564117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764412, 35.931473, 50.991093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854656, 35.660786, 50.710766>,  <41.908802, 35.498371, 50.542568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.854656, 35.660786, 50.710766>,  <41.764412, 35.931473, 50.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854656, 35.660786, 50.710766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943187, -0.028392, 0.331048,
		-0.243926, -0.735690, 0.631870,
		0.225609, -0.676723, -0.700819,
		41.922340, 35.457767, 50.500519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024376, 35.360180, 51.365074>,  <41.764412, 35.931473, 50.991093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024376, 35.360180, 51.365074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160679, 35.352009, 50.989101>,  <42.242462, 35.347107, 50.763519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160679, 35.352009, 50.989101>,  <42.024376, 35.360180, 51.365074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160679, 35.352009, 50.989101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931071, -0.131275, 0.340403,
		-0.130338, -0.991135, -0.025726,
		0.340763, -0.020415, -0.939928,
		42.262909, 35.345879, 50.707123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510143, 34.809933, 51.333462>,  <42.024376, 35.360180, 51.365074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510143, 34.809933, 51.333462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587860, 35.059822, 51.030949>,  <42.634491, 35.209755, 50.849442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587860, 35.059822, 51.030949>,  <42.510143, 34.809933, 51.333462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587860, 35.059822, 51.030949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975243, -0.040030, 0.217481,
		0.105591, -0.779819, -0.617036,
		0.194296, 0.624724, -0.756287,
		42.646149, 35.247238, 50.804062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052868, 34.512508, 51.014324>,  <42.510143, 34.809933, 51.333462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052868, 34.512508, 51.014324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064350, 34.884876, 50.868683>,  <43.071239, 35.108295, 50.781300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064350, 34.884876, 50.868683>,  <43.052868, 34.512508, 51.014324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064350, 34.884876, 50.868683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999494, -0.021742, 0.023203,
		0.013684, -0.364580, -0.931071,
		0.028703, 0.930918, -0.364099,
		43.072960, 35.164150, 50.759453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.549259, 34.492828, 50.564388>,  <43.052868, 34.512508, 51.014324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.549259, 34.492828, 50.564388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536545, 34.884045, 50.646782>,  <43.528915, 35.118774, 50.696217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536545, 34.884045, 50.646782>,  <43.549259, 34.492828, 50.564388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536545, 34.884045, 50.646782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963534, -0.024803, 0.266434,
		0.265692, 0.206938, -0.941586,
		-0.031781, 0.978040, 0.205982,
		43.527012, 35.177456, 50.708576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041988, 34.826054, 50.228992>,  <43.549259, 34.492828, 50.564388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041988, 34.826054, 50.228992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943840, 35.086586, 50.516205>,  <43.884949, 35.242905, 50.688530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943840, 35.086586, 50.516205>,  <44.041988, 34.826054, 50.228992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943840, 35.086586, 50.516205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957275, 0.045879, 0.285515,
		0.153021, 0.757408, -0.634757,
		-0.245373, 0.651328, 0.718028,
		43.870228, 35.281982, 50.731613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604225, 35.336105, 50.239525>,  <44.041988, 34.826054, 50.228992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604225, 35.336105, 50.239525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426521, 35.389744, 50.593849>,  <44.319901, 35.421928, 50.806442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426521, 35.389744, 50.593849>,  <44.604225, 35.336105, 50.239525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426521, 35.389744, 50.593849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894586, 0.119921, 0.430505,
		-0.048497, 0.983685, -0.173239,
		-0.444256, 0.134100, 0.885807,
		44.293243, 35.429974, 50.859592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993965, 35.874676, 50.549858>,  <44.604225, 35.336105, 50.239525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993965, 35.874676, 50.549858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809582, 35.741673, 50.878967>,  <44.698952, 35.661873, 51.076431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809582, 35.741673, 50.878967>,  <44.993965, 35.874676, 50.549858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809582, 35.741673, 50.878967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853914, 0.086165, 0.513231,
		-0.241547, 0.939157, 0.244213,
		-0.460962, -0.332506, 0.822772,
		44.671291, 35.641922, 51.125797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063065, 36.517834, 51.022129>,  <44.993965, 35.874676, 50.549858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063065, 36.517834, 51.022129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031231, 36.153309, 51.183708>,  <45.012131, 35.934593, 51.280655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031231, 36.153309, 51.183708>,  <45.063065, 36.517834, 51.022129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031231, 36.153309, 51.183708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847808, 0.151260, 0.508273,
		-0.524298, 0.382917, 0.760583,
		-0.079581, -0.911315, 0.403945,
		45.007359, 35.879913, 51.304893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.278156, 36.634312, 51.693333>,  <45.063065, 36.517834, 51.022129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.278156, 36.634312, 51.693333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335503, 36.241707, 51.642609>,  <45.369911, 36.006145, 51.612175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335503, 36.241707, 51.642609>,  <45.278156, 36.634312, 51.693333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335503, 36.241707, 51.642609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818902, 0.045703, 0.572110,
		-0.555737, -0.185867, 0.810314,
		0.143370, -0.981511, -0.126809,
		45.378513, 35.947254, 51.604565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501392, 36.456501, 52.331661>,  <45.278156, 36.634312, 51.693333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501392, 36.456501, 52.331661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607101, 36.133690, 52.120430>,  <45.670528, 35.940002, 51.993690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607101, 36.133690, 52.120430>,  <45.501392, 36.456501, 52.331661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607101, 36.133690, 52.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854367, -0.058137, 0.516408,
		-0.447457, -0.587645, 0.674133,
		0.264273, -0.807028, -0.528078,
		45.686382, 35.891582, 51.962006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913841, 36.051754, 52.757217>,  <45.501392, 36.456501, 52.331661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913841, 36.051754, 52.757217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006996, 35.863529, 52.416786>,  <46.062889, 35.750595, 52.212528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.006996, 35.863529, 52.416786>,  <45.913841, 36.051754, 52.757217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006996, 35.863529, 52.416786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948657, -0.082688, 0.305308,
		-0.214041, -0.878483, 0.427147,
		0.232888, -0.470565, -0.851077,
		46.076862, 35.722359, 52.161465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225883, 35.515762, 52.963722>,  <45.913841, 36.051754, 52.757217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225883, 35.515762, 52.963722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323032, 35.558086, 52.578014>,  <46.381321, 35.583481, 52.346588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323032, 35.558086, 52.578014>,  <46.225883, 35.515762, 52.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323032, 35.558086, 52.578014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933890, -0.294405, 0.202915,
		-0.262415, -0.949805, -0.170319,
		0.242873, 0.105811, -0.964270,
		46.395893, 35.589828, 52.288734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588032, 34.852272, 52.683819>,  <46.225883, 35.515762, 52.963722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588032, 34.852272, 52.683819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706390, 35.160904, 52.458572>,  <46.777405, 35.346085, 52.323425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.706390, 35.160904, 52.458572>,  <46.588032, 34.852272, 52.683819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706390, 35.160904, 52.458572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951359, -0.290995, 0.101184,
		-0.085793, -0.565670, -0.820157,
		0.295899, 0.771582, -0.563120,
		46.795158, 35.392380, 52.289635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.133785, 34.600212, 52.153103>,  <46.588032, 34.852272, 52.683819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.133785, 34.600212, 52.153103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185066, 34.996849, 52.160027>,  <47.215836, 35.234833, 52.164181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185066, 34.996849, 52.160027>,  <47.133785, 34.600212, 52.153103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185066, 34.996849, 52.160027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972175, -0.129105, 0.195465,
		0.196058, -0.008230, -0.980558,
		0.128204, 0.991597, 0.017311,
		47.223526, 35.294327, 52.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.778645, 34.742409, 51.813343>,  <47.133785, 34.600212, 52.153103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.778645, 34.742409, 51.813343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695263, 35.055210, 52.048294>,  <47.645233, 35.242893, 52.189266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695263, 35.055210, 52.048294>,  <47.778645, 34.742409, 51.813343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695263, 35.055210, 52.048294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961933, 0.055409, 0.267608,
		0.176726, 0.620802, -0.763788,
		-0.208452, 0.782007, 0.587378,
		47.632729, 35.289814, 52.224506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.055283, 35.362007, 51.865387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.175671, 35.069263, 52.109943>,  <24.247904, 34.893620, 52.256680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.175671, 35.069263, 52.109943>,  <24.055283, 35.362007, 51.865387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.175671, 35.069263, 52.109943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872705, 0.469839, 0.132806,
		-0.384452, 0.493597, 0.780102,
		0.300970, -0.731856, 0.611395,
		24.265961, 34.849709, 52.293362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556644, 35.633343, 52.225441>,  <24.055283, 35.362007, 51.865387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556644, 35.633343, 52.225441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.644491, 35.263687, 52.350491>,  <24.697199, 35.041893, 52.425522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.644491, 35.263687, 52.350491>,  <24.556644, 35.633343, 52.225441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.644491, 35.263687, 52.350491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968162, 0.245910, 0.046800,
		-0.120127, 0.292395, 0.948722,
		0.219616, -0.924139, 0.312627,
		24.710377, 34.986446, 52.444279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.020382, 35.787327, 52.796917>,  <24.556644, 35.633343, 52.225441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.020382, 35.787327, 52.796917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.086060, 35.409489, 52.683224>,  <25.125465, 35.182785, 52.615009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.086060, 35.409489, 52.683224>,  <25.020382, 35.787327, 52.796917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.086060, 35.409489, 52.683224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985436, 0.144149, 0.090206,
		-0.044236, -0.294902, 0.954503,
		0.164192, -0.944592, -0.284230,
		25.135317, 35.126110, 52.597954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637770, 35.515480, 53.273808>,  <25.020382, 35.787327, 52.796917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637770, 35.515480, 53.273808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.580437, 35.250553, 52.979652>,  <25.546038, 35.091599, 52.803158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.580437, 35.250553, 52.979652>,  <25.637770, 35.515480, 53.273808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580437, 35.250553, 52.979652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989655, -0.091274, -0.110686,
		0.006187, -0.743647, 0.668544,
		-0.143332, -0.662313, -0.735390,
		25.537437, 35.051861, 52.759037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067724, 35.027554, 53.377476>,  <25.637770, 35.515480, 53.273808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067724, 35.027554, 53.377476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.976793, 35.036770, 52.988056>,  <25.922234, 35.042301, 52.754406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.976793, 35.036770, 52.988056>,  <26.067724, 35.027554, 53.377476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976793, 35.036770, 52.988056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970663, -0.075043, -0.228431,
		-0.078320, -0.996914, -0.005304,
		-0.227328, 0.023039, -0.973546,
		25.908594, 35.043682, 52.695992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432375, 34.362900, 52.977898>,  <26.067724, 35.027554, 53.377476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432375, 34.362900, 52.977898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.364649, 34.646954, 52.704533>,  <26.324013, 34.817387, 52.540516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.364649, 34.646954, 52.704533>,  <26.432375, 34.362900, 52.977898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364649, 34.646954, 52.704533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904380, -0.163645, -0.394101,
		-0.391700, -0.684788, -0.614521,
		-0.169313, 0.710130, -0.683409,
		26.313854, 34.859993, 52.499512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752682, 34.076077, 52.337307>,  <26.432375, 34.362900, 52.977898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752682, 34.076077, 52.337307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.707125, 34.467022, 52.265980>,  <26.679790, 34.701588, 52.223183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.707125, 34.467022, 52.265980>,  <26.752682, 34.076077, 52.337307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.707125, 34.467022, 52.265980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869048, 0.011034, -0.494604,
		-0.481439, -0.211296, -0.850629,
		-0.113893, 0.977360, -0.178314,
		26.672956, 34.760231, 52.212486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.924385, 34.211235, 51.595867>,  <26.752682, 34.076077, 52.337307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.924385, 34.211235, 51.595867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.975031, 34.562328, 51.780716>,  <27.005419, 34.772984, 51.891624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.975031, 34.562328, 51.780716>,  <26.924385, 34.211235, 51.595867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975031, 34.562328, 51.780716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929841, 0.057242, -0.363482,
		-0.345492, 0.475720, -0.808904,
		0.126612, 0.877732, 0.462120,
		27.013014, 34.825649, 51.919353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248476, 34.689365, 51.100792>,  <26.924385, 34.211235, 51.595867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248476, 34.689365, 51.100792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.319843, 34.824013, 51.470627>,  <27.362663, 34.904800, 51.692528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.319843, 34.824013, 51.470627>,  <27.248476, 34.689365, 51.100792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319843, 34.824013, 51.470627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950500, 0.183979, -0.250401,
		-0.254394, 0.923492, -0.287134,
		0.178417, 0.336621, 0.924583,
		27.373369, 34.924999, 51.748001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822702, 35.145893, 50.993507>,  <27.248476, 34.689365, 51.100792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822702, 35.145893, 50.993507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.830404, 35.117954, 51.392456>,  <27.835026, 35.101192, 51.631824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.830404, 35.117954, 51.392456>,  <27.822702, 35.145893, 50.993507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830404, 35.117954, 51.392456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976214, 0.216779, -0.003666,
		-0.215954, 0.973719, 0.072356,
		0.019255, -0.069843, 0.997372,
		27.836182, 35.097000, 51.691669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288355, 35.614094, 51.160145>,  <27.822702, 35.145893, 50.993507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288355, 35.614094, 51.160145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270370, 35.366043, 51.473431>,  <28.259581, 35.217213, 51.661404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.270370, 35.366043, 51.473431>,  <28.288355, 35.614094, 51.160145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270370, 35.366043, 51.473431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987537, 0.090781, 0.128566,
		-0.150827, 0.779234, 0.608313,
		-0.044960, -0.620123, 0.783215,
		28.256882, 35.180008, 51.708397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637510, 35.944431, 51.625137>,  <28.288355, 35.614094, 51.160145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637510, 35.944431, 51.625137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.655832, 35.570564, 51.766163>,  <28.666824, 35.346245, 51.850777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.655832, 35.570564, 51.766163>,  <28.637510, 35.944431, 51.625137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655832, 35.570564, 51.766163> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992218, 0.083472, 0.092389,
		-0.115782, 0.345584, 0.931218,
		0.045803, -0.934668, 0.352560,
		28.669573, 35.290165, 51.871929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060919, 35.965473, 52.125805>,  <28.637510, 35.944431, 51.625137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060919, 35.965473, 52.125805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.072329, 35.581345, 52.014832>,  <29.079174, 35.350868, 51.948246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.072329, 35.581345, 52.014832>,  <29.060919, 35.965473, 52.125805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072329, 35.581345, 52.014832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999506, 0.023732, 0.020623,
		-0.013220, -0.277889, 0.960522,
		0.028526, -0.960320, -0.277437,
		29.080887, 35.293247, 51.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595091, 35.638210, 52.527382>,  <29.060919, 35.965473, 52.125805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595091, 35.638210, 52.527382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.539230, 35.360863, 52.244614>,  <29.505714, 35.194454, 52.074955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.539230, 35.360863, 52.244614>,  <29.595091, 35.638210, 52.527382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539230, 35.360863, 52.244614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988437, -0.140209, -0.057744,
		-0.059078, -0.706808, 0.704934,
		-0.139652, -0.693372, -0.706918,
		29.497335, 35.152851, 52.032539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846714, 34.940323, 52.696732>,  <29.595091, 35.638210, 52.527382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846714, 34.940323, 52.696732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.837919, 34.946854, 52.296883>,  <29.832644, 34.950771, 52.056973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.837919, 34.946854, 52.296883>,  <29.846714, 34.940323, 52.696732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837919, 34.946854, 52.296883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971189, -0.236971, -0.025231,
		-0.237293, -0.971380, -0.010643,
		-0.021987, 0.016324, -0.999625,
		29.831324, 34.951752, 51.996994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480385, 34.528896, 52.493385>,  <29.846714, 34.940323, 52.696732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480385, 34.528896, 52.493385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374697, 34.700100, 52.147671>,  <30.311285, 34.802822, 51.940243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.374697, 34.700100, 52.147671>,  <30.480385, 34.528896, 52.493385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374697, 34.700100, 52.147671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915231, -0.171382, -0.364664,
		-0.304204, -0.887374, -0.346448,
		-0.264219, 0.428013, -0.864288,
		30.295431, 34.828503, 51.888386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678274, 34.082928, 51.996193>,  <30.480385, 34.528896, 52.493385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678274, 34.082928, 51.996193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644474, 34.421757, 51.786308>,  <30.624195, 34.625053, 51.660378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.644474, 34.421757, 51.786308>,  <30.678274, 34.082928, 51.996193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644474, 34.421757, 51.786308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825591, -0.235328, -0.512855,
		-0.557906, -0.476534, -0.679453,
		-0.084498, 0.847075, -0.524713,
		30.619125, 34.675880, 51.628895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802153, 33.830826, 51.381443>,  <30.678274, 34.082928, 51.996193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802153, 33.830826, 51.381443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.889294, 34.220921, 51.396675>,  <30.941578, 34.454979, 51.405815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.889294, 34.220921, 51.396675>,  <30.802153, 33.830826, 51.381443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889294, 34.220921, 51.396675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792657, -0.154036, -0.589888,
		-0.569416, 0.158693, -0.806587,
		0.217855, 0.975238, 0.038078,
		30.954651, 34.513493, 51.408100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901035, 34.051083, 50.697044>,  <30.802153, 33.830826, 51.381443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901035, 34.051083, 50.697044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060535, 34.345886, 50.915337>,  <31.156235, 34.522766, 51.046310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.060535, 34.345886, 50.915337>,  <30.901035, 34.051083, 50.697044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060535, 34.345886, 50.915337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784630, 0.033860, -0.619039,
		-0.474715, 0.675036, -0.564777,
		0.398750, 0.737007, 0.545728,
		31.180161, 34.566990, 51.079056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064276, 34.548138, 50.208565>,  <30.901035, 34.051083, 50.697044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064276, 34.548138, 50.208565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307913, 34.658627, 50.505943>,  <31.454096, 34.724918, 50.684368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.307913, 34.658627, 50.505943>,  <31.064276, 34.548138, 50.208565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307913, 34.658627, 50.505943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783550, -0.064564, -0.617965,
		-0.122696, 0.958923, -0.255759,
		0.609094, 0.276222, 0.743442,
		31.490641, 34.741493, 50.728977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525881, 34.981907, 49.920433>,  <31.064276, 34.548138, 50.208565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525881, 34.981907, 49.920433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738012, 34.902027, 50.250008>,  <31.865292, 34.854099, 50.447754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738012, 34.902027, 50.250008>,  <31.525881, 34.981907, 49.920433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738012, 34.902027, 50.250008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835965, -0.038594, -0.547424,
		0.141120, 0.979097, 0.146475,
		0.530328, -0.199701, 0.823937,
		31.897110, 34.842117, 50.497189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.692413, 34.802856, 35.041214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.355696, 35.011662, 34.986240>,  <24.153666, 35.136944, 34.953259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.355696, 35.011662, 34.986240>,  <24.692413, 34.802856, 35.041214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355696, 35.011662, 34.986240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205809, 0.075009, -0.975713,
		-0.499027, -0.849633, -0.170577,
		-0.841793, 0.522014, -0.137431,
		24.103157, 35.168266, 34.945011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581911, 35.593067, 35.277210>,  <24.692413, 34.802856, 35.041214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581911, 35.593067, 35.277210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.473558, 35.449562, 35.634514>,  <24.408546, 35.363457, 35.848896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.473558, 35.449562, 35.634514>,  <24.581911, 35.593067, 35.277210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.473558, 35.449562, 35.634514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749099, 0.504211, 0.429677,
		-0.604544, 0.785530, 0.132168,
		-0.270883, -0.358766, 0.893258,
		24.392294, 35.341934, 35.902493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.379454, 36.215027, 35.700874>,  <24.581911, 35.593067, 35.277210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.379454, 36.215027, 35.700874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.494448, 35.906322, 35.927765>,  <24.563444, 35.721100, 36.063900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.494448, 35.906322, 35.927765>,  <24.379454, 36.215027, 35.700874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494448, 35.906322, 35.927765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535528, 0.620523, 0.572853,
		-0.794079, 0.139078, 0.591688,
		0.287485, -0.771756, 0.567225,
		24.580692, 35.674797, 36.097931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.202374, 36.401539, 36.413475>,  <24.379454, 36.215027, 35.700874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.202374, 36.401539, 36.413475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.521431, 36.160309, 36.410152>,  <24.712866, 36.015572, 36.408157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.521431, 36.160309, 36.410152>,  <24.202374, 36.401539, 36.413475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521431, 36.160309, 36.410152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537624, 0.704701, 0.462988,
		-0.273360, -0.373766, 0.886326,
		0.797643, -0.603072, -0.008309,
		24.760723, 35.979385, 36.407661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695889, 36.854912, 36.602146>,  <24.202374, 36.401539, 36.413475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695889, 36.854912, 36.602146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.536076, 36.844330, 36.968681>,  <24.440187, 36.837982, 37.188602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.536076, 36.844330, 36.968681>,  <24.695889, 36.854912, 36.602146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.536076, 36.844330, 36.968681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860078, 0.335095, 0.384678,
		-0.317237, 0.941813, -0.111128,
		-0.399533, -0.026456, 0.916337,
		24.416216, 36.836391, 37.243584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.868670, 37.559525, 36.802662>,  <24.695889, 36.854912, 36.602146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.868670, 37.559525, 36.802662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.808270, 37.291267, 37.093159>,  <24.772030, 37.130314, 37.267456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.808270, 37.291267, 37.093159>,  <24.868670, 37.559525, 36.802662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.808270, 37.291267, 37.093159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782434, 0.367915, 0.502430,
		-0.604149, 0.644107, 0.469180,
		-0.151000, -0.670645, 0.726246,
		24.762970, 37.090073, 37.311031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.158813, 37.786480, 37.472500>,  <24.868670, 37.559525, 36.802662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.158813, 37.786480, 37.472500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101406, 37.395107, 37.531929>,  <25.066961, 37.160282, 37.567585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.101406, 37.395107, 37.531929>,  <25.158813, 37.786480, 37.472500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101406, 37.395107, 37.531929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959565, -0.100847, 0.262800,
		-0.242149, 0.180279, 0.953343,
		-0.143520, -0.978432, 0.148570,
		25.058350, 37.101578, 37.576500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.610319, 37.660976, 37.972668>,  <25.158813, 37.786480, 37.472500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.610319, 37.660976, 37.972668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.529959, 37.314621, 37.789417>,  <25.481743, 37.106808, 37.679466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.529959, 37.314621, 37.789417>,  <25.610319, 37.660976, 37.972668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529959, 37.314621, 37.789417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925515, -0.321030, 0.200902,
		-0.321030, -0.383640, 0.865887,
		-0.200902, -0.865887, -0.458125,
		25.469688, 37.054855, 37.651981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.800571, 37.268242, 38.449554>,  <25.610319, 37.660976, 37.972668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.800571, 37.268242, 38.449554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.794685, 37.072956, 38.100513>,  <25.791153, 36.955784, 37.891090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.794685, 37.072956, 38.100513>,  <25.800571, 37.268242, 38.449554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.794685, 37.072956, 38.100513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880023, -0.420639, 0.220504,
		-0.474703, -0.764663, 0.435829,
		-0.014716, -0.488214, -0.872600,
		25.790270, 36.926491, 37.838734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917297, 36.636997, 38.638680>,  <25.800571, 37.268242, 38.449554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917297, 36.636997, 38.638680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.061132, 36.686012, 38.268665>,  <26.147434, 36.715420, 38.046658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.061132, 36.686012, 38.268665>,  <25.917297, 36.636997, 38.638680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061132, 36.686012, 38.268665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894663, -0.326911, 0.304479,
		-0.265094, -0.937078, -0.227179,
		0.359588, 0.122533, -0.925031,
		26.169008, 36.722771, 37.991158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191828, 36.009518, 38.286507>,  <25.917297, 36.636997, 38.638680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191828, 36.009518, 38.286507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.368311, 36.357525, 38.198498>,  <26.474201, 36.566330, 38.145691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.368311, 36.357525, 38.198498>,  <26.191828, 36.009518, 38.286507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368311, 36.357525, 38.198498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872444, -0.358418, 0.332231,
		0.210187, -0.338540, -0.917176,
		0.441206, 0.870016, -0.220023,
		26.500673, 36.618530, 38.132492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663227, 35.818005, 38.905422>,  <26.191828, 36.009518, 38.286507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663227, 35.818005, 38.905422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.902489, 36.082527, 39.086479>,  <27.046045, 36.241241, 39.195114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.902489, 36.082527, 39.086479>,  <26.663227, 35.818005, 38.905422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902489, 36.082527, 39.086479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002148, -0.566150, 0.824299,
		0.801378, -0.492086, -0.340066,
		0.598155, 0.661306, 0.452643,
		27.081936, 36.280918, 39.222271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024817, 35.334991, 39.278702>,  <26.663227, 35.818005, 38.905422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024817, 35.334991, 39.278702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061731, 35.703838, 39.428997>,  <27.083881, 35.925148, 39.519173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.061731, 35.703838, 39.428997>,  <27.024817, 35.334991, 39.278702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061731, 35.703838, 39.428997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022172, -0.375350, 0.926618,
		0.995485, -0.093846, -0.014195,
		0.092288, 0.922120, 0.375736,
		27.089418, 35.980473, 39.541718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575199, 35.458477, 39.740700>,  <27.024817, 35.334991, 39.278702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575199, 35.458477, 39.740700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.243160, 35.662460, 39.830925>,  <27.043936, 35.784851, 39.885059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.243160, 35.662460, 39.830925>,  <27.575199, 35.458477, 39.740700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243160, 35.662460, 39.830925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014665, -0.424331, 0.905388,
		0.557424, 0.748254, 0.359715,
		-0.830098, 0.509961, 0.225559,
		26.994131, 35.815449, 39.898594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111713, 35.934814, 40.227554>,  <27.575199, 35.458477, 39.740700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111713, 35.934814, 40.227554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.246426, 35.581665, 40.096642>,  <28.327253, 35.369774, 40.018093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.246426, 35.581665, 40.096642>,  <28.111713, 35.934814, 40.227554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246426, 35.581665, 40.096642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657698, -0.028162, 0.752755,
		-0.673805, -0.468764, 0.571180,
		0.336779, -0.882875, -0.327280,
		28.347460, 35.316803, 39.998459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964865, 36.724503, 40.199688>,  <28.111713, 35.934814, 40.227554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964865, 36.724503, 40.199688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069105, 37.063503, 40.014721>,  <28.131649, 37.266903, 39.903740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.069105, 37.063503, 40.014721>,  <27.964865, 36.724503, 40.199688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069105, 37.063503, 40.014721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749838, 0.479379, 0.456003,
		0.608136, 0.227904, 0.760414,
		0.260602, 0.847500, -0.462419,
		28.147285, 37.317753, 39.875996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173306, 37.232841, 40.681976>,  <27.964865, 36.724503, 40.199688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173306, 37.232841, 40.681976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011221, 37.406055, 40.359913>,  <27.913969, 37.509983, 40.166676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.011221, 37.406055, 40.359913>,  <28.173306, 37.232841, 40.681976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011221, 37.406055, 40.359913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678338, 0.448026, 0.582349,
		0.612911, 0.782146, 0.112200,
		-0.405213, 0.433037, -0.805159,
		27.889658, 37.535965, 40.118366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502764, 36.931458, 41.292744>,  <28.173306, 37.232841, 40.681976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502764, 36.931458, 41.292744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.662535, 36.587128, 41.418873>,  <28.758398, 36.380527, 41.494553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.662535, 36.587128, 41.418873>,  <28.502764, 36.931458, 41.292744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662535, 36.587128, 41.418873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912683, -0.340968, 0.225281,
		-0.086412, -0.377776, -0.921856,
		0.399429, -0.860829, 0.315326,
		28.782364, 36.328880, 41.513470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281670, 37.210915, 40.952423>,  <28.502764, 36.931458, 41.292744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281670, 37.210915, 40.952423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451628, 36.867035, 41.065830>,  <29.553602, 36.660706, 41.133873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451628, 36.867035, 41.065830>,  <29.281670, 37.210915, 40.952423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451628, 36.867035, 41.065830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199660, -0.216478, -0.955653,
		0.882950, 0.462658, 0.079667,
		0.424895, -0.859700, 0.283513,
		29.579096, 36.609123, 41.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988901, 37.778828, 41.262608>,  <29.281670, 37.210915, 40.952423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988901, 37.778828, 41.262608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.374128, 37.873024, 41.314823>,  <29.605265, 37.929543, 41.346153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.374128, 37.873024, 41.314823>,  <28.988901, 37.778828, 41.262608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374128, 37.873024, 41.314823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172130, 0.165653, 0.971046,
		0.207055, -0.957653, 0.200072,
		0.963068, 0.235498, 0.130542,
		29.663050, 37.943672, 41.353985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224777, 37.445808, 41.827248>,  <28.988901, 37.778828, 41.262608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224777, 37.445808, 41.827248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495308, 37.737885, 41.788464>,  <29.657627, 37.913132, 41.765194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.495308, 37.737885, 41.788464>,  <29.224777, 37.445808, 41.827248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495308, 37.737885, 41.788464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034472, 0.100118, 0.994378,
		0.735794, -0.675868, 0.042542,
		0.676328, 0.730191, -0.096964,
		29.698206, 37.956944, 41.759373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839912, 37.241226, 42.165634>,  <29.224777, 37.445808, 41.827248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839912, 37.241226, 42.165634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741405, 37.628254, 42.143135>,  <29.682302, 37.860470, 42.129635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741405, 37.628254, 42.143135>,  <29.839912, 37.241226, 42.165634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741405, 37.628254, 42.143135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033982, 0.066616, 0.997200,
		0.968606, 0.243665, -0.049285,
		-0.246266, 0.967569, -0.056244,
		29.667526, 37.918526, 42.126263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239016, 37.634834, 42.675999>,  <29.839912, 37.241226, 42.165634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239016, 37.634834, 42.675999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894449, 37.827095, 42.610359>,  <29.687710, 37.942451, 42.570976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.894449, 37.827095, 42.610359>,  <30.239016, 37.634834, 42.675999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894449, 37.827095, 42.610359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092306, 0.169559, 0.981188,
		0.499439, 0.860360, -0.101694,
		-0.861418, 0.480656, -0.164100,
		29.636024, 37.971291, 42.561131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992174, 37.903301, 43.321751>,  <30.239016, 37.634834, 42.675999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992174, 37.903301, 43.321751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910345, 37.555454, 43.142014>,  <29.861248, 37.346745, 43.034172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.910345, 37.555454, 43.142014>,  <29.992174, 37.903301, 43.321751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910345, 37.555454, 43.142014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542947, -0.482774, 0.687123,
		-0.814468, -0.103405, 0.570920,
		-0.204573, -0.869619, -0.449347,
		29.848972, 37.294567, 43.007210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847496, 37.445107, 43.814426>,  <29.992174, 37.903301, 43.321751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847496, 37.445107, 43.814426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.959032, 37.229221, 43.496693>,  <30.025953, 37.099689, 43.306053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.959032, 37.229221, 43.496693>,  <29.847496, 37.445107, 43.814426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959032, 37.229221, 43.496693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574522, -0.569042, 0.588316,
		-0.769528, -0.620406, 0.151405,
		0.278838, -0.539711, -0.794331,
		30.042685, 37.067307, 43.258392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798201, 36.665741, 43.935638>,  <29.847496, 37.445107, 43.814426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798201, 36.665741, 43.935638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086555, 36.770317, 43.678898>,  <30.259569, 36.833061, 43.524853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086555, 36.770317, 43.678898>,  <29.798201, 36.665741, 43.935638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086555, 36.770317, 43.678898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672579, -0.487348, 0.556893,
		-0.167210, -0.833151, -0.527162,
		0.720887, 0.261441, -0.641849,
		30.302822, 36.848751, 43.486343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184320, 36.106529, 43.663883>,  <29.798201, 36.665741, 43.935638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184320, 36.106529, 43.663883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423197, 36.426445, 43.688229>,  <30.566523, 36.618393, 43.702835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423197, 36.426445, 43.688229>,  <30.184320, 36.106529, 43.663883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423197, 36.426445, 43.688229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674304, -0.541687, 0.501885,
		0.434370, -0.258680, -0.862790,
		0.597190, 0.799787, 0.060863,
		30.602354, 36.666382, 43.706486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937492, 35.973404, 43.478790>,  <30.184320, 36.106529, 43.663883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937492, 35.973404, 43.478790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892021, 36.264599, 43.749233>,  <30.864738, 36.439316, 43.911499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892021, 36.264599, 43.749233>,  <30.937492, 35.973404, 43.478790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892021, 36.264599, 43.749233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688356, -0.432998, 0.581962,
		0.716411, 0.531555, -0.451891,
		-0.113677, 0.727985, 0.676103,
		30.857918, 36.482994, 43.952065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680111, 36.191559, 43.627483>,  <30.937492, 35.973404, 43.478790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680111, 36.191559, 43.627483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386845, 36.204300, 43.899204>,  <31.210884, 36.211945, 44.062237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386845, 36.204300, 43.899204>,  <31.680111, 36.191559, 43.627483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386845, 36.204300, 43.899204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474849, -0.691086, 0.544902,
		0.486812, 0.722070, 0.491558,
		-0.733166, 0.031849, 0.679303,
		31.166895, 36.213856, 44.102997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939325, 36.088978, 44.371971>,  <31.680111, 36.191559, 43.627483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939325, 36.088978, 44.371971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555855, 35.975193, 44.373753>,  <31.325773, 35.906921, 44.374821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.555855, 35.975193, 44.373753>,  <31.939325, 36.088978, 44.371971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555855, 35.975193, 44.373753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239265, -0.797676, 0.553593,
		-0.153926, 0.531781, 0.832776,
		-0.958676, -0.284466, 0.004453,
		31.268251, 35.889854, 44.375088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644934, 36.016205, 45.136929>,  <31.939325, 36.088978, 44.371971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644934, 36.016205, 45.136929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013657, 36.031689, 45.291210>,  <32.234890, 36.040977, 45.383781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013657, 36.031689, 45.291210>,  <31.644934, 36.016205, 45.136929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013657, 36.031689, 45.291210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382486, -0.070965, 0.921232,
		0.063027, -0.996728, -0.050613,
		0.921809, 0.038704, 0.385707,
		32.290199, 36.043301, 45.406921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567245, 35.739410, 45.718197>,  <31.644934, 36.016205, 45.136929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567245, 35.739410, 45.718197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931505, 35.884365, 45.797592>,  <32.150059, 35.971336, 45.845230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.931505, 35.884365, 45.797592>,  <31.567245, 35.739410, 45.718197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931505, 35.884365, 45.797592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280097, 0.188269, 0.941329,
		0.303756, -0.912814, 0.272950,
		0.910647, 0.362387, 0.198489,
		32.204700, 35.993080, 45.857140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782423, 35.498482, 46.398193>,  <31.567245, 35.739410, 45.718197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782423, 35.498482, 46.398193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969252, 35.838852, 46.302055>,  <32.081348, 36.043076, 46.244373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969252, 35.838852, 46.302055>,  <31.782423, 35.498482, 46.398193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969252, 35.838852, 46.302055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035255, 0.253684, 0.966645,
		0.883516, -0.459966, 0.088489,
		0.467072, 0.850926, -0.240349,
		32.109375, 36.094131, 46.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982489, 35.888866, 46.880501>,  <31.782423, 35.498482, 46.398193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982489, 35.888866, 46.880501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974285, 36.210728, 47.117859>,  <31.969362, 36.403843, 47.260273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974285, 36.210728, 47.117859>,  <31.982489, 35.888866, 46.880501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974285, 36.210728, 47.117859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805709, -0.338108, 0.486330,
		0.591957, 0.488076, -0.641381,
		-0.020510, 0.804652, 0.593392,
		31.968132, 36.452122, 47.295876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403328, 35.336441, 47.124146>,  <31.982489, 35.888866, 46.880501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403328, 35.336441, 47.124146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360680, 35.001659, 47.338860>,  <32.335091, 34.800789, 47.467686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.360680, 35.001659, 47.338860>,  <32.403328, 35.336441, 47.124146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360680, 35.001659, 47.338860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463692, 0.519414, 0.717774,
		-0.879558, -0.172372, -0.443470,
		-0.106620, -0.836957, 0.536782,
		32.328693, 34.750572, 47.499893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744886, 35.126530, 47.346027>,  <32.403328, 35.336441, 47.124146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744886, 35.126530, 47.346027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981461, 35.022720, 47.651405>,  <32.123405, 34.960434, 47.834633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.981461, 35.022720, 47.651405>,  <31.744886, 35.126530, 47.346027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981461, 35.022720, 47.651405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112133, 0.911123, 0.396587,
		-0.798517, -0.320164, 0.509771,
		0.591436, -0.259519, 0.763448,
		32.158890, 34.944866, 47.880440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622999, 35.667561, 47.830540>,  <31.744886, 35.126530, 47.346027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622999, 35.667561, 47.830540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958427, 35.487785, 47.953701>,  <32.159683, 35.379921, 48.027596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958427, 35.487785, 47.953701>,  <31.622999, 35.667561, 47.830540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958427, 35.487785, 47.953701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241511, 0.813283, 0.529380,
		-0.488333, -0.369562, 0.790541,
		0.838572, -0.449438, 0.307900,
		32.209999, 35.352955, 48.046070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640247, 35.645592, 48.540897>,  <31.622999, 35.667561, 47.830540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640247, 35.645592, 48.540897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025177, 35.653809, 48.432449>,  <32.256134, 35.658737, 48.367378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025177, 35.653809, 48.432449>,  <31.640247, 35.645592, 48.540897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025177, 35.653809, 48.432449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134030, 0.831738, 0.538746,
		0.236569, -0.554788, 0.797650,
		0.962326, 0.020542, -0.271122,
		32.313873, 35.659973, 48.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997206, 35.747532, 49.124729>,  <31.640247, 35.645592, 48.540897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997206, 35.747532, 49.124729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188286, 35.914120, 48.815315>,  <32.302933, 36.014072, 48.629665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188286, 35.914120, 48.815315>,  <31.997206, 35.747532, 49.124729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188286, 35.914120, 48.815315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139994, 0.905331, 0.400971,
		0.867297, -0.083253, 0.490780,
		0.477700, 0.416467, -0.773536,
		32.331596, 36.039059, 48.583256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111752, 35.598438, 49.914059>,  <31.997206, 35.747532, 49.124729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111752, 35.598438, 49.914059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235920, 35.303871, 50.154503>,  <32.310421, 35.127132, 50.298771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.235920, 35.303871, 50.154503>,  <32.111752, 35.598438, 49.914059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.235920, 35.303871, 50.154503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929569, 0.102886, -0.353999,
		0.198844, 0.668662, 0.716486,
		0.310422, -0.736414, 0.601109,
		32.329048, 35.082947, 50.334835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695042, 35.823971, 50.273373>,  <32.111752, 35.598438, 49.914059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695042, 35.823971, 50.273373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715820, 35.424690, 50.285301>,  <32.728287, 35.185120, 50.292458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715820, 35.424690, 50.285301>,  <32.695042, 35.823971, 50.273373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715820, 35.424690, 50.285301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913293, 0.035410, -0.405762,
		0.403978, 0.048314, 0.913492,
		0.051951, -0.998204, 0.029820,
		32.731407, 35.125229, 50.294247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335735, 35.655487, 50.724514>,  <32.695042, 35.823971, 50.273373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335735, 35.655487, 50.724514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245514, 35.343182, 50.491440>,  <33.191380, 35.155796, 50.351593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.245514, 35.343182, 50.491440>,  <33.335735, 35.655487, 50.724514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245514, 35.343182, 50.491440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973153, -0.152445, -0.172433,
		0.045802, -0.605940, 0.794191,
		-0.225554, -0.780768, -0.582690,
		33.177849, 35.108952, 50.316631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766560, 35.025711, 50.797695>,  <33.335735, 35.655487, 50.724514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766560, 35.025711, 50.797695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632343, 34.985020, 50.423088>,  <33.551811, 34.960606, 50.198326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632343, 34.985020, 50.423088>,  <33.766560, 35.025711, 50.797695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632343, 34.985020, 50.423088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905174, -0.310160, -0.290623,
		-0.260904, -0.945225, 0.196159,
		-0.335545, -0.101733, -0.936515,
		33.531681, 34.954498, 50.142132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283161, 34.613899, 50.534714>,  <33.766560, 35.025711, 50.797695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283161, 34.613899, 50.534714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081062, 34.690548, 50.198139>,  <33.959805, 34.736538, 49.996197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.081062, 34.690548, 50.198139>,  <34.283161, 34.613899, 50.534714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081062, 34.690548, 50.198139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796964, -0.270398, -0.540123,
		-0.331020, -0.943486, -0.016097,
		-0.505247, 0.191620, -0.841432,
		33.929489, 34.748035, 49.945709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505733, 34.086948, 50.132553>,  <34.283161, 34.613899, 50.534714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505733, 34.086948, 50.132553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354263, 34.336884, 49.859444>,  <34.263382, 34.486843, 49.695576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354263, 34.336884, 49.859444>,  <34.505733, 34.086948, 50.132553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354263, 34.336884, 49.859444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721375, -0.262926, -0.640694,
		-0.579849, -0.735153, -0.351178,
		-0.378674, 0.624836, -0.682778,
		34.240662, 34.524334, 49.654610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507683, 33.696590, 49.492176>,  <34.505733, 34.086948, 50.132553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507683, 33.696590, 49.492176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471687, 34.077820, 49.376553>,  <34.450092, 34.306557, 49.307178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471687, 34.077820, 49.376553>,  <34.507683, 33.696590, 49.492176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471687, 34.077820, 49.376553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642059, -0.166356, -0.748389,
		-0.761356, -0.252933, -0.596960,
		-0.089984, 0.953074, -0.289054,
		34.444691, 34.363743, 49.289837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320576, 33.729065, 48.802032>,  <34.507683, 33.696590, 49.492176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320576, 33.729065, 48.802032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458729, 34.103653, 48.826492>,  <34.541618, 34.328407, 48.841167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458729, 34.103653, 48.826492>,  <34.320576, 33.729065, 48.802032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458729, 34.103653, 48.826492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514559, -0.134476, -0.846844,
		-0.784820, 0.323948, -0.528313,
		0.345379, 0.936469, 0.061151,
		34.562344, 34.384594, 48.844837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277576, 34.018669, 48.165089>,  <34.320576, 33.729065, 48.802032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277576, 34.018669, 48.165089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548531, 34.253399, 48.342533>,  <34.711102, 34.394238, 48.449001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.548531, 34.253399, 48.342533>,  <34.277576, 34.018669, 48.165089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548531, 34.253399, 48.342533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585383, -0.064792, -0.808164,
		-0.445505, 0.807121, -0.387404,
		0.677386, 0.586820, 0.443610,
		34.751747, 34.429443, 48.475616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468678, 34.526482, 47.727573>,  <34.277576, 34.018669, 48.165089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468678, 34.526482, 47.727573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772820, 34.538330, 47.987106>,  <34.955307, 34.545437, 48.142826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772820, 34.538330, 47.987106>,  <34.468678, 34.526482, 47.727573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772820, 34.538330, 47.987106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648130, 0.030380, -0.760924,
		-0.042248, 0.999099, 0.003904,
		0.760357, 0.029618, 0.648830,
		35.000927, 34.547215, 48.181755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943394, 34.981552, 47.453903>,  <34.468678, 34.526482, 47.727573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943394, 34.981552, 47.453903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149818, 34.788383, 47.736877>,  <35.273674, 34.672482, 47.906662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.149818, 34.788383, 47.736877>,  <34.943394, 34.981552, 47.453903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149818, 34.788383, 47.736877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803372, -0.013586, -0.595323,
		0.297106, 0.875558, 0.380955,
		0.516064, -0.482923, 0.707435,
		35.304638, 34.643505, 47.949108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572311, 35.260036, 47.391323>,  <34.943394, 34.981552, 47.453903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572311, 35.260036, 47.391323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625977, 34.902710, 47.562897>,  <35.658176, 34.688313, 47.665840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625977, 34.902710, 47.562897>,  <35.572311, 35.260036, 47.391323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625977, 34.902710, 47.562897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696148, -0.223093, -0.682354,
		0.705251, 0.390150, 0.591950,
		0.134161, -0.893316, 0.428938,
		35.666225, 34.634716, 47.691578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260437, 35.194553, 47.438229>,  <35.572311, 35.260036, 47.391323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260437, 35.194553, 47.438229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103649, 34.826576, 47.441299>,  <36.009575, 34.605789, 47.443142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103649, 34.826576, 47.441299>,  <36.260437, 35.194553, 47.438229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103649, 34.826576, 47.441299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627059, -0.273264, -0.729469,
		0.673170, -0.281114, 0.683971,
		-0.391969, -0.919947, 0.007679,
		35.986057, 34.550591, 47.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874554, 35.435291, 47.360592>,  <36.260437, 35.194553, 47.438229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874554, 35.435291, 47.360592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270355, 35.390400, 47.324196>,  <37.507835, 35.363464, 47.302357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270355, 35.390400, 47.324196>,  <36.874554, 35.435291, 47.360592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270355, 35.390400, 47.324196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096654, -0.982300, 0.160453,
		-0.107391, -0.149975, -0.982840,
		0.989508, -0.112226, -0.090995,
		37.567207, 35.356731, 47.296898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960102, 34.749386, 46.996773>,  <36.874554, 35.435291, 47.360592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960102, 34.749386, 46.996773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298038, 34.853813, 47.183571>,  <37.500801, 34.916470, 47.295650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.298038, 34.853813, 47.183571>,  <36.960102, 34.749386, 46.996773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298038, 34.853813, 47.183571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140414, -0.950461, 0.277321,
		0.516258, -0.168721, -0.839649,
		0.844844, 0.261068, 0.466992,
		37.551491, 34.932133, 47.323669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593792, 34.277256, 46.825241>,  <36.960102, 34.749386, 46.996773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593792, 34.277256, 46.825241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614216, 34.426865, 47.195644>,  <37.626469, 34.516628, 47.417889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.614216, 34.426865, 47.195644>,  <37.593792, 34.277256, 46.825241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614216, 34.426865, 47.195644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122129, -0.922602, 0.365911,
		0.991200, 0.094410, -0.092787,
		0.051060, 0.374023, 0.926013,
		37.629536, 34.539070, 47.473450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267357, 34.070431, 47.058872>,  <37.593792, 34.277256, 46.825241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267357, 34.070431, 47.058872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958126, 34.115955, 47.308479>,  <37.772587, 34.143272, 47.458244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.958126, 34.115955, 47.308479>,  <38.267357, 34.070431, 47.058872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958126, 34.115955, 47.308479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102716, -0.948324, 0.300217,
		0.625937, 0.296188, 0.721440,
		-0.773080, 0.113813, 0.624015,
		37.726204, 34.150101, 47.495686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373478, 33.824883, 47.864822>,  <38.267357, 34.070431, 47.058872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373478, 33.824883, 47.864822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987270, 33.804119, 47.762783>,  <37.755547, 33.791660, 47.701561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.987270, 33.804119, 47.762783>,  <38.373478, 33.824883, 47.864822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987270, 33.804119, 47.762783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011739, -0.987602, 0.156537,
		-0.260063, 0.148145, 0.954160,
		-0.965520, -0.051910, -0.255100,
		37.697613, 33.788548, 47.686253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562851, 33.597408, 48.552101>,  <38.373478, 33.824883, 47.864822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562851, 33.597408, 48.552101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879734, 33.576439, 48.795296>,  <39.069866, 33.563858, 48.941212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.879734, 33.576439, 48.795296>,  <38.562851, 33.597408, 48.552101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879734, 33.576439, 48.795296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607487, 0.026895, 0.793874,
		-0.057969, -0.998263, -0.010539,
		0.792211, -0.052423, 0.607991,
		39.117397, 33.560711, 48.977692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436062, 33.041615, 49.034599>,  <38.562851, 33.597408, 48.552101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436062, 33.041615, 49.034599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672157, 33.333164, 49.173370>,  <38.813816, 33.508095, 49.256634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.672157, 33.333164, 49.173370>,  <38.436062, 33.041615, 49.034599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672157, 33.333164, 49.173370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607323, 0.117847, 0.785666,
		0.531767, -0.674430, 0.512220,
		0.590240, 0.728874, 0.346930,
		38.849228, 33.551826, 49.277451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735672, 32.948284, 49.712353>,  <38.436062, 33.041615, 49.034599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735672, 32.948284, 49.712353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667278, 33.341389, 49.684223>,  <38.626244, 33.577251, 49.667347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667278, 33.341389, 49.684223>,  <38.735672, 32.948284, 49.712353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667278, 33.341389, 49.684223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418256, -0.007775, 0.908296,
		0.892091, 0.184715, 0.412375,
		-0.170982, 0.982761, -0.070323,
		38.615982, 33.636215, 49.663128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732571, 33.192158, 50.364075>,  <38.735672, 32.948284, 49.712353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732571, 33.192158, 50.364075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547657, 33.492981, 50.176159>,  <38.436707, 33.673473, 50.063408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547657, 33.492981, 50.176159>,  <38.732571, 33.192158, 50.364075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547657, 33.492981, 50.176159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591420, 0.133245, 0.795279,
		0.660692, 0.645489, 0.383185,
		-0.462286, 0.752057, -0.469789,
		38.408970, 33.718597, 50.035221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750095, 33.732464, 50.832954>,  <38.732571, 33.192158, 50.364075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750095, 33.732464, 50.832954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437103, 33.785889, 50.589684>,  <38.249306, 33.817944, 50.443722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437103, 33.785889, 50.589684>,  <38.750095, 33.732464, 50.832954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437103, 33.785889, 50.589684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590137, 0.152527, 0.792764,
		0.198646, 0.979233, -0.040531,
		-0.782482, 0.133561, -0.608180,
		38.202358, 33.825958, 50.407230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488190, 34.410946, 51.005085>,  <38.750095, 33.732464, 50.832954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488190, 34.410946, 51.005085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197891, 34.185753, 50.846924>,  <38.023712, 34.050636, 50.752026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.197891, 34.185753, 50.846924>,  <38.488190, 34.410946, 51.005085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197891, 34.185753, 50.846924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641552, 0.346321, 0.684451,
		-0.248395, 0.750412, -0.612522,
		-0.725749, -0.562979, -0.395404,
		37.980167, 34.016861, 50.728302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843079, 34.785824, 51.242764>,  <38.488190, 34.410946, 51.005085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843079, 34.785824, 51.242764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700394, 34.438038, 51.106064>,  <37.614784, 34.229366, 51.024044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.700394, 34.438038, 51.106064>,  <37.843079, 34.785824, 51.242764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700394, 34.438038, 51.106064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779372, 0.075254, 0.622026,
		-0.515109, 0.488233, -0.704479,
		-0.356709, -0.869462, -0.341751,
		37.593380, 34.177200, 51.003540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085796, 34.850372, 51.045269>,  <37.843079, 34.785824, 51.242764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085796, 34.850372, 51.045269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152691, 34.463787, 51.123226>,  <37.192829, 34.231834, 51.169998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.152691, 34.463787, 51.123226>,  <37.085796, 34.850372, 51.045269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152691, 34.463787, 51.123226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774787, -0.006585, 0.632188,
		-0.609702, -0.256723, -0.749904,
		0.167236, -0.966463, 0.194891,
		37.202862, 34.173847, 51.181694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519917, 34.572620, 50.868290>,  <37.085796, 34.850372, 51.045269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519917, 34.572620, 50.868290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686325, 34.299988, 51.109081>,  <36.786171, 34.136410, 51.253555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.686325, 34.299988, 51.109081>,  <36.519917, 34.572620, 50.868290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686325, 34.299988, 51.109081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810551, 0.022150, 0.585249,
		-0.412228, -0.731409, -0.543240,
		0.416024, -0.681579, 0.601975,
		36.811131, 34.095512, 51.289673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958969, 34.216648, 50.957161>,  <36.519917, 34.572620, 50.868290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958969, 34.216648, 50.957161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221004, 34.112614, 51.240913>,  <36.378223, 34.050194, 51.411163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.221004, 34.112614, 51.240913>,  <35.958969, 34.216648, 50.957161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221004, 34.112614, 51.240913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726825, 0.039518, 0.685685,
		-0.206368, -0.964777, -0.163147,
		0.655086, -0.260083, 0.709380,
		36.417530, 34.034588, 51.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638035, 33.698982, 51.352364>,  <35.958969, 34.216648, 50.957161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638035, 33.698982, 51.352364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919792, 33.876396, 51.574036>,  <36.088844, 33.982845, 51.707039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919792, 33.876396, 51.574036>,  <35.638035, 33.698982, 51.352364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919792, 33.876396, 51.574036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672430, 0.166936, 0.721090,
		0.227319, -0.880572, 0.415836,
		0.704389, 0.443538, 0.554175,
		36.131111, 34.009457, 51.740288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393299, 33.601234, 52.036732>,  <35.638035, 33.698982, 51.352364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393299, 33.601234, 52.036732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679005, 33.878445, 52.075798>,  <35.850430, 34.044769, 52.099239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679005, 33.878445, 52.075798>,  <35.393299, 33.601234, 52.036732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679005, 33.878445, 52.075798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519831, 0.431893, 0.737051,
		0.468617, -0.577218, 0.668744,
		0.714264, 0.693028, 0.097663,
		35.893284, 34.086353, 52.105099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349903, 33.689556, 52.729492>,  <35.393299, 33.601234, 52.036732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349903, 33.689556, 52.729492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554276, 34.003815, 52.589947>,  <35.676899, 34.192371, 52.506218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.554276, 34.003815, 52.589947>,  <35.349903, 33.689556, 52.729492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554276, 34.003815, 52.589947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440313, 0.587743, 0.678736,
		0.738290, -0.193177, 0.646227,
		0.510932, 0.785646, -0.348867,
		35.707554, 34.239510, 52.485287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612125, 34.069656, 53.302437>,  <35.349903, 33.689556, 52.729492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612125, 34.069656, 53.302437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619839, 34.328911, 52.997925>,  <35.624466, 34.484463, 52.815216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.619839, 34.328911, 52.997925>,  <35.612125, 34.069656, 53.302437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619839, 34.328911, 52.997925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276123, 0.735263, 0.618987,
		0.960929, 0.198271, 0.193143,
		0.019284, 0.648134, -0.761282,
		35.625626, 34.523350, 52.769539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855988, 34.659199, 53.522823>,  <35.612125, 34.069656, 53.302437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855988, 34.659199, 53.522823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696575, 34.816681, 53.191483>,  <35.600929, 34.911171, 52.992676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696575, 34.816681, 53.191483>,  <35.855988, 34.659199, 53.522823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696575, 34.816681, 53.191483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271937, 0.811842, 0.516685,
		0.875913, 0.431175, -0.216482,
		-0.398530, 0.393701, -0.828355,
		35.577015, 34.934792, 52.942974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210770, 35.321297, 53.444691>,  <35.855988, 34.659199, 53.522823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210770, 35.321297, 53.444691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848877, 35.320473, 53.274296>,  <35.631741, 35.319977, 53.172058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848877, 35.320473, 53.274296>,  <36.210770, 35.321297, 53.444691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848877, 35.320473, 53.274296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262423, 0.790406, 0.553527,
		0.335559, 0.612580, -0.715644,
		-0.904729, -0.002061, -0.425983,
		35.577457, 35.319855, 53.146500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106812, 36.050926, 53.294228>,  <36.210770, 35.321297, 53.444691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106812, 36.050926, 53.294228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733543, 35.908524, 53.274418>,  <35.509583, 35.823082, 53.262531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733543, 35.908524, 53.274418>,  <36.106812, 36.050926, 53.294228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733543, 35.908524, 53.274418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307484, 0.719331, 0.622910,
		-0.186139, 0.596508, -0.780724,
		-0.933170, -0.356008, -0.049521,
		35.453594, 35.801720, 53.259560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661381, 36.590717, 53.191723>,  <36.106812, 36.050926, 53.294228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661381, 36.590717, 53.191723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410835, 36.311337, 53.330196>,  <35.260509, 36.143707, 53.413280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.410835, 36.311337, 53.330196>,  <35.661381, 36.590717, 53.191723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410835, 36.311337, 53.330196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380178, 0.661396, 0.646545,
		-0.680542, 0.273359, -0.679807,
		-0.626360, -0.698448, 0.346183,
		35.222927, 36.101803, 53.434052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995953, 36.950779, 53.277916>,  <35.661381, 36.590717, 53.191723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995953, 36.950779, 53.277916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974987, 36.632950, 53.519878>,  <34.962410, 36.442253, 53.665054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974987, 36.632950, 53.519878>,  <34.995953, 36.950779, 53.277916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974987, 36.632950, 53.519878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243307, 0.597646, 0.763950,
		-0.968532, -0.107140, -0.224647,
		-0.052410, -0.794569, 0.604908,
		34.959263, 36.394581, 53.701351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335171, 37.052753, 53.587868>,  <34.995953, 36.950779, 53.277916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335171, 37.052753, 53.587868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516552, 36.791481, 53.830433>,  <34.625381, 36.634716, 53.975971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.516552, 36.791481, 53.830433>,  <34.335171, 37.052753, 53.587868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516552, 36.791481, 53.830433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262488, 0.552334, 0.791219,
		-0.851752, -0.517955, 0.079004,
		0.453452, -0.653184, 0.606408,
		34.652588, 36.595524, 54.012356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883629, 36.908997, 54.136757>,  <34.335171, 37.052753, 53.587868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883629, 36.908997, 54.136757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255215, 36.850792, 54.272903>,  <34.478165, 36.815868, 54.354591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.255215, 36.850792, 54.272903>,  <33.883629, 36.908997, 54.136757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255215, 36.850792, 54.272903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179277, 0.627594, 0.757618,
		-0.323857, -0.764820, 0.556926,
		0.928965, -0.145516, 0.340365,
		34.533905, 36.807137, 54.375011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769924, 36.901550, 54.912659>,  <33.883629, 36.908997, 54.136757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769924, 36.901550, 54.912659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169292, 36.879181, 54.910408>,  <34.408913, 36.865761, 54.909058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169292, 36.879181, 54.910408>,  <33.769924, 36.901550, 54.912659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169292, 36.879181, 54.910408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030945, 0.463446, 0.885585,
		-0.046916, -0.884359, 0.464444,
		0.998420, -0.055921, -0.005624,
		34.468819, 36.862404, 54.908722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937889, 36.715191, 55.603489>,  <33.769924, 36.901550, 54.912659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937889, 36.715191, 55.603489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261929, 36.883324, 55.439995>,  <34.456352, 36.984203, 55.341900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.261929, 36.883324, 55.439995>,  <33.937889, 36.715191, 55.603489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261929, 36.883324, 55.439995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022049, 0.674812, 0.737660,
		0.585884, -0.606587, 0.537394,
		0.810095, 0.420335, -0.408736,
		34.504955, 37.009422, 55.317375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519714, 36.548759, 55.958572>,  <33.937889, 36.715191, 55.603489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519714, 36.548759, 55.958572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563816, 36.908241, 55.788788>,  <34.590275, 37.123932, 55.686916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563816, 36.908241, 55.788788>,  <34.519714, 36.548759, 55.958572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563816, 36.908241, 55.788788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082172, 0.433844, 0.897233,
		0.990501, -0.064043, 0.121681,
		0.110252, 0.898709, -0.424461,
		34.596893, 37.177853, 55.661449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880871, 36.916904, 56.467499>,  <34.519714, 36.548759, 55.958572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880871, 36.916904, 56.467499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724712, 37.187515, 56.217731>,  <34.631016, 37.349880, 56.067871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724712, 37.187515, 56.217731>,  <34.880871, 36.916904, 56.467499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724712, 37.187515, 56.217731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231665, 0.584230, 0.777822,
		0.891023, 0.448316, -0.071354,
		-0.390397, 0.676526, -0.624421,
		34.607594, 37.390472, 56.030403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192657, 37.591621, 56.630360>,  <34.880871, 36.916904, 56.467499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192657, 37.591621, 56.630360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855186, 37.681740, 56.435444>,  <34.652702, 37.735813, 56.318497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.855186, 37.681740, 56.435444>,  <35.192657, 37.591621, 56.630360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855186, 37.681740, 56.435444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209653, 0.697329, 0.685404,
		0.494220, 0.680421, -0.541086,
		-0.843678, 0.225300, -0.487286,
		34.602081, 37.749329, 56.289257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148849, 38.332211, 56.659126>,  <35.192657, 37.591621, 56.630360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148849, 38.332211, 56.659126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777653, 38.198280, 56.593750>,  <34.554935, 38.117924, 56.554523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777653, 38.198280, 56.593750>,  <35.148849, 38.332211, 56.659126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777653, 38.198280, 56.593750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355705, 0.665596, 0.656092,
		-0.110890, 0.666988, -0.736770,
		-0.927997, -0.334827, -0.163443,
		34.499252, 38.097832, 56.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698875, 38.967270, 56.689976>,  <35.148849, 38.332211, 56.659126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698875, 38.967270, 56.689976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439606, 38.667763, 56.745419>,  <34.284042, 38.488060, 56.778687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439606, 38.667763, 56.745419>,  <34.698875, 38.967270, 56.689976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439606, 38.667763, 56.745419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487945, 0.548144, 0.679299,
		-0.584615, 0.372674, -0.720652,
		-0.648179, -0.748767, 0.138609,
		34.245152, 38.443134, 56.787003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014732, 39.291332, 56.684708>,  <34.698875, 38.967270, 56.689976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014732, 39.291332, 56.684708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983990, 38.926533, 56.845882>,  <33.965546, 38.707653, 56.942585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983990, 38.926533, 56.845882>,  <34.014732, 39.291332, 56.684708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983990, 38.926533, 56.845882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504060, 0.384222, 0.773497,
		-0.860242, -0.143654, -0.489231,
		-0.076857, -0.911996, 0.402934,
		33.960934, 38.652935, 56.966763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335854, 39.324371, 56.974159>,  <34.014732, 39.291332, 56.684708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335854, 39.324371, 56.974159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493397, 39.008125, 57.161694>,  <33.587925, 38.818378, 57.274216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.493397, 39.008125, 57.161694>,  <33.335854, 39.324371, 56.974159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493397, 39.008125, 57.161694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465237, 0.268432, 0.843503,
		-0.792734, -0.550343, -0.262097,
		0.393861, -0.790611, 0.468836,
		33.611557, 38.770943, 57.302345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826015, 38.928970, 57.350735>,  <33.335854, 39.324371, 56.974159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826015, 38.928970, 57.350735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154003, 38.817307, 57.550621>,  <33.350796, 38.750309, 57.670551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154003, 38.817307, 57.550621>,  <32.826015, 38.928970, 57.350735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154003, 38.817307, 57.550621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499347, 0.077910, 0.862892,
		-0.279821, -0.957078, -0.075515,
		0.819972, -0.279163, 0.499715,
		33.399994, 38.733559, 57.700535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554512, 38.495594, 57.860516>,  <32.826015, 38.928970, 57.350735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554512, 38.495594, 57.860516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910477, 38.638802, 57.973568>,  <33.124054, 38.724728, 58.041401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910477, 38.638802, 57.973568>,  <32.554512, 38.495594, 57.860516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910477, 38.638802, 57.973568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367585, 0.196022, 0.909097,
		0.270072, -0.912906, 0.306045,
		0.889912, 0.358019, 0.282630,
		33.177448, 38.746208, 58.058357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634773, 38.095585, 58.465748>,  <32.554512, 38.495594, 57.860516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634773, 38.095585, 58.465748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847111, 38.434334, 58.452995>,  <32.974514, 38.637585, 58.445343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847111, 38.434334, 58.452995>,  <32.634773, 38.095585, 58.465748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847111, 38.434334, 58.452995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275200, 0.207843, 0.938651,
		0.801544, -0.489500, 0.343390,
		0.530841, 0.846871, -0.031885,
		33.006363, 38.688396, 58.443428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910065, 38.168941, 59.081421>,  <32.634773, 38.095585, 58.465748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910065, 38.168941, 59.081421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977539, 38.541695, 58.952965>,  <33.018024, 38.765347, 58.875889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.977539, 38.541695, 58.952965>,  <32.910065, 38.168941, 59.081421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977539, 38.541695, 58.952965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036250, 0.331459, 0.942773,
		0.985003, -0.147393, 0.089694,
		0.168689, 0.931885, -0.321144,
		33.028145, 38.821259, 58.856621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425629, 38.357357, 59.597485>,  <32.910065, 38.168941, 59.081421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425629, 38.357357, 59.597485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210480, 38.663578, 59.456276>,  <33.081390, 38.847313, 59.371552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.210480, 38.663578, 59.456276>,  <33.425629, 38.357357, 59.597485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210480, 38.663578, 59.456276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014244, 0.426944, 0.904166,
		0.842908, 0.481294, -0.240544,
		-0.537869, 0.765555, -0.353020,
		33.049118, 38.893246, 59.350368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636856, 38.885567, 59.997677>,  <33.425629, 38.357357, 59.597485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636856, 38.885567, 59.997677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308548, 39.023888, 59.815792>,  <33.111565, 39.106880, 59.706661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308548, 39.023888, 59.815792>,  <33.636856, 38.885567, 59.997677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308548, 39.023888, 59.815792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098381, 0.698515, 0.708800,
		0.562727, 0.626495, -0.539298,
		-0.820767, 0.345804, -0.454709,
		33.062317, 39.127628, 59.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625107, 39.517128, 60.152176>,  <33.636856, 38.885567, 59.997677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625107, 39.517128, 60.152176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256851, 39.483250, 59.999733>,  <33.035896, 39.462921, 59.908268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.256851, 39.483250, 59.999733>,  <33.625107, 39.517128, 60.152176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256851, 39.483250, 59.999733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346887, 0.625360, 0.698996,
		0.179129, 0.775727, -0.605112,
		-0.920642, -0.084695, -0.381110,
		32.980659, 39.457840, 59.885399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323036, 40.178226, 60.027863>,  <33.625107, 39.517128, 60.152176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323036, 40.178226, 60.027863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026550, 39.918110, 60.094463>,  <32.848660, 39.762039, 60.134422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.026550, 39.918110, 60.094463>,  <33.323036, 40.178226, 60.027863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026550, 39.918110, 60.094463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450163, 0.665525, 0.595339,
		-0.497955, 0.366321, -0.786034,
		-0.741211, -0.650296, 0.166498,
		32.804188, 39.723022, 60.144413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806889, 40.571518, 60.139111>,  <33.323036, 40.178226, 60.027863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806889, 40.571518, 60.139111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660625, 40.224155, 60.273071>,  <32.572868, 40.015736, 60.353447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.660625, 40.224155, 60.273071>,  <32.806889, 40.571518, 60.139111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660625, 40.224155, 60.273071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438883, 0.478179, 0.760741,
		-0.820778, 0.131187, -0.555980,
		-0.365657, -0.868409, 0.334903,
		32.550930, 39.963631, 60.373543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147541, 40.736866, 60.244930>,  <32.806889, 40.571518, 60.139111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147541, 40.736866, 60.244930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223618, 40.417130, 60.472923>,  <32.269264, 40.225288, 60.609718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.223618, 40.417130, 60.472923>,  <32.147541, 40.736866, 60.244930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223618, 40.417130, 60.472923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498402, 0.421588, 0.757535,
		-0.845826, -0.428160, -0.318209,
		0.190193, -0.799339, 0.569986,
		32.280674, 40.177326, 60.643921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515959, 40.542290, 60.591408>,  <32.147541, 40.736866, 60.244930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515959, 40.542290, 60.591408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813723, 40.386932, 60.808666>,  <31.992380, 40.293716, 60.939022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813723, 40.386932, 60.808666>,  <31.515959, 40.542290, 60.591408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813723, 40.386932, 60.808666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413654, 0.370299, 0.831726,
		-0.524164, -0.843818, 0.114993,
		0.744407, -0.388394, 0.543146,
		32.037045, 40.270412, 60.971611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224924, 40.175724, 61.128826>,  <31.515959, 40.542290, 60.591408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224924, 40.175724, 61.128826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595537, 40.232391, 61.268238>,  <31.817905, 40.266392, 61.351883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595537, 40.232391, 61.268238>,  <31.224924, 40.175724, 61.128826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595537, 40.232391, 61.268238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371585, 0.489544, 0.788841,
		-0.058863, -0.860393, 0.506221,
		0.926531, 0.141670, 0.348526,
		31.873497, 40.274891, 61.372795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306519, 39.839535, 61.847092>,  <31.224924, 40.175724, 61.128826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306519, 39.839535, 61.847092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573820, 40.135361, 61.814899>,  <31.734201, 40.312859, 61.795586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.573820, 40.135361, 61.814899>,  <31.306519, 39.839535, 61.847092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573820, 40.135361, 61.814899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378686, 0.431281, 0.818898,
		0.640341, -0.516753, 0.568269,
		0.668252, 0.739569, -0.080480,
		31.774296, 40.357231, 61.790756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580853, 39.961601, 62.542049>,  <31.306519, 39.839535, 61.847092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580853, 39.961601, 62.542049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691092, 40.294476, 62.349586>,  <31.757235, 40.494202, 62.234108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691092, 40.294476, 62.349586>,  <31.580853, 39.961601, 62.542049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691092, 40.294476, 62.349586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186192, 0.537277, 0.822597,
		0.943069, -0.137115, 0.303018,
		0.275595, 0.832185, -0.481159,
		31.773769, 40.544132, 62.205238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098808, 40.318378, 62.996220>,  <31.580853, 39.961601, 62.542049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098808, 40.318378, 62.996220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914379, 40.565041, 62.740986>,  <31.803722, 40.713039, 62.587845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.914379, 40.565041, 62.740986>,  <32.098808, 40.318378, 62.996220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914379, 40.565041, 62.740986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326422, 0.550792, 0.768164,
		0.825143, 0.562463, -0.052665,
		-0.461071, 0.616655, -0.638083,
		31.776058, 40.750038, 62.549561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336838, 41.024376, 63.129940>,  <32.098808, 40.318378, 62.996220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336838, 41.024376, 63.129940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984266, 41.039825, 62.941647>,  <31.772722, 41.049095, 62.828671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.984266, 41.039825, 62.941647>,  <32.336838, 41.024376, 63.129940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984266, 41.039825, 62.941647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322933, 0.678016, 0.660309,
		0.344667, 0.734031, -0.585152,
		-0.881430, 0.038622, -0.470733,
		31.719837, 41.051411, 62.800426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231449, 41.714783, 62.946362>,  <32.336838, 41.024376, 63.129940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231449, 41.714783, 62.946362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875877, 41.544842, 63.014851>,  <31.662535, 41.442879, 63.055943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875877, 41.544842, 63.014851>,  <32.231449, 41.714783, 62.946362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875877, 41.544842, 63.014851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169734, 0.652708, 0.738351,
		-0.425444, 0.627277, -0.652320,
		-0.888925, -0.424848, 0.171221,
		31.609200, 41.417389, 63.066216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818659, 42.221012, 63.165134>,  <32.231449, 41.714783, 62.946362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818659, 42.221012, 63.165134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586895, 41.909264, 63.260521>,  <31.447836, 41.722214, 63.317753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.586895, 41.909264, 63.260521>,  <31.818659, 42.221012, 63.165134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586895, 41.909264, 63.260521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444262, 0.547305, 0.709287,
		-0.683312, 0.305025, -0.663358,
		-0.579410, -0.779369, 0.238469,
		31.413073, 41.675453, 63.332062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071360, 42.499245, 63.266823>,  <31.818659, 42.221012, 63.165134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071360, 42.499245, 63.266823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678291, 42.510403, 63.340122>,  <30.442450, 42.517097, 63.384102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.678291, 42.510403, 63.340122>,  <31.071360, 42.499245, 63.266823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678291, 42.510403, 63.340122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182671, 0.022125, -0.982925,
		-0.031474, -0.999366, -0.016646,
		-0.982670, 0.027896, 0.183252,
		30.383490, 42.518768, 63.395100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758080, 41.914501, 63.032543>,  <31.071360, 42.499245, 63.266823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758080, 41.914501, 63.032543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471943, 42.191673, 62.996483>,  <30.300261, 42.357979, 62.974846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.471943, 42.191673, 62.996483>,  <30.758080, 41.914501, 63.032543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471943, 42.191673, 62.996483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026539, -0.155867, -0.987421,
		-0.698271, -0.703951, 0.129888,
		-0.715342, 0.692935, -0.090155,
		30.257339, 42.399555, 62.969437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461571, 41.695568, 62.447063>,  <30.758080, 41.914501, 63.032543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461571, 41.695568, 62.447063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333017, 42.065712, 62.527481>,  <30.255886, 42.287800, 62.575729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.333017, 42.065712, 62.527481>,  <30.461571, 41.695568, 62.447063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333017, 42.065712, 62.527481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002059, 0.212986, -0.977053,
		-0.946947, -0.313595, -0.070356,
		-0.321384, 0.925362, 0.201041,
		30.236603, 42.343319, 62.587791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940067, 41.932995, 61.992996>,  <30.461571, 41.695568, 62.447063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940067, 41.932995, 61.992996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167553, 42.232918, 62.128258>,  <30.304045, 42.412872, 62.209415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.167553, 42.232918, 62.128258>,  <29.940067, 41.932995, 61.992996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167553, 42.232918, 62.128258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004362, 0.408363, -0.912809,
		-0.822523, 0.520604, 0.228972,
		0.568715, 0.749808, 0.338159,
		30.338167, 42.457859, 62.229706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593752, 42.595963, 61.983040>,  <29.940067, 41.932995, 61.992996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593752, 42.595963, 61.983040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984369, 42.646534, 61.913326>,  <30.218740, 42.676876, 61.871498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.984369, 42.646534, 61.913326>,  <29.593752, 42.595963, 61.983040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.984369, 42.646534, 61.913326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214833, 0.518199, -0.827839,
		-0.014347, 0.845864, 0.533205,
		0.976545, 0.126427, -0.174285,
		30.277332, 42.684464, 61.861042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858789, 43.233265, 61.771286>,  <29.593752, 42.595963, 61.983040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858789, 43.233265, 61.771286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832825, 43.533272, 62.034576>,  <29.817245, 43.713276, 62.192551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832825, 43.533272, 62.034576>,  <29.858789, 43.233265, 61.771286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832825, 43.533272, 62.034576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802924, -0.352421, 0.480743,
		0.592537, 0.559714, -0.579327,
		-0.064912, 0.750013, 0.658230,
		29.813351, 43.758274, 62.232044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347946, 43.804054, 61.785309>,  <29.858789, 43.233265, 61.771286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347946, 43.804054, 61.785309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218187, 43.729866, 62.156334>,  <30.140333, 43.685352, 62.378948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.218187, 43.729866, 62.156334>,  <30.347946, 43.804054, 61.785309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218187, 43.729866, 62.156334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904002, -0.349467, 0.246278,
		0.278474, 0.918408, 0.281033,
		-0.324396, -0.185472, 0.927560,
		30.120869, 43.674225, 62.434601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787037, 44.082989, 61.252117>,  <30.347946, 43.804054, 61.785309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787037, 44.082989, 61.252117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806366, 43.703693, 61.377655>,  <30.817963, 43.476116, 61.452980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.806366, 43.703693, 61.377655>,  <30.787037, 44.082989, 61.252117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806366, 43.703693, 61.377655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462486, -0.257261, -0.848483,
		0.885309, 0.186150, 0.426118,
		0.048322, -0.948243, 0.313847,
		30.820862, 43.419220, 61.471809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477694, 43.729271, 61.380123>,  <30.787037, 44.082989, 61.252117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477694, 43.729271, 61.380123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247246, 43.417259, 61.282440>,  <31.108976, 43.230053, 61.223831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247246, 43.417259, 61.282440>,  <31.477694, 43.729271, 61.380123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247246, 43.417259, 61.282440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483758, -0.084580, -0.871105,
		0.658835, -0.619997, 0.426075,
		-0.576120, -0.780032, -0.244204,
		31.074409, 43.183250, 61.209179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879652, 43.304085, 61.154366>,  <31.477694, 43.729271, 61.380123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879652, 43.304085, 61.154366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547922, 43.146282, 60.996078>,  <31.348885, 43.051601, 60.901108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547922, 43.146282, 60.996078>,  <31.879652, 43.304085, 61.154366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547922, 43.146282, 60.996078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503801, -0.221611, -0.834909,
		0.241679, -0.891771, 0.382538,
		-0.829323, -0.394503, -0.395716,
		31.299126, 43.027931, 60.877365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182671, 42.683784, 60.909382>,  <31.879652, 43.304085, 61.154366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182671, 42.683784, 60.909382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.829275, 42.738533, 60.730179>,  <31.617237, 42.771381, 60.622658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.829275, 42.738533, 60.730179>,  <32.182671, 42.683784, 60.909382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829275, 42.738533, 60.730179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387627, -0.323400, -0.863225,
		-0.263029, -0.936312, 0.232670,
		-0.883494, 0.136864, -0.448003,
		31.564228, 42.779594, 60.595779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037495, 41.996944, 60.661125>,  <32.182671, 42.683784, 60.909382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037495, 41.996944, 60.661125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830503, 42.257809, 60.439529>,  <31.706310, 42.414326, 60.306572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.830503, 42.257809, 60.439529>,  <32.037495, 41.996944, 60.661125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830503, 42.257809, 60.439529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390535, -0.396060, -0.831035,
		-0.761383, -0.646391, -0.049741,
		-0.517473, 0.652162, -0.553992,
		31.675261, 42.453457, 60.273331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646591, 41.606052, 60.211277>,  <32.037495, 41.996944, 60.661125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646591, 41.606052, 60.211277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658293, 41.971390, 60.048820>,  <31.665314, 42.190590, 59.951347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658293, 41.971390, 60.048820>,  <31.646591, 41.606052, 60.211277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658293, 41.971390, 60.048820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236795, -0.401085, -0.884906,
		-0.971119, -0.070285, -0.228008,
		0.029255, 0.913340, -0.406145,
		31.667068, 42.245392, 59.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124458, 41.606956, 59.630550>,  <31.646591, 41.606052, 60.211277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124458, 41.606956, 59.630550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371481, 41.910706, 59.548592>,  <31.519693, 42.092953, 59.499416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371481, 41.910706, 59.548592>,  <31.124458, 41.606956, 59.630550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371481, 41.910706, 59.548592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026228, -0.280245, -0.959570,
		-0.786090, 0.587214, -0.192983,
		0.617555, 0.759370, -0.204896,
		31.556747, 42.138515, 59.487122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888031, 41.857533, 58.989063>,  <31.124458, 41.606956, 59.630550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888031, 41.857533, 58.989063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262148, 41.995720, 59.019733>,  <31.486618, 42.078632, 59.038136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262148, 41.995720, 59.019733>,  <30.888031, 41.857533, 58.989063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262148, 41.995720, 59.019733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208306, -0.362318, -0.908479,
		-0.286072, 0.865665, -0.410836,
		0.935292, 0.345470, 0.076675,
		31.542736, 42.099361, 59.042736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044262, 42.450630, 58.450977>,  <30.888031, 41.857533, 58.989063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044262, 42.450630, 58.450977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384968, 42.272179, 58.560863>,  <31.589392, 42.165108, 58.626793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.384968, 42.272179, 58.560863>,  <31.044262, 42.450630, 58.450977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384968, 42.272179, 58.560863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216614, -0.177560, -0.959975,
		0.477048, 0.877180, -0.054602,
		0.851765, -0.446126, 0.274714,
		31.640497, 42.138340, 58.643276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403830, 42.581768, 57.875744>,  <31.044262, 42.450630, 58.450977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403830, 42.581768, 57.875744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.608286, 42.275745, 58.032421>,  <31.730959, 42.092133, 58.126427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.608286, 42.275745, 58.032421>,  <31.403830, 42.581768, 57.875744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608286, 42.275745, 58.032421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245814, -0.306565, -0.919562,
		0.823596, 0.566309, 0.031364,
		0.511141, -0.765057, 0.391692,
		31.761629, 42.046227, 58.149929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001659, 42.645130, 57.557186>,  <31.403830, 42.581768, 57.875744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001659, 42.645130, 57.557186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993475, 42.274277, 57.706856>,  <31.988564, 42.051765, 57.796658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993475, 42.274277, 57.706856>,  <32.001659, 42.645130, 57.557186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993475, 42.274277, 57.706856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336826, -0.358766, -0.870537,
		0.941344, 0.108217, 0.319624,
		-0.020463, -0.927134, 0.374172,
		31.987335, 41.996136, 57.819107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694588, 42.383705, 57.404335>,  <32.001659, 42.645130, 57.557186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694588, 42.383705, 57.404335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459015, 42.064194, 57.453514>,  <32.317673, 41.872486, 57.483021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459015, 42.064194, 57.453514>,  <32.694588, 42.383705, 57.404335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459015, 42.064194, 57.453514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325262, -0.373527, -0.868725,
		0.739844, -0.471625, 0.479793,
		-0.588928, -0.798779, 0.122950,
		32.282337, 41.824558, 57.490398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193989, 41.882462, 57.351635>,  <32.694588, 42.383705, 57.404335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193989, 41.882462, 57.351635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834179, 41.749222, 57.238564>,  <32.618294, 41.669277, 57.170719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.834179, 41.749222, 57.238564>,  <33.193989, 41.882462, 57.351635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834179, 41.749222, 57.238564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410023, -0.420315, -0.809455,
		0.150814, -0.844026, 0.514660,
		-0.899520, -0.333099, -0.282681,
		32.564323, 41.649292, 57.153759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290440, 41.195629, 57.230305>,  <33.193989, 41.882462, 57.351635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290440, 41.195629, 57.230305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941029, 41.268894, 57.049904>,  <32.731384, 41.312855, 56.941662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.941029, 41.268894, 57.049904>,  <33.290440, 41.195629, 57.230305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941029, 41.268894, 57.049904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358626, -0.384337, -0.850690,
		-0.329155, -0.904840, 0.270039,
		-0.873524, 0.183166, -0.451005,
		32.678970, 41.323845, 56.914604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055241, 40.594749, 56.850552>,  <33.290440, 41.195629, 57.230305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055241, 40.594749, 56.850552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884796, 40.908333, 56.669956>,  <32.782528, 41.096481, 56.561600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.884796, 40.908333, 56.669956>,  <33.055241, 40.594749, 56.850552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884796, 40.908333, 56.669956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462132, -0.240415, -0.853601,
		-0.777731, -0.572376, -0.259847,
		-0.426110, 0.783956, -0.451491,
		32.756962, 41.143520, 56.534508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786953, 40.267479, 56.252815>,  <33.055241, 40.594749, 56.850552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786953, 40.267479, 56.252815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769650, 40.658398, 56.169853>,  <32.759266, 40.892948, 56.120075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.769650, 40.658398, 56.169853>,  <32.786953, 40.267479, 56.252815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769650, 40.658398, 56.169853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398960, -0.173428, -0.900419,
		-0.915947, -0.121696, -0.382401,
		-0.043258, 0.977299, -0.207402,
		32.756672, 40.951588, 56.107632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370670, 40.409145, 55.616673>,  <32.786953, 40.267479, 56.252815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370670, 40.409145, 55.616673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624344, 40.709351, 55.691006>,  <32.776546, 40.889473, 55.735607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.624344, 40.709351, 55.691006>,  <32.370670, 40.409145, 55.616673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624344, 40.709351, 55.691006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369979, -0.083527, -0.925277,
		-0.678914, 0.655551, -0.330648,
		0.634185, 0.750517, 0.185833,
		32.814598, 40.934505, 55.746754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333885, 40.814728, 55.007793>,  <32.370670, 40.409145, 55.616673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333885, 40.814728, 55.007793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668354, 40.912861, 55.204006>,  <32.869038, 40.971741, 55.321732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.668354, 40.912861, 55.204006>,  <32.333885, 40.814728, 55.007793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668354, 40.912861, 55.204006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536000, -0.175977, -0.825673,
		-0.116246, 0.953332, -0.278649,
		0.836176, 0.245337, 0.490529,
		32.919209, 40.986462, 55.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699932, 41.185890, 54.527069>,  <32.333885, 40.814728, 55.007793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699932, 41.185890, 54.527069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974895, 41.083057, 54.798767>,  <33.139874, 41.021358, 54.961788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974895, 41.083057, 54.798767>,  <32.699932, 41.185890, 54.527069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974895, 41.083057, 54.798767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606158, -0.312083, -0.731558,
		0.400052, 0.914611, -0.058696,
		0.687409, -0.257082, 0.679248,
		33.181118, 41.005932, 55.002541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252457, 41.590271, 54.350315>,  <32.699932, 41.185890, 54.527069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252457, 41.590271, 54.350315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406361, 41.290440, 54.565758>,  <33.498703, 41.110542, 54.695023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.406361, 41.290440, 54.565758>,  <33.252457, 41.590271, 54.350315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406361, 41.290440, 54.565758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595645, -0.244124, -0.765252,
		0.705100, 0.615258, 0.352551,
		0.384761, -0.749574, 0.538607,
		33.521790, 41.065567, 54.727341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982643, 41.639008, 54.326504>,  <33.252457, 41.590271, 54.350315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982643, 41.639008, 54.326504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969967, 41.261086, 54.456940>,  <33.962360, 41.034332, 54.535202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969967, 41.261086, 54.456940>,  <33.982643, 41.639008, 54.326504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969967, 41.261086, 54.456940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634251, -0.271155, -0.724017,
		0.772477, 0.183879, 0.607838,
		-0.031687, -0.944809, 0.326087,
		33.960461, 40.977642, 54.554768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619026, 41.421520, 54.144726>,  <33.982643, 41.639008, 54.326504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619026, 41.421520, 54.144726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387272, 41.099590, 54.196220>,  <34.248219, 40.906433, 54.227116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.387272, 41.099590, 54.196220>,  <34.619026, 41.421520, 54.144726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387272, 41.099590, 54.196220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473463, -0.460902, -0.750601,
		0.663438, -0.373933, 0.648093,
		-0.579382, -0.804825, 0.128736,
		34.213459, 40.858143, 54.234840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003895, 40.873402, 54.159115>,  <34.619026, 41.421520, 54.144726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003895, 40.873402, 54.159115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650219, 40.725105, 54.045441>,  <34.438015, 40.636127, 53.977234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650219, 40.725105, 54.045441>,  <35.003895, 40.873402, 54.159115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650219, 40.725105, 54.045441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447687, -0.498818, -0.742130,
		0.133383, -0.783408, 0.607026,
		-0.884186, -0.370745, -0.284188,
		34.384964, 40.613880, 53.960186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134369, 40.071590, 54.044456>,  <35.003895, 40.873402, 54.159115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134369, 40.071590, 54.044456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785870, 40.167358, 53.873062>,  <34.576771, 40.224819, 53.770226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.785870, 40.167358, 53.873062>,  <35.134369, 40.071590, 54.044456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785870, 40.167358, 53.873062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202392, -0.620062, -0.757998,
		-0.447167, -0.747128, 0.491773,
		-0.871251, 0.239421, -0.428484,
		34.524494, 40.239185, 53.744518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852242, 39.396328, 53.767635>,  <35.134369, 40.071590, 54.044456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852242, 39.396328, 53.767635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656437, 39.675312, 53.558285>,  <34.538956, 39.842705, 53.432674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.656437, 39.675312, 53.558285>,  <34.852242, 39.396328, 53.767635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656437, 39.675312, 53.558285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147940, -0.525079, -0.838096,
		-0.859357, -0.487685, 0.153848,
		-0.489509, 0.697464, -0.523379,
		34.509583, 39.884552, 53.401272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481384, 38.975079, 53.251862>,  <34.852242, 39.396328, 53.767635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481384, 38.975079, 53.251862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480247, 39.354965, 53.126617>,  <34.479565, 39.582897, 53.051472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480247, 39.354965, 53.126617>,  <34.481384, 38.975079, 53.251862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480247, 39.354965, 53.126617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011255, -0.313058, -0.949667,
		-0.999933, -0.006224, -0.009799,
		-0.002843, 0.949714, -0.313107,
		34.479393, 39.639881, 53.032684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108028, 38.961544, 52.644154>,  <34.481384, 38.975079, 53.251862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108028, 38.961544, 52.644154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319138, 39.297573, 52.593964>,  <34.445801, 39.499191, 52.563850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.319138, 39.297573, 52.593964>,  <34.108028, 38.961544, 52.644154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319138, 39.297573, 52.593964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148333, -0.236614, -0.960214,
		-0.836336, 0.488158, -0.249488,
		0.527769, 0.840069, -0.125479,
		34.477467, 39.549595, 52.556320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812801, 39.327892, 52.075157>,  <34.108028, 38.961544, 52.644154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812801, 39.327892, 52.075157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182354, 39.478115, 52.104572>,  <34.404083, 39.568249, 52.122219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182354, 39.478115, 52.104572>,  <33.812801, 39.327892, 52.075157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182354, 39.478115, 52.104572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174532, -0.242502, -0.954322,
		-0.340567, 0.894512, -0.289588,
		0.923879, 0.375553, 0.073533,
		34.459518, 39.590782, 52.126633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920319, 39.634369, 51.503315>,  <33.812801, 39.327892, 52.075157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920319, 39.634369, 51.503315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296059, 39.588230, 51.632507>,  <34.521503, 39.560547, 51.710022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296059, 39.588230, 51.632507>,  <33.920319, 39.634369, 51.503315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296059, 39.588230, 51.632507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276731, -0.301363, -0.912469,
		0.202586, 0.946507, -0.251165,
		0.939350, -0.115349, 0.322980,
		34.577866, 39.553627, 51.729401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368298, 39.933849, 50.928165>,  <33.920319, 39.634369, 51.503315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368298, 39.933849, 50.928165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575893, 39.672085, 51.148129>,  <34.700451, 39.515026, 51.280106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.575893, 39.672085, 51.148129>,  <34.368298, 39.933849, 50.928165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575893, 39.672085, 51.148129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341511, -0.431014, -0.835223,
		0.783597, 0.621269, -0.000202,
		0.518986, -0.654409, 0.549911,
		34.731590, 39.475761, 51.313103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026005, 39.867054, 50.632690>,  <34.368298, 39.933849, 50.928165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026005, 39.867054, 50.632690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014397, 39.525585, 50.840691>,  <35.007431, 39.320702, 50.965492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014397, 39.525585, 50.840691>,  <35.026005, 39.867054, 50.632690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014397, 39.525585, 50.840691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452557, -0.475069, -0.754653,
		0.891263, 0.213427, 0.400124,
		-0.029023, -0.853674, 0.519999,
		35.005692, 39.269482, 50.996689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652252, 39.565884, 50.496708>,  <35.026005, 39.867054, 50.632690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652252, 39.565884, 50.496708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437466, 39.257462, 50.633614>,  <35.308594, 39.072411, 50.715759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.437466, 39.257462, 50.633614>,  <35.652252, 39.565884, 50.496708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437466, 39.257462, 50.633614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326848, -0.564183, -0.758201,
		0.777713, -0.295260, 0.554964,
		-0.536967, -0.771051, 0.342267,
		35.276375, 39.026146, 50.736294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114292, 38.873672, 50.512489>,  <35.652252, 39.565884, 50.496708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114292, 38.873672, 50.512489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734047, 38.749924, 50.522518>,  <35.505901, 38.675674, 50.528534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734047, 38.749924, 50.522518>,  <36.114292, 38.873672, 50.512489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734047, 38.749924, 50.522518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248337, -0.806549, -0.536477,
		0.186190, -0.503755, 0.843543,
		-0.950611, -0.309369, 0.025070,
		35.448864, 38.657112, 50.530041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138054, 38.090660, 50.746090>,  <36.114292, 38.873672, 50.512489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138054, 38.090660, 50.746090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778160, 38.144287, 50.579952>,  <35.562225, 38.176464, 50.480270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778160, 38.144287, 50.579952>,  <36.138054, 38.090660, 50.746090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778160, 38.144287, 50.579952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127171, -0.829819, -0.543350,
		-0.417505, -0.541688, 0.729564,
		-0.899732, 0.134072, -0.415340,
		35.508240, 38.184509, 50.455349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874771, 37.484741, 50.669861>,  <36.138054, 38.090660, 50.746090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874771, 37.484741, 50.669861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637825, 37.679523, 50.413116>,  <35.495659, 37.796394, 50.259071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637825, 37.679523, 50.413116>,  <35.874771, 37.484741, 50.669861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637825, 37.679523, 50.413116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083195, -0.755444, -0.649910,
		-0.801366, -0.438380, 0.406983,
		-0.592360, 0.486956, -0.641859,
		35.460117, 37.825611, 50.220558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293480, 37.093163, 50.529522>,  <35.874771, 37.484741, 50.669861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293480, 37.093163, 50.529522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301968, 37.327049, 50.205139>,  <35.307060, 37.467381, 50.010509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.301968, 37.327049, 50.205139>,  <35.293480, 37.093163, 50.529522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301968, 37.327049, 50.205139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025291, -0.811198, -0.584224,
		-0.999455, -0.008112, -0.032003,
		0.021222, 0.584715, -0.810962,
		35.308334, 37.502464, 49.961849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868340, 36.799919, 50.116829>,  <35.293480, 37.093163, 50.529522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868340, 36.799919, 50.116829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090565, 37.024002, 49.871056>,  <35.223900, 37.158451, 49.723591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.090565, 37.024002, 49.871056>,  <34.868340, 36.799919, 50.116829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090565, 37.024002, 49.871056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154573, -0.795666, -0.585682,
		-0.816981, 0.230409, -0.528634,
		0.555562, 0.560204, -0.614429,
		35.257233, 37.192062, 49.686726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556141, 36.721058, 49.462559>,  <34.868340, 36.799919, 50.116829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556141, 36.721058, 49.462559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935997, 36.826702, 49.395107>,  <35.163910, 36.890087, 49.354637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935997, 36.826702, 49.395107>,  <34.556141, 36.721058, 49.462559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935997, 36.826702, 49.395107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136970, -0.833878, -0.534684,
		-0.281833, 0.484658, -0.828056,
		0.949637, 0.264110, -0.168631,
		35.220886, 36.905933, 49.344517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630409, 36.517307, 48.783588>,  <34.556141, 36.721058, 49.462559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630409, 36.517307, 48.783588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996189, 36.590492, 48.927975>,  <35.215656, 36.634403, 49.014606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996189, 36.590492, 48.927975>,  <34.630409, 36.517307, 48.783588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996189, 36.590492, 48.927975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382923, -0.679786, -0.625508,
		0.130936, 0.710221, -0.691694,
		0.914454, 0.182965, 0.360968,
		35.270527, 36.645382, 49.036266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066383, 36.856937, 48.290600>,  <34.630409, 36.517307, 48.783588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066383, 36.856937, 48.290600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307274, 36.635410, 48.520596>,  <35.451809, 36.502495, 48.658592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.307274, 36.635410, 48.520596>,  <35.066383, 36.856937, 48.290600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307274, 36.635410, 48.520596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452433, -0.356648, -0.817378,
		0.657748, 0.752387, 0.035785,
		0.602222, -0.553819, 0.574989,
		35.487942, 36.469265, 48.693092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689476, 37.155483, 47.798706>,  <35.066383, 36.856937, 48.290600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689476, 37.155483, 47.798706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354630, 37.010105, 47.635174>,  <34.153721, 36.922878, 47.537056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.354630, 37.010105, 47.635174>,  <34.689476, 37.155483, 47.798706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354630, 37.010105, 47.635174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543352, 0.465996, 0.698295,
		-0.063281, 0.806693, -0.587573,
		-0.837116, -0.363448, -0.408830,
		34.103493, 36.901070, 47.512524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197277, 37.688896, 47.674431>,  <34.689476, 37.155483, 47.798706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197277, 37.688896, 47.674431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012608, 37.337872, 47.726177>,  <33.901806, 37.127254, 47.757225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.012608, 37.337872, 47.726177>,  <34.197277, 37.688896, 47.674431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012608, 37.337872, 47.726177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736381, 0.460471, 0.495691,
		-0.494569, 0.133589, -0.858811,
		-0.461676, -0.877565, 0.129362,
		33.874104, 37.074600, 47.764984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611195, 37.807686, 47.445496>,  <34.197277, 37.688896, 47.674431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611195, 37.807686, 47.445496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532261, 37.486065, 47.669838>,  <33.484901, 37.293091, 47.804443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.532261, 37.486065, 47.669838>,  <33.611195, 37.807686, 47.445496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532261, 37.486065, 47.669838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847050, 0.427854, 0.315352,
		-0.493524, -0.412840, -0.765504,
		-0.197334, -0.804054, 0.560852,
		33.473061, 37.244850, 47.838093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926586, 37.700851, 47.322018>,  <33.611195, 37.807686, 47.445496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926586, 37.700851, 47.322018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995518, 37.490017, 47.654881>,  <33.036877, 37.363518, 47.854599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995518, 37.490017, 47.654881>,  <32.926586, 37.700851, 47.322018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995518, 37.490017, 47.654881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745141, 0.482780, 0.460097,
		-0.644259, -0.699360, -0.309558,
		0.172325, -0.527086, 0.832156,
		33.047215, 37.331890, 47.904526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192577, 37.595871, 47.676888>,  <32.926586, 37.700851, 47.322018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192577, 37.595871, 47.676888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457798, 37.518555, 47.966164>,  <32.616928, 37.472164, 48.139729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.457798, 37.518555, 47.966164>,  <32.192577, 37.595871, 47.676888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457798, 37.518555, 47.966164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602649, 0.435248, 0.668860,
		-0.444051, -0.879317, 0.172105,
		0.663048, -0.193289, 0.723192,
		32.656712, 37.460567, 48.183121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831507, 37.362072, 48.241405>,  <32.192577, 37.595871, 47.676888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831507, 37.362072, 48.241405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158829, 37.474995, 48.441677>,  <32.355221, 37.542747, 48.561840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158829, 37.474995, 48.441677>,  <31.831507, 37.362072, 48.241405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158829, 37.474995, 48.441677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574654, 0.420514, 0.702098,
		-0.012337, -0.862248, 0.506336,
		0.818304, 0.282306, 0.500682,
		32.404320, 37.559685, 48.591881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751169, 37.182377, 48.995949>,  <31.831507, 37.362072, 48.241405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751169, 37.182377, 48.995949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050198, 37.447826, 49.006794>,  <32.229614, 37.607098, 49.013302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050198, 37.447826, 49.006794>,  <31.751169, 37.182377, 48.995949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050198, 37.447826, 49.006794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345904, 0.354165, 0.868860,
		0.566997, -0.658914, 0.494315,
		0.747573, 0.663626, 0.027111,
		32.274471, 37.646915, 49.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026901, 37.131332, 49.655788>,  <31.751169, 37.182377, 48.995949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026901, 37.131332, 49.655788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130783, 37.494514, 49.524231>,  <32.193111, 37.712425, 49.445297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130783, 37.494514, 49.524231>,  <32.026901, 37.131332, 49.655788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130783, 37.494514, 49.524231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356503, 0.406662, 0.841149,
		0.897474, -0.101199, 0.429301,
		0.259704, 0.907957, -0.328891,
		32.208694, 37.766903, 49.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169151, 37.394474, 50.295528>,  <32.026901, 37.131332, 49.655788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169151, 37.394474, 50.295528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164120, 37.719532, 50.062481>,  <32.161102, 37.914566, 49.922653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164120, 37.719532, 50.062481>,  <32.169151, 37.394474, 50.295528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164120, 37.719532, 50.062481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199825, 0.568873, 0.797781,
		0.979751, 0.126458, 0.155230,
		-0.012580, 0.812645, -0.582623,
		32.160347, 37.963326, 49.887695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646374, 37.972401, 50.509987>,  <32.169151, 37.394474, 50.295528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646374, 37.972401, 50.509987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332005, 38.130085, 50.319443>,  <32.143383, 38.224697, 50.205116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.332005, 38.130085, 50.319443>,  <32.646374, 37.972401, 50.509987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.332005, 38.130085, 50.319443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252084, 0.499199, 0.829008,
		0.564604, 0.771620, -0.292958,
		-0.785923, 0.394212, -0.476363,
		32.096226, 38.248348, 50.176533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588062, 38.537632, 50.895020>,  <32.646374, 37.972401, 50.509987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588062, 38.537632, 50.895020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243542, 38.534065, 50.691814>,  <32.036827, 38.531925, 50.569893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.243542, 38.534065, 50.691814>,  <32.588062, 38.537632, 50.895020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243542, 38.534065, 50.691814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429920, 0.545649, 0.719330,
		0.270780, 0.837966, -0.473804,
		-0.861305, -0.008918, -0.508010,
		31.985149, 38.531391, 50.539410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320736, 39.181190, 50.927979>,  <32.588062, 38.537632, 50.895020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320736, 39.181190, 50.927979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.003040, 38.960495, 50.826176>,  <31.812424, 38.828079, 50.765095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.003040, 38.960495, 50.826176>,  <32.320736, 39.181190, 50.927979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003040, 38.960495, 50.826176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584096, 0.577907, 0.569961,
		-0.167388, 0.601341, -0.781262,
		-0.794238, -0.551737, -0.254506,
		31.764769, 38.794975, 50.749825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761293, 39.591267, 50.555340>,  <32.320736, 39.181190, 50.927979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761293, 39.591267, 50.555340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576969, 39.286499, 50.737389>,  <31.466375, 39.103638, 50.846619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576969, 39.286499, 50.737389>,  <31.761293, 39.591267, 50.555340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576969, 39.286499, 50.737389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500353, 0.646581, 0.575829,
		-0.733009, 0.037624, -0.679178,
		-0.460809, -0.761917, 0.455124,
		31.438726, 39.057922, 50.873924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069395, 39.814602, 50.664265>,  <31.761293, 39.591267, 50.555340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069395, 39.814602, 50.664265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099085, 39.500267, 50.909847>,  <31.116899, 39.311665, 51.057198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.099085, 39.500267, 50.909847>,  <31.069395, 39.814602, 50.664265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099085, 39.500267, 50.909847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465081, 0.517328, 0.718381,
		-0.882151, -0.338864, -0.327080,
		0.074226, -0.785839, 0.613961,
		31.121353, 39.264515, 51.094036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351130, 39.654312, 50.887527>,  <31.069395, 39.814602, 50.664265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351130, 39.654312, 50.887527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597700, 39.514496, 51.169758>,  <30.745642, 39.430607, 51.339096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597700, 39.514496, 51.169758>,  <30.351130, 39.654312, 50.887527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597700, 39.514496, 51.169758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554198, 0.443955, 0.704108,
		-0.559362, -0.825059, 0.079948,
		0.616424, -0.349544, 0.705578,
		30.782627, 39.409634, 51.381432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979130, 39.593098, 51.452076>,  <30.351130, 39.654312, 50.887527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979130, 39.593098, 51.452076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346262, 39.568577, 51.608963>,  <30.566542, 39.553864, 51.703094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346262, 39.568577, 51.608963>,  <29.979130, 39.593098, 51.452076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346262, 39.568577, 51.608963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326949, 0.443650, 0.834433,
		-0.225158, -0.894101, 0.387152,
		0.917828, -0.061300, 0.392217,
		30.621611, 39.550186, 51.726627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841730, 39.504612, 52.164352>,  <29.979130, 39.593098, 51.452076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841730, 39.504612, 52.164352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223904, 39.622478, 52.171474>,  <30.453207, 39.693199, 52.175747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223904, 39.622478, 52.171474>,  <29.841730, 39.504612, 52.164352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223904, 39.622478, 52.171474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181857, 0.540007, 0.821779,
		0.232539, -0.788393, 0.569528,
		0.955433, 0.294669, 0.017802,
		30.510534, 39.710880, 52.176815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921772, 39.485977, 52.842724>,  <29.841730, 39.504612, 52.164352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921772, 39.485977, 52.842724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223829, 39.701210, 52.692936>,  <30.405064, 39.830349, 52.603062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.223829, 39.701210, 52.692936>,  <29.921772, 39.485977, 52.842724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223829, 39.701210, 52.692936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027126, 0.596377, 0.802246,
		0.655001, -0.595651, 0.464944,
		0.755141, 0.538084, -0.374470,
		30.450373, 39.862637, 52.580597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538050, 39.494457, 53.302582>,  <29.921772, 39.485977, 52.842724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538050, 39.494457, 53.302582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607590, 39.820019, 53.080830>,  <30.649313, 40.015358, 52.947781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.607590, 39.820019, 53.080830>,  <30.538050, 39.494457, 53.302582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607590, 39.820019, 53.080830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097866, 0.545883, 0.832126,
		0.979897, -0.198919, 0.015247,
		0.173849, 0.813906, -0.554377,
		30.659744, 40.064190, 52.914516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039660, 39.769367, 53.570011>,  <30.538050, 39.494457, 53.302582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039660, 39.769367, 53.570011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868002, 40.068722, 53.367722>,  <30.765007, 40.248333, 53.246349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.868002, 40.068722, 53.367722>,  <31.039660, 39.769367, 53.570011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868002, 40.068722, 53.367722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061385, 0.582772, 0.810314,
		0.901148, 0.316697, -0.296032,
		-0.429143, 0.748385, -0.505723,
		30.739260, 40.293236, 53.216003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385628, 40.284248, 53.742561>,  <31.039660, 39.769367, 53.570011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385628, 40.284248, 53.742561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082279, 40.483463, 53.574352>,  <30.900270, 40.602993, 53.473427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082279, 40.483463, 53.574352>,  <31.385628, 40.284248, 53.742561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082279, 40.483463, 53.574352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009216, 0.636888, 0.770901,
		0.651760, 0.588503, -0.478407,
		-0.758369, 0.498033, -0.420522,
		30.854769, 40.632874, 53.448196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537537, 41.052391, 53.821468>,  <31.385628, 40.284248, 53.742561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537537, 41.052391, 53.821468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143181, 41.011921, 53.768120>,  <30.906567, 40.987640, 53.736111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.143181, 41.011921, 53.768120>,  <31.537537, 41.052391, 53.821468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143181, 41.011921, 53.768120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166540, 0.512008, 0.842681,
		-0.016971, 0.853001, -0.521633,
		-0.985889, -0.101174, -0.133369,
		30.847414, 40.981567, 53.728107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351475, 41.618568, 54.148235>,  <31.537537, 41.052391, 53.821468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351475, 41.618568, 54.148235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995628, 41.436604, 54.132027>,  <30.782120, 41.327427, 54.122303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995628, 41.436604, 54.132027>,  <31.351475, 41.618568, 54.148235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995628, 41.436604, 54.132027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268909, 0.450026, 0.851566,
		-0.369149, 0.768463, -0.522679,
		-0.889616, -0.454908, -0.040520,
		30.728745, 41.300133, 54.119869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885721, 42.097809, 54.362324>,  <31.351475, 41.618568, 54.148235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885721, 42.097809, 54.362324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679600, 41.760090, 54.421135>,  <30.555927, 41.557457, 54.456421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679600, 41.760090, 54.421135>,  <30.885721, 42.097809, 54.362324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679600, 41.760090, 54.421135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386943, 0.382289, 0.839125,
		-0.764681, 0.375514, -0.523691,
		-0.515305, -0.844301, 0.147026,
		30.525009, 41.506798, 54.465244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252434, 42.307724, 54.505585>,  <30.885721, 42.097809, 54.362324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252434, 42.307724, 54.505585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254538, 41.930092, 54.637451>,  <30.255800, 41.703514, 54.716572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254538, 41.930092, 54.637451>,  <30.252434, 42.307724, 54.505585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254538, 41.930092, 54.637451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257522, 0.317275, 0.912699,
		-0.966258, -0.089699, -0.241452,
		0.005262, -0.944082, 0.329669,
		30.256117, 41.646866, 54.736351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510584, 42.100502, 54.820652>,  <30.252434, 42.307724, 54.505585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510584, 42.100502, 54.820652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783577, 41.859749, 54.986519>,  <29.947372, 41.715298, 55.086040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783577, 41.859749, 54.986519>,  <29.510584, 42.100502, 54.820652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783577, 41.859749, 54.986519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386778, 0.183990, 0.903632,
		-0.620178, -0.777099, -0.107226,
		0.682483, -0.601885, 0.414671,
		29.988321, 41.679184, 55.110920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089468, 41.812939, 55.342064>,  <29.510584, 42.100502, 54.820652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089468, 41.812939, 55.342064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471012, 41.746536, 55.442139>,  <29.699940, 41.706696, 55.502182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.471012, 41.746536, 55.442139>,  <29.089468, 41.812939, 55.342064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471012, 41.746536, 55.442139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228998, 0.136683, 0.963783,
		-0.194188, -0.976607, 0.092361,
		0.953861, -0.166005, 0.250183,
		29.757170, 41.696735, 55.517193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980520, 41.380043, 55.910313>,  <29.089468, 41.812939, 55.342064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980520, 41.380043, 55.910313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.336864, 41.561752, 55.909306>,  <29.550671, 41.670776, 55.908703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.336864, 41.561752, 55.909306>,  <28.980520, 41.380043, 55.910313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336864, 41.561752, 55.909306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031157, 0.066625, 0.997292,
		0.453210, -0.888368, 0.073507,
		0.890859, 0.454272, -0.002516,
		29.604122, 41.698032, 55.908550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.247831, 41.058411, 56.404079>,  <28.980520, 41.380043, 55.910313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.247831, 41.058411, 56.404079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475731, 41.385155, 56.368038>,  <29.612471, 41.581203, 56.346413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.475731, 41.385155, 56.368038>,  <29.247831, 41.058411, 56.404079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475731, 41.385155, 56.368038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019216, 0.122847, 0.992239,
		0.821593, -0.563597, 0.085689,
		0.569750, 0.816864, -0.090100,
		29.646656, 41.630215, 56.341007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726513, 41.019234, 56.917797>,  <29.247831, 41.058411, 56.404079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726513, 41.019234, 56.917797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758764, 41.404446, 56.814980>,  <29.778116, 41.635574, 56.753288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.758764, 41.404446, 56.814980>,  <29.726513, 41.019234, 56.917797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758764, 41.404446, 56.814980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171551, 0.240628, 0.955337,
		0.981870, -0.121126, -0.145807,
		0.080630, 0.963030, -0.257044,
		29.782953, 41.693356, 56.737865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252644, 41.209400, 57.306946>,  <29.726513, 41.019234, 56.917797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252644, 41.209400, 57.306946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.048630, 41.539062, 57.208450>,  <29.926222, 41.736858, 57.149353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.048630, 41.539062, 57.208450>,  <30.252644, 41.209400, 57.306946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048630, 41.539062, 57.208450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058302, 0.252494, 0.965841,
		0.858177, 0.506967, -0.080730,
		-0.510033, 0.824155, -0.246241,
		29.895620, 41.786308, 57.134579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564690, 41.721916, 57.744499>,  <30.252644, 41.209400, 57.306946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564690, 41.721916, 57.744499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198931, 41.833790, 57.627430>,  <29.979475, 41.900913, 57.557186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.198931, 41.833790, 57.627430>,  <30.564690, 41.721916, 57.744499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198931, 41.833790, 57.627430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275353, 0.100275, 0.956099,
		0.296753, 0.954841, -0.014679,
		-0.914395, 0.279684, -0.292675,
		29.924612, 41.917694, 57.539627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384884, 42.327831, 58.189743>,  <30.564690, 41.721916, 57.744499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384884, 42.327831, 58.189743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.047485, 42.163551, 58.051270>,  <29.845047, 42.064983, 57.968185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.047485, 42.163551, 58.051270>,  <30.384884, 42.327831, 58.189743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047485, 42.163551, 58.051270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440330, 0.159609, 0.883535,
		-0.307613, 0.897692, -0.315473,
		-0.843495, -0.410700, -0.346183,
		29.794437, 42.040340, 57.947414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912546, 42.889881, 58.312084>,  <30.384884, 42.327831, 58.189743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912546, 42.889881, 58.312084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721441, 42.540314, 58.276276>,  <29.606777, 42.330574, 58.254791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721441, 42.540314, 58.276276>,  <29.912546, 42.889881, 58.312084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721441, 42.540314, 58.276276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585186, 0.240591, 0.774386,
		-0.655209, 0.422361, -0.626348,
		-0.477765, -0.873914, -0.089523,
		29.578112, 42.278141, 58.249420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320053, 42.946934, 58.672840>,  <29.912546, 42.889881, 58.312084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320053, 42.946934, 58.672840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245178, 42.554779, 58.648193>,  <29.200253, 42.319485, 58.633404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.245178, 42.554779, 58.648193>,  <29.320053, 42.946934, 58.672840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245178, 42.554779, 58.648193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605657, 0.065800, 0.793000,
		-0.773395, 0.185760, -0.606097,
		-0.187189, -0.980389, -0.061618,
		29.189022, 42.260662, 58.629707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650129, 42.859676, 58.804390>,  <29.320053, 42.946934, 58.672840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650129, 42.859676, 58.804390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.774675, 42.491028, 58.897060>,  <28.849403, 42.269840, 58.952663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.774675, 42.491028, 58.897060>,  <28.650129, 42.859676, 58.804390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.774675, 42.491028, 58.897060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661954, -0.035433, 0.748706,
		-0.681812, -0.386479, -0.621101,
		0.311366, -0.921618, 0.231673,
		28.868086, 42.214542, 58.966560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061806, 42.421745, 58.831059>,  <28.650129, 42.859676, 58.804390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.061806, 42.421745, 58.831059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.348261, 42.260296, 59.058826>,  <28.520134, 42.163425, 59.195488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.348261, 42.260296, 59.058826>,  <28.061806, 42.421745, 58.831059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348261, 42.260296, 59.058826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649319, -0.086053, 0.755632,
		-0.255993, -0.910868, -0.323708,
		0.716137, -0.403626, 0.569415,
		28.563103, 42.139210, 59.229652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760752, 41.726479, 59.033348>,  <28.061806, 42.421745, 58.831059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760752, 41.726479, 59.033348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.045471, 41.859882, 59.280609>,  <28.216303, 41.939926, 59.428967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.045471, 41.859882, 59.280609>,  <27.760752, 41.726479, 59.033348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.045471, 41.859882, 59.280609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670638, 0.061104, 0.739264,
		0.208780, -0.940764, 0.267159,
		0.711797, 0.333511, 0.618154,
		28.259010, 41.959934, 59.466057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989048, 41.634884, 58.918156>,  <27.760752, 41.726479, 59.033348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989048, 41.634884, 58.918156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620947, 41.590984, 59.068405>,  <26.400085, 41.564644, 59.158554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.620947, 41.590984, 59.068405>,  <26.989048, 41.634884, 58.918156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620947, 41.590984, 59.068405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263480, -0.535930, -0.802095,
		0.289333, -0.837099, 0.464275,
		-0.920252, -0.109745, 0.375621,
		26.344872, 41.558060, 59.181091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780031, 40.877510, 58.923679>,  <26.989048, 41.634884, 58.918156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780031, 40.877510, 58.923679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.459143, 41.115669, 58.906025>,  <26.266609, 41.258564, 58.895432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.459143, 41.115669, 58.906025>,  <26.780031, 40.877510, 58.923679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459143, 41.115669, 58.906025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339833, -0.516161, -0.786187,
		-0.490867, -0.615701, 0.616410,
		-0.802224, 0.595390, -0.044131,
		26.218477, 41.294289, 58.892784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261097, 40.366253, 58.961174>,  <26.780031, 40.877510, 58.923679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261097, 40.366253, 58.961174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.130415, 40.698696, 58.781162>,  <26.052006, 40.898163, 58.673157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.130415, 40.698696, 58.781162>,  <26.261097, 40.366253, 58.961174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130415, 40.698696, 58.781162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209411, -0.527973, -0.823038,
		-0.921635, -0.174651, 0.346535,
		-0.326706, 0.831109, -0.450025,
		26.032404, 40.948029, 58.646156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729618, 40.097733, 58.605789>,  <26.261097, 40.366253, 58.961174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729618, 40.097733, 58.605789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.809597, 40.439980, 58.414818>,  <25.857584, 40.645329, 58.300236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.809597, 40.439980, 58.414818>,  <25.729618, 40.097733, 58.605789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.809597, 40.439980, 58.414818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001318, -0.487497, -0.873123,
		-0.979806, 0.173948, -0.098601,
		0.199946, 0.855622, -0.477424,
		25.869581, 40.696667, 58.271591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312193, 40.067059, 58.134956>,  <25.729618, 40.097733, 58.605789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312193, 40.067059, 58.134956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.550270, 40.357155, 57.996525>,  <25.693117, 40.531212, 57.913467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.550270, 40.357155, 57.996525>,  <25.312193, 40.067059, 58.134956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550270, 40.357155, 57.996525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017326, -0.418987, -0.907827,
		-0.803395, 0.546330, -0.236813,
		0.595194, 0.725241, -0.346078,
		25.728828, 40.574726, 57.892700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.062319, 40.245239, 57.520344>,  <25.312193, 40.067059, 58.134956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.062319, 40.245239, 57.520344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.417786, 40.420856, 57.467403>,  <25.631065, 40.526226, 57.435638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.417786, 40.420856, 57.467403>,  <25.062319, 40.245239, 57.520344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417786, 40.420856, 57.467403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055676, -0.389806, -0.919212,
		-0.455163, 0.809504, -0.370851,
		0.888666, 0.439039, -0.132356,
		25.684385, 40.552567, 57.427696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.056913, 40.686882, 56.849724>,  <25.062319, 40.245239, 57.520344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.056913, 40.686882, 56.849724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.429415, 40.597073, 56.964512>,  <25.652916, 40.543186, 57.033386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.429415, 40.597073, 56.964512>,  <25.056913, 40.686882, 56.849724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429415, 40.597073, 56.964512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200128, -0.342980, -0.917776,
		0.304487, 0.912116, -0.274468,
		0.931255, -0.224522, 0.286973,
		25.708792, 40.529716, 57.050602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571917, 40.946926, 56.373676>,  <25.056913, 40.686882, 56.849724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571917, 40.946926, 56.373676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.826408, 40.701389, 56.560616>,  <25.979103, 40.554070, 56.672779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.826408, 40.701389, 56.560616>,  <25.571917, 40.946926, 56.373676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826408, 40.701389, 56.560616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331708, -0.329273, -0.884053,
		0.696552, 0.717482, -0.005877,
		0.636227, -0.613839, 0.467351,
		26.017277, 40.517239, 56.700821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275373, 41.056503, 56.175518>,  <25.571917, 40.946926, 56.373676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275373, 41.056503, 56.175518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.256552, 40.676170, 56.297966>,  <26.245258, 40.447971, 56.371433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.256552, 40.676170, 56.297966>,  <26.275373, 41.056503, 56.175518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256552, 40.676170, 56.297966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431159, -0.295774, -0.852420,
		0.901048, 0.091874, 0.423876,
		-0.047057, -0.950830, 0.306119,
		26.242435, 40.390923, 56.389801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.943108, 40.817581, 56.035496>,  <26.275373, 41.056503, 56.175518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.943108, 40.817581, 56.035496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709841, 40.494377, 56.069061>,  <26.569880, 40.300457, 56.089199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.709841, 40.494377, 56.069061>,  <26.943108, 40.817581, 56.035496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.709841, 40.494377, 56.069061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374673, -0.359184, -0.854755,
		0.720788, -0.467025, 0.512203,
		-0.583168, -0.808006, 0.083914,
		26.534891, 40.251976, 56.094234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445869, 40.243290, 56.086819>,  <26.943108, 40.817581, 56.035496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445869, 40.243290, 56.086819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.084347, 40.119595, 55.968494>,  <26.867434, 40.045376, 55.897499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.084347, 40.119595, 55.968494>,  <27.445869, 40.243290, 56.086819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084347, 40.119595, 55.968494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414812, -0.463151, -0.783213,
		0.105196, -0.830579, 0.546876,
		-0.903806, -0.309241, -0.295813,
		26.813206, 40.026821, 55.879749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623184, 39.760719, 55.811443>,  <27.445869, 40.243290, 56.086819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623184, 39.760719, 55.811443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.249142, 39.784641, 55.671730>,  <27.024715, 39.798996, 55.587902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.249142, 39.784641, 55.671730>,  <27.623184, 39.760719, 55.811443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249142, 39.784641, 55.671730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277414, -0.489736, -0.826559,
		-0.220491, -0.869817, 0.441364,
		-0.935107, 0.059808, -0.349282,
		26.968609, 39.802586, 55.566944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450569, 39.050602, 55.635250>,  <27.623184, 39.760719, 55.811443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450569, 39.050602, 55.635250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259592, 39.336758, 55.431187>,  <27.145006, 39.508453, 55.308750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.259592, 39.336758, 55.431187>,  <27.450569, 39.050602, 55.635250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259592, 39.336758, 55.431187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319459, -0.399544, -0.859250,
		-0.818531, -0.573219, -0.037778,
		-0.477445, 0.715391, -0.510159,
		27.116358, 39.551376, 55.278137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088251, 38.751934, 55.051079>,  <27.450569, 39.050602, 55.635250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088251, 38.751934, 55.051079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125547, 39.135017, 54.942192>,  <27.147926, 39.364868, 54.876862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.125547, 39.135017, 54.942192>,  <27.088251, 38.751934, 55.051079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125547, 39.135017, 54.942192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274247, -0.287534, -0.917667,
		-0.957128, 0.010911, -0.289459,
		0.093242, 0.957708, -0.272215,
		27.153521, 39.422329, 54.860527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835217, 38.753998, 54.402836>,  <27.088251, 38.751934, 55.051079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835217, 38.753998, 54.402836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983526, 39.123665, 54.366093>,  <27.072512, 39.345467, 54.344048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.983526, 39.123665, 54.366093>,  <26.835217, 38.753998, 54.402836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983526, 39.123665, 54.366093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425214, -0.256857, -0.867881,
		-0.825662, 0.282732, -0.488206,
		0.370777, 0.924168, -0.091856,
		27.094759, 39.400917, 54.338535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689529, 38.993423, 53.740917>,  <26.835217, 38.753998, 54.402836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689529, 38.993423, 53.740917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.009251, 39.192844, 53.875118>,  <27.201084, 39.312496, 53.955639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.009251, 39.192844, 53.875118>,  <26.689529, 38.993423, 53.740917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009251, 39.192844, 53.875118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527427, -0.314469, -0.789259,
		-0.287982, 0.807810, -0.514305,
		0.799304, 0.498551, 0.335499,
		27.249043, 39.342411, 53.975769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836954, 39.387516, 53.190163>,  <26.689529, 38.993423, 53.740917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836954, 39.387516, 53.190163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.186508, 39.380241, 53.384480>,  <27.396240, 39.375877, 53.501068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.186508, 39.380241, 53.384480>,  <26.836954, 39.387516, 53.190163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186508, 39.380241, 53.384480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446484, -0.365249, -0.816851,
		0.192293, 0.930732, -0.311065,
		0.873885, -0.018189, 0.485792,
		27.448673, 39.374786, 53.530216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.288839, 39.648224, 52.728199>,  <26.836954, 39.387516, 53.190163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.288839, 39.648224, 52.728199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532789, 39.467136, 52.988380>,  <27.679159, 39.358482, 53.144489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.532789, 39.467136, 52.988380>,  <27.288839, 39.648224, 52.728199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532789, 39.467136, 52.988380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589359, -0.289626, -0.754170,
		0.529819, 0.843302, 0.090181,
		0.609875, -0.452723, 0.650458,
		27.715752, 39.331318, 53.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982496, 39.950378, 52.533512>,  <27.288839, 39.648224, 52.728199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982496, 39.950378, 52.533512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017809, 39.595085, 52.713848>,  <28.038996, 39.381908, 52.822048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.017809, 39.595085, 52.713848>,  <27.982496, 39.950378, 52.533512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017809, 39.595085, 52.713848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683571, -0.275187, -0.676020,
		0.724525, 0.367860, 0.582874,
		0.088282, -0.888229, 0.450838,
		28.044292, 39.328617, 52.849098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545355, 39.741734, 52.281670>,  <27.982496, 39.950378, 52.533512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545355, 39.741734, 52.281670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421112, 39.396500, 52.440971>,  <28.346567, 39.189358, 52.536552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.421112, 39.396500, 52.440971>,  <28.545355, 39.741734, 52.281670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421112, 39.396500, 52.440971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512820, -0.504931, -0.694306,
		0.800336, -0.011422, 0.599442,
		-0.310607, -0.863084, 0.398257,
		28.327930, 39.137573, 52.560448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172588, 39.326405, 52.395878>,  <28.545355, 39.741734, 52.281670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172588, 39.326405, 52.395878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867834, 39.067818, 52.379848>,  <28.684980, 38.912666, 52.370232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.867834, 39.067818, 52.379848>,  <29.172588, 39.326405, 52.395878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867834, 39.067818, 52.379848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576386, -0.648469, -0.497259,
		0.295477, -0.401952, 0.866676,
		-0.761887, -0.646469, -0.040071,
		28.639267, 38.873878, 52.367828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467625, 38.577446, 52.440117>,  <29.172588, 39.326405, 52.395878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467625, 38.577446, 52.440117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098787, 38.558464, 52.286495>,  <28.877485, 38.547073, 52.194324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.098787, 38.558464, 52.286495>,  <29.467625, 38.577446, 52.440117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098787, 38.558464, 52.286495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269905, -0.790062, -0.550412,
		-0.277304, -0.611187, 0.741318,
		-0.922092, -0.047454, -0.384050,
		28.822159, 38.544228, 52.171280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297380, 37.940395, 52.564823>,  <29.467625, 38.577446, 52.440117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297380, 37.940395, 52.564823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044552, 38.061455, 52.279476>,  <28.892855, 38.134090, 52.108269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.044552, 38.061455, 52.279476>,  <29.297380, 37.940395, 52.564823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044552, 38.061455, 52.279476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309726, -0.745177, -0.590577,
		-0.710318, -0.594236, 0.377270,
		-0.632075, 0.302647, -0.713362,
		28.854929, 38.152248, 52.065468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937372, 37.317207, 52.328625>,  <29.297380, 37.940395, 52.564823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937372, 37.317207, 52.328625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.949875, 37.590900, 52.037189>,  <28.957376, 37.755116, 51.862328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.949875, 37.590900, 52.037189>,  <28.937372, 37.317207, 52.328625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949875, 37.590900, 52.037189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246462, -0.711716, -0.657812,
		-0.968648, -0.159011, -0.190882,
		0.031255, 0.684234, -0.728592,
		28.959251, 37.796169, 51.818611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992123, 36.894039, 51.778694>,  <28.937372, 37.317207, 52.328625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992123, 36.894039, 51.778694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049049, 37.255836, 51.617878>,  <29.083206, 37.472916, 51.521389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.049049, 37.255836, 51.617878>,  <28.992123, 36.894039, 51.778694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049049, 37.255836, 51.617878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295834, -0.426480, -0.854750,
		-0.944578, 0.002709, -0.328275,
		0.142318, 0.904493, -0.402043,
		29.091745, 37.527184, 51.497265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496582, 36.995739, 51.236530>,  <28.992123, 36.894039, 51.778694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496582, 36.995739, 51.236530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.808952, 37.238087, 51.175758>,  <28.996374, 37.383495, 51.139297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.808952, 37.238087, 51.175758>,  <28.496582, 36.995739, 51.236530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808952, 37.238087, 51.175758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280910, -0.557896, -0.780924,
		-0.557896, 0.567165, -0.605868,
		0.780924, 0.605868, -0.151926,
		29.043230, 37.419846, 51.130180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492018, 37.229149, 50.458057>,  <28.496582, 36.995739, 51.236530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492018, 37.229149, 50.458057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861256, 37.250088, 50.610455>,  <29.082798, 37.262653, 50.701893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.861256, 37.250088, 50.610455>,  <28.492018, 37.229149, 50.458057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861256, 37.250088, 50.610455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307870, -0.694285, -0.650526,
		0.230465, 0.717793, -0.657008,
		0.923094, 0.052350, 0.380996,
		29.138184, 37.265793, 50.724754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872034, 37.244411, 49.902771>,  <28.492018, 37.229149, 50.458057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872034, 37.244411, 49.902771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125683, 37.130169, 50.190193>,  <29.277872, 37.061623, 50.362644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.125683, 37.130169, 50.190193>,  <28.872034, 37.244411, 49.902771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.125683, 37.130169, 50.190193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333826, -0.737098, -0.587576,
		0.697457, 0.612468, -0.372070,
		0.634124, -0.285603, 0.718553,
		29.315920, 37.044487, 50.405758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417482, 36.996353, 49.528587>,  <28.872034, 37.244411, 49.902771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417482, 36.996353, 49.528587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513123, 36.860485, 49.892445>,  <29.570507, 36.778965, 50.110760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513123, 36.860485, 49.892445>,  <29.417482, 36.996353, 49.528587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513123, 36.860485, 49.892445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342610, -0.847050, -0.406355,
		0.908543, 0.408812, -0.086153,
		0.239099, -0.339675, 0.909644,
		29.584852, 36.758583, 50.165337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163782, 36.831749, 49.621075>,  <29.417482, 36.996353, 49.528587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163782, 36.831749, 49.621075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966808, 36.588909, 49.870533>,  <29.848625, 36.443203, 50.020210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966808, 36.588909, 49.870533>,  <30.163782, 36.831749, 49.621075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966808, 36.588909, 49.870533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456474, -0.790240, -0.408842,
		0.741041, 0.083353, 0.666266,
		-0.492432, -0.607102, 0.623649,
		29.819078, 36.406780, 50.057629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587320, 36.265377, 49.691368>,  <30.163782, 36.831749, 49.621075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587320, 36.265377, 49.691368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239235, 36.125542, 49.830231>,  <30.030384, 36.041641, 49.913548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239235, 36.125542, 49.830231>,  <30.587320, 36.265377, 49.691368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239235, 36.125542, 49.830231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259253, -0.924111, -0.280725,
		0.418950, -0.154289, 0.894805,
		-0.870212, -0.349590, 0.347156,
		29.978170, 36.020664, 49.934376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770391, 35.706043, 50.008408>,  <30.587320, 36.265377, 49.691368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770391, 35.706043, 50.008408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378275, 35.638954, 49.966652>,  <30.143005, 35.598701, 49.941597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.378275, 35.638954, 49.966652>,  <30.770391, 35.706043, 50.008408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378275, 35.638954, 49.966652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189328, -0.948499, -0.253978,
		-0.056418, -0.268736, 0.961560,
		-0.980292, -0.167721, -0.104392,
		30.084187, 35.588638, 49.935333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537178, 35.080513, 50.310291>,  <30.770391, 35.706043, 50.008408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537178, 35.080513, 50.310291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245968, 35.098724, 50.036674>,  <30.071241, 35.109653, 49.872505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.245968, 35.098724, 50.036674>,  <30.537178, 35.080513, 50.310291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245968, 35.098724, 50.036674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218539, -0.930323, -0.294517,
		-0.649785, -0.363904, 0.667347,
		-0.728024, 0.045531, -0.684038,
		30.027561, 35.112385, 49.831463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182039, 34.540581, 50.392094>,  <30.537178, 35.080513, 50.310291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182039, 34.540581, 50.392094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082115, 34.633106, 50.015991>,  <30.022161, 34.688622, 49.790329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082115, 34.633106, 50.015991>,  <30.182039, 34.540581, 50.392094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082115, 34.633106, 50.015991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037883, -0.967970, -0.248193,
		-0.967563, -0.097612, 0.233009,
		-0.249772, 0.231315, -0.940270,
		30.007172, 34.702499, 49.733913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618616, 34.067062, 50.186035>,  <30.182039, 34.540581, 50.392094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618616, 34.067062, 50.186035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.780117, 34.211716, 49.849892>,  <29.877018, 34.298508, 49.648205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.780117, 34.211716, 49.849892>,  <29.618616, 34.067062, 50.186035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780117, 34.211716, 49.849892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064155, -0.927488, -0.368309,
		-0.912615, 0.094794, -0.397678,
		0.403755, 0.361637, -0.840358,
		29.901243, 34.320206, 49.597786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325209, 33.669094, 49.617504>,  <29.618616, 34.067062, 50.186035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325209, 33.669094, 49.617504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615879, 33.850719, 49.411293>,  <29.790281, 33.959694, 49.287567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615879, 33.850719, 49.411293>,  <29.325209, 33.669094, 49.617504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615879, 33.850719, 49.411293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066758, -0.793544, -0.604839,
		-0.683728, 0.405107, -0.606963,
		0.726677, 0.454066, -0.515525,
		29.833881, 33.986938, 49.256634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184591, 33.506336, 48.954330>,  <29.325209, 33.669094, 49.617504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184591, 33.506336, 48.954330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.574593, 33.594795, 48.962944>,  <29.808594, 33.647873, 48.968113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.574593, 33.594795, 48.962944>,  <29.184591, 33.506336, 48.954330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574593, 33.594795, 48.962944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210324, -0.887305, -0.410431,
		-0.071664, 0.404700, -0.911637,
		0.975002, 0.221152, 0.021530,
		29.867092, 33.661140, 48.969402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517504, 33.405479, 48.276321>,  <29.184591, 33.506336, 48.954330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517504, 33.405479, 48.276321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790039, 33.360210, 48.565586>,  <29.953560, 33.333050, 48.739147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790039, 33.360210, 48.565586>,  <29.517504, 33.405479, 48.276321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790039, 33.360210, 48.565586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244171, -0.896243, -0.370309,
		0.690040, 0.428882, -0.583013,
		0.681341, -0.113173, 0.723165,
		29.994442, 33.326260, 48.782536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137793, 33.242004, 47.912434>,  <29.517504, 33.405479, 48.276321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137793, 33.242004, 47.912434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204653, 33.117043, 48.286484>,  <30.244770, 33.042065, 48.510914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.204653, 33.117043, 48.286484>,  <30.137793, 33.242004, 47.912434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204653, 33.117043, 48.286484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310517, -0.883520, -0.350672,
		0.935756, 0.348988, -0.050674,
		0.167152, -0.312408, 0.935126,
		30.254799, 33.023319, 48.567020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638472, 32.740437, 47.783272>,  <30.137793, 33.242004, 47.912434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638472, 32.740437, 47.783272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567854, 32.640121, 48.163994>,  <30.525482, 32.579933, 48.392426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.567854, 32.640121, 48.163994>,  <30.638472, 32.740437, 47.783272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567854, 32.640121, 48.163994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199541, -0.956036, -0.214892,
		0.963854, 0.151986, 0.218827,
		-0.176546, -0.250790, 0.951807,
		30.514891, 32.564884, 48.449535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185177, 32.347954, 47.883572>,  <30.638472, 32.740437, 47.783272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185177, 32.347954, 47.883572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937181, 32.260601, 48.185013>,  <30.788383, 32.208191, 48.365879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.937181, 32.260601, 48.185013>,  <31.185177, 32.347954, 47.883572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937181, 32.260601, 48.185013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170076, -0.975054, -0.142631,
		0.765956, 0.039741, 0.641664,
		-0.619989, -0.218380, 0.753608,
		30.751184, 32.195087, 48.411095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842010, 31.965652, 48.238461>,  <31.185177, 32.347954, 47.883572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842010, 31.965652, 48.238461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100254, 32.173500, 48.014606>,  <32.255199, 32.298210, 47.880295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100254, 32.173500, 48.014606>,  <31.842010, 31.965652, 48.238461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100254, 32.173500, 48.014606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697378, 0.102515, -0.709333,
		-0.311212, 0.848226, 0.428555,
		0.645609, 0.519618, -0.559631,
		32.293938, 32.329384, 47.846718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294552, 31.486561, 47.940937>,  <31.842010, 31.965652, 48.238461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294552, 31.486561, 47.940937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291897, 31.153971, 47.718731>,  <32.290306, 30.954416, 47.585407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.291897, 31.153971, 47.718731>,  <32.294552, 31.486561, 47.940937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291897, 31.153971, 47.718731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997334, 0.034874, -0.064107,
		0.072677, -0.554464, 0.829028,
		-0.006633, -0.831477, -0.555520,
		32.289906, 30.904528, 47.552074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684402, 31.005396, 48.291679>,  <32.294552, 31.486561, 47.940937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684402, 31.005396, 48.291679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694443, 31.043325, 47.893608>,  <32.700466, 31.066084, 47.654766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.694443, 31.043325, 47.893608>,  <32.684402, 31.005396, 48.291679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694443, 31.043325, 47.893608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941597, 0.332155, 0.055403,
		0.335806, -0.938446, -0.080949,
		0.025105, 0.094826, -0.995177,
		32.701973, 31.071774, 47.595055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288689, 30.647249, 48.098457>,  <32.684402, 31.005396, 48.291679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288689, 30.647249, 48.098457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.199234, 30.917892, 47.817833>,  <33.145561, 31.080278, 47.649456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.199234, 30.917892, 47.817833>,  <33.288689, 30.647249, 48.098457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199234, 30.917892, 47.817833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897746, 0.423269, 0.122044,
		0.379526, -0.602533, -0.702078,
		-0.223632, 0.676607, -0.701564,
		33.132145, 31.120874, 47.607365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841251, 30.758789, 47.693859>,  <33.288689, 30.647249, 48.098457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841251, 30.758789, 47.693859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638783, 31.100199, 47.644398>,  <33.517303, 31.305044, 47.614719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.638783, 31.100199, 47.644398>,  <33.841251, 30.758789, 47.693859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638783, 31.100199, 47.644398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834809, 0.520891, 0.178233,
		0.216538, -0.013015, -0.976187,
		-0.506168, 0.853524, -0.123658,
		33.486931, 31.356256, 47.607300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102913, 31.188675, 47.065449>,  <33.841251, 30.758789, 47.693859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102913, 31.188675, 47.065449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950565, 31.378971, 47.382587>,  <33.859158, 31.493149, 47.572872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950565, 31.378971, 47.382587>,  <34.102913, 31.188675, 47.065449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950565, 31.378971, 47.382587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872547, 0.468652, 0.137940,
		-0.305946, 0.744335, -0.593601,
		-0.380866, 0.475743, 0.792850,
		33.836308, 31.521694, 47.620441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243073, 31.868614, 46.908081>,  <34.102913, 31.188675, 47.065449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243073, 31.868614, 46.908081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232624, 31.874218, 47.307907>,  <34.226353, 31.877581, 47.547802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.232624, 31.874218, 47.307907>,  <34.243073, 31.868614, 46.908081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232624, 31.874218, 47.307907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722189, 0.691635, 0.009182,
		-0.691202, 0.722112, -0.028182,
		-0.026122, 0.014006, 0.999561,
		34.224789, 31.878420, 47.607777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391891, 32.522598, 47.087795>,  <34.243073, 31.868614, 46.908081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391891, 32.522598, 47.087795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477566, 32.324547, 47.424599>,  <34.528969, 32.205715, 47.626678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477566, 32.324547, 47.424599>,  <34.391891, 32.522598, 47.087795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477566, 32.324547, 47.424599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794296, 0.590000, 0.144896,
		-0.568525, 0.637767, 0.519646,
		0.214181, -0.495129, 0.842006,
		34.541821, 32.176006, 47.677200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589867, 33.037556, 47.577183>,  <34.391891, 32.522598, 47.087795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589867, 33.037556, 47.577183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764095, 32.710224, 47.727177>,  <34.868633, 32.513824, 47.817173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.764095, 32.710224, 47.727177>,  <34.589867, 33.037556, 47.577183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764095, 32.710224, 47.727177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714545, 0.567683, 0.408854,
		-0.547451, 0.089861, 0.831999,
		0.435572, -0.818328, 0.374988,
		34.894768, 32.464725, 47.839672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937374, 33.274883, 48.238941>,  <34.589867, 33.037556, 47.577183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937374, 33.274883, 48.238941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095592, 32.926941, 48.121033>,  <35.190521, 32.718174, 48.050285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095592, 32.926941, 48.121033>,  <34.937374, 33.274883, 48.238941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095592, 32.926941, 48.121033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897515, 0.297950, 0.325105,
		-0.194967, -0.393158, 0.898563,
		0.395544, -0.869858, -0.294774,
		35.214256, 32.665985, 48.032600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432140, 33.200893, 48.690758>,  <34.937374, 33.274883, 48.238941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432140, 33.200893, 48.690758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552094, 32.938381, 48.413811>,  <35.624065, 32.780876, 48.247643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552094, 32.938381, 48.413811>,  <35.432140, 33.200893, 48.690758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552094, 32.938381, 48.413811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953818, 0.219500, 0.205061,
		0.017397, -0.721885, 0.691794,
		0.299880, -0.656278, -0.692366,
		35.642059, 32.741497, 48.206100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068478, 32.829712, 49.018509>,  <35.432140, 33.200893, 48.690758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068478, 32.829712, 49.018509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088551, 32.795902, 48.620445>,  <36.100594, 32.775616, 48.381607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.088551, 32.795902, 48.620445>,  <36.068478, 32.829712, 49.018509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088551, 32.795902, 48.620445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985839, 0.163828, 0.035800,
		0.160009, -0.982861, 0.091550,
		0.050185, -0.084525, -0.995157,
		36.103607, 32.770546, 48.321899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633572, 32.473671, 48.974892>,  <36.068478, 32.829712, 49.018509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633572, 32.473671, 48.974892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622482, 32.634453, 48.608795>,  <36.615829, 32.730923, 48.389137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.622482, 32.634453, 48.608795>,  <36.633572, 32.473671, 48.974892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622482, 32.634453, 48.608795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993097, 0.115471, 0.020628,
		0.113976, -0.908351, -0.402378,
		-0.027726, 0.401951, -0.915241,
		36.614166, 32.755039, 48.334221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308170, 32.178181, 48.545036>,  <36.633572, 32.473671, 48.974892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308170, 32.178181, 48.545036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176491, 32.497620, 48.343494>,  <37.097481, 32.689281, 48.222569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176491, 32.497620, 48.343494>,  <37.308170, 32.178181, 48.545036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176491, 32.497620, 48.343494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944005, 0.265947, -0.195262,
		-0.021937, -0.539921, -0.841430,
		-0.329202, 0.798597, -0.503853,
		37.077732, 32.737198, 48.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773460, 32.145809, 47.994377>,  <37.308170, 32.178181, 48.545036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773460, 32.145809, 47.994377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634869, 32.519661, 47.962330>,  <37.551712, 32.743973, 47.943100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.634869, 32.519661, 47.962330>,  <37.773460, 32.145809, 47.994377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634869, 32.519661, 47.962330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875600, 0.291582, -0.385103,
		-0.336566, -0.203585, -0.919389,
		-0.346478, 0.934630, -0.080122,
		37.530926, 32.800049, 47.938293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062946, 32.364647, 47.404850>,  <37.773460, 32.145809, 47.994377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062946, 32.364647, 47.404850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973610, 32.705036, 47.594994>,  <37.920006, 32.909267, 47.709080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973610, 32.705036, 47.594994>,  <38.062946, 32.364647, 47.404850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973610, 32.705036, 47.594994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669470, 0.488377, -0.559730,
		-0.708469, 0.193228, -0.678775,
		-0.223343, 0.850971, 0.475360,
		37.906609, 32.960327, 47.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111298, 32.939774, 46.849888>,  <38.062946, 32.364647, 47.404850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111298, 32.939774, 46.849888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131435, 33.131592, 47.200317>,  <38.143520, 33.246685, 47.410576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131435, 33.131592, 47.200317>,  <38.111298, 32.939774, 46.849888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131435, 33.131592, 47.200317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629332, 0.665889, -0.400665,
		-0.775503, 0.571512, -0.268269,
		0.050348, 0.479548, 0.876070,
		38.146542, 33.275455, 47.463139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545197, 32.506035, 46.710976>,  <38.111298, 32.939774, 46.849888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545197, 32.506035, 46.710976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423027, 32.782322, 46.973160>,  <37.349724, 32.948093, 47.130470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.423027, 32.782322, 46.973160>,  <37.545197, 32.506035, 46.710976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423027, 32.782322, 46.973160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924115, -0.049018, -0.378958,
		-0.229624, -0.721461, 0.653274,
		-0.305425, 0.690718, 0.655457,
		37.331398, 32.989536, 47.169796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817162, 32.265949, 46.593227>,  <37.545197, 32.506035, 46.710976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817162, 32.265949, 46.593227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916191, 32.646107, 46.517914>,  <36.975609, 32.874203, 46.472725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.916191, 32.646107, 46.517914>,  <36.817162, 32.265949, 46.593227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916191, 32.646107, 46.517914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593660, -0.302389, -0.745740,
		-0.765684, 0.072851, -0.639078,
		0.247578, 0.950396, -0.188286,
		36.990463, 32.931225, 46.461430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774010, 32.406746, 45.847645>,  <36.817162, 32.265949, 46.593227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774010, 32.406746, 45.847645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035362, 32.637650, 46.043549>,  <37.192173, 32.776192, 46.161091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.035362, 32.637650, 46.043549>,  <36.774010, 32.406746, 45.847645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035362, 32.637650, 46.043549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681997, -0.168030, -0.711791,
		-0.328591, 0.799088, -0.503474,
		0.653382, 0.577256, 0.489762,
		37.231377, 32.810825, 46.190475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058296, 32.969193, 45.362331>,  <36.774010, 32.406746, 45.847645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058296, 32.969193, 45.362331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314865, 32.856964, 45.647949>,  <37.468807, 32.789627, 45.819321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.314865, 32.856964, 45.647949>,  <37.058296, 32.969193, 45.362331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314865, 32.856964, 45.647949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719228, -0.103997, -0.686946,
		0.266994, 0.954183, 0.135087,
		0.641424, -0.280569, 0.714042,
		37.507294, 32.772793, 45.862164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642189, 32.755886, 44.976658>,  <37.058296, 32.969193, 45.362331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642189, 32.755886, 44.976658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783848, 32.736267, 45.350220>,  <37.868843, 32.724495, 45.574356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783848, 32.736267, 45.350220>,  <37.642189, 32.755886, 44.976658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783848, 32.736267, 45.350220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890734, -0.286538, -0.352830,
		0.284904, 0.956812, -0.057788,
		0.354151, -0.049049, 0.933901,
		37.890095, 32.721554, 45.630390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292370, 33.130486, 45.112957>,  <37.642189, 32.755886, 44.976658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292370, 33.130486, 45.112957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248665, 32.791790, 45.321224>,  <38.222443, 32.588573, 45.446182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.248665, 32.791790, 45.321224>,  <38.292370, 33.130486, 45.112957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248665, 32.791790, 45.321224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800489, -0.385491, -0.458927,
		0.589304, 0.366643, 0.719927,
		-0.109263, -0.846741, 0.520665,
		38.215885, 32.537769, 45.477425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861599, 32.938972, 45.482216>,  <38.292370, 33.130486, 45.112957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861599, 32.938972, 45.482216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685791, 32.590900, 45.393120>,  <38.580307, 32.382057, 45.339661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685791, 32.590900, 45.393120>,  <38.861599, 32.938972, 45.482216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685791, 32.590900, 45.393120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833478, -0.302645, -0.462299,
		0.334871, -0.388840, 0.858292,
		-0.439518, -0.870178, -0.222743,
		38.553936, 32.329845, 45.326298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217690, 32.359180, 45.773785>,  <38.861599, 32.938972, 45.482216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217690, 32.359180, 45.773785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082108, 32.261517, 45.410358>,  <39.000759, 32.202919, 45.192303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.082108, 32.261517, 45.410358>,  <39.217690, 32.359180, 45.773785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082108, 32.261517, 45.410358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879518, -0.425090, -0.213882,
		-0.334001, -0.871598, 0.358830,
		-0.338955, -0.244161, -0.908568,
		38.980423, 32.188267, 45.137787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101917, 31.529417, 45.720657>,  <39.217690, 32.359180, 45.773785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101917, 31.529417, 45.720657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278706, 31.546495, 46.079063>,  <39.384777, 31.556742, 46.294106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.278706, 31.546495, 46.079063>,  <39.101917, 31.529417, 45.720657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278706, 31.546495, 46.079063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782523, -0.506679, -0.361847,
		0.438542, 0.861077, -0.257346,
		0.441970, 0.042694, 0.896013,
		39.411297, 31.559303, 46.347866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908516, 31.757778, 45.731789>,  <39.101917, 31.529417, 45.720657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908516, 31.757778, 45.731789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804501, 31.529713, 46.043507>,  <39.742092, 31.392874, 46.230537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804501, 31.529713, 46.043507>,  <39.908516, 31.757778, 45.731789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804501, 31.529713, 46.043507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685116, -0.677661, -0.267193,
		0.680438, 0.464424, 0.566845,
		-0.260038, -0.570163, 0.779291,
		39.726490, 31.358664, 46.277294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252914, 31.686289, 45.064461>,  <39.908516, 31.757778, 45.731789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252914, 31.686289, 45.064461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.378551, 31.776072, 44.695469>,  <40.453934, 31.829941, 44.474075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.378551, 31.776072, 44.695469>,  <40.252914, 31.686289, 45.064461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378551, 31.776072, 44.695469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896528, -0.389829, 0.210405,
		-0.312381, -0.893114, -0.323676,
		0.314094, 0.224458, -0.922477,
		40.472778, 31.843409, 44.418724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560379, 31.029703, 44.850269>,  <40.252914, 31.686289, 45.064461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560379, 31.029703, 44.850269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699142, 31.358072, 44.668835>,  <40.782402, 31.555094, 44.559975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.699142, 31.358072, 44.668835>,  <40.560379, 31.029703, 44.850269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699142, 31.358072, 44.668835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937358, -0.319888, 0.137956,
		-0.031846, -0.473031, -0.880470,
		0.346909, 0.820923, -0.453586,
		40.803215, 31.604349, 44.532761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000305, 30.913498, 44.285339>,  <40.560379, 31.029703, 44.850269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000305, 30.913498, 44.285339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.129471, 31.271658, 44.407970>,  <41.206970, 31.486553, 44.481548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.129471, 31.271658, 44.407970>,  <41.000305, 30.913498, 44.285339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129471, 31.271658, 44.407970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922827, -0.369774, 0.107969,
		0.210039, 0.248051, -0.945703,
		0.322914, 0.895398, 0.306575,
		41.226345, 31.540277, 44.499943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761391, 30.608480, 44.208691>,  <41.000305, 30.913498, 44.285339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761391, 30.608480, 44.208691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144642, 30.599808, 44.322895>,  <42.374592, 30.594604, 44.391418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.144642, 30.599808, 44.322895>,  <41.761391, 30.608480, 44.208691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144642, 30.599808, 44.322895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275000, 0.347405, -0.896484,
		-0.079751, 0.937464, 0.338822,
		0.958131, -0.021680, 0.285509,
		42.432079, 30.593304, 44.408546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115078, 31.204914, 43.958839>,  <41.761391, 30.608480, 44.208691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115078, 31.204914, 43.958839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.397079, 30.926157, 44.011463>,  <42.566280, 30.758904, 44.043037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.397079, 30.926157, 44.011463>,  <42.115078, 31.204914, 43.958839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397079, 30.926157, 44.011463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383887, 0.219017, -0.897030,
		0.596320, 0.682914, 0.421937,
		0.705005, -0.696893, 0.131557,
		42.608582, 30.717089, 44.050930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827904, 31.363939, 43.935642>,  <42.115078, 31.204914, 43.958839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827904, 31.363939, 43.935642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800446, 30.999762, 43.772484>,  <42.783970, 30.781254, 43.674591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800446, 30.999762, 43.772484>,  <42.827904, 31.363939, 43.935642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800446, 30.999762, 43.772484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300179, 0.371062, -0.878752,
		0.951410, -0.182760, 0.247826,
		-0.068642, -0.910446, -0.407893,
		42.779854, 30.726627, 43.650116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550041, 30.991184, 43.777435>,  <42.827904, 31.363939, 43.935642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550041, 30.991184, 43.777435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.238605, 30.937288, 43.532276>,  <43.051743, 30.904951, 43.385181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.238605, 30.937288, 43.532276>,  <43.550041, 30.991184, 43.777435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238605, 30.937288, 43.532276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482036, 0.496936, -0.721593,
		0.401797, -0.857264, -0.321960,
		-0.778589, -0.134737, -0.612899,
		43.005028, 30.896866, 43.348408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632679, 30.774178, 42.968224>,  <43.550041, 30.991184, 43.777435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632679, 30.774178, 42.968224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325832, 31.030426, 42.981724>,  <43.141724, 31.184175, 42.989826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.325832, 31.030426, 42.981724>,  <43.632679, 30.774178, 42.968224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.325832, 31.030426, 42.981724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493867, 0.623326, -0.606268,
		-0.409429, -0.448407, -0.794544,
		-0.767114, 0.640622, 0.033754,
		43.095699, 31.222612, 42.991852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607601, 31.077349, 42.349998>,  <43.632679, 30.774178, 42.968224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607601, 31.077349, 42.349998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.414360, 31.348978, 42.571075>,  <43.298416, 31.511955, 42.703720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.414360, 31.348978, 42.571075>,  <43.607601, 31.077349, 42.349998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414360, 31.348978, 42.571075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278876, 0.717708, -0.638062,
		-0.829962, -0.154119, -0.536106,
		-0.483105, 0.679075, 0.552690,
		43.269428, 31.552700, 42.736881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019238, 31.381496, 41.994987>,  <43.607601, 31.077349, 42.349998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019238, 31.381496, 41.994987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.206406, 31.620142, 42.255787>,  <43.318707, 31.763330, 42.412266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.206406, 31.620142, 42.255787>,  <43.019238, 31.381496, 41.994987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206406, 31.620142, 42.255787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188137, 0.653587, -0.733095,
		-0.863512, 0.465696, 0.193583,
		0.467923, 0.596616, 0.651995,
		43.346783, 31.799128, 42.451385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749950, 32.090168, 42.032200>,  <43.019238, 31.381496, 41.994987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749950, 32.090168, 42.032200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137756, 32.104309, 42.129192>,  <43.370438, 32.112793, 42.187389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.137756, 32.104309, 42.129192>,  <42.749950, 32.090168, 42.032200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137756, 32.104309, 42.129192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099276, 0.848032, -0.520563,
		-0.224036, 0.528764, 0.818667,
		0.969511, 0.035351, 0.242483,
		43.428608, 32.114914, 42.201939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056801, 32.647964, 42.497597>,  <42.749950, 32.090168, 42.032200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056801, 32.647964, 42.497597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.288311, 32.527000, 42.194660>,  <43.427216, 32.454422, 42.012897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.288311, 32.527000, 42.194660>,  <43.056801, 32.647964, 42.497597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288311, 32.527000, 42.194660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038345, 0.917581, -0.395696,
		0.814584, 0.258060, 0.519478,
		0.578776, -0.302408, -0.757342,
		43.461945, 32.436279, 41.967457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736137, 33.097385, 42.396763>,  <43.056801, 32.647964, 42.497597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736137, 33.097385, 42.396763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.653160, 32.916565, 42.049747>,  <43.603374, 32.808075, 41.841537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.653160, 32.916565, 42.049747>,  <43.736137, 33.097385, 42.396763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653160, 32.916565, 42.049747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141677, 0.891361, -0.430586,
		0.967934, 0.033589, -0.248950,
		-0.207441, -0.452049, -0.867537,
		43.590927, 32.780949, 41.789486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701553, 33.627357, 41.957935>,  <43.736137, 33.097385, 42.396763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701553, 33.627357, 41.957935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.682404, 33.302715, 41.725037>,  <43.670914, 33.107929, 41.585297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.682404, 33.302715, 41.725037>,  <43.701553, 33.627357, 41.957935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682404, 33.302715, 41.725037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057270, 0.584186, -0.809597,
		0.997210, -0.005414, -0.074448,
		-0.047874, -0.811602, -0.582246,
		43.668041, 33.059235, 41.550362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060444, 33.757153, 41.421700>,  <43.701553, 33.627357, 41.957935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060444, 33.757153, 41.421700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.820827, 33.466152, 41.287895>,  <43.677059, 33.291553, 41.207615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.820827, 33.466152, 41.287895>,  <44.060444, 33.757153, 41.421700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820827, 33.466152, 41.287895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053662, 0.453294, -0.889745,
		0.798922, -0.515039, -0.310579,
		-0.599036, -0.727503, -0.334508,
		43.641117, 33.247902, 41.187542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278919, 33.466030, 40.795223>,  <44.060444, 33.757153, 41.421700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278919, 33.466030, 40.795223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879700, 33.451645, 40.815605>,  <43.640167, 33.443016, 40.827835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.879700, 33.451645, 40.815605>,  <44.278919, 33.466030, 40.795223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879700, 33.451645, 40.815605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061122, 0.401598, -0.913774,
		0.012395, -0.915110, -0.403014,
		-0.998053, -0.035959, 0.050955,
		43.580284, 33.440857, 40.830891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960995, 33.119301, 40.188515>,  <44.278919, 33.466030, 40.795223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960995, 33.119301, 40.188515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759556, 33.419674, 40.359386>,  <43.638695, 33.599899, 40.461910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759556, 33.419674, 40.359386>,  <43.960995, 33.119301, 40.188515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759556, 33.419674, 40.359386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093919, 0.443943, -0.891120,
		-0.858819, -0.488884, -0.153040,
		-0.503595, 0.750937, 0.427182,
		43.608479, 33.644955, 40.487541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141445, 32.600365, 39.738316>,  <43.960995, 33.119301, 40.188515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141445, 32.600365, 39.738316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228924, 32.971943, 39.618832>,  <44.281410, 33.194889, 39.547142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.228924, 32.971943, 39.618832>,  <44.141445, 32.600365, 39.738316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228924, 32.971943, 39.618832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463505, -0.368272, -0.805940,
		-0.858683, 0.037800, -0.511111,
		0.218692, 0.928949, -0.298708,
		44.294533, 33.250629, 39.529221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889584, 32.540035, 39.064701>,  <44.141445, 32.600365, 39.738316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889584, 32.540035, 39.064701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.182648, 32.795143, 39.159748>,  <44.358486, 32.948208, 39.216778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.182648, 32.795143, 39.159748>,  <43.889584, 32.540035, 39.064701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182648, 32.795143, 39.159748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442664, -0.181348, -0.878158,
		-0.516969, 0.748576, -0.415184,
		0.732661, 0.637767, 0.237616,
		44.402447, 32.986473, 39.231033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116276, 32.798668, 38.406715>,  <43.889584, 32.540035, 39.064701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116276, 32.798668, 38.406715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407749, 32.871105, 38.670902>,  <44.582634, 32.914566, 38.829414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.407749, 32.871105, 38.670902>,  <44.116276, 32.798668, 38.406715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407749, 32.871105, 38.670902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677451, -0.049243, -0.733917,
		-0.100383, 0.982233, -0.158564,
		0.728686, 0.181092, 0.660471,
		44.626354, 32.925434, 38.869045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398972, 33.353348, 38.104061>,  <44.116276, 32.798668, 38.406715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398972, 33.353348, 38.104061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657997, 33.153412, 38.334133>,  <44.813412, 33.033451, 38.472176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.657997, 33.153412, 38.334133>,  <44.398972, 33.353348, 38.104061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.657997, 33.153412, 38.334133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629661, -0.074130, -0.773325,
		0.429174, 0.862942, 0.266724,
		0.647562, -0.499836, 0.575176,
		44.852264, 33.003460, 38.506687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147514, 33.242424, 38.179897>,  <44.398972, 33.353348, 38.104061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147514, 33.242424, 38.179897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.923634, 33.253571, 37.848606>,  <44.789303, 33.260258, 37.649834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.923634, 33.253571, 37.848606>,  <45.147514, 33.242424, 38.179897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923634, 33.253571, 37.848606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711522, 0.528507, -0.463053,
		0.424816, -0.848472, -0.315638,
		-0.559704, 0.027871, -0.828224,
		44.755722, 33.261932, 37.600140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536812, 33.103065, 37.545040>,  <45.147514, 33.242424, 38.179897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536812, 33.103065, 37.545040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217537, 33.287655, 37.390152>,  <45.025970, 33.398407, 37.297218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.217537, 33.287655, 37.390152>,  <45.536812, 33.103065, 37.545040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217537, 33.287655, 37.390152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602335, 0.621367, -0.501095,
		0.009366, -0.633205, -0.773928,
		-0.798189, 0.461470, -0.387221,
		44.978081, 33.426094, 37.273987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735157, 33.135143, 36.813908>,  <45.536812, 33.103065, 37.545040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735157, 33.135143, 36.813908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.479721, 33.430367, 36.901062>,  <45.326458, 33.607502, 36.953354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.479721, 33.430367, 36.901062>,  <45.735157, 33.135143, 36.813908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.479721, 33.430367, 36.901062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552254, 0.636703, -0.538168,
		-0.535928, -0.223340, -0.814187,
		-0.638589, 0.738058, 0.217887,
		45.288143, 33.651783, 36.966427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632481, 33.527008, 36.166000>,  <45.735157, 33.135143, 36.813908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632481, 33.527008, 36.166000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.568409, 33.787762, 36.462486>,  <45.529968, 33.944214, 36.640377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.568409, 33.787762, 36.462486>,  <45.632481, 33.527008, 36.166000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568409, 33.787762, 36.462486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566241, 0.675750, -0.471946,
		-0.808526, 0.344110, -0.477361,
		-0.160176, 0.651882, 0.741211,
		45.520355, 33.983326, 36.684849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339420, 34.142609, 35.934517>,  <45.632481, 33.527008, 36.166000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339420, 34.142609, 35.934517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.559311, 34.182903, 36.266216>,  <45.691246, 34.207081, 36.465237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.559311, 34.182903, 36.266216>,  <45.339420, 34.142609, 35.934517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559311, 34.182903, 36.266216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532526, 0.722573, -0.440799,
		-0.643598, 0.683915, 0.343572,
		0.549725, 0.100736, 0.829249,
		45.724228, 34.213123, 36.514992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.290703, 34.818226, 36.281944>,  <45.339420, 34.142609, 35.934517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.290703, 34.818226, 36.281944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.658951, 34.662140, 36.276348>,  <45.879898, 34.568489, 36.272991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.658951, 34.662140, 36.276348>,  <45.290703, 34.818226, 36.281944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658951, 34.662140, 36.276348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246885, 0.609470, -0.753388,
		0.302512, 0.690128, 0.657427,
		0.920616, -0.390218, -0.013989,
		45.935135, 34.545074, 36.272152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.701366, 35.233284, 35.927097>,  <45.290703, 34.818226, 36.281944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.701366, 35.233284, 35.927097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019043, 34.990429, 35.937271>,  <46.209648, 34.844715, 35.943375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.019043, 34.990429, 35.937271>,  <45.701366, 35.233284, 35.927097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019043, 34.990429, 35.937271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489073, 0.613795, -0.619728,
		0.360650, 0.504620, 0.784405,
		0.794191, -0.607136, 0.025431,
		46.257301, 34.808289, 35.944901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252827, 35.725483, 35.818882>,  <45.701366, 35.233284, 35.927097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252827, 35.725483, 35.818882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.389023, 35.350380, 35.791534>,  <46.470741, 35.125317, 35.775124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.389023, 35.350380, 35.791534>,  <46.252827, 35.725483, 35.818882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.389023, 35.350380, 35.791534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457895, 0.228887, -0.859036,
		0.821219, 0.261183, 0.507329,
		0.340487, -0.937760, -0.068372,
		46.491169, 35.069054, 35.771023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843704, 35.881634, 35.448772>,  <46.252827, 35.725483, 35.818882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843704, 35.881634, 35.448772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.762730, 35.493412, 35.396557>,  <46.714146, 35.260479, 35.365227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.762730, 35.493412, 35.396557>,  <46.843704, 35.881634, 35.448772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.762730, 35.493412, 35.396557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235767, 0.081076, -0.968422,
		0.950491, -0.226824, 0.212412,
		-0.202439, -0.970555, -0.130540,
		46.702000, 35.202244, 35.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.421436, 35.440800, 35.243771>,  <46.843704, 35.881634, 35.448772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.421436, 35.440800, 35.243771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069790, 35.317341, 35.098503>,  <46.858803, 35.243263, 35.011345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.069790, 35.317341, 35.098503>,  <47.421436, 35.440800, 35.243771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069790, 35.317341, 35.098503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316774, 0.190927, -0.929086,
		0.356103, -0.931816, -0.070074,
		-0.879116, -0.308652, -0.363165,
		46.806053, 35.224747, 34.989555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.782654, 34.754719, 35.347214>,  <47.421436, 35.440800, 35.243771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.782654, 34.754719, 35.347214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.055901, 34.929943, 35.113476>,  <48.219849, 35.035076, 34.973232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.055901, 34.929943, 35.113476>,  <47.782654, 34.754719, 35.347214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.055901, 34.929943, 35.113476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593529, 0.133199, 0.793714,
		0.425525, -0.889024, -0.169008,
		0.683119, 0.438056, -0.584341,
		48.260838, 35.061359, 34.938175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.091803, 35.755051, 56.541008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.438543, 35.865528, 56.707039>,  <31.646587, 35.931812, 56.806656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.438543, 35.865528, 56.707039>,  <31.091803, 35.755051, 56.541008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438543, 35.865528, 56.707039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455395, -0.099735, -0.884685,
		-0.202944, 0.955914, -0.212232,
		0.866850, 0.276191, 0.415078,
		31.698599, 35.948387, 56.831562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369345, 36.322254, 56.099720>,  <31.091803, 35.755051, 56.541008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369345, 36.322254, 56.099720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.688248, 36.182621, 56.296703>,  <31.879589, 36.098839, 56.414894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.688248, 36.182621, 56.296703>,  <31.369345, 36.322254, 56.099720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688248, 36.182621, 56.296703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466191, -0.162182, -0.869691,
		0.383466, 0.922949, 0.033440,
		0.797258, -0.349086, 0.492462,
		31.927425, 36.077896, 56.444443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002682, 36.507030, 55.725620>,  <31.369345, 36.322254, 56.099720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002682, 36.507030, 55.725620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.129066, 36.221386, 55.975487>,  <32.204899, 36.049999, 56.125408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.129066, 36.221386, 55.975487>,  <32.002682, 36.507030, 55.725620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129066, 36.221386, 55.975487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682042, -0.286724, -0.672762,
		0.659536, 0.638615, 0.396463,
		0.315961, -0.714115, 0.624666,
		32.223854, 36.007153, 56.162888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706100, 36.608047, 55.676140>,  <32.002682, 36.507030, 55.725620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706100, 36.608047, 55.676140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.643856, 36.235958, 55.809086>,  <32.606510, 36.012703, 55.888855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.643856, 36.235958, 55.809086>,  <32.706100, 36.608047, 55.676140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643856, 36.235958, 55.809086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610157, -0.355120, -0.708236,
		0.776848, 0.092587, 0.622843,
		-0.155611, -0.930224, 0.332367,
		32.597172, 35.956890, 55.908794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378975, 36.190075, 55.618534>,  <32.706100, 36.608047, 55.676140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378975, 36.190075, 55.618534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.076614, 35.929226, 55.641689>,  <32.895199, 35.772717, 55.655582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.076614, 35.929226, 55.641689>,  <33.378975, 36.190075, 55.618534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076614, 35.929226, 55.641689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345792, -0.472771, -0.810503,
		0.555919, -0.592639, 0.582866,
		-0.755898, -0.652124, 0.057893,
		32.849846, 35.733589, 55.659058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735783, 35.589737, 55.503250>,  <33.378975, 36.190075, 55.618534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735783, 35.589737, 55.503250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355396, 35.478165, 55.449783>,  <33.127167, 35.411221, 55.417702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355396, 35.478165, 55.449783>,  <33.735783, 35.589737, 55.503250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355396, 35.478165, 55.449783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277565, -0.578869, -0.766726,
		0.136485, -0.766230, 0.627904,
		-0.950962, -0.278931, -0.133672,
		33.070107, 35.394485, 55.409683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704231, 34.895546, 55.504333>,  <33.735783, 35.589737, 55.503250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704231, 34.895546, 55.504333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.414555, 35.020824, 55.258587>,  <33.240749, 35.095989, 55.111137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.414555, 35.020824, 55.258587>,  <33.704231, 34.895546, 55.504333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414555, 35.020824, 55.258587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175991, -0.777472, -0.603792,
		-0.666758, -0.545387, 0.507923,
		-0.724196, 0.313193, -0.614369,
		33.197296, 35.114784, 55.074276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671764, 34.338108, 54.995014>,  <33.704231, 34.895546, 55.504333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671764, 34.338108, 54.995014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.401104, 34.595814, 54.852432>,  <33.238708, 34.750439, 54.766884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.401104, 34.595814, 54.852432>,  <33.671764, 34.338108, 54.995014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401104, 34.595814, 54.852432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089952, -0.552824, -0.828429,
		-0.730788, -0.528494, 0.432022,
		-0.676652, 0.644267, -0.356458,
		33.198109, 34.789093, 54.745495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953495, 33.994102, 54.729626>,  <33.671764, 34.338108, 54.995014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953495, 33.994102, 54.729626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.992859, 34.339813, 54.532303>,  <33.016476, 34.547237, 54.413910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.992859, 34.339813, 54.532303>,  <32.953495, 33.994102, 54.729626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992859, 34.339813, 54.532303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014762, -0.494386, -0.869117,
		-0.995037, 0.092808, -0.035892,
		0.098406, 0.864274, -0.493302,
		33.022381, 34.599094, 54.384312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381580, 34.133411, 54.302238>,  <32.953495, 33.994102, 54.729626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381580, 34.133411, 54.302238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.651028, 34.385452, 54.147724>,  <32.812695, 34.536678, 54.055016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.651028, 34.385452, 54.147724>,  <32.381580, 34.133411, 54.302238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651028, 34.385452, 54.147724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134809, -0.409135, -0.902461,
		-0.726684, 0.659985, -0.190655,
		0.673615, 0.630102, -0.386284,
		32.853111, 34.574482, 54.031837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142616, 34.203167, 53.595665>,  <32.381580, 34.133411, 54.302238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142616, 34.203167, 53.595665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.526970, 34.313927, 53.593540>,  <32.757584, 34.380383, 53.592266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.526970, 34.313927, 53.593540>,  <32.142616, 34.203167, 53.595665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526970, 34.313927, 53.593540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139884, -0.501778, -0.853611,
		-0.239031, 0.819477, -0.520885,
		0.960883, 0.276903, -0.005309,
		32.815235, 34.396999, 53.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239574, 34.497936, 52.941010>,  <32.142616, 34.203167, 53.595665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239574, 34.497936, 52.941010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607296, 34.413868, 53.074097>,  <32.827930, 34.363426, 53.153950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.607296, 34.413868, 53.074097>,  <32.239574, 34.497936, 52.941010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607296, 34.413868, 53.074097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214508, -0.441220, -0.871384,
		0.329939, 0.872442, -0.360535,
		0.919307, -0.210166, 0.332722,
		32.883087, 34.350819, 53.173912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589737, 34.510338, 52.303288>,  <32.239574, 34.497936, 52.941010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589737, 34.510338, 52.303288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786022, 34.295647, 52.577843>,  <32.903793, 34.166832, 52.742577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.786022, 34.295647, 52.577843>,  <32.589737, 34.510338, 52.303288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786022, 34.295647, 52.577843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233870, -0.677717, -0.697140,
		0.839350, 0.502620, -0.207039,
		0.490711, -0.536724, 0.686389,
		32.933235, 34.134628, 52.783760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141468, 34.208084, 51.909336>,  <32.589737, 34.510338, 52.303288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141468, 34.208084, 51.909336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.123856, 33.979816, 52.237335>,  <33.113289, 33.842857, 52.434135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.123856, 33.979816, 52.237335>,  <33.141468, 34.208084, 51.909336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123856, 33.979816, 52.237335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234961, -0.803686, -0.546701,
		0.971007, 0.168595, 0.169474,
		-0.044033, -0.570670, 0.819998,
		33.110645, 33.808617, 52.483334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727562, 33.792187, 51.871021>,  <33.141468, 34.208084, 51.909336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727562, 33.792187, 51.871021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.465187, 33.594692, 52.099396>,  <33.307762, 33.476196, 52.236420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.465187, 33.594692, 52.099396>,  <33.727562, 33.792187, 51.871021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465187, 33.594692, 52.099396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130853, -0.819321, -0.558202,
		0.743387, -0.291437, 0.602030,
		-0.655937, -0.493738, 0.570938,
		33.268406, 33.446571, 52.270676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026798, 33.173561, 51.971992>,  <33.727562, 33.792187, 51.871021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026798, 33.173561, 51.971992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.644394, 33.121372, 52.077076>,  <33.414951, 33.090057, 52.140125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.644394, 33.121372, 52.077076>,  <34.026798, 33.173561, 51.971992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644394, 33.121372, 52.077076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009269, -0.908617, -0.417528,
		0.293179, -0.396727, 0.869858,
		-0.956012, -0.130473, 0.262710,
		33.357590, 33.082230, 52.155888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078362, 32.525089, 51.938332>,  <34.026798, 33.173561, 51.971992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078362, 32.525089, 51.938332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680893, 32.559303, 51.967453>,  <33.442413, 32.579834, 51.984928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.680893, 32.559303, 51.967453>,  <34.078362, 32.525089, 51.938332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680893, 32.559303, 51.967453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108768, -0.894596, -0.433437,
		0.028058, -0.438613, 0.898238,
		-0.993671, 0.085538, 0.072807,
		33.382793, 32.584965, 51.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648048, 31.830387, 52.028496>,  <34.078362, 32.525089, 51.938332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648048, 31.830387, 52.028496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.349922, 32.076828, 51.926579>,  <33.171047, 32.224693, 51.865429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.349922, 32.076828, 51.926579>,  <33.648048, 31.830387, 52.028496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349922, 32.076828, 51.926579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366700, -0.697989, -0.615096,
		-0.556804, -0.365009, 0.746148,
		-0.745318, 0.616101, -0.254794,
		33.126328, 32.261658, 51.850140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963657, 31.460129, 52.042286>,  <33.648048, 31.830387, 52.028496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963657, 31.460129, 52.042286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.919727, 31.763083, 51.784821>,  <32.893368, 31.944855, 51.630341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.919727, 31.763083, 51.784821>,  <32.963657, 31.460129, 52.042286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919727, 31.763083, 51.784821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358098, -0.634247, -0.685198,
		-0.927202, 0.155242, 0.340875,
		-0.109828, 0.757384, -0.643667,
		32.886780, 31.990297, 51.591721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285168, 31.315346, 51.873508>,  <32.963657, 31.460129, 52.042286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285168, 31.315346, 51.873508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.440796, 31.559433, 51.597462>,  <32.534172, 31.705885, 51.431835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.440796, 31.559433, 51.597462>,  <32.285168, 31.315346, 51.873508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440796, 31.559433, 51.597462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376001, -0.578709, -0.723685,
		-0.840982, 0.541047, 0.004285,
		0.389067, 0.610217, -0.690117,
		32.557514, 31.742498, 51.390427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736511, 31.440348, 51.314438>,  <32.285168, 31.315346, 51.873508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736511, 31.440348, 51.314438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.098713, 31.512602, 51.160851>,  <32.316036, 31.555954, 51.068699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.098713, 31.512602, 51.160851>,  <31.736511, 31.440348, 51.314438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098713, 31.512602, 51.160851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185854, -0.644628, -0.741561,
		-0.381467, 0.742850, -0.550143,
		0.905506, 0.180635, -0.383966,
		32.370365, 31.566792, 51.045662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650997, 31.481550, 50.577175>,  <31.736511, 31.440348, 51.314438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650997, 31.481550, 50.577175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.046734, 31.423735, 50.584229>,  <32.284176, 31.389046, 50.588459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.046734, 31.423735, 50.584229>,  <31.650997, 31.481550, 50.577175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046734, 31.423735, 50.584229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078468, -0.631229, -0.771617,
		0.122660, 0.762009, -0.635843,
		0.989342, -0.144540, 0.017633,
		32.343536, 31.380373, 50.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821167, 31.607483, 50.578110>,  <31.650997, 31.481550, 50.577175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821167, 31.607483, 50.578110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451336, 31.476650, 50.499958>,  <30.229437, 31.398149, 50.453068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.451336, 31.476650, 50.499958>,  <30.821167, 31.607483, 50.578110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451336, 31.476650, 50.499958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177459, -0.084066, 0.980531,
		-0.337140, 0.941248, 0.019682,
		-0.924578, -0.327084, -0.195375,
		30.173962, 31.378525, 50.441345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488312, 32.033276, 50.939243>,  <30.821167, 31.607483, 50.578110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488312, 32.033276, 50.939243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.228956, 31.733727, 50.884430>,  <30.073343, 31.553997, 50.851540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.228956, 31.733727, 50.884430>,  <30.488312, 32.033276, 50.939243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228956, 31.733727, 50.884430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152754, -0.048370, 0.987080,
		-0.745829, 0.660942, -0.083031,
		-0.648387, -0.748876, -0.137038,
		30.034441, 31.509064, 50.843319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014996, 32.207226, 51.334961>,  <30.488312, 32.033276, 50.939243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014996, 32.207226, 51.334961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.957048, 31.818090, 51.262733>,  <29.922279, 31.584610, 51.219398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.957048, 31.818090, 51.262733>,  <30.014996, 32.207226, 51.334961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957048, 31.818090, 51.262733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120757, -0.163741, 0.979085,
		-0.982054, 0.163644, -0.093756,
		-0.144869, -0.972836, -0.180564,
		29.913588, 31.526239, 51.208565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454165, 32.068832, 51.667057>,  <30.014996, 32.207226, 51.334961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454165, 32.068832, 51.667057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.657854, 31.726835, 51.627716>,  <29.780067, 31.521637, 51.604111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.657854, 31.726835, 51.627716>,  <29.454165, 32.068832, 51.667057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657854, 31.726835, 51.627716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070041, -0.072728, 0.994889,
		-0.857780, -0.513510, 0.022849,
		0.509224, -0.854996, -0.098351,
		29.810621, 31.470337, 51.598209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042711, 31.532143, 51.978271>,  <29.454165, 32.068832, 51.667057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.042711, 31.532143, 51.978271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.426170, 31.418415, 51.983261>,  <29.656246, 31.350178, 51.986256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.426170, 31.418415, 51.983261>,  <29.042711, 31.532143, 51.978271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426170, 31.418415, 51.983261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058400, -0.153646, 0.986399,
		-0.278537, -0.946338, -0.163897,
		0.958648, -0.284320, 0.012470,
		29.713764, 31.333118, 51.987003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081638, 31.066971, 52.509399>,  <29.042711, 31.532143, 51.978271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081638, 31.066971, 52.509399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.464510, 31.168755, 52.454178>,  <29.694233, 31.229826, 52.421043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.464510, 31.168755, 52.454178>,  <29.081638, 31.066971, 52.509399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464510, 31.168755, 52.454178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190453, -0.194327, 0.962271,
		0.218033, -0.947358, -0.234468,
		0.957178, 0.254461, -0.138057,
		29.751663, 31.245092, 52.412762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391146, 30.593885, 52.838356>,  <29.081638, 31.066971, 52.509399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391146, 30.593885, 52.838356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.655315, 30.890678, 52.792217>,  <29.813816, 31.068754, 52.764534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.655315, 30.890678, 52.792217>,  <29.391146, 30.593885, 52.838356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655315, 30.890678, 52.792217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215813, -0.040427, 0.975598,
		0.719212, -0.669200, -0.186828,
		0.660423, 0.741982, -0.115347,
		29.853443, 31.113274, 52.757614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868626, 30.513189, 53.464279>,  <29.391146, 30.593885, 52.838356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868626, 30.513189, 53.464279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.965050, 30.875160, 53.323994>,  <30.022905, 31.092342, 53.239822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.965050, 30.875160, 53.323994>,  <29.868626, 30.513189, 53.464279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965050, 30.875160, 53.323994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220543, 0.300836, 0.927825,
		0.945119, -0.301010, -0.127055,
		0.241062, 0.904926, -0.350711,
		30.037369, 31.146639, 53.218781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519531, 30.660053, 53.764099>,  <29.868626, 30.513189, 53.464279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519531, 30.660053, 53.764099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.376469, 31.018040, 53.657425>,  <30.290632, 31.232832, 53.593422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.376469, 31.018040, 53.657425>,  <30.519531, 30.660053, 53.764099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376469, 31.018040, 53.657425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453540, 0.416099, 0.788139,
		0.816324, 0.160930, -0.554722,
		-0.357654, 0.894966, -0.266683,
		30.269173, 31.286530, 53.577419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045485, 31.137686, 53.954796>,  <30.519531, 30.660053, 53.764099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045485, 31.137686, 53.954796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.708521, 31.345356, 53.897099>,  <30.506344, 31.469957, 53.862480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.708521, 31.345356, 53.897099>,  <31.045485, 31.137686, 53.954796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708521, 31.345356, 53.897099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269470, 0.637724, 0.721591,
		0.466620, 0.569004, -0.677126,
		-0.842408, 0.519174, -0.144245,
		30.455799, 31.501108, 53.853825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272255, 31.824125, 54.009060>,  <31.045485, 31.137686, 53.954796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272255, 31.824125, 54.009060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875355, 31.829496, 54.058475>,  <30.637215, 31.832718, 54.088127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.875355, 31.829496, 54.058475>,  <31.272255, 31.824125, 54.009060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875355, 31.829496, 54.058475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094339, 0.728484, 0.678536,
		-0.080887, 0.684932, -0.724104,
		-0.992249, 0.013426, 0.123541,
		30.577681, 31.833525, 54.095539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135979, 32.485092, 54.199566>,  <31.272255, 31.824125, 54.009060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135979, 32.485092, 54.199566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.786034, 32.313110, 54.288788>,  <30.576067, 32.209919, 54.342323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.786034, 32.313110, 54.288788>,  <31.135979, 32.485092, 54.199566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786034, 32.313110, 54.288788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180187, 0.716344, 0.674079,
		-0.449613, 0.549533, -0.704174,
		-0.874861, -0.429958, 0.223059,
		30.523575, 32.184124, 54.355705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690201, 32.993885, 54.111618>,  <31.135979, 32.485092, 54.199566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690201, 32.993885, 54.111618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.503153, 32.741035, 54.358761>,  <30.390924, 32.589325, 54.507046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.503153, 32.741035, 54.358761>,  <30.690201, 32.993885, 54.111618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503153, 32.741035, 54.358761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270806, 0.767829, 0.580606,
		-0.841424, 0.104184, -0.530236,
		-0.467621, -0.632127, 0.617856,
		30.362867, 32.551399, 54.544117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898865, 33.197144, 54.153797>,  <30.690201, 32.993885, 54.111618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898865, 33.197144, 54.153797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.000004, 32.997280, 54.485195>,  <30.060688, 32.877361, 54.684036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.000004, 32.997280, 54.485195>,  <29.898865, 33.197144, 54.153797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000004, 32.997280, 54.485195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406666, 0.722120, 0.559613,
		-0.877890, -0.478419, -0.020608,
		0.252848, -0.499659, 0.828498,
		30.075859, 32.847382, 54.733746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419746, 33.380611, 54.533760>,  <29.898865, 33.197144, 54.153797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419746, 33.380611, 54.533760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.691885, 33.251369, 54.796890>,  <29.855169, 33.173824, 54.954769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.691885, 33.251369, 54.796890>,  <29.419746, 33.380611, 54.533760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691885, 33.251369, 54.796890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337319, 0.658799, 0.672458,
		-0.650649, -0.679401, 0.339222,
		0.680347, -0.323108, 0.657821,
		29.895988, 33.154438, 54.994236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064518, 33.327042, 55.203533>,  <29.419746, 33.380611, 54.533760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064518, 33.327042, 55.203533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.451542, 33.342999, 55.303326>,  <29.683756, 33.352573, 55.363201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.451542, 33.342999, 55.303326>,  <29.064518, 33.327042, 55.203533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451542, 33.342999, 55.303326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237405, 0.481364, 0.843758,
		-0.086429, -0.875613, 0.475218,
		0.967558, 0.039894, 0.249479,
		29.741810, 33.354965, 55.378170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083395, 33.260147, 55.948193>,  <29.064518, 33.327042, 55.203533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083395, 33.260147, 55.948193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.464499, 33.372116, 55.901047>,  <29.693161, 33.439297, 55.872761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.464499, 33.372116, 55.901047>,  <29.083395, 33.260147, 55.948193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464499, 33.372116, 55.901047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066711, 0.571449, 0.817922,
		0.296309, -0.771420, 0.563128,
		0.952760, 0.279925, -0.117863,
		29.750326, 33.456093, 55.865688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351482, 33.231400, 56.645653>,  <29.083395, 33.260147, 55.948193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351482, 33.231400, 56.645653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.560362, 33.481461, 56.413624>,  <29.685690, 33.631496, 56.274406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.560362, 33.481461, 56.413624>,  <29.351482, 33.231400, 56.645653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560362, 33.481461, 56.413624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190905, 0.748610, 0.634932,
		0.831180, -0.220823, 0.510270,
		0.522201, 0.625156, -0.580074,
		29.717022, 33.669006, 56.239601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.743643, 33.804241, 57.211075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786070, 33.954559, 56.842831>,  <29.811527, 34.044750, 56.621883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786070, 33.954559, 56.842831>,  <29.743643, 33.804241, 57.211075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786070, 33.954559, 56.842831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067973, 0.926408, 0.370334,
		0.992033, 0.023296, 0.123807,
		0.106069, 0.375799, -0.920611,
		29.817890, 34.067299, 56.566647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247316, 34.329182, 57.316299>,  <29.743643, 33.804241, 57.211075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247316, 34.329182, 57.316299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038074, 34.416462, 56.986755>,  <29.912529, 34.468830, 56.789028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038074, 34.416462, 56.986755>,  <30.247316, 34.329182, 57.316299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038074, 34.416462, 56.986755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172082, 0.919721, 0.352848,
		0.834715, 0.326348, -0.443563,
		-0.523105, 0.218198, -0.823863,
		29.881144, 34.481922, 56.739597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485752, 34.901588, 57.016010>,  <30.247316, 34.329182, 57.316299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485752, 34.901588, 57.016010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100344, 34.858639, 56.917950>,  <29.869099, 34.832867, 56.859112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100344, 34.858639, 56.917950>,  <30.485752, 34.901588, 57.016010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100344, 34.858639, 56.917950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214736, 0.856885, 0.468655,
		0.159742, 0.504201, -0.848683,
		-0.963520, -0.107379, -0.245151,
		29.811287, 34.826424, 56.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361528, 35.535168, 56.715839>,  <30.485752, 34.901588, 57.016010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361528, 35.535168, 56.715839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011307, 35.379333, 56.830120>,  <29.801174, 35.285831, 56.898689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011307, 35.379333, 56.830120>,  <30.361528, 35.535168, 56.715839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011307, 35.379333, 56.830120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130103, 0.759663, 0.637170,
		-0.465273, 0.520706, -0.715812,
		-0.875554, -0.389588, 0.285705,
		29.748640, 35.262459, 56.915833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997719, 36.099045, 56.612625>,  <30.361528, 35.535168, 56.715839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997719, 36.099045, 56.612625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809292, 35.833706, 56.845200>,  <29.696236, 35.674503, 56.984745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809292, 35.833706, 56.845200>,  <29.997719, 36.099045, 56.612625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809292, 35.833706, 56.845200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371487, 0.747034, 0.551306,
		-0.800058, 0.043706, -0.598328,
		-0.471067, -0.663347, 0.581434,
		29.667973, 35.634701, 57.019630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378923, 36.437584, 56.718498>,  <29.997719, 36.099045, 56.612625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378923, 36.437584, 56.718498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366037, 36.162376, 57.008492>,  <29.358305, 35.997253, 57.182487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366037, 36.162376, 57.008492>,  <29.378923, 36.437584, 56.718498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366037, 36.162376, 57.008492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390746, 0.676297, 0.624452,
		-0.919935, -0.263164, -0.290628,
		-0.032217, -0.688017, 0.724979,
		29.356373, 35.955971, 57.225986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688263, 36.290749, 56.832581>,  <29.378923, 36.437584, 56.718498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688263, 36.290749, 56.832581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899605, 36.205471, 57.161308>,  <29.026411, 36.154305, 57.358543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899605, 36.205471, 57.161308>,  <28.688263, 36.290749, 56.832581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899605, 36.205471, 57.161308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620590, 0.563591, 0.545191,
		-0.579402, -0.798068, 0.165470,
		0.528357, -0.213196, 0.821819,
		29.058111, 36.141514, 57.407852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229111, 36.390820, 57.404507>,  <28.688263, 36.290749, 56.832581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229111, 36.390820, 57.404507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564463, 36.351662, 57.618996>,  <28.765673, 36.328167, 57.747688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564463, 36.351662, 57.618996>,  <28.229111, 36.390820, 57.404507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564463, 36.351662, 57.618996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330062, 0.691721, 0.642325,
		-0.433798, -0.715499, 0.547613,
		0.838378, -0.097893, 0.536227,
		28.815975, 36.322292, 57.779865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038420, 36.292431, 58.156952>,  <28.229111, 36.390820, 57.404507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038420, 36.292431, 58.156952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410828, 36.434925, 58.125195>,  <28.634272, 36.520420, 58.106140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410828, 36.434925, 58.125195>,  <28.038420, 36.292431, 58.156952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410828, 36.434925, 58.125195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194545, 0.668444, 0.717869,
		0.308802, -0.652902, 0.691636,
		0.931018, 0.356233, -0.079398,
		28.690132, 36.541794, 58.101376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382708, 36.389473, 58.817928>,  <28.038420, 36.292431, 58.156952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382708, 36.389473, 58.817928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557236, 36.657070, 58.577240>,  <28.661953, 36.817627, 58.432827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557236, 36.657070, 58.577240>,  <28.382708, 36.389473, 58.817928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557236, 36.657070, 58.577240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070870, 0.692211, 0.718207,
		0.896995, -0.270725, 0.349438,
		0.436322, 0.668993, -0.601724,
		28.688133, 36.857769, 58.396725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718636, 36.752747, 59.329922>,  <28.382708, 36.389473, 58.817928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718636, 36.752747, 59.329922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718031, 36.970943, 58.994675>,  <28.717669, 37.101860, 58.793526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718031, 36.970943, 58.994675>,  <28.718636, 36.752747, 59.329922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718031, 36.970943, 58.994675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359430, 0.781811, 0.509492,
		0.933171, 0.302014, 0.194885,
		-0.001510, 0.545490, -0.838116,
		28.717577, 37.134590, 58.743240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075676, 37.378628, 59.495342>,  <28.718636, 36.752747, 59.329922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075676, 37.378628, 59.495342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888098, 37.491718, 59.160641>,  <28.775551, 37.559574, 58.959820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888098, 37.491718, 59.160641>,  <29.075676, 37.378628, 59.495342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888098, 37.491718, 59.160641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147722, 0.908930, 0.389903,
		0.870785, 0.306451, -0.384475,
		-0.468948, 0.282726, -0.836752,
		28.747414, 37.576538, 58.909615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373810, 38.089970, 59.301777>,  <29.075676, 37.378628, 59.495342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373810, 38.089970, 59.301777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034430, 38.073219, 59.090733>,  <28.830801, 38.063171, 58.964104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034430, 38.073219, 59.090733>,  <29.373810, 38.089970, 59.301777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034430, 38.073219, 59.090733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235150, 0.922897, 0.304902,
		0.474165, 0.382763, -0.792881,
		-0.848453, -0.041872, -0.527612,
		28.779894, 38.060658, 58.932449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223324, 38.707645, 58.891850>,  <29.373810, 38.089970, 59.301777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223324, 38.707645, 58.891850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869188, 38.547390, 58.986229>,  <28.656708, 38.451237, 59.042854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869188, 38.547390, 58.986229>,  <29.223324, 38.707645, 58.891850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869188, 38.547390, 58.986229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344415, 0.906003, 0.246044,
		-0.312340, 0.136569, -0.940102,
		-0.885337, -0.400635, 0.235944,
		28.603586, 38.427200, 59.057011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770241, 39.206944, 58.858265>,  <29.223324, 38.707645, 58.891850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770241, 39.206944, 58.858265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541151, 38.949741, 59.061649>,  <28.403698, 38.795422, 59.183681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541151, 38.949741, 59.061649>,  <28.770241, 39.206944, 58.858265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541151, 38.949741, 59.061649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501063, 0.765500, 0.403666,
		-0.648786, -0.023583, -0.760605,
		-0.572724, -0.643004, 0.508462,
		28.369333, 38.756840, 59.214188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147814, 39.403912, 58.660110>,  <28.770241, 39.206944, 58.858265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147814, 39.403912, 58.660110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146690, 39.219463, 59.015045>,  <28.146015, 39.108795, 59.228004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146690, 39.219463, 59.015045>,  <28.147814, 39.403912, 58.660110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146690, 39.219463, 59.015045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657852, 0.669148, 0.345648,
		-0.753142, -0.582763, -0.305227,
		-0.002811, -0.461116, 0.887335,
		28.145847, 39.081127, 59.281246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579884, 39.654739, 58.982582>,  <28.147814, 39.403912, 58.660110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579884, 39.654739, 58.982582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705772, 39.461498, 59.309399>,  <27.781305, 39.345554, 59.505489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705772, 39.461498, 59.309399>,  <27.579884, 39.654739, 58.982582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705772, 39.461498, 59.309399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747725, 0.404051, 0.526925,
		-0.584686, -0.776760, -0.234064,
		0.314721, -0.483101, 0.817046,
		27.800188, 39.316566, 59.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995966, 39.284187, 59.285488>,  <27.579884, 39.654739, 58.982582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995966, 39.284187, 59.285488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286247, 39.362774, 59.549232>,  <27.460417, 39.409924, 59.707478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286247, 39.362774, 59.549232>,  <26.995966, 39.284187, 59.285488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286247, 39.362774, 59.549232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624387, 0.590567, 0.511245,
		-0.288956, -0.782708, 0.551246,
		0.725704, 0.196464, 0.659361,
		27.503958, 39.421715, 59.747040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705242, 39.323151, 59.886749>,  <26.995966, 39.284187, 59.285488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705242, 39.323151, 59.886749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053091, 39.487186, 59.996719>,  <27.261801, 39.585609, 60.062702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053091, 39.487186, 59.996719>,  <26.705242, 39.323151, 59.886749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053091, 39.487186, 59.996719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480382, 0.574291, 0.662890,
		0.113958, -0.708532, 0.696416,
		0.869624, 0.410087, 0.274921,
		27.313978, 39.610214, 60.079197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938564, 39.181103, 60.594204>,  <26.705242, 39.323151, 59.886749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938564, 39.181103, 60.594204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131145, 39.517586, 60.495758>,  <27.246695, 39.719475, 60.436691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131145, 39.517586, 60.495758>,  <26.938564, 39.181103, 60.594204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131145, 39.517586, 60.495758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474965, 0.486403, 0.733362,
		0.736621, -0.236183, 0.633724,
		0.481454, 0.841208, -0.246116,
		27.275581, 39.769947, 60.421925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995077, 39.534531, 61.213097>,  <26.938564, 39.181103, 60.594204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995077, 39.534531, 61.213097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122368, 39.849274, 61.001595>,  <27.198742, 40.038120, 60.874695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122368, 39.849274, 61.001595>,  <26.995077, 39.534531, 61.213097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122368, 39.849274, 61.001595> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614005, 0.596028, 0.517443,
		0.722309, 0.159995, 0.672808,
		0.318224, 0.786862, -0.528754,
		27.217836, 40.085331, 60.842968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275806, 40.097866, 61.656605>,  <26.995077, 39.534531, 61.213097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275806, 40.097866, 61.656605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123037, 40.251125, 61.320194>,  <27.031376, 40.343082, 61.118347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123037, 40.251125, 61.320194>,  <27.275806, 40.097866, 61.656605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123037, 40.251125, 61.320194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697193, 0.477923, 0.534332,
		0.606678, 0.790433, 0.084601,
		-0.381921, 0.383151, -0.841030,
		27.008461, 40.366070, 61.067886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218710, 40.746635, 61.830460>,  <27.275806, 40.097866, 61.656605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218710, 40.746635, 61.830460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962259, 40.630470, 61.546314>,  <26.808388, 40.560772, 61.375828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962259, 40.630470, 61.546314>,  <27.218710, 40.746635, 61.830460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962259, 40.630470, 61.546314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764324, 0.324887, 0.557007,
		0.069023, 0.900059, -0.430267,
		-0.641128, -0.290417, -0.710361,
		26.769920, 40.543346, 61.333206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887751, 40.988354, 61.796234>,  <27.218710, 40.746635, 61.830460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887751, 40.988354, 61.796234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061522, 40.840862, 62.124943>,  <28.165785, 40.752369, 62.322170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.061522, 40.840862, 62.124943>,  <27.887751, 40.988354, 61.796234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.061522, 40.840862, 62.124943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722406, -0.402285, -0.562402,
		0.537959, 0.837979, 0.091606,
		0.434429, -0.368726, 0.821774,
		28.191851, 40.730244, 62.371475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581293, 40.657948, 61.819656>,  <27.887751, 40.988354, 61.796234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581293, 40.657948, 61.819656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783245, 40.648270, 62.164795>,  <28.904417, 40.642464, 62.371880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783245, 40.648270, 62.164795>,  <28.581293, 40.657948, 61.819656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783245, 40.648270, 62.164795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799080, -0.364935, -0.477800,
		0.326443, 0.930719, -0.164918,
		0.504882, -0.024192, 0.862849,
		28.934710, 40.641010, 62.423649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.367622, 40.804886, 61.702190>,  <28.581293, 40.657948, 61.819656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.367622, 40.804886, 61.702190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329750, 40.603485, 62.045704>,  <29.307026, 40.482643, 62.251812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329750, 40.603485, 62.045704>,  <29.367622, 40.804886, 61.702190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329750, 40.603485, 62.045704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703554, -0.644164, -0.300106,
		0.704306, 0.575790, 0.415234,
		-0.094681, -0.503506, 0.858788,
		29.301346, 40.452435, 62.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006273, 40.590866, 61.789646>,  <29.367622, 40.804886, 61.702190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006273, 40.590866, 61.789646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813957, 40.352230, 62.046680>,  <29.698568, 40.209049, 62.200901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813957, 40.352230, 62.046680>,  <30.006273, 40.590866, 61.789646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813957, 40.352230, 62.046680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581134, -0.765585, -0.275976,
		0.656600, 0.240743, 0.714786,
		-0.480790, -0.596592, 0.642588,
		29.669720, 40.173252, 62.239456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436075, 40.264580, 62.174046>,  <30.006273, 40.590866, 61.789646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436075, 40.264580, 62.174046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123669, 40.017605, 62.211536>,  <29.936226, 39.869419, 62.234032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123669, 40.017605, 62.211536>,  <30.436075, 40.264580, 62.174046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123669, 40.017605, 62.211536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586673, -0.776830, -0.228801,
		0.214082, -0.123709, 0.968951,
		-0.781014, -0.617440, 0.093729,
		29.889364, 39.832375, 62.239655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686827, 39.606400, 62.475620>,  <30.436075, 40.264580, 62.174046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686827, 39.606400, 62.475620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334770, 39.474396, 62.339123>,  <30.123537, 39.395195, 62.257225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334770, 39.474396, 62.339123>,  <30.686827, 39.606400, 62.475620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334770, 39.474396, 62.339123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439316, -0.838598, -0.322109,
		-0.179868, -0.433415, 0.883062,
		-0.880141, -0.330006, -0.341243,
		30.070728, 39.375393, 62.236752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845827, 38.913940, 62.441799>,  <30.686827, 39.606400, 62.475620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845827, 38.913940, 62.441799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506569, 38.930992, 62.230579>,  <30.303015, 38.941223, 62.103848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506569, 38.930992, 62.230579>,  <30.845827, 38.913940, 62.441799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506569, 38.930992, 62.230579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311515, -0.766092, -0.562193,
		-0.428497, -0.641316, 0.636479,
		-0.848145, 0.042625, -0.528047,
		30.252125, 38.943779, 62.072166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417068, 38.161827, 62.402882>,  <30.845827, 38.913940, 62.441799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417068, 38.161827, 62.402882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339617, 38.410496, 62.099293>,  <30.293146, 38.559696, 61.917141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339617, 38.410496, 62.099293>,  <30.417068, 38.161827, 62.402882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339617, 38.410496, 62.099293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302277, -0.698171, -0.648989,
		-0.933347, -0.355083, -0.052729,
		-0.193631, 0.621670, -0.758969,
		30.281527, 38.596996, 61.871601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226242, 37.562840, 61.802353>,  <30.417068, 38.161827, 62.402882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226242, 37.562840, 61.802353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275349, 37.910805, 61.611279>,  <30.304811, 38.119583, 61.496635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275349, 37.910805, 61.611279>,  <30.226242, 37.562840, 61.802353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275349, 37.910805, 61.611279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342569, -0.488885, -0.802271,
		-0.931437, -0.065148, -0.358023,
		0.122766, 0.869912, -0.477683,
		30.312178, 38.171780, 61.467972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961653, 37.420254, 61.139851>,  <30.226242, 37.562840, 61.802353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961653, 37.420254, 61.139851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177275, 37.754719, 61.099361>,  <30.306648, 37.955399, 61.075069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177275, 37.754719, 61.099361>,  <29.961653, 37.420254, 61.139851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177275, 37.754719, 61.099361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408961, -0.364903, -0.836419,
		-0.736321, 0.409481, -0.538662,
		0.539057, 0.836165, -0.101223,
		30.338991, 38.005569, 61.068993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699671, 37.801517, 60.571011>,  <29.961653, 37.420254, 61.139851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699671, 37.801517, 60.571011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085730, 37.867382, 60.652382>,  <30.317364, 37.906902, 60.701202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085730, 37.867382, 60.652382>,  <29.699671, 37.801517, 60.571011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085730, 37.867382, 60.652382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243762, -0.282661, -0.927730,
		-0.095260, 0.944981, -0.312946,
		0.965145, 0.164660, 0.203424,
		30.375273, 37.916779, 60.713409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868441, 38.164665, 59.973560>,  <29.699671, 37.801517, 60.571011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868441, 38.164665, 59.973560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208559, 38.029980, 60.135361>,  <30.412630, 37.949169, 60.232441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208559, 38.029980, 60.135361>,  <29.868441, 38.164665, 59.973560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208559, 38.029980, 60.135361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284552, -0.352437, -0.891526,
		0.442748, 0.873163, -0.203865,
		0.850297, -0.336711, 0.404501,
		30.463648, 37.928967, 60.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505861, 38.428341, 59.557510>,  <29.868441, 38.164665, 59.973560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505861, 38.428341, 59.557510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615644, 38.097706, 59.754051>,  <30.681515, 37.899326, 59.871975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615644, 38.097706, 59.754051>,  <30.505861, 38.428341, 59.557510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615644, 38.097706, 59.754051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475048, -0.327715, -0.816659,
		0.836063, 0.457556, 0.302724,
		0.274460, -0.826587, 0.491351,
		30.697983, 37.849731, 59.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139349, 38.214943, 59.256481>,  <30.505861, 38.428341, 59.557510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139349, 38.214943, 59.256481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108582, 37.881691, 59.475563>,  <31.090122, 37.681740, 59.607014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108582, 37.881691, 59.475563>,  <31.139349, 38.214943, 59.256481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108582, 37.881691, 59.475563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348086, -0.537206, -0.768275,
		0.934302, 0.131555, 0.331320,
		-0.076917, -0.833128, 0.547705,
		31.085506, 37.631752, 59.639874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785885, 37.855377, 59.266277>,  <31.139349, 38.214943, 59.256481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785885, 37.855377, 59.266277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517321, 37.566467, 59.332645>,  <31.356182, 37.393120, 59.372467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517321, 37.566467, 59.332645>,  <31.785885, 37.855377, 59.266277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517321, 37.566467, 59.332645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357533, -0.511806, -0.781168,
		0.649138, -0.465161, 0.601868,
		-0.671409, -0.722274, 0.165922,
		31.315897, 37.349785, 59.382423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131321, 37.231728, 59.362663>,  <31.785885, 37.855377, 59.266277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131321, 37.231728, 59.362663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761862, 37.151867, 59.231808>,  <31.540188, 37.103951, 59.153294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761862, 37.151867, 59.231808>,  <32.131321, 37.231728, 59.362663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761862, 37.151867, 59.231808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383025, -0.451728, -0.805750,
		0.013098, -0.869528, 0.493710,
		-0.923645, -0.199657, -0.327135,
		31.484768, 37.091969, 59.133667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304165, 36.786732, 58.980236>,  <32.131321, 37.231728, 59.362663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304165, 36.786732, 58.980236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915398, 36.788654, 58.886127>,  <31.682137, 36.789806, 58.829662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915398, 36.788654, 58.886127>,  <32.304165, 36.786732, 58.980236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915398, 36.788654, 58.886127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179218, -0.632807, -0.753283,
		-0.152500, -0.774294, 0.614176,
		-0.971918, 0.004804, -0.235270,
		31.623821, 36.790096, 58.815548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079735, 36.105927, 58.827507>,  <32.304165, 36.786732, 58.980236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079735, 36.105927, 58.827507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788448, 36.285786, 58.620617>,  <31.613678, 36.393703, 58.496483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788448, 36.285786, 58.620617>,  <32.079735, 36.105927, 58.827507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788448, 36.285786, 58.620617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167544, -0.614985, -0.770534,
		-0.664555, -0.647771, 0.372504,
		-0.728214, 0.449651, -0.517222,
		31.569984, 36.420681, 58.465450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803652, 35.558094, 58.454674>,  <32.079735, 36.105927, 58.827507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803652, 35.558094, 58.454674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670654, 35.890129, 58.275612>,  <31.590857, 36.089352, 58.168175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670654, 35.890129, 58.275612>,  <31.803652, 35.558094, 58.454674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670654, 35.890129, 58.275612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220426, -0.393116, -0.892677,
		-0.916985, -0.395484, -0.052265,
		-0.332493, 0.830092, -0.447656,
		31.570906, 36.139156, 58.141315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390724, 35.300716, 57.925926>,  <31.803652, 35.558094, 58.454674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390724, 35.300716, 57.925926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513388, 35.668411, 57.827168>,  <31.586987, 35.889030, 57.767914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513388, 35.668411, 57.827168>,  <31.390724, 35.300716, 57.925926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513388, 35.668411, 57.827168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342410, -0.348570, -0.872499,
		-0.888097, 0.183019, -0.421649,
		0.306658, 0.919240, -0.246897,
		31.605385, 35.944183, 57.753098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094891, 35.404678, 57.261848>,  <31.390724, 35.300716, 57.925926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094891, 35.404678, 57.261848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381704, 35.681961, 57.291019>,  <31.553793, 35.848331, 57.308521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381704, 35.681961, 57.291019>,  <31.094891, 35.404678, 57.261848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381704, 35.681961, 57.291019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182584, -0.085816, -0.979438,
		-0.672698, 0.715608, -0.188102,
		0.717036, 0.693211, 0.072930,
		31.596815, 35.889923, 57.312897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.406292, 36.283428, 52.933369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.486519, 36.008389, 52.654232>,  <47.534653, 35.843365, 52.486752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.486519, 36.008389, 52.654232>,  <47.406292, 36.283428, 52.933369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486519, 36.008389, 52.654232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892874, 0.164851, -0.419047,
		0.403176, 0.707131, -0.580875,
		0.200563, -0.687597, -0.697842,
		47.546688, 35.802109, 52.444878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.240173, 36.601585, 52.299202>,  <47.406292, 36.283428, 52.933369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.240173, 36.601585, 52.299202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.243908, 36.206665, 52.235764>,  <47.246147, 35.969715, 52.197701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.243908, 36.206665, 52.235764>,  <47.240173, 36.601585, 52.299202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243908, 36.206665, 52.235764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876757, 0.068184, -0.476076,
		0.480843, 0.143498, -0.864985,
		0.009338, -0.987299, -0.158598,
		47.246708, 35.910477, 52.188183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119095, 36.454678, 51.600033>,  <47.240173, 36.601585, 52.299202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119095, 36.454678, 51.600033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.019173, 36.119190, 51.793591>,  <46.959221, 35.917900, 51.909725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.019173, 36.119190, 51.793591>,  <47.119095, 36.454678, 51.600033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.019173, 36.119190, 51.793591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909205, 0.031263, -0.415173,
		0.333084, -0.543673, -0.770373,
		-0.249802, -0.838714, 0.483897,
		46.944233, 35.867577, 51.938759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848328, 36.004482, 51.167263>,  <47.119095, 36.454678, 51.600033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848328, 36.004482, 51.167263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.712685, 35.867779, 51.517853>,  <46.631298, 35.785755, 51.728207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.712685, 35.867779, 51.517853>,  <46.848328, 36.004482, 51.167263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712685, 35.867779, 51.517853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870216, -0.239997, -0.430263,
		0.357398, -0.908627, -0.216020,
		-0.339104, -0.341758, 0.876476,
		46.610954, 35.765251, 51.780796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451244, 35.394772, 50.996140>,  <46.848328, 36.004482, 51.167263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451244, 35.394772, 50.996140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.318161, 35.520672, 51.351719>,  <46.238312, 35.596214, 51.565067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.318161, 35.520672, 51.351719>,  <46.451244, 35.394772, 50.996140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318161, 35.520672, 51.351719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937809, -0.209480, -0.276827,
		0.099085, -0.925769, 0.364874,
		-0.332712, 0.314753, 0.888951,
		46.218346, 35.615097, 51.618404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.016949, 34.849735, 51.195641>,  <46.451244, 35.394772, 50.996140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.016949, 34.849735, 51.195641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.912586, 35.164284, 51.419621>,  <45.849968, 35.353012, 51.554008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.912586, 35.164284, 51.419621>,  <46.016949, 34.849735, 51.195641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912586, 35.164284, 51.419621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959549, -0.147675, -0.239702,
		-0.105803, -0.599845, 0.793090,
		-0.260904, 0.786370, 0.559956,
		45.834316, 35.400196, 51.587608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498180, 34.629555, 51.529873>,  <46.016949, 34.849735, 51.195641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498180, 34.629555, 51.529873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.455765, 35.027081, 51.543060>,  <45.430313, 35.265594, 51.550972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.455765, 35.027081, 51.543060>,  <45.498180, 34.629555, 51.529873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455765, 35.027081, 51.543060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967134, -0.095375, -0.235700,
		-0.231098, -0.056878, 0.971266,
		-0.106041, 0.993815, 0.032968,
		45.423954, 35.325226, 51.552952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872410, 34.794003, 52.075272>,  <45.498180, 34.629555, 51.529873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872410, 34.794003, 52.075272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.909870, 35.123993, 51.852329>,  <44.932346, 35.321987, 51.718563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.909870, 35.123993, 51.852329>,  <44.872410, 34.794003, 52.075272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909870, 35.123993, 51.852329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969781, -0.051091, -0.238567,
		-0.225287, 0.562855, 0.795261,
		0.093648, 0.824975, -0.557357,
		44.937965, 35.371487, 51.685123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145405, 35.083607, 52.153088>,  <44.872410, 34.794003, 52.075272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145405, 35.083607, 52.153088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.288040, 35.283951, 51.837624>,  <44.373623, 35.404160, 51.648346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.288040, 35.283951, 51.837624>,  <44.145405, 35.083607, 52.153088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288040, 35.283951, 51.837624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897690, -0.050187, -0.437760,
		-0.258839, 0.864069, 0.431725,
		0.356588, 0.500864, -0.788657,
		44.395016, 35.434212, 51.601028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774799, 35.632736, 51.954662>,  <44.145405, 35.083607, 52.153088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774799, 35.632736, 51.954662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.924866, 35.526909, 51.599304>,  <44.014908, 35.463413, 51.386089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.924866, 35.526909, 51.599304>,  <43.774799, 35.632736, 51.954662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924866, 35.526909, 51.599304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886539, 0.177511, -0.427246,
		0.270737, 0.947889, -0.167955,
		0.375168, -0.264569, -0.888399,
		44.037415, 35.447536, 51.332783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500763, 36.145546, 51.610165>,  <43.774799, 35.632736, 51.954662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500763, 36.145546, 51.610165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624245, 35.877525, 51.340130>,  <43.698334, 35.716713, 51.178108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.624245, 35.877525, 51.340130>,  <43.500763, 36.145546, 51.610165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624245, 35.877525, 51.340130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896784, 0.031497, -0.441346,
		0.316986, 0.741650, -0.591165,
		0.308704, -0.670047, -0.675084,
		43.716858, 35.676510, 51.137604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231712, 36.422321, 51.025459>,  <43.500763, 36.145546, 51.610165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231712, 36.422321, 51.025459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.306755, 36.038548, 50.941280>,  <43.351780, 35.808285, 50.890774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.306755, 36.038548, 50.941280>,  <43.231712, 36.422321, 51.025459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306755, 36.038548, 50.941280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874807, -0.065773, -0.479987,
		0.446674, 0.274152, -0.851659,
		0.187605, -0.959435, -0.210451,
		43.363037, 35.750717, 50.878143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063042, 36.362583, 50.224987>,  <43.231712, 36.422321, 51.025459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063042, 36.362583, 50.224987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.065533, 36.000832, 50.395657>,  <43.067028, 35.783779, 50.498058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.065533, 36.000832, 50.395657>,  <43.063042, 36.362583, 50.224987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065533, 36.000832, 50.395657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874300, -0.212015, -0.436634,
		0.485346, -0.370328, -0.792020,
		0.006223, -0.904382, 0.426678,
		43.067398, 35.729515, 50.523659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980694, 35.863380, 49.743584>,  <43.063042, 36.362583, 50.224987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980694, 35.863380, 49.743584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.868015, 35.679600, 50.080524>,  <42.800407, 35.569332, 50.282688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.868015, 35.679600, 50.080524>,  <42.980694, 35.863380, 49.743584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868015, 35.679600, 50.080524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879853, -0.226515, -0.417792,
		0.382759, -0.858834, -0.340441,
		-0.281699, -0.459452, 0.842348,
		42.783504, 35.541763, 50.333229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620159, 35.239819, 49.487148>,  <42.980694, 35.863380, 49.743584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620159, 35.239819, 49.487148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.518646, 35.267803, 49.873039>,  <42.457741, 35.284595, 50.104572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.518646, 35.267803, 49.873039>,  <42.620159, 35.239819, 49.487148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518646, 35.267803, 49.873039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883926, -0.421780, -0.201934,
		0.392775, -0.903995, 0.168882,
		-0.253778, 0.069964, 0.964729,
		42.442513, 35.288792, 50.162457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368446, 34.624256, 49.657913>,  <42.620159, 35.239819, 49.487148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368446, 34.624256, 49.657913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.242275, 34.911846, 49.905651>,  <42.166573, 35.084400, 50.054295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.242275, 34.911846, 49.905651>,  <42.368446, 34.624256, 49.657913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.242275, 34.911846, 49.905651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937495, -0.337203, -0.086010,
		0.147004, -0.607759, 0.780397,
		-0.315425, 0.718974, 0.619341,
		42.147648, 35.127537, 50.091454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083607, 34.207649, 50.162006>,  <42.368446, 34.624256, 49.657913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083607, 34.207649, 50.162006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.926647, 34.575211, 50.145821>,  <41.832470, 34.795746, 50.136108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.926647, 34.575211, 50.145821>,  <42.083607, 34.207649, 50.162006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926647, 34.575211, 50.145821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910119, -0.381537, 0.161599,
		0.133056, 0.100235, 0.986027,
		-0.392403, 0.918903, -0.040460,
		41.808926, 34.850880, 50.133682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531380, 34.103004, 50.690865>,  <42.083607, 34.207649, 50.162006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531380, 34.103004, 50.690865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.450329, 34.432255, 50.478672>,  <41.401699, 34.629803, 50.351357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.450329, 34.432255, 50.478672>,  <41.531380, 34.103004, 50.690865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450329, 34.432255, 50.478672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955847, -0.283988, -0.075544,
		-0.212832, 0.491749, 0.844325,
		-0.202629, 0.823124, -0.530479,
		41.389542, 34.679192, 50.319527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884796, 34.372292, 50.943001>,  <41.531380, 34.103004, 50.690865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884796, 34.372292, 50.943001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.919277, 34.598343, 50.614803>,  <40.939964, 34.733974, 50.417885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.919277, 34.598343, 50.614803>,  <40.884796, 34.372292, 50.943001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919277, 34.598343, 50.614803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988988, -0.050907, -0.138966,
		-0.120301, 0.823434, 0.554512,
		0.086201, 0.565124, -0.820490,
		40.945137, 34.767879, 50.368656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296108, 34.866215, 50.913609>,  <40.884796, 34.372292, 50.943001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296108, 34.866215, 50.913609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.422680, 34.811543, 50.538120>,  <40.498623, 34.778740, 50.312828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.422680, 34.811543, 50.538120>,  <40.296108, 34.866215, 50.913609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422680, 34.811543, 50.538120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947629, -0.090637, -0.306241,
		-0.043225, 0.986460, -0.158203,
		0.316434, -0.136681, -0.938716,
		40.517609, 34.770538, 50.256504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780487, 35.259293, 50.468479>,  <40.296108, 34.866215, 50.913609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780487, 35.259293, 50.468479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950153, 34.962383, 50.260975>,  <40.051952, 34.784237, 50.136471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.950153, 34.962383, 50.260975>,  <39.780487, 35.259293, 50.468479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950153, 34.962383, 50.260975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903636, -0.309355, -0.296211,
		0.059390, 0.594412, -0.801965,
		0.424163, -0.742276, -0.518760,
		40.077404, 34.739700, 50.105347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368687, 35.204983, 49.803890>,  <39.780487, 35.259293, 50.468479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368687, 35.204983, 49.803890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575153, 34.867058, 49.860256>,  <39.699036, 34.664303, 49.894077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575153, 34.867058, 49.860256>,  <39.368687, 35.204983, 49.803890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575153, 34.867058, 49.860256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809390, -0.534946, -0.242322,
		0.280100, 0.011023, -0.959907,
		0.516170, -0.844814, 0.140917,
		39.730003, 34.613613, 49.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756561, 35.371235, 49.525860>,  <39.368687, 35.204983, 49.803890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756561, 35.371235, 49.525860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748123, 34.992504, 49.397434>,  <38.743061, 34.765266, 49.320381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.748123, 34.992504, 49.397434>,  <38.756561, 35.371235, 49.525860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748123, 34.992504, 49.397434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905117, -0.118308, 0.408369,
		-0.424638, 0.299212, -0.854491,
		-0.021096, -0.946824, -0.321061,
		38.741795, 34.708458, 49.301117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234116, 35.177109, 49.098438>,  <38.756561, 35.371235, 49.525860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234116, 35.177109, 49.098438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318901, 34.829762, 49.277771>,  <38.369774, 34.621353, 49.385372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.318901, 34.829762, 49.277771>,  <38.234116, 35.177109, 49.098438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318901, 34.829762, 49.277771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949030, -0.073401, 0.306521,
		-0.233265, -0.490456, -0.839667,
		0.211968, -0.868370, 0.448335,
		38.382492, 34.569252, 49.412270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734360, 34.708473, 48.783974>,  <38.234116, 35.177109, 49.098438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734360, 34.708473, 48.783974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862091, 34.573814, 49.138306>,  <37.938728, 34.493019, 49.350906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.862091, 34.573814, 49.138306>,  <37.734360, 34.708473, 48.783974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862091, 34.573814, 49.138306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946652, -0.070538, 0.314442,
		-0.043364, -0.938993, -0.341192,
		0.319326, -0.336626, 0.885841,
		37.957890, 34.472820, 49.404057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736237, 33.993832, 48.518749>,  <37.734360, 34.708473, 48.783974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736237, 33.993832, 48.518749> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794762, 33.695881, 48.258366>,  <37.829876, 33.517109, 48.102135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794762, 33.695881, 48.258366>,  <37.736237, 33.993832, 48.518749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794762, 33.695881, 48.258366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713780, -0.535099, 0.451870,
		-0.684916, 0.398528, -0.609971,
		0.146312, -0.744878, -0.650960,
		37.838654, 33.472416, 48.063076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025005, 33.950211, 48.175354>,  <37.736237, 33.993832, 48.518749>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025005, 33.950211, 48.175354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210030, 33.610397, 48.073898>,  <37.321045, 33.406509, 48.013027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.210030, 33.610397, 48.073898>,  <37.025005, 33.950211, 48.175354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210030, 33.610397, 48.073898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879397, -0.475995, -0.009475,
		-0.112681, 0.227431, -0.967253,
		0.462563, -0.849531, -0.253637,
		37.348797, 33.355537, 47.997807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741360, 33.797932, 47.565521>,  <37.025005, 33.950211, 48.175354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741360, 33.797932, 47.565521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839764, 33.475067, 47.780174>,  <36.898804, 33.281349, 47.908966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.839764, 33.475067, 47.780174>,  <36.741360, 33.797932, 47.565521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839764, 33.475067, 47.780174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904777, -0.389809, -0.171547,
		0.347648, -0.443327, -0.826197,
		0.246008, -0.807162, 0.536628,
		36.913567, 33.232918, 47.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416149, 33.287201, 47.156406>,  <36.741360, 33.797932, 47.565521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416149, 33.287201, 47.156406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462563, 33.125164, 47.519161>,  <36.490410, 33.027943, 47.736813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462563, 33.125164, 47.519161>,  <36.416149, 33.287201, 47.156406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462563, 33.125164, 47.519161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832714, -0.537371, -0.133492,
		0.541409, -0.739684, -0.399678,
		0.116033, -0.405091, 0.906883,
		36.497372, 33.003635, 47.791225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298283, 32.605011, 47.042645>,  <36.416149, 33.287201, 47.156406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298283, 32.605011, 47.042645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232193, 32.654816, 47.433990>,  <36.192539, 32.684700, 47.668797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.232193, 32.654816, 47.433990>,  <36.298283, 32.605011, 47.042645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232193, 32.654816, 47.433990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888971, -0.448408, -0.093064,
		0.427119, -0.885115, 0.184775,
		-0.165227, 0.124510, 0.978364,
		36.182625, 32.692169, 47.727501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071072, 31.964579, 47.235069>,  <36.298283, 32.605011, 47.042645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071072, 31.964579, 47.235069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947010, 32.204136, 47.530403>,  <35.872574, 32.347870, 47.707603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.947010, 32.204136, 47.530403>,  <36.071072, 31.964579, 47.235069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947010, 32.204136, 47.530403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832290, -0.546384, 0.093578,
		0.459456, -0.585482, 0.667915,
		-0.310150, 0.598895, 0.738331,
		35.853966, 32.383804, 47.751904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864098, 31.605160, 47.798115>,  <36.071072, 31.964579, 47.235069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864098, 31.605160, 47.798115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651848, 31.936848, 47.868343>,  <35.524498, 32.135860, 47.910480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.651848, 31.936848, 47.868343>,  <35.864098, 31.605160, 47.798115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651848, 31.936848, 47.868343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820781, -0.554389, 0.137735,
		0.211550, -0.071023, 0.974783,
		-0.530627, 0.829221, 0.175576,
		35.492661, 32.185616, 47.921017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353481, 31.312651, 48.176647>,  <35.864098, 31.605160, 47.798115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353481, 31.312651, 48.176647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211704, 31.681877, 48.116886>,  <35.126637, 31.903412, 48.081028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.211704, 31.681877, 48.116886>,  <35.353481, 31.312651, 48.176647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211704, 31.681877, 48.116886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934732, -0.345415, 0.083451,
		0.025424, 0.169233, 0.985248,
		-0.354442, 0.923065, -0.149406,
		35.105373, 31.958797, 48.072063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938255, 31.530327, 48.712410>,  <35.353481, 31.312651, 48.176647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938255, 31.530327, 48.712410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810402, 31.711987, 48.379765>,  <34.733692, 31.820982, 48.180176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810402, 31.711987, 48.379765>,  <34.938255, 31.530327, 48.712410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810402, 31.711987, 48.379765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869041, -0.490283, 0.066268,
		-0.377632, 0.743890, 0.551383,
		-0.319629, 0.454149, -0.831617,
		34.714512, 31.848230, 48.130280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270176, 31.775030, 48.929214>,  <34.938255, 31.530327, 48.712410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270176, 31.775030, 48.929214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269836, 31.795668, 48.529747>,  <34.269630, 31.808050, 48.290066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.269836, 31.795668, 48.529747>,  <34.270176, 31.775030, 48.929214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269836, 31.795668, 48.529747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807078, -0.589693, -0.029777,
		-0.590444, 0.805978, 0.042145,
		-0.000853, 0.051596, -0.998668,
		34.269581, 31.811146, 48.230148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.418873, 31.685970, 54.779339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763458, 31.840281, 54.647243>,  <29.970209, 31.932867, 54.567986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.763458, 31.840281, 54.647243>,  <29.418873, 31.685970, 54.779339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763458, 31.840281, 54.647243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129884, -0.461290, -0.877691,
		-0.490928, 0.798992, -0.347278,
		0.861464, 0.385778, -0.330236,
		30.021898, 31.956015, 54.548172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258724, 31.851688, 54.202770>,  <29.418873, 31.685970, 54.779339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258724, 31.851688, 54.202770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656729, 31.875708, 54.170906>,  <29.895531, 31.890120, 54.151787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.656729, 31.875708, 54.170906>,  <29.258724, 31.851688, 54.202770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.656729, 31.875708, 54.170906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065007, -0.215380, -0.974364,
		-0.075666, 0.974682, -0.210402,
		0.995012, 0.060049, -0.079658,
		29.955233, 31.893723, 54.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534143, 32.415417, 53.756977>,  <29.258724, 31.851688, 54.202770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534143, 32.415417, 53.756977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.820469, 32.137119, 53.780834>,  <29.992264, 31.970140, 53.795147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.820469, 32.137119, 53.780834>,  <29.534143, 32.415417, 53.756977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820469, 32.137119, 53.780834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017437, -0.103195, -0.994509,
		0.698076, 0.710841, -0.086000,
		0.715812, -0.695742, 0.059643,
		30.035212, 31.928396, 53.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896502, 32.435455, 53.152016>,  <29.534143, 32.415417, 53.756977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896502, 32.435455, 53.152016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.987389, 32.067387, 53.279549>,  <30.041920, 31.846546, 53.356068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.987389, 32.067387, 53.279549>,  <29.896502, 32.435455, 53.152016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987389, 32.067387, 53.279549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216645, -0.271434, -0.937757,
		0.949441, 0.282148, 0.137677,
		0.227216, -0.920172, 0.318837,
		30.055553, 31.791334, 53.375198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397104, 32.332272, 52.781284>,  <29.896502, 32.435455, 53.152016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397104, 32.332272, 52.781284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269442, 31.979181, 52.919235>,  <30.192844, 31.767328, 53.002007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.269442, 31.979181, 52.919235>,  <30.397104, 32.332272, 52.781284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269442, 31.979181, 52.919235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051364, -0.379489, -0.923769,
		0.946309, -0.277112, 0.166457,
		-0.319156, -0.882722, 0.344880,
		30.173695, 31.714365, 53.022697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863649, 31.896772, 52.636227>,  <30.397104, 32.332272, 52.781284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863649, 31.896772, 52.636227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546194, 31.657246, 52.679222>,  <30.355721, 31.513529, 52.705017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.546194, 31.657246, 52.679222>,  <30.863649, 31.896772, 52.636227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546194, 31.657246, 52.679222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181158, -0.401261, -0.897870,
		0.580791, -0.693113, 0.426937,
		-0.793639, -0.598818, 0.107486,
		30.308102, 31.477600, 52.711468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012260, 31.450539, 52.130676>,  <30.863649, 31.896772, 52.636227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012260, 31.450539, 52.130676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630793, 31.368887, 52.219082>,  <30.401913, 31.319895, 52.272125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.630793, 31.368887, 52.219082>,  <31.012260, 31.450539, 52.130676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630793, 31.368887, 52.219082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161280, -0.273272, -0.948320,
		0.253978, -0.940028, 0.227689,
		-0.953668, -0.204131, 0.221013,
		30.344692, 31.307648, 52.285385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932461, 30.782806, 51.865364>,  <31.012260, 31.450539, 52.130676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932461, 30.782806, 51.865364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569439, 30.948433, 51.893337>,  <30.351625, 31.047808, 51.910122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.569439, 30.948433, 51.893337>,  <30.932461, 30.782806, 51.865364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569439, 30.948433, 51.893337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196122, -0.270678, -0.942481,
		-0.371320, -0.869069, 0.326863,
		-0.907555, 0.414067, 0.069936,
		30.297173, 31.072653, 51.914318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510260, 30.363308, 51.430309>,  <30.932461, 30.782806, 51.865364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510260, 30.363308, 51.430309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308659, 30.702284, 51.497036>,  <30.187698, 30.905668, 51.537071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.308659, 30.702284, 51.497036>,  <30.510260, 30.363308, 51.430309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308659, 30.702284, 51.497036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386491, -0.048558, -0.921014,
		-0.772402, -0.528670, 0.352000,
		-0.504004, 0.847438, 0.166820,
		30.157457, 30.956514, 51.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827454, 30.210781, 51.275837>,  <30.510260, 30.363308, 51.430309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827454, 30.210781, 51.275837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856455, 30.607895, 51.237637>,  <29.873856, 30.846163, 51.214714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.856455, 30.607895, 51.237637>,  <29.827454, 30.210781, 51.275837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856455, 30.607895, 51.237637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307761, -0.068812, -0.948972,
		-0.948697, 0.098196, 0.300551,
		0.072503, 0.992785, -0.095503,
		29.878206, 30.905731, 51.208984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400938, 30.374760, 50.753284>,  <29.827454, 30.210781, 51.275837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400938, 30.374760, 50.753284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599426, 30.721025, 50.779785>,  <29.718519, 30.928785, 50.795685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599426, 30.721025, 50.779785>,  <29.400938, 30.374760, 50.753284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599426, 30.721025, 50.779785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132995, 0.151200, -0.979516,
		-0.857950, 0.477244, 0.190158,
		0.496220, 0.865666, 0.066251,
		29.748293, 30.980724, 50.799660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981730, 30.746395, 50.325493>,  <29.400938, 30.374760, 50.753284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981730, 30.746395, 50.325493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.346540, 30.907837, 50.354641>,  <29.565428, 31.004702, 50.372131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.346540, 30.907837, 50.354641>,  <28.981730, 30.746395, 50.325493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346540, 30.907837, 50.354641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024575, 0.123580, -0.992030,
		-0.409392, 0.906550, 0.102790,
		0.912028, 0.403603, 0.072871,
		29.620150, 31.028917, 50.376503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063112, 31.430971, 50.027748>,  <28.981730, 30.746395, 50.325493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063112, 31.430971, 50.027748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390368, 31.200983, 50.030830>,  <29.586721, 31.062990, 50.032681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390368, 31.200983, 50.030830>,  <29.063112, 31.430971, 50.027748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390368, 31.200983, 50.030830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070648, -0.113801, -0.990988,
		0.570666, 0.810221, -0.133726,
		0.818138, -0.574970, 0.007702,
		29.635809, 31.028492, 50.033142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584290, 31.645222, 49.611641>,  <29.063112, 31.430971, 50.027748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584290, 31.645222, 49.611641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708096, 31.264963, 49.620338>,  <29.782379, 31.036808, 49.625557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.708096, 31.264963, 49.620338>,  <29.584290, 31.645222, 49.611641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708096, 31.264963, 49.620338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240710, 0.056213, -0.968968,
		0.919923, 0.305143, 0.246229,
		0.309515, -0.950646, 0.021739,
		29.800951, 30.979769, 49.626862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021564, 32.197254, 49.565186>,  <29.584290, 31.645222, 49.611641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021564, 32.197254, 49.565186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208637, 32.298004, 49.226288>,  <30.320881, 32.358456, 49.022949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.208637, 32.298004, 49.226288>,  <30.021564, 32.197254, 49.565186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208637, 32.298004, 49.226288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082282, 0.941970, 0.325457,
		0.880058, -0.221924, 0.419819,
		0.467684, 0.251878, -0.847248,
		30.348942, 32.373566, 48.972115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692606, 32.626926, 49.730515>,  <30.021564, 32.197254, 49.565186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692606, 32.626926, 49.730515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526056, 32.722912, 49.379734>,  <30.426126, 32.780502, 49.169266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526056, 32.722912, 49.379734>,  <30.692606, 32.626926, 49.730515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526056, 32.722912, 49.379734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069645, 0.970126, 0.232391,
		0.906522, 0.035687, -0.420648,
		-0.416375, 0.239964, -0.876955,
		30.401144, 32.794903, 49.116646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910576, 33.304966, 49.696598>,  <30.692606, 32.626926, 49.730515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910576, 33.304966, 49.696598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659786, 33.322807, 49.385494>,  <30.509312, 33.333511, 49.198833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.659786, 33.322807, 49.385494>,  <30.910576, 33.304966, 49.696598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659786, 33.322807, 49.385494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029091, 0.996322, 0.080595,
		0.778495, 0.073157, -0.623373,
		-0.626976, 0.044608, -0.777760,
		30.471693, 33.336189, 49.152164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116020, 33.819572, 49.123573>,  <30.910576, 33.304966, 49.696598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116020, 33.819572, 49.123573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720390, 33.769215, 49.092907>,  <30.483011, 33.738998, 49.074509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.720390, 33.769215, 49.092907>,  <31.116020, 33.819572, 49.123573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.720390, 33.769215, 49.092907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130659, 0.989571, 0.060646,
		0.068227, 0.070000, -0.995211,
		-0.989077, -0.125895, -0.076661,
		30.423668, 33.731445, 49.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896427, 34.414509, 48.670258>,  <31.116020, 33.819572, 49.123573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896427, 34.414509, 48.670258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585953, 34.270432, 48.877254>,  <30.399668, 34.183987, 49.001453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585953, 34.270432, 48.877254>,  <30.896427, 34.414509, 48.670258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585953, 34.270432, 48.877254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320495, 0.932209, 0.168135,
		-0.542969, -0.035348, -0.839009,
		-0.776188, -0.360190, 0.517489,
		30.353096, 34.162373, 49.032501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333742, 34.741158, 48.414452>,  <30.896427, 34.414509, 48.670258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333742, 34.741158, 48.414452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218458, 34.628319, 48.780479>,  <30.149288, 34.560616, 49.000095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218458, 34.628319, 48.780479>,  <30.333742, 34.741158, 48.414452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218458, 34.628319, 48.780479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240390, 0.946334, 0.216020,
		-0.926902, -0.157715, -0.340555,
		-0.288209, -0.282095, 0.915073,
		30.131996, 34.543690, 49.055000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665028, 35.095055, 48.518982>,  <30.333742, 34.741158, 48.414452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665028, 35.095055, 48.518982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.770632, 34.978020, 48.886612>,  <29.833994, 34.907799, 49.107189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.770632, 34.978020, 48.886612>,  <29.665028, 35.095055, 48.518982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770632, 34.978020, 48.886612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345536, 0.860941, 0.373342,
		-0.900502, -0.416138, 0.126195,
		0.264008, -0.292591, 0.919071,
		29.849834, 34.890244, 49.162334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078983, 35.200504, 49.021141>,  <29.665028, 35.095055, 48.518982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078983, 35.200504, 49.021141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383917, 35.175335, 49.278790>,  <29.566877, 35.160233, 49.433376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.383917, 35.175335, 49.278790>,  <29.078983, 35.200504, 49.021141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383917, 35.175335, 49.278790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413919, 0.717688, 0.559996,
		-0.497513, -0.693516, 0.521072,
		0.762333, -0.062924, 0.644118,
		29.612617, 35.156456, 49.472027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779484, 35.355724, 49.694004>,  <29.078983, 35.200504, 49.021141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779484, 35.355724, 49.694004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170269, 35.423744, 49.745586>,  <29.404739, 35.464554, 49.776535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.170269, 35.423744, 49.745586>,  <28.779484, 35.355724, 49.694004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170269, 35.423744, 49.745586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213333, 0.794475, 0.568593,
		-0.005763, -0.583004, 0.812449,
		0.976963, 0.170045, 0.128953,
		29.463358, 35.474758, 49.784271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921347, 35.544075, 50.397278>,  <28.779484, 35.355724, 49.694004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921347, 35.544075, 50.397278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.256035, 35.716873, 50.262650>,  <29.456848, 35.820553, 50.181873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.256035, 35.716873, 50.262650>,  <28.921347, 35.544075, 50.397278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256035, 35.716873, 50.262650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106469, 0.731187, 0.673817,
		0.537184, -0.527961, 0.657793,
		0.836719, 0.431998, -0.336571,
		29.507050, 35.846474, 50.161678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278439, 35.761547, 51.016430>,  <28.921347, 35.544075, 50.397278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278439, 35.761547, 51.016430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433899, 35.968784, 50.711658>,  <29.527174, 36.093128, 50.528797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.433899, 35.968784, 50.711658>,  <29.278439, 35.761547, 51.016430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433899, 35.968784, 50.711658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022994, 0.832130, 0.554104,
		0.921099, -0.197833, 0.335320,
		0.388650, 0.518095, -0.761925,
		29.550493, 36.124214, 50.483082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776596, 36.202793, 51.332340>,  <29.278439, 35.761547, 51.016430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776596, 36.202793, 51.332340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.698353, 36.374016, 50.979408>,  <29.651407, 36.476749, 50.767651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.698353, 36.374016, 50.979408>,  <29.776596, 36.202793, 51.332340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698353, 36.374016, 50.979408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182801, 0.899856, 0.396035,
		0.963495, -0.083824, -0.254266,
		-0.195606, 0.428058, -0.882329,
		29.639671, 36.502434, 50.714710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.247578, 36.811852, 51.283134>,  <29.776596, 36.202793, 51.332340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.247578, 36.811852, 51.283134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975103, 36.885124, 50.999607>,  <29.811619, 36.929089, 50.829491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.975103, 36.885124, 50.999607>,  <30.247578, 36.811852, 51.283134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975103, 36.885124, 50.999607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014592, 0.964601, 0.263311,
		0.731965, 0.189707, -0.654400,
		-0.681186, 0.183186, -0.708822,
		29.770748, 36.940079, 50.786961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425976, 37.425983, 50.988857>,  <30.247578, 36.811852, 51.283134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425976, 37.425983, 50.988857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.032068, 37.398991, 50.924759>,  <29.795725, 37.382797, 50.886299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.032068, 37.398991, 50.924759>,  <30.425976, 37.425983, 50.988857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032068, 37.398991, 50.924759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139216, 0.858154, 0.494157,
		0.104170, 0.508938, -0.854477,
		-0.984768, -0.067480, -0.160246,
		29.736637, 37.378746, 50.876686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731413, 38.105949, 50.584080>,  <30.425976, 37.425983, 50.988857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731413, 38.105949, 50.584080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059767, 38.327927, 50.638020>,  <31.256779, 38.461113, 50.670383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059767, 38.327927, 50.638020>,  <30.731413, 38.105949, 50.584080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059767, 38.327927, 50.638020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328814, -0.266201, -0.906101,
		-0.466937, 0.788146, -0.400994,
		0.820884, 0.554945, 0.134854,
		31.306032, 38.494411, 50.678474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802336, 38.471352, 49.975018>,  <30.731413, 38.105949, 50.584080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802336, 38.471352, 49.975018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170029, 38.462360, 50.132248>,  <31.390644, 38.456966, 50.226585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.170029, 38.462360, 50.132248>,  <30.802336, 38.471352, 49.975018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170029, 38.462360, 50.132248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385318, -0.153744, -0.909886,
		0.080887, 0.987855, -0.132664,
		0.919232, -0.022480, 0.393074,
		31.445799, 38.455616, 50.250172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248436, 38.835800, 49.481647>,  <30.802336, 38.471352, 49.975018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248436, 38.835800, 49.481647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.495899, 38.626461, 49.716038>,  <31.644377, 38.500858, 49.856674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.495899, 38.626461, 49.716038>,  <31.248436, 38.835800, 49.481647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495899, 38.626461, 49.716038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550068, -0.244011, -0.798677,
		0.560968, 0.816437, 0.136915,
		0.618660, -0.523345, 0.585978,
		31.681498, 38.469460, 49.891830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844952, 38.922882, 49.109688>,  <31.248436, 38.835800, 49.481647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844952, 38.922882, 49.109688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958750, 38.631905, 49.359455>,  <32.027027, 38.457317, 49.509315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.958750, 38.631905, 49.359455>,  <31.844952, 38.922882, 49.109688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958750, 38.631905, 49.359455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699805, -0.287588, -0.653885,
		0.655236, 0.622996, 0.427248,
		0.284497, -0.727440, 0.624414,
		32.044098, 38.413673, 49.546780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599972, 38.944221, 49.087536>,  <31.844952, 38.922882, 49.109688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599972, 38.944221, 49.087536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465424, 38.584267, 49.198574>,  <32.384697, 38.368294, 49.265198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465424, 38.584267, 49.198574>,  <32.599972, 38.944221, 49.087536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465424, 38.584267, 49.198574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689707, -0.436114, -0.578021,
		0.641219, -0.002964, 0.767352,
		-0.336367, -0.899887, 0.277600,
		32.364513, 38.314301, 49.281853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169167, 38.522087, 49.159794>,  <32.599972, 38.944221, 49.087536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169167, 38.522087, 49.159794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884506, 38.247715, 49.099075>,  <32.713711, 38.083092, 49.062645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.884506, 38.247715, 49.099075>,  <33.169167, 38.522087, 49.159794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884506, 38.247715, 49.099075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654279, -0.568427, -0.498808,
		0.255862, -0.454298, 0.853316,
		-0.711655, -0.685933, -0.151799,
		32.671009, 38.041935, 49.053535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402420, 37.812164, 49.379368>,  <33.169167, 38.522087, 49.159794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402420, 37.812164, 49.379368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112427, 37.755466, 49.109760>,  <32.938431, 37.721447, 48.947994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.112427, 37.755466, 49.109760>,  <33.402420, 37.812164, 49.379368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112427, 37.755466, 49.109760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634250, -0.518955, -0.573073,
		-0.268556, -0.842968, 0.466136,
		-0.724985, -0.141744, -0.674021,
		32.894932, 37.712944, 48.907555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484673, 37.189793, 49.111042>,  <33.402420, 37.812164, 49.379368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484673, 37.189793, 49.111042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218182, 37.290337, 48.830196>,  <33.058289, 37.350662, 48.661690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218182, 37.290337, 48.830196>,  <33.484673, 37.189793, 49.111042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218182, 37.290337, 48.830196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294323, -0.776436, -0.557244,
		-0.685212, -0.577899, 0.443303,
		-0.666227, 0.251356, -0.702113,
		33.018314, 37.365746, 48.619564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209183, 36.614029, 48.986782>,  <33.484673, 37.189793, 49.111042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209183, 36.614029, 48.986782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167561, 36.846436, 48.663898>,  <33.142590, 36.985882, 48.470169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167561, 36.846436, 48.663898>,  <33.209183, 36.614029, 48.986782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167561, 36.846436, 48.663898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639198, -0.582736, -0.501841,
		-0.761970, -0.568186, -0.310750,
		-0.104054, 0.581019, -0.807211,
		33.136345, 37.020741, 48.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199287, 36.139584, 48.467594>,  <33.209183, 36.614029, 48.986782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199287, 36.139584, 48.467594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274666, 36.485031, 48.280556>,  <33.319893, 36.692299, 48.168335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.274666, 36.485031, 48.280556>,  <33.199287, 36.139584, 48.467594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274666, 36.485031, 48.280556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505396, -0.493520, -0.707823,
		-0.842058, -0.102930, -0.529475,
		0.188450, 0.863623, -0.467592,
		33.331200, 36.744118, 48.140278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173191, 36.045380, 47.754749>,  <33.199287, 36.139584, 48.467594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173191, 36.045380, 47.754749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398941, 36.375488, 47.762794>,  <33.534389, 36.573555, 47.767620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398941, 36.375488, 47.762794>,  <33.173191, 36.045380, 47.754749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398941, 36.375488, 47.762794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620074, -0.407710, -0.670284,
		-0.544968, 0.390762, -0.741832,
		0.564374, 0.825274, 0.020112,
		33.568253, 36.623070, 47.768829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144691, 36.102982, 47.107407>,  <33.173191, 36.045380, 47.754749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144691, 36.102982, 47.107407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498245, 36.211708, 47.259655>,  <33.710377, 36.276943, 47.351002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.498245, 36.211708, 47.259655>,  <33.144691, 36.102982, 47.107407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498245, 36.211708, 47.259655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463854, -0.405163, -0.787834,
		-0.059934, 0.872902, -0.484200,
		0.883882, 0.271816, 0.380616,
		33.763409, 36.293251, 47.373840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.720865, 40.744061, 55.644611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485910, 41.032925, 55.498486>,  <30.344938, 41.206245, 55.410809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485910, 41.032925, 55.498486>,  <30.720865, 40.744061, 55.644611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485910, 41.032925, 55.498486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002679, -0.453129, -0.891441,
		-0.809302, -0.522642, 0.268097,
		-0.587387, 0.722163, -0.365318,
		30.309694, 41.249573, 55.388889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140652, 40.417377, 55.229351>,  <30.720865, 40.744061, 55.644611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140652, 40.417377, 55.229351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191525, 40.785976, 55.082565>,  <30.222048, 41.007137, 54.994492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.191525, 40.785976, 55.082565>,  <30.140652, 40.417377, 55.229351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191525, 40.785976, 55.082565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053240, -0.363096, -0.930229,
		-0.990449, 0.137848, 0.002880,
		0.127184, 0.921498, -0.366967,
		30.229679, 41.062428, 54.972477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900984, 40.326233, 54.608006>,  <30.140652, 40.417377, 55.229351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900984, 40.326233, 54.608006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069187, 40.686073, 54.560863>,  <30.170109, 40.901978, 54.532578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069187, 40.686073, 54.560863>,  <29.900984, 40.326233, 54.608006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069187, 40.686073, 54.560863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156567, -0.199898, -0.967227,
		-0.893676, 0.388277, -0.224907,
		0.420510, 0.899601, -0.117853,
		30.195341, 40.955952, 54.525509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538429, 40.765968, 54.139740>,  <29.900984, 40.326233, 54.608006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538429, 40.765968, 54.139740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915356, 40.899509, 54.130077>,  <30.141512, 40.979633, 54.124279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.915356, 40.899509, 54.130077>,  <29.538429, 40.765968, 54.139740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915356, 40.899509, 54.130077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021807, -0.133252, -0.990842,
		-0.334010, 0.933161, -0.132846,
		0.942317, 0.333848, -0.024158,
		30.198051, 40.999664, 54.122829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564180, 40.843700, 53.451897>,  <29.538429, 40.765968, 54.139740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564180, 40.843700, 53.451897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945656, 40.904617, 53.555649>,  <30.174541, 40.941170, 53.617901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.945656, 40.904617, 53.555649>,  <29.564180, 40.843700, 53.451897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945656, 40.904617, 53.555649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280065, -0.135054, -0.950433,
		-0.109716, 0.979064, -0.171453,
		0.953691, 0.152296, 0.259384,
		30.231764, 40.950306, 53.633465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891964, 41.380863, 52.939083>,  <29.564180, 40.843700, 53.451897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891964, 41.380863, 52.939083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162701, 41.141659, 53.110790>,  <30.325142, 40.998135, 53.213814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162701, 41.141659, 53.110790>,  <29.891964, 41.380863, 52.939083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162701, 41.141659, 53.110790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261008, -0.350291, -0.899539,
		0.688304, 0.720885, -0.081005,
		0.676840, -0.598014, 0.429264,
		30.365753, 40.962254, 53.239571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346191, 41.373520, 52.472393>,  <29.891964, 41.380863, 52.939083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346191, 41.373520, 52.472393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446730, 41.052952, 52.689484>,  <30.507053, 40.860611, 52.819740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.446730, 41.052952, 52.689484>,  <30.346191, 41.373520, 52.472393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446730, 41.052952, 52.689484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238683, -0.492093, -0.837182,
		0.938006, 0.339963, 0.067599,
		0.251346, -0.801417, 0.542730,
		30.522133, 40.812527, 52.852303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803139, 41.030251, 52.087379>,  <30.346191, 41.373520, 52.472393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803139, 41.030251, 52.087379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759148, 40.738983, 52.357986>,  <30.732752, 40.564224, 52.520351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.759148, 40.738983, 52.357986>,  <30.803139, 41.030251, 52.087379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.759148, 40.738983, 52.357986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364222, -0.662829, -0.654218,
		0.924796, 0.174453, 0.338111,
		-0.109979, -0.728165, 0.676521,
		30.726154, 40.520535, 52.560944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450817, 40.627697, 52.063854>,  <30.803139, 41.030251, 52.087379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450817, 40.627697, 52.063854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.154823, 40.406010, 52.216309>,  <30.977226, 40.272999, 52.307781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.154823, 40.406010, 52.216309>,  <31.450817, 40.627697, 52.063854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154823, 40.406010, 52.216309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207044, -0.726815, -0.654884,
		0.639966, -0.405691, 0.652579,
		-0.739984, -0.554216, 0.381141,
		30.932829, 40.239746, 52.330650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826437, 39.955685, 52.166206>,  <31.450817, 40.627697, 52.063854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826437, 39.955685, 52.166206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433949, 39.878529, 52.166599>,  <31.198456, 39.832237, 52.166836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433949, 39.878529, 52.166599>,  <31.826437, 39.955685, 52.166206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433949, 39.878529, 52.166599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158931, -0.811341, -0.562554,
		0.109305, -0.551834, 0.826760,
		-0.981220, -0.192888, 0.000980,
		31.139582, 39.820663, 52.166893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789562, 39.338985, 52.198391>,  <31.826437, 39.955685, 52.166206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789562, 39.338985, 52.198391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425623, 39.416744, 52.051754>,  <31.207260, 39.463398, 51.963772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.425623, 39.416744, 52.051754>,  <31.789562, 39.338985, 52.198391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425623, 39.416744, 52.051754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039950, -0.838323, -0.543707,
		-0.413014, -0.509336, 0.754981,
		-0.909848, 0.194397, -0.366588,
		31.152668, 39.475063, 51.941776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590046, 38.707520, 52.106926>,  <31.789562, 39.338985, 52.198391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590046, 38.707520, 52.106926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349001, 38.932976, 51.880947>,  <31.204374, 39.068249, 51.745358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.349001, 38.932976, 51.880947>,  <31.590046, 38.707520, 52.106926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349001, 38.932976, 51.880947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130784, -0.628606, -0.766648,
		-0.787245, -0.535877, 0.305090,
		-0.602611, 0.563639, -0.564951,
		31.168217, 39.102066, 51.711460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186705, 38.224777, 51.883873>,  <31.590046, 38.707520, 52.106926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186705, 38.224777, 51.883873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.183336, 38.548931, 51.649536>,  <31.181314, 38.743423, 51.508934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.183336, 38.548931, 51.649536>,  <31.186705, 38.224777, 51.883873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.183336, 38.548931, 51.649536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062773, -0.584280, -0.809121,
		-0.997992, -0.043590, -0.045949,
		-0.008422, 0.810381, -0.585843,
		31.180809, 38.792046, 51.473782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834444, 38.023476, 51.427071>,  <31.186705, 38.224777, 51.883873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834444, 38.023476, 51.427071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037634, 38.327007, 51.264034>,  <31.159548, 38.509129, 51.166210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.037634, 38.327007, 51.264034>,  <30.834444, 38.023476, 51.427071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037634, 38.327007, 51.264034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189932, -0.560220, -0.806275,
		-0.840170, 0.332153, -0.428705,
		0.507976, 0.758833, -0.407594,
		31.190027, 38.554657, 51.141758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134920, 38.145969, 51.076607>,  <30.834444, 38.023476, 51.427071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134920, 38.145969, 51.076607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789265, 37.944675, 51.078175>,  <29.581871, 37.823898, 51.079117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.789265, 37.944675, 51.078175>,  <30.134920, 38.145969, 51.076607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789265, 37.944675, 51.078175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407744, 0.704680, 0.580664,
		-0.294975, 0.500176, -0.814134,
		-0.864138, -0.503239, 0.003919,
		29.530024, 37.793705, 51.079350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502981, 38.660809, 50.950848>,  <30.134920, 38.145969, 51.076607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502981, 38.660809, 50.950848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369762, 38.321815, 51.116184>,  <29.289831, 38.118420, 51.215385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.369762, 38.321815, 51.116184>,  <29.502981, 38.660809, 50.950848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369762, 38.321815, 51.116184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602000, 0.528508, 0.598560,
		-0.725724, -0.049482, -0.686204,
		-0.333047, -0.847485, 0.413339,
		29.269848, 38.067570, 51.240185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749155, 38.619232, 50.815098>,  <29.502981, 38.660809, 50.950848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749155, 38.619232, 50.815098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819384, 38.377777, 51.126171>,  <28.861521, 38.232903, 51.312817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819384, 38.377777, 51.126171>,  <28.749155, 38.619232, 50.815098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819384, 38.377777, 51.126171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698483, 0.480303, 0.530500,
		-0.693755, -0.636342, -0.337302,
		0.175572, -0.603637, 0.777687,
		28.872055, 38.196686, 51.359478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097973, 38.569878, 51.102509>,  <28.749155, 38.619232, 50.815098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097973, 38.569878, 51.102509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341654, 38.440353, 51.392067>,  <28.487862, 38.362640, 51.565800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.341654, 38.440353, 51.392067>,  <28.097973, 38.569878, 51.102509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341654, 38.440353, 51.392067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514139, 0.533715, 0.671423,
		-0.603765, -0.781214, 0.158657,
		0.609203, -0.323810, 0.723891,
		28.524414, 38.343212, 51.609234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678181, 38.279694, 51.628304>,  <28.097973, 38.569878, 51.102509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678181, 38.279694, 51.628304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026051, 38.376129, 51.800606>,  <28.234772, 38.433990, 51.903988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.026051, 38.376129, 51.800606>,  <27.678181, 38.279694, 51.628304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026051, 38.376129, 51.800606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492870, 0.472450, 0.730664,
		-0.027356, -0.847743, 0.529701,
		0.869672, 0.241086, 0.430752,
		28.286953, 38.448456, 51.929832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550575, 38.185127, 52.281647>,  <27.678181, 38.279694, 51.628304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550575, 38.185127, 52.281647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882414, 38.405735, 52.316502>,  <28.081516, 38.538101, 52.337414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.882414, 38.405735, 52.316502>,  <27.550575, 38.185127, 52.281647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882414, 38.405735, 52.316502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307404, 0.320853, 0.895855,
		0.466124, -0.769985, 0.435719,
		0.829597, 0.551521, 0.087139,
		28.131292, 38.571190, 52.342644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713474, 38.092266, 52.990162>,  <27.550575, 38.185127, 52.281647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713474, 38.092266, 52.990162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920671, 38.401878, 52.844528>,  <28.044991, 38.587646, 52.757149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.920671, 38.401878, 52.844528>,  <27.713474, 38.092266, 52.990162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920671, 38.401878, 52.844528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092243, 0.473699, 0.875843,
		0.850396, -0.420097, 0.316772,
		0.517993, 0.774033, -0.364081,
		28.076069, 38.634087, 52.735302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154318, 38.206505, 53.567905>,  <27.713474, 38.092266, 52.990162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154318, 38.206505, 53.567905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138988, 38.543388, 53.352791>,  <28.129791, 38.745518, 53.223721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138988, 38.543388, 53.352791>,  <28.154318, 38.206505, 53.567905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138988, 38.543388, 53.352791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472319, 0.459001, 0.752484,
		0.880594, 0.282843, 0.380203,
		-0.038322, 0.842210, -0.537786,
		28.127493, 38.796051, 53.191456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423471, 38.660923, 53.985252>,  <28.154318, 38.206505, 53.567905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423471, 38.660923, 53.985252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207373, 38.879543, 53.729309>,  <28.077713, 39.010715, 53.575745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.207373, 38.879543, 53.729309>,  <28.423471, 38.660923, 53.985252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.207373, 38.879543, 53.729309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357637, 0.539162, 0.762496,
		0.761727, 0.640774, -0.095816,
		-0.540248, 0.546547, -0.639858,
		28.045298, 39.043507, 53.537350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522863, 39.294380, 54.251484>,  <28.423471, 38.660923, 53.985252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522863, 39.294380, 54.251484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185101, 39.296726, 54.037216>,  <27.982443, 39.298134, 53.908657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185101, 39.296726, 54.037216>,  <28.522863, 39.294380, 54.251484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185101, 39.296726, 54.037216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478075, 0.442910, 0.758469,
		0.241704, 0.896547, -0.371191,
		-0.844407, 0.005868, -0.535670,
		27.931778, 39.298485, 53.876514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302013, 39.999519, 54.383881>,  <28.522863, 39.294380, 54.251484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302013, 39.999519, 54.383881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.981922, 39.801952, 54.247829>,  <27.789867, 39.683414, 54.166199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.981922, 39.801952, 54.247829>,  <28.302013, 39.999519, 54.383881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981922, 39.801952, 54.247829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535674, 0.333717, 0.775684,
		-0.269614, 0.802921, -0.531626,
		-0.800226, -0.493913, -0.340129,
		27.741854, 39.653778, 54.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770161, 40.484497, 54.637589>,  <28.302013, 39.999519, 54.383881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770161, 40.484497, 54.637589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575069, 40.162910, 54.501492>,  <27.458014, 39.969959, 54.419834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.575069, 40.162910, 54.501492>,  <27.770161, 40.484497, 54.637589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575069, 40.162910, 54.501492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752761, 0.189924, 0.630301,
		-0.442120, 0.563535, -0.697824,
		-0.487730, -0.803963, -0.340238,
		27.428751, 39.921722, 54.399422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022470, 40.611626, 54.448048>,  <27.770161, 40.484497, 54.637589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022470, 40.611626, 54.448048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.054956, 40.228199, 54.557262>,  <27.074448, 39.998142, 54.622791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.054956, 40.228199, 54.557262>,  <27.022470, 40.611626, 54.448048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054956, 40.228199, 54.557262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797274, 0.101917, 0.594951,
		-0.598129, -0.266008, -0.755964,
		0.081216, -0.958568, 0.273040,
		27.079321, 39.940628, 54.639175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411448, 40.387581, 54.541519>,  <27.022470, 40.611626, 54.448048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411448, 40.387581, 54.541519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.599276, 40.117607, 54.769192>,  <26.711973, 39.955624, 54.905796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.599276, 40.117607, 54.769192>,  <26.411448, 40.387581, 54.541519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.599276, 40.117607, 54.769192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566039, 0.264615, 0.780755,
		-0.677572, -0.688798, -0.257784,
		0.469570, -0.674934, 0.569182,
		26.740147, 39.915127, 54.939945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.473087, 38.352543, 58.363140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140877, 38.467335, 58.172195>,  <33.941551, 38.536209, 58.057629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.140877, 38.467335, 58.172195>,  <34.473087, 38.352543, 58.363140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140877, 38.467335, 58.172195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315416, -0.464055, -0.827747,
		-0.459039, -0.838041, 0.294907,
		-0.830540, 0.286950, -0.477351,
		33.891720, 38.553429, 58.028988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228432, 37.854763, 58.029205>,  <34.473087, 38.352543, 58.363140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228432, 37.854763, 58.029205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029858, 38.123196, 57.808949>,  <33.910713, 38.284256, 57.676796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029858, 38.123196, 57.808949>,  <34.228432, 37.854763, 58.029205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029858, 38.123196, 57.808949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190779, -0.534474, -0.823372,
		-0.846853, -0.513798, 0.137302,
		-0.496431, 0.671081, -0.550643,
		33.880928, 38.324520, 57.643757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913731, 37.430531, 57.590302>,  <34.228432, 37.854763, 58.029205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913731, 37.430531, 57.590302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904675, 37.784012, 57.403301>,  <33.899242, 37.996101, 57.291103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.904675, 37.784012, 57.403301>,  <33.913731, 37.430531, 57.590302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904675, 37.784012, 57.403301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065608, -0.465295, -0.882721,
		-0.997589, -0.050658, -0.047443,
		-0.022642, 0.883705, -0.467496,
		33.897881, 38.049122, 57.263054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460972, 37.426743, 56.968655>,  <33.913731, 37.430531, 57.590302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460972, 37.426743, 56.968655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716892, 37.730331, 56.920315>,  <33.870445, 37.912487, 56.891312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716892, 37.730331, 56.920315>,  <33.460972, 37.426743, 56.968655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716892, 37.730331, 56.920315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290346, -0.384303, -0.876362,
		-0.711582, 0.525611, -0.466245,
		0.639804, 0.758976, -0.120854,
		33.908833, 37.958023, 56.884060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256279, 37.856602, 56.309643>,  <33.460972, 37.426743, 56.968655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256279, 37.856602, 56.309643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647179, 37.903065, 56.380619>,  <33.881718, 37.930943, 56.423203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.647179, 37.903065, 56.380619>,  <33.256279, 37.856602, 56.309643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647179, 37.903065, 56.380619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208642, -0.376594, -0.902577,
		-0.038017, 0.919067, -0.392263,
		0.977253, 0.116155, 0.177439,
		33.940353, 37.937912, 56.433849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503826, 37.960918, 55.656116>,  <33.256279, 37.856602, 56.309643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503826, 37.960918, 55.656116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844074, 37.900024, 55.857422>,  <34.048222, 37.863487, 55.978207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844074, 37.900024, 55.857422>,  <33.503826, 37.960918, 55.656116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844074, 37.900024, 55.857422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392557, -0.452886, -0.800496,
		0.349783, 0.878475, -0.325473,
		0.850618, -0.152234, 0.503263,
		34.099258, 37.854355, 56.008400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038986, 38.183151, 55.188999>,  <33.503826, 37.960918, 55.656116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038986, 38.183151, 55.188999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211506, 37.925350, 55.441540>,  <34.315018, 37.770668, 55.593063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.211506, 37.925350, 55.441540>,  <34.038986, 38.183151, 55.188999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211506, 37.925350, 55.441540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502737, -0.409385, -0.761354,
		0.749159, 0.645771, 0.147449,
		0.431296, -0.644503, 0.631347,
		34.340897, 37.731998, 55.630943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709587, 38.166374, 54.846069>,  <34.038986, 38.183151, 55.188999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709587, 38.166374, 54.846069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709873, 37.882195, 55.127571>,  <34.710045, 37.711689, 55.296471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709873, 37.882195, 55.127571>,  <34.709587, 38.166374, 54.846069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709873, 37.882195, 55.127571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497263, -0.610321, -0.616634,
		0.867599, 0.350393, 0.352840,
		0.000718, -0.710446, 0.703751,
		34.710091, 37.669060, 55.338696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377796, 37.760822, 54.787308>,  <34.709587, 38.166374, 54.846069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377796, 37.760822, 54.787308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114975, 37.506203, 54.948845>,  <34.957283, 37.353432, 55.045769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114975, 37.506203, 54.948845>,  <35.377796, 37.760822, 54.787308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114975, 37.506203, 54.948845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245299, -0.687093, -0.683909,
		0.712819, -0.350302, 0.607600,
		-0.657053, -0.636547, 0.403844,
		34.917858, 37.315239, 55.070000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739666, 37.063896, 54.845726>,  <35.377796, 37.760822, 54.787308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739666, 37.063896, 54.845726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344120, 37.004967, 54.854225>,  <35.106792, 36.969608, 54.859325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.344120, 37.004967, 54.854225>,  <35.739666, 37.063896, 54.845726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344120, 37.004967, 54.854225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109940, -0.819147, -0.562948,
		0.100337, -0.554341, 0.826219,
		-0.988861, -0.147319, 0.021247,
		35.047462, 36.960770, 54.860600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647263, 36.300117, 54.924763>,  <35.739666, 37.063896, 54.845726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647263, 36.300117, 54.924763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315243, 36.451740, 54.761139>,  <35.116032, 36.542713, 54.662964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315243, 36.451740, 54.761139>,  <35.647263, 36.300117, 54.924763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315243, 36.451740, 54.761139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065930, -0.661649, -0.746909,
		-0.553775, -0.646943, 0.524212,
		-0.830052, 0.379058, -0.409057,
		35.066227, 36.565456, 54.638420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279167, 35.679775, 54.749058>,  <35.647263, 36.300117, 54.924763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279167, 35.679775, 54.749058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098740, 35.959408, 54.527130>,  <34.990482, 36.127186, 54.393974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.098740, 35.959408, 54.527130>,  <35.279167, 35.679775, 54.749058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098740, 35.959408, 54.527130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036198, -0.635473, -0.771274,
		-0.891756, -0.327812, 0.311946,
		-0.451067, 0.699080, -0.554821,
		34.963421, 36.169132, 54.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754356, 35.282513, 54.395477>,  <35.279167, 35.679775, 54.749058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754356, 35.282513, 54.395477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824905, 35.625652, 54.202400>,  <34.867233, 35.831535, 54.086555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.824905, 35.625652, 54.202400>,  <34.754356, 35.282513, 54.395477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824905, 35.625652, 54.202400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184895, -0.510523, -0.839750,
		-0.966803, 0.058859, -0.248652,
		0.176369, 0.857847, -0.482692,
		34.877815, 35.883007, 54.057594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330475, 35.332253, 53.911766>,  <34.754356, 35.282513, 54.395477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330475, 35.332253, 53.911766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603806, 35.583042, 53.762115>,  <34.767803, 35.733517, 53.672325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603806, 35.583042, 53.762115>,  <34.330475, 35.332253, 53.911766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603806, 35.583042, 53.762115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117166, -0.599946, -0.791414,
		-0.720649, 0.496961, -0.483420,
		0.683328, 0.626973, -0.374124,
		34.808804, 35.771133, 53.649879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715199, 35.395844, 53.519627>,  <34.330475, 35.332253, 53.911766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715199, 35.395844, 53.519627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443882, 35.151131, 53.682423>,  <33.281090, 35.004303, 53.780098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443882, 35.151131, 53.682423>,  <33.715199, 35.395844, 53.519627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443882, 35.151131, 53.682423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084679, 0.615272, 0.783754,
		-0.729896, 0.497152, -0.469140,
		-0.678293, -0.611785, 0.406986,
		33.240395, 34.967594, 53.804520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264046, 35.727001, 53.863274>,  <33.715199, 35.395844, 53.519627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264046, 35.727001, 53.863274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184456, 35.366852, 54.018055>,  <33.136703, 35.150761, 54.110924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.184456, 35.366852, 54.018055>,  <33.264046, 35.727001, 53.863274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184456, 35.366852, 54.018055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368616, 0.434614, 0.821726,
		-0.908037, 0.020864, -0.418369,
		-0.198973, -0.900375, 0.386955,
		33.124763, 35.096741, 54.134140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644764, 35.829971, 54.134838>,  <33.264046, 35.727001, 53.863274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644764, 35.829971, 54.134838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775284, 35.496803, 54.313622>,  <32.853596, 35.296902, 54.420891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.775284, 35.496803, 54.313622>,  <32.644764, 35.829971, 54.134838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775284, 35.496803, 54.313622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257001, 0.376852, 0.889906,
		-0.909659, -0.405244, -0.091095,
		0.326300, -0.832922, 0.446955,
		32.873173, 35.246925, 54.447708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144390, 35.372658, 54.447205>,  <32.644764, 35.829971, 54.134838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144390, 35.372658, 54.447205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482407, 35.308929, 54.651371>,  <32.685215, 35.270691, 54.773872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482407, 35.308929, 54.651371>,  <32.144390, 35.372658, 54.447205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482407, 35.308929, 54.651371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475140, 0.214099, 0.853465,
		-0.245258, -0.963731, 0.105221,
		0.845039, -0.159325, 0.510417,
		32.735920, 35.261131, 54.804497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806719, 35.331200, 55.052387>,  <32.144390, 35.372658, 54.447205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806719, 35.331200, 55.052387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191792, 35.344322, 55.159847>,  <32.422836, 35.352196, 55.224323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191792, 35.344322, 55.159847>,  <31.806719, 35.331200, 55.052387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191792, 35.344322, 55.159847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269130, 0.011239, 0.963038,
		0.028589, -0.999398, 0.019653,
		0.962680, 0.032822, 0.268646,
		32.480595, 35.354164, 55.240440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891638, 34.892735, 55.655312>,  <31.806719, 35.331200, 55.052387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891638, 34.892735, 55.655312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197269, 35.150478, 55.667816>,  <32.380650, 35.305126, 55.675320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197269, 35.150478, 55.667816>,  <31.891638, 34.892735, 55.655312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197269, 35.150478, 55.667816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233153, 0.230646, 0.944692,
		0.601515, -0.729108, 0.326467,
		0.764080, 0.644363, 0.031257,
		32.426495, 35.343788, 55.677193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315174, 34.739517, 56.259388>,  <31.891638, 34.892735, 55.655312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315174, 34.739517, 56.259388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390667, 35.119244, 56.158844>,  <32.435963, 35.347080, 56.098518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390667, 35.119244, 56.158844>,  <32.315174, 34.739517, 56.259388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390667, 35.119244, 56.158844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202805, 0.288119, 0.935873,
		0.960860, -0.125650, 0.246903,
		0.188730, 0.949315, -0.251359,
		32.447285, 35.404037, 56.083435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579094, 35.000961, 56.867867>,  <32.315174, 34.739517, 56.259388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579094, 35.000961, 56.867867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465538, 35.317520, 56.651314>,  <32.397404, 35.507458, 56.521381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.465538, 35.317520, 56.651314>,  <32.579094, 35.000961, 56.867867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465538, 35.317520, 56.651314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382808, 0.424116, 0.820722,
		0.879126, 0.440241, 0.182551,
		-0.283892, 0.791400, -0.541379,
		32.380371, 35.554939, 56.488899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853703, 35.530357, 57.175522>,  <32.579094, 35.000961, 56.867867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853703, 35.530357, 57.175522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571899, 35.704842, 56.951595>,  <32.402817, 35.809532, 56.817242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.571899, 35.704842, 56.951595>,  <32.853703, 35.530357, 57.175522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571899, 35.704842, 56.951595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391826, 0.418615, 0.819288,
		0.591732, 0.796542, -0.123996,
		-0.704504, 0.436214, -0.559814,
		32.360550, 35.835705, 56.783649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844341, 36.285084, 57.308273>,  <32.853703, 35.530357, 57.175522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844341, 36.285084, 57.308273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484436, 36.193443, 57.159714>,  <32.268494, 36.138458, 57.070580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.484436, 36.193443, 57.159714>,  <32.844341, 36.285084, 57.308273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484436, 36.193443, 57.159714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426728, 0.639928, 0.639059,
		0.091257, 0.733488, -0.673548,
		-0.899764, -0.229103, -0.371398,
		32.214508, 36.124714, 57.048294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443207, 36.897137, 57.403564>,  <32.844341, 36.285084, 57.308273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443207, 36.897137, 57.403564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174557, 36.607010, 57.343128>,  <32.013367, 36.432934, 57.306866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174557, 36.607010, 57.343128>,  <32.443207, 36.897137, 57.403564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174557, 36.607010, 57.343128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595127, 0.406689, 0.693129,
		-0.441292, 0.555444, -0.704800,
		-0.671629, -0.725318, -0.151091,
		31.973068, 36.389416, 57.297802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665443, 37.182289, 57.294579>,  <32.443207, 36.897137, 57.403564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665443, 37.182289, 57.294579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638422, 36.808346, 57.433994>,  <31.622210, 36.583981, 57.517643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638422, 36.808346, 57.433994>,  <31.665443, 37.182289, 57.294579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638422, 36.808346, 57.433994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557531, 0.325076, 0.763861,
		-0.827403, -0.142718, -0.543173,
		-0.067556, -0.934857, 0.348539,
		31.618155, 36.527889, 57.538555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067724, 37.203976, 57.532631>,  <31.665443, 37.182289, 57.294579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067724, 37.203976, 57.532631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.220112, 36.883987, 57.718060>,  <31.311544, 36.691994, 57.829319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.220112, 36.883987, 57.718060>,  <31.067724, 37.203976, 57.532631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220112, 36.883987, 57.718060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512267, 0.234766, 0.826116,
		-0.769704, -0.552200, -0.320362,
		0.380971, -0.799975, 0.463574,
		31.334404, 36.643993, 57.857132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552145, 36.846073, 57.833275>,  <31.067724, 37.203976, 57.532631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552145, 36.846073, 57.833275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884403, 36.767586, 58.041706>,  <31.083757, 36.720493, 58.166767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.884403, 36.767586, 58.041706>,  <30.552145, 36.846073, 57.833275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884403, 36.767586, 58.041706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451614, 0.309980, 0.836634,
		-0.325689, -0.930274, 0.168868,
		0.830645, -0.196219, 0.521082,
		31.133596, 36.708721, 58.198032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035679, 36.323990, 58.193501>,  <30.552145, 36.846073, 57.833275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035679, 36.323990, 58.193501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651297, 36.339619, 58.083927>,  <29.420668, 36.348995, 58.018185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.651297, 36.339619, 58.083927>,  <30.035679, 36.323990, 58.193501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651297, 36.339619, 58.083927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156090, -0.740872, -0.653257,
		-0.228473, -0.670508, 0.705846,
		-0.960956, 0.039076, -0.273929,
		29.363010, 36.351341, 58.001747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764578, 35.639252, 58.399429>,  <30.035679, 36.323990, 58.193501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764578, 35.639252, 58.399429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.549238, 35.795948, 58.100975>,  <29.420034, 35.889965, 57.921902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.549238, 35.795948, 58.100975>,  <29.764578, 35.639252, 58.399429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549238, 35.795948, 58.100975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189902, -0.806220, -0.560310,
		-0.821048, -0.443333, 0.359632,
		-0.538346, 0.391747, -0.746135,
		29.387733, 35.913471, 57.877136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282948, 35.193111, 58.291672>,  <29.764578, 35.639252, 58.399429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282948, 35.193111, 58.291672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327482, 35.410973, 57.959179>,  <29.354204, 35.541691, 57.759682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.327482, 35.410973, 57.959179>,  <29.282948, 35.193111, 58.291672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327482, 35.410973, 57.959179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007508, -0.835952, -0.548752,
		-0.993754, 0.067338, -0.088984,
		0.111338, 0.544656, -0.831236,
		29.360884, 35.574371, 57.709808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082165, 34.717430, 57.723892>,  <29.282948, 35.193111, 58.291672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082165, 34.717430, 57.723892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227955, 35.015282, 57.500221>,  <29.315430, 35.193993, 57.366016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.227955, 35.015282, 57.500221>,  <29.082165, 34.717430, 57.723892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227955, 35.015282, 57.500221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133082, -0.552672, -0.822705,
		-0.921654, 0.374274, -0.102339,
		0.364477, 0.744629, -0.559182,
		29.337297, 35.238670, 57.332466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574333, 34.866051, 57.133335>,  <29.082165, 34.717430, 57.723892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574333, 34.866051, 57.133335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.950380, 34.979481, 57.057686>,  <29.176008, 35.047539, 57.012299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.950380, 34.979481, 57.057686>,  <28.574333, 34.866051, 57.133335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950380, 34.979481, 57.057686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006356, -0.569334, -0.822082,
		-0.340793, 0.771651, -0.537042,
		0.940117, 0.283573, -0.189120,
		29.232416, 35.064552, 57.000950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681286, 34.981525, 56.373150>,  <28.574333, 34.866051, 57.133335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681286, 34.981525, 56.373150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056799, 34.934231, 56.502586>,  <29.282106, 34.905853, 56.580246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.056799, 34.934231, 56.502586>,  <28.681286, 34.981525, 56.373150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056799, 34.934231, 56.502586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, -0.634631, -0.751754,
		0.294244, 0.763717, -0.574593,
		0.938782, -0.118237, 0.323588,
		29.338434, 34.898758, 56.599663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198912, 34.890530, 55.765961>,  <28.681286, 34.981525, 56.373150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198912, 34.890530, 55.765961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384699, 34.724045, 56.078636>,  <29.496172, 34.624153, 56.266239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.384699, 34.724045, 56.078636>,  <29.198912, 34.890530, 55.765961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384699, 34.724045, 56.078636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403624, -0.686175, -0.605187,
		0.788261, 0.596599, -0.150714,
		0.464470, -0.416214, 0.781686,
		29.524040, 34.599182, 56.313141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792532, 34.695168, 55.445946>,  <29.198912, 34.890530, 55.765961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792532, 34.695168, 55.445946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792831, 34.477711, 55.781673>,  <29.793011, 34.347237, 55.983109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792831, 34.477711, 55.781673>,  <29.792532, 34.695168, 55.445946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792831, 34.477711, 55.781673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439876, -0.753578, -0.488497,
		0.898058, 0.369561, 0.238571,
		0.000747, -0.543641, 0.839318,
		29.793056, 34.314617, 56.033470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466059, 34.533394, 55.582417>,  <29.792532, 34.695168, 55.445946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466059, 34.533394, 55.582417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228531, 34.259663, 55.751686>,  <30.086014, 34.095425, 55.853249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.228531, 34.259663, 55.751686>,  <30.466059, 34.533394, 55.582417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228531, 34.259663, 55.751686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473782, -0.722490, -0.503527,
		0.650315, -0.098512, 0.753250,
		-0.593819, -0.684327, 0.423173,
		30.050385, 34.054363, 55.878639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886339, 33.957203, 55.523842>,  <30.466059, 34.533394, 55.582417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886339, 33.957203, 55.523842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525682, 33.827034, 55.637783>,  <30.309288, 33.748932, 55.706150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.525682, 33.827034, 55.637783>,  <30.886339, 33.957203, 55.523842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525682, 33.827034, 55.637783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140602, -0.843432, -0.518512,
		0.408995, -0.427459, 0.806227,
		-0.901640, -0.325426, 0.284858,
		30.255190, 33.729404, 55.723240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907597, 33.287819, 56.046917>,  <30.886339, 33.957203, 55.523842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907597, 33.287819, 56.046917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.606127, 33.314198, 55.785343>,  <30.425245, 33.330025, 55.628399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.606127, 33.314198, 55.785343>,  <30.907597, 33.287819, 56.046917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.606127, 33.314198, 55.785343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289843, -0.859634, -0.420738,
		-0.589889, -0.506637, 0.628769,
		-0.753673, 0.065944, -0.653933,
		30.380026, 33.333981, 55.589165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746487, 32.627365, 55.876499>,  <30.907597, 33.287819, 56.046917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746487, 32.627365, 55.876499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490625, 32.786324, 55.613312>,  <30.337109, 32.881699, 55.455399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.490625, 32.786324, 55.613312>,  <30.746487, 32.627365, 55.876499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490625, 32.786324, 55.613312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014950, -0.862258, -0.506248,
		-0.768520, -0.313986, 0.557486,
		-0.639652, 0.397396, -0.657968,
		30.298729, 32.905544, 55.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299736, 32.109413, 55.845242>,  <30.746487, 32.627365, 55.876499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299736, 32.109413, 55.845242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230423, 32.330605, 55.519249>,  <30.188835, 32.463318, 55.323654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.230423, 32.330605, 55.519249>,  <30.299736, 32.109413, 55.845242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230423, 32.330605, 55.519249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053257, -0.831546, -0.552897,
		-0.983431, -0.052404, 0.173542,
		-0.173282, 0.552979, -0.814978,
		30.178438, 32.496498, 55.274757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776709, 31.719698, 55.411709>,  <30.299736, 32.109413, 55.845242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776709, 31.719698, 55.411709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.959375, 31.966734, 55.155575>,  <30.068975, 32.114956, 55.001892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.959375, 31.966734, 55.155575>,  <29.776709, 31.719698, 55.411709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959375, 31.966734, 55.155575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050624, -0.700570, -0.711786,
		-0.888196, 0.357467, -0.288663,
		0.456669, 0.617591, -0.640340,
		30.096376, 32.152012, 54.963474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.881874, 40.040691, 54.941410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.206299, 39.940395, 55.152805>,  <26.400953, 39.880219, 55.279644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.206299, 39.940395, 55.152805>,  <25.881874, 40.040691, 54.941410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206299, 39.940395, 55.152805> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522503, 0.095652, 0.847255,
		-0.262996, -0.963316, -0.053435,
		0.811063, -0.250745, 0.528492,
		26.449617, 39.865173, 55.311352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679171, 39.551037, 55.502598>,  <25.881874, 40.040691, 54.941410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679171, 39.551037, 55.502598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.021589, 39.731327, 55.603813>,  <26.227041, 39.839500, 55.664543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.021589, 39.731327, 55.603813>,  <25.679171, 39.551037, 55.502598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021589, 39.731327, 55.603813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396928, 0.259626, 0.880365,
		0.331105, -0.854074, 0.401157,
		0.856048, 0.450723, 0.253042,
		26.278404, 39.866543, 55.679726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785259, 39.188236, 56.212715>,  <25.679171, 39.551037, 55.502598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785259, 39.188236, 56.212715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.005222, 39.520840, 56.181213>,  <26.137199, 39.720402, 56.162312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.005222, 39.520840, 56.181213>,  <25.785259, 39.188236, 56.212715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005222, 39.520840, 56.181213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132392, 0.179875, 0.974740,
		0.824667, -0.525589, 0.208999,
		0.549907, 0.831505, -0.078753,
		26.170195, 39.770290, 56.157589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113983, 39.219536, 56.858234>,  <25.785259, 39.188236, 56.212715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113983, 39.219536, 56.858234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.164434, 39.588715, 56.712761>,  <26.194706, 39.810223, 56.625477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.164434, 39.588715, 56.712761>,  <26.113983, 39.219536, 56.858234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164434, 39.588715, 56.712761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050404, 0.360173, 0.931523,
		0.990732, -0.135823, -0.001092,
		0.126129, 0.922945, -0.363681,
		26.202272, 39.865597, 56.603657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655941, 39.516502, 57.306320>,  <26.113983, 39.219536, 56.858234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655941, 39.516502, 57.306320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.481501, 39.823101, 57.117725>,  <26.376837, 40.007061, 57.004570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.481501, 39.823101, 57.117725>,  <26.655941, 39.516502, 57.306320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481501, 39.823101, 57.117725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018805, 0.531577, 0.846801,
		0.899701, 0.360425, -0.246236,
		-0.436102, 0.766498, -0.471483,
		26.350670, 40.053051, 56.976280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897543, 40.140682, 57.479408>,  <26.655941, 39.516502, 57.306320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897543, 40.140682, 57.479408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.555849, 40.279366, 57.324451>,  <26.350832, 40.362576, 57.231476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.555849, 40.279366, 57.324451>,  <26.897543, 40.140682, 57.479408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555849, 40.279366, 57.324451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011509, 0.732355, 0.680825,
		0.519761, 0.586043, -0.621612,
		-0.854234, 0.346713, -0.387395,
		26.299580, 40.383381, 57.208233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945496, 40.883591, 57.388947>,  <26.897543, 40.140682, 57.479408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945496, 40.883591, 57.388947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.555807, 40.793755, 57.397472>,  <26.321995, 40.739853, 57.402588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.555807, 40.793755, 57.397472>,  <26.945496, 40.883591, 57.388947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555807, 40.793755, 57.397472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160554, 0.756594, 0.633867,
		-0.158490, 0.614103, -0.773148,
		-0.974219, -0.224594, 0.021316,
		26.263542, 40.726376, 57.403866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601112, 41.459049, 57.490314>,  <26.945496, 40.883591, 57.388947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601112, 41.459049, 57.490314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.336182, 41.187492, 57.617077>,  <26.177223, 41.024559, 57.693134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.336182, 41.187492, 57.617077>,  <26.601112, 41.459049, 57.490314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336182, 41.187492, 57.617077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264888, 0.607852, 0.748566,
		-0.700826, 0.411851, -0.582427,
		-0.662327, -0.678892, 0.316904,
		26.137484, 40.983826, 57.712147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.031965, 41.874630, 57.704189>,  <26.601112, 41.459049, 57.490314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.031965, 41.874630, 57.704189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.968328, 41.515079, 57.867508>,  <25.930147, 41.299351, 57.965500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.968328, 41.515079, 57.867508>,  <26.031965, 41.874630, 57.704189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968328, 41.515079, 57.867508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291501, 0.437898, 0.850454,
		-0.943248, 0.016280, -0.331689,
		-0.159092, -0.898877, 0.408301,
		25.920601, 41.245415, 57.989998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467335, 41.977879, 58.107681>,  <26.031965, 41.874630, 57.704189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467335, 41.977879, 58.107681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.661985, 41.666222, 58.265736>,  <25.778776, 41.479229, 58.360569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.661985, 41.666222, 58.265736>,  <25.467335, 41.977879, 58.107681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661985, 41.666222, 58.265736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025526, 0.464794, 0.885051,
		-0.873238, -0.420602, 0.246069,
		0.486625, -0.779141, 0.395140,
		25.807974, 41.432480, 58.384277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082382, 41.826111, 58.685135>,  <25.467335, 41.977879, 58.107681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082382, 41.826111, 58.685135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.449224, 41.680351, 58.749794>,  <25.669331, 41.592896, 58.788589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.449224, 41.680351, 58.749794>,  <25.082382, 41.826111, 58.685135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449224, 41.680351, 58.749794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001103, 0.403180, 0.915120,
		-0.398641, -0.839441, 0.369357,
		0.917106, -0.364397, 0.161650,
		25.724356, 41.571033, 58.798290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.088148, 41.565105, 59.452667>,  <25.082382, 41.826111, 58.685135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.088148, 41.565105, 59.452667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.475636, 41.606884, 59.362621>,  <25.708128, 41.631950, 59.308594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.475636, 41.606884, 59.362621>,  <25.088148, 41.565105, 59.452667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475636, 41.606884, 59.362621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179300, 0.332554, 0.925883,
		0.171567, -0.937283, 0.303424,
		0.968719, 0.104447, -0.225110,
		25.766251, 41.638218, 59.295090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576200, 41.044701, 59.824120>,  <25.088148, 41.565105, 59.452667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576200, 41.044701, 59.824120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.674911, 41.426308, 59.756069>,  <25.734138, 41.655273, 59.715237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.674911, 41.426308, 59.756069>,  <25.576200, 41.044701, 59.824120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674911, 41.426308, 59.756069> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075301, 0.193906, 0.978126,
		0.966142, -0.228570, 0.119690,
		0.246778, 0.954021, -0.170129,
		25.748945, 41.712513, 59.705029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.064182, 40.901234, 60.322548>,  <25.576200, 41.044701, 59.824120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.064182, 40.901234, 60.322548> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344997, 40.905148, 60.607376>,  <26.513487, 40.907497, 60.778275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.344997, 40.905148, 60.607376>,  <26.064182, 40.901234, 60.322548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344997, 40.905148, 60.607376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638949, -0.450187, -0.623759,
		0.314463, 0.892880, -0.322300,
		0.702038, 0.009784, 0.712073,
		26.555609, 40.908081, 60.820999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.722734, 41.004929, 59.976395>,  <26.064182, 40.901234, 60.322548>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.722734, 41.004929, 59.976395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.824781, 40.852116, 60.331688>,  <26.886009, 40.760426, 60.544865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.824781, 40.852116, 60.331688>,  <26.722734, 41.004929, 59.976395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824781, 40.852116, 60.331688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786528, -0.452320, -0.420452,
		0.562395, 0.805888, 0.185087,
		0.255118, -0.382036, 0.888236,
		26.901318, 40.737503, 60.598160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365839, 40.963943, 59.928802>,  <26.722734, 41.004929, 59.976395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365839, 40.963943, 59.928802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.331936, 40.695869, 60.223740>,  <27.311594, 40.535027, 60.400703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.331936, 40.695869, 60.223740>,  <27.365839, 40.963943, 59.928802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331936, 40.695869, 60.223740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824785, -0.462388, -0.325463,
		0.559058, 0.580563, 0.591947,
		-0.084757, -0.670182, 0.737342,
		27.306509, 40.494816, 60.444942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060543, 40.702721, 60.040943>,  <27.365839, 40.963943, 59.928802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060543, 40.702721, 60.040943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.823994, 40.421570, 60.199047>,  <27.682064, 40.252880, 60.293911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.823994, 40.421570, 60.199047>,  <28.060543, 40.702721, 60.040943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.823994, 40.421570, 60.199047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662449, -0.702947, -0.258895,
		0.459823, 0.108738, 0.881328,
		-0.591375, -0.702881, 0.395265,
		27.646582, 40.210705, 60.317627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491455, 40.199627, 60.336609>,  <28.060543, 40.702721, 60.040943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491455, 40.199627, 60.336609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149706, 40.013817, 60.243435>,  <27.944656, 39.902328, 60.187531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.149706, 40.013817, 60.243435>,  <28.491455, 40.199627, 60.336609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149706, 40.013817, 60.243435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515889, -0.812082, -0.272729,
		-0.062469, -0.353179, 0.933468,
		-0.854375, -0.464529, -0.232931,
		27.893393, 39.874458, 60.173557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454565, 39.522404, 60.611198>,  <28.491455, 40.199627, 60.336609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454565, 39.522404, 60.611198> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.143196, 39.474518, 60.364712>,  <27.956375, 39.445786, 60.216820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.143196, 39.474518, 60.364712>,  <28.454565, 39.522404, 60.611198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143196, 39.474518, 60.364712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389753, -0.861686, -0.324947,
		-0.492088, -0.493120, 0.717413,
		-0.778423, -0.119711, -0.616220,
		27.909670, 39.438606, 60.179844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422955, 38.831661, 60.537003>,  <28.454565, 39.522404, 60.611198>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422955, 38.831661, 60.537003> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.190063, 38.954029, 60.235691>,  <28.050329, 39.027451, 60.054905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.190063, 38.954029, 60.235691>,  <28.422955, 38.831661, 60.537003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190063, 38.954029, 60.235691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220937, -0.832109, -0.508706,
		-0.782429, -0.462610, 0.416890,
		-0.582231, 0.305920, -0.753273,
		28.015394, 39.045807, 60.009708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828651, 38.395077, 60.461815>,  <28.422955, 38.831661, 60.537003>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828651, 38.395077, 60.461815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.889637, 38.564503, 60.104637>,  <27.926228, 38.666157, 59.890331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.889637, 38.564503, 60.104637>,  <27.828651, 38.395077, 60.461815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889637, 38.564503, 60.104637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087126, -0.905749, -0.414762,
		-0.984461, -0.014563, -0.174998,
		0.152464, 0.423564, -0.892944,
		27.935377, 38.691570, 59.836754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500658, 38.041065, 59.845718>,  <27.828651, 38.395077, 60.461815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500658, 38.041065, 59.845718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.775715, 38.260822, 59.655849>,  <27.940750, 38.392677, 59.541927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.775715, 38.260822, 59.655849>,  <27.500658, 38.041065, 59.845718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775715, 38.260822, 59.655849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280986, -0.804204, -0.523739,
		-0.669473, 0.226768, -0.707377,
		0.687643, 0.549392, -0.474674,
		27.982008, 38.425640, 59.513447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377378, 37.872402, 59.180058>,  <27.500658, 38.041065, 59.845718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377378, 37.872402, 59.180058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.743624, 38.032291, 59.162777>,  <27.963371, 38.128227, 59.152409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.743624, 38.032291, 59.162777>,  <27.377378, 37.872402, 59.180058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743624, 38.032291, 59.162777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309719, -0.769769, -0.558149,
		-0.256364, 0.497668, -0.828615,
		0.915615, 0.399728, -0.043203,
		28.018309, 38.152210, 59.149815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651302, 37.846313, 58.395931>,  <27.377378, 37.872402, 59.180058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651302, 37.846313, 58.395931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.006437, 37.933353, 58.558113>,  <28.219519, 37.985577, 58.655422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.006437, 37.933353, 58.558113>,  <27.651302, 37.846313, 58.395931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.006437, 37.933353, 58.558113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411697, -0.769216, -0.488685,
		0.205544, 0.600797, -0.772525,
		0.887839, 0.217600, 0.405454,
		28.272789, 37.998634, 58.679749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038790, 37.965664, 57.890274>,  <27.651302, 37.846313, 58.395931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038790, 37.965664, 57.890274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.248447, 37.838638, 58.206356>,  <28.374243, 37.762424, 58.396008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.248447, 37.838638, 58.206356>,  <28.038790, 37.965664, 57.890274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248447, 37.838638, 58.206356> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215324, -0.848312, -0.483739,
		0.823959, 0.423699, -0.376258,
		0.524144, -0.317564, 0.790207,
		28.405691, 37.743370, 58.443417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732880, 37.947666, 57.741085>,  <28.038790, 37.965664, 57.890274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732880, 37.947666, 57.741085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.714617, 37.691631, 58.047863>,  <28.703659, 37.538010, 58.231930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.714617, 37.691631, 58.047863>,  <28.732880, 37.947666, 57.741085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714617, 37.691631, 58.047863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492335, -0.682445, -0.540255,
		0.869208, 0.352926, 0.346297,
		-0.045659, -0.640088, 0.766944,
		28.700918, 37.499603, 58.277946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390074, 37.596516, 57.621643>,  <28.732880, 37.947666, 57.741085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390074, 37.596516, 57.621643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.178154, 37.369499, 57.873741>,  <29.051003, 37.233288, 58.024998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.178154, 37.369499, 57.873741>,  <29.390074, 37.596516, 57.621643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178154, 37.369499, 57.873741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327789, -0.822382, -0.465018,
		0.782218, -0.039781, 0.621734,
		-0.529802, -0.567543, 0.630242,
		29.019213, 37.199238, 58.062813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850811, 37.118103, 58.052464>,  <29.390074, 37.596516, 57.621643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850811, 37.118103, 58.052464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488892, 36.950153, 58.024044>,  <29.271740, 36.849384, 58.006992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.488892, 36.950153, 58.024044>,  <29.850811, 37.118103, 58.052464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488892, 36.950153, 58.024044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386516, -0.739706, -0.550854,
		0.178730, -0.525874, 0.831572,
		-0.904799, -0.419870, -0.071051,
		29.217451, 36.824192, 58.002728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455732, 37.147457, 58.538113>,  <29.850811, 37.118103, 58.052464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455732, 37.147457, 58.538113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809824, 36.980358, 58.619949>,  <31.022280, 36.880100, 58.669052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.809824, 36.980358, 58.619949>,  <30.455732, 37.147457, 58.538113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809824, 36.980358, 58.619949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086805, 0.283750, 0.954961,
		-0.456985, -0.863119, 0.214921,
		0.885229, -0.417746, 0.204593,
		31.075392, 36.855034, 58.681328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329737, 36.589962, 59.057602>,  <30.455732, 37.147457, 58.538113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329737, 36.589962, 59.057602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695206, 36.751801, 59.073135>,  <30.914488, 36.848904, 59.082455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.695206, 36.751801, 59.073135>,  <30.329737, 36.589962, 59.057602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695206, 36.751801, 59.073135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151599, 0.250576, 0.956154,
		0.377121, -0.879498, 0.290280,
		0.913673, 0.404591, 0.038833,
		30.969307, 36.873177, 59.084785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540009, 36.372482, 59.675434>,  <30.329737, 36.589962, 59.057602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540009, 36.372482, 59.675434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793669, 36.665009, 59.575008>,  <30.945866, 36.840523, 59.514751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.793669, 36.665009, 59.575008>,  <30.540009, 36.372482, 59.675434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793669, 36.665009, 59.575008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013036, 0.334773, 0.942208,
		0.773098, -0.594231, 0.221831,
		0.634152, 0.731311, -0.251066,
		30.983915, 36.884403, 59.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909325, 36.469902, 60.199863>,  <30.540009, 36.372482, 59.675434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909325, 36.469902, 60.199863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933937, 36.826473, 60.020275>,  <30.948704, 37.040417, 59.912521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933937, 36.826473, 60.020275>,  <30.909325, 36.469902, 60.199863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933937, 36.826473, 60.020275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063364, 0.452405, 0.889558,
		0.996092, -0.026285, 0.084320,
		0.061529, 0.891425, -0.448972,
		30.952396, 37.093903, 59.885582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326241, 36.965084, 60.681377>,  <30.909325, 36.469902, 60.199863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326241, 36.965084, 60.681377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110401, 37.195591, 60.435856>,  <30.980898, 37.333897, 60.288544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.110401, 37.195591, 60.435856>,  <31.326241, 36.965084, 60.681377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110401, 37.195591, 60.435856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235407, 0.596698, 0.767160,
		0.808341, 0.558452, -0.186321,
		-0.539600, 0.576266, -0.613800,
		30.948521, 37.368469, 60.251717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625023, 37.580654, 60.699089>,  <31.326241, 36.965084, 60.681377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625023, 37.580654, 60.699089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258221, 37.670326, 60.567127>,  <31.038139, 37.724129, 60.487949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.258221, 37.670326, 60.567127>,  <31.625023, 37.580654, 60.699089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258221, 37.670326, 60.567127> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072939, 0.718907, 0.691269,
		0.392143, 0.657962, -0.642891,
		-0.917008, 0.224185, -0.329905,
		30.983118, 37.737583, 60.468155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608570, 38.247238, 60.698238>,  <31.625023, 37.580654, 60.699089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608570, 38.247238, 60.698238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228840, 38.123821, 60.722191>,  <31.001001, 38.049770, 60.736565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.228840, 38.123821, 60.722191>,  <31.608570, 38.247238, 60.698238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228840, 38.123821, 60.722191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162487, 0.644887, 0.746806,
		-0.269040, 0.699230, -0.662341,
		-0.949324, -0.308543, 0.059884,
		30.944042, 38.031258, 60.740154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809837, 38.834229, 60.212276>,  <31.608570, 38.247238, 60.698238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809837, 38.834229, 60.212276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.109138, 39.099239, 60.198540>,  <32.288719, 39.258247, 60.190296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.109138, 39.099239, 60.198540>,  <31.809837, 38.834229, 60.212276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109138, 39.099239, 60.198540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327453, -0.413850, -0.849413,
		-0.576971, 0.624329, -0.526609,
		0.748251, 0.662527, -0.034341,
		32.333614, 39.297997, 60.188236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809528, 39.168583, 59.534569>,  <31.809837, 38.834229, 60.212276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809528, 39.168583, 59.534569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180504, 39.254433, 59.657074>,  <32.403088, 39.305943, 59.730576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180504, 39.254433, 59.657074>,  <31.809528, 39.168583, 59.534569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180504, 39.254433, 59.657074> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347615, -0.192702, -0.917622,
		-0.137923, 0.957499, -0.253325,
		0.927438, 0.214620, 0.306263,
		32.458736, 39.318817, 59.748955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060814, 39.604950, 59.065693>,  <31.809528, 39.168583, 59.534569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060814, 39.604950, 59.065693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.374756, 39.453953, 59.262260>,  <32.563122, 39.363354, 59.380203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.374756, 39.453953, 59.262260>,  <32.060814, 39.604950, 59.065693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374756, 39.453953, 59.262260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413346, -0.271907, -0.869029,
		0.461675, 0.885192, -0.057373,
		0.784858, -0.377494, 0.491423,
		32.610214, 39.340706, 59.409687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604919, 40.017319, 58.862816>,  <32.060814, 39.604950, 59.065693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604919, 40.017319, 58.862816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750656, 39.671295, 59.000755>,  <32.838097, 39.463680, 59.083519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.750656, 39.671295, 59.000755>,  <32.604919, 40.017319, 58.862816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750656, 39.671295, 59.000755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384856, -0.197341, -0.901633,
		0.848024, 0.461217, 0.261026,
		0.364338, -0.865064, 0.344852,
		32.859959, 39.411777, 59.104210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312019, 40.051498, 58.683868>,  <32.604919, 40.017319, 58.862816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312019, 40.051498, 58.683868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223637, 39.664692, 58.734543>,  <33.170605, 39.432606, 58.764950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223637, 39.664692, 58.734543>,  <33.312019, 40.051498, 58.683868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223637, 39.664692, 58.734543> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538236, -0.229235, -0.811020,
		0.813314, -0.111013, 0.571136,
		-0.220958, -0.967020, 0.126689,
		33.157349, 39.374584, 58.772549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835464, 39.732555, 58.468735>,  <33.312019, 40.051498, 58.683868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835464, 39.732555, 58.468735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594864, 39.413021, 58.471748>,  <33.450504, 39.221298, 58.473557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594864, 39.413021, 58.471748>,  <33.835464, 39.732555, 58.468735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594864, 39.413021, 58.471748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534544, -0.409466, -0.739324,
		0.593686, -0.440675, 0.673308,
		-0.601498, -0.798839, 0.007534,
		33.414413, 39.173370, 58.474007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306885, 39.274433, 58.431610>,  <33.835464, 39.732555, 58.468735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306885, 39.274433, 58.431610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962189, 39.104156, 58.321209>,  <33.755371, 39.001991, 58.254967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962189, 39.104156, 58.321209>,  <34.306885, 39.274433, 58.431610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962189, 39.104156, 58.321209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500065, -0.620881, -0.603690,
		0.085621, -0.658247, 0.747917,
		-0.861744, -0.425696, -0.276006,
		33.703667, 38.976448, 58.238407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.430004, 42.062531, 60.182037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078152, 42.050606, 59.992146>,  <28.867041, 42.043449, 59.878212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078152, 42.050606, 59.992146>,  <29.430004, 42.062531, 60.182037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078152, 42.050606, 59.992146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466537, -0.248620, -0.848841,
		-0.092716, -0.968142, 0.232605,
		-0.879629, -0.029818, -0.474725,
		28.814262, 42.041660, 59.849728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446625, 41.429520, 59.874306>,  <29.430004, 42.062531, 60.182037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446625, 41.429520, 59.874306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171932, 41.656700, 59.692829>,  <29.007116, 41.793011, 59.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171932, 41.656700, 59.692829>,  <29.446625, 41.429520, 59.874306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171932, 41.656700, 59.692829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482311, -0.110945, -0.868946,
		-0.543855, -0.815549, -0.197741,
		-0.686730, 0.567953, -0.453687,
		28.965914, 41.827087, 59.556725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249018, 41.036148, 59.348751>,  <29.446625, 41.429520, 59.874306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249018, 41.036148, 59.348751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146908, 41.406994, 59.238987>,  <29.085642, 41.629501, 59.173130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146908, 41.406994, 59.238987>,  <29.249018, 41.036148, 59.348751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146908, 41.406994, 59.238987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370454, -0.168366, -0.913464,
		-0.893083, -0.334841, -0.300472,
		-0.255276, 0.927110, -0.274408,
		29.070324, 41.685127, 59.156666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986734, 41.020660, 58.699913>,  <29.249018, 41.036148, 59.348751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986734, 41.020660, 58.699913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069294, 41.410439, 58.664474>,  <29.118830, 41.644306, 58.643211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069294, 41.410439, 58.664474>,  <28.986734, 41.020660, 58.699913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069294, 41.410439, 58.664474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216506, -0.133781, -0.967072,
		-0.954215, 0.180420, -0.238586,
		0.206397, 0.974449, -0.088594,
		29.131212, 41.702774, 58.637897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767834, 41.228764, 57.956654>,  <28.986734, 41.020660, 58.699913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767834, 41.228764, 57.956654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000517, 41.528851, 58.082371>,  <29.140127, 41.708904, 58.157803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000517, 41.528851, 58.082371>,  <28.767834, 41.228764, 57.956654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000517, 41.528851, 58.082371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301580, 0.159931, -0.939932,
		-0.755422, 0.641553, -0.133218,
		0.581710, 0.750221, 0.314295,
		29.175030, 41.753918, 58.176659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634172, 41.646225, 57.484081>,  <28.767834, 41.228764, 57.956654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634172, 41.646225, 57.484081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984053, 41.781876, 57.622585>,  <29.193981, 41.863266, 57.705688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984053, 41.781876, 57.622585>,  <28.634172, 41.646225, 57.484081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984053, 41.781876, 57.622585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306819, 0.165592, -0.937252,
		-0.375182, 0.926053, 0.040794,
		0.874700, 0.339123, 0.346258,
		29.246462, 41.883614, 57.726463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754028, 42.252754, 57.160637>,  <28.634172, 41.646225, 57.484081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754028, 42.252754, 57.160637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121365, 42.144207, 57.275883>,  <29.341766, 42.079079, 57.345028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121365, 42.144207, 57.275883>,  <28.754028, 42.252754, 57.160637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121365, 42.144207, 57.275883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334789, 0.144338, -0.931173,
		0.211104, 0.951592, 0.223402,
		0.918342, -0.271366, 0.288112,
		29.396868, 42.062798, 57.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116707, 42.760849, 56.816147>,  <28.754028, 42.252754, 57.160637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116707, 42.760849, 56.816147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355471, 42.455261, 56.914162>,  <29.498730, 42.271908, 56.972969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355471, 42.455261, 56.914162>,  <29.116707, 42.760849, 56.816147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355471, 42.455261, 56.914162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315142, -0.057609, -0.947294,
		0.737822, 0.642673, 0.206372,
		0.596912, -0.763971, 0.245038,
		29.534544, 42.226070, 56.987675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725607, 42.904274, 56.351883>,  <29.116707, 42.760849, 56.816147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725607, 42.904274, 56.351883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739126, 42.526443, 56.482502>,  <29.747238, 42.299744, 56.560871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739126, 42.526443, 56.482502>,  <29.725607, 42.904274, 56.351883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739126, 42.526443, 56.482502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326241, -0.298406, -0.896951,
		0.944682, 0.136847, 0.298075,
		0.033798, -0.944578, 0.326544,
		29.749266, 42.243069, 56.580463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368521, 42.676765, 56.139072>,  <29.725607, 42.904274, 56.351883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368521, 42.676765, 56.139072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160946, 42.339531, 56.195503>,  <30.036402, 42.137188, 56.229362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.160946, 42.339531, 56.195503>,  <30.368521, 42.676765, 56.139072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160946, 42.339531, 56.195503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284221, -0.325827, -0.901696,
		0.806178, -0.427825, 0.408708,
		-0.518936, -0.843091, 0.141077,
		30.005264, 42.086605, 56.237827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817436, 42.138371, 55.956905>,  <30.368521, 42.676765, 56.139072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817436, 42.138371, 55.956905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453421, 41.972645, 55.962135>,  <30.235010, 41.873211, 55.965275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453421, 41.972645, 55.962135>,  <30.817436, 42.138371, 55.956905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453421, 41.972645, 55.962135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226774, -0.524016, -0.820964,
		0.346987, -0.744145, 0.570831,
		-0.910041, -0.414313, 0.013074,
		30.180408, 41.848351, 55.966057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874052, 41.401909, 55.998520>,  <30.817436, 42.138371, 55.956905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874052, 41.401909, 55.998520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525253, 41.497822, 55.827812>,  <30.315975, 41.555370, 55.725388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525253, 41.497822, 55.827812>,  <30.874052, 41.401909, 55.998520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525253, 41.497822, 55.827812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251294, -0.528896, -0.810629,
		-0.420090, -0.814108, 0.400939,
		-0.871995, 0.239783, -0.426765,
		30.263655, 41.569756, 55.699783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522583, 41.432304, 56.259201>,  <30.874052, 41.401909, 55.998520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522583, 41.432304, 56.259201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856279, 41.394016, 56.476410>,  <32.056499, 41.371044, 56.606735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856279, 41.394016, 56.476410>,  <31.522583, 41.432304, 56.259201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856279, 41.394016, 56.476410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547788, -0.031374, 0.836029,
		-0.063000, -0.994912, -0.078616,
		0.834242, -0.095735, 0.543024,
		32.106552, 41.365299, 56.639317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342976, 41.103855, 56.854286>,  <31.522583, 41.432304, 56.259201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342976, 41.103855, 56.854286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703009, 41.248440, 56.951603>,  <31.919029, 41.335190, 57.009995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703009, 41.248440, 56.951603>,  <31.342976, 41.103855, 56.854286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703009, 41.248440, 56.951603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315331, 0.155048, 0.936230,
		0.300692, -0.919403, 0.253538,
		0.900084, 0.361465, 0.243294,
		31.973034, 41.356880, 57.024590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487759, 40.804974, 57.557041>,  <31.342976, 41.103855, 56.854286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487759, 40.804974, 57.557041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733084, 41.120144, 57.535034>,  <31.880278, 41.309246, 57.521828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733084, 41.120144, 57.535034>,  <31.487759, 40.804974, 57.557041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733084, 41.120144, 57.535034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198506, 0.221188, 0.954815,
		0.764491, -0.574676, 0.292064,
		0.613310, 0.787923, -0.055020,
		31.917076, 41.356522, 57.518528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907085, 40.743290, 58.205933>,  <31.487759, 40.804974, 57.557041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907085, 40.743290, 58.205933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904209, 41.121540, 58.075867>,  <31.902483, 41.348492, 57.997826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904209, 41.121540, 58.075867>,  <31.907085, 40.743290, 58.205933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904209, 41.121540, 58.075867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061837, 0.324131, 0.943989,
		0.998060, 0.026896, 0.056144,
		-0.007191, 0.945630, -0.325165,
		31.902052, 41.405228, 57.978317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398018, 41.049381, 58.722595>,  <31.907085, 40.743290, 58.205933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398018, 41.049381, 58.722595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207516, 41.357155, 58.552349>,  <32.093212, 41.541821, 58.450203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207516, 41.357155, 58.552349>,  <32.398018, 41.049381, 58.722595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207516, 41.357155, 58.552349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017664, 0.492307, 0.870242,
		0.879128, 0.406942, -0.248056,
		-0.476258, 0.769436, -0.425613,
		32.064640, 41.587986, 58.424664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728264, 41.627361, 59.090031>,  <32.398018, 41.049381, 58.722595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728264, 41.627361, 59.090031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399677, 41.792744, 58.932934>,  <32.202526, 41.891975, 58.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399677, 41.792744, 58.932934>,  <32.728264, 41.627361, 59.090031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399677, 41.792744, 58.932934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170069, 0.479742, 0.860770,
		0.544308, 0.773886, -0.323774,
		-0.821465, 0.413460, -0.392741,
		32.153236, 41.916782, 58.815113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763996, 42.384705, 59.213768>,  <32.728264, 41.627361, 59.090031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763996, 42.384705, 59.213768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377354, 42.316723, 59.137039>,  <32.145370, 42.275932, 59.091003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377354, 42.316723, 59.137039>,  <32.763996, 42.384705, 59.213768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377354, 42.316723, 59.137039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254652, 0.552624, 0.793573,
		-0.028869, 0.815917, -0.577448,
		-0.966602, -0.169958, -0.191822,
		32.087372, 42.265736, 59.079494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491623, 43.014786, 59.370804>,  <32.763996, 42.384705, 59.213768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491623, 43.014786, 59.370804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175583, 42.769661, 59.376392>,  <31.985958, 42.622585, 59.379745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175583, 42.769661, 59.376392>,  <32.491623, 43.014786, 59.370804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175583, 42.769661, 59.376392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263725, 0.360419, 0.894733,
		-0.553341, 0.703247, -0.446383,
		-0.790103, -0.612815, 0.013970,
		31.938553, 42.585815, 59.380585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809608, 43.446037, 59.537643>,  <32.491623, 43.014786, 59.370804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809608, 43.446037, 59.537643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735897, 43.061596, 59.619930>,  <31.691671, 42.830929, 59.669300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735897, 43.061596, 59.619930>,  <31.809608, 43.446037, 59.537643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735897, 43.061596, 59.619930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534436, 0.273635, 0.799689,
		-0.824876, 0.037424, -0.564074,
		-0.184277, -0.961106, 0.205714,
		31.680614, 42.773266, 59.681644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090151, 43.364708, 59.564976>,  <31.809608, 43.446037, 59.537643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090151, 43.364708, 59.564976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257690, 43.069073, 59.775997>,  <31.358215, 42.891693, 59.902611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257690, 43.069073, 59.775997>,  <31.090151, 43.364708, 59.564976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257690, 43.069073, 59.775997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662317, 0.148796, 0.734299,
		-0.621208, -0.656972, -0.427185,
		0.418851, -0.739085, 0.527558,
		31.383347, 42.847347, 59.934265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488464, 43.039352, 59.890743>,  <31.090151, 43.364708, 59.564976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488464, 43.039352, 59.890743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821533, 42.950367, 60.093590>,  <31.021374, 42.896976, 60.215298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821533, 42.950367, 60.093590>,  <30.488464, 43.039352, 59.890743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821533, 42.950367, 60.093590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492370, 0.121686, 0.861837,
		-0.253434, -0.967318, -0.008208,
		0.832672, -0.222460, 0.507118,
		31.071335, 42.883629, 60.245724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186132, 42.555328, 60.383224>,  <30.488464, 43.039352, 59.890743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186132, 42.555328, 60.383224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523197, 42.708645, 60.534489>,  <30.725437, 42.800636, 60.625248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523197, 42.708645, 60.534489>,  <30.186132, 42.555328, 60.383224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523197, 42.708645, 60.534489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406058, -0.008857, 0.913805,
		0.353605, -0.923584, 0.148176,
		0.842663, 0.383294, 0.378161,
		30.775995, 42.823631, 60.647938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339199, 42.215603, 61.014919>,  <30.186132, 42.555328, 60.383224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339199, 42.215603, 61.014919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584631, 42.528149, 61.060516>,  <30.731890, 42.715675, 61.087875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584631, 42.528149, 61.060516>,  <30.339199, 42.215603, 61.014919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584631, 42.528149, 61.060516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142238, -0.032635, 0.989294,
		0.776718, -0.623224, 0.091115,
		0.613578, 0.781363, 0.113995,
		30.768705, 42.762558, 61.094715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771582, 42.038860, 61.584980>,  <30.339199, 42.215603, 61.014919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771582, 42.038860, 61.584980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745352, 42.434093, 61.529270>,  <30.729614, 42.671234, 61.495846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.745352, 42.434093, 61.529270>,  <30.771582, 42.038860, 61.584980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745352, 42.434093, 61.529270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224782, 0.121362, 0.966822,
		0.972200, 0.094705, 0.214145,
		-0.065574, 0.988080, -0.139276,
		30.725679, 42.730518, 61.487488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291876, 41.569794, 61.620102>,  <30.771582, 42.038860, 61.584980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291876, 41.569794, 61.620102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440239, 41.347221, 61.917507>,  <31.529257, 41.213676, 62.095951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440239, 41.347221, 61.917507>,  <31.291876, 41.569794, 61.620102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440239, 41.347221, 61.917507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460194, -0.585281, -0.667584,
		0.806628, 0.589773, 0.038979,
		0.370909, -0.556430, 0.743514,
		31.551512, 41.180294, 62.140560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053154, 41.685223, 61.528194>,  <31.291876, 41.569794, 61.620102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053154, 41.685223, 61.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971296, 41.359604, 61.745617>,  <31.922182, 41.164234, 61.876072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.971296, 41.359604, 61.745617>,  <32.053154, 41.685223, 61.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971296, 41.359604, 61.745617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506015, -0.563331, -0.653152,
		0.837896, 0.141384, 0.527200,
		-0.204643, -0.814044, 0.543556,
		31.909903, 41.115391, 61.908684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616074, 41.290787, 61.598530>,  <32.053154, 41.685223, 61.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616074, 41.290787, 61.598530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340912, 41.006763, 61.658684>,  <32.175816, 40.836349, 61.694775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340912, 41.006763, 61.658684>,  <32.616074, 41.290787, 61.598530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340912, 41.006763, 61.658684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590414, -0.667947, -0.453054,
		0.422142, -0.222867, 0.878708,
		-0.687901, -0.710054, 0.150385,
		32.134541, 40.793747, 61.703800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973480, 40.548576, 61.858257>,  <32.616074, 41.290787, 61.598530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973480, 40.548576, 61.858257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622601, 40.486526, 61.676510>,  <32.412071, 40.449295, 61.567459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622601, 40.486526, 61.676510>,  <32.973480, 40.548576, 61.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622601, 40.486526, 61.676510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406321, -0.744013, -0.530422,
		-0.255775, -0.649907, 0.715681,
		-0.877201, -0.155128, -0.454371,
		32.359440, 40.439987, 61.540199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905785, 39.807270, 61.762257>,  <32.973480, 40.548576, 61.858257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905785, 39.807270, 61.762257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635799, 39.945744, 61.501617>,  <32.473808, 40.028828, 61.345234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635799, 39.945744, 61.501617>,  <32.905785, 39.807270, 61.762257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635799, 39.945744, 61.501617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357965, -0.618577, -0.699445,
		-0.645202, -0.705349, 0.293593,
		-0.674963, 0.346187, -0.651598,
		32.433311, 40.049599, 61.306137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518421, 39.145840, 61.488689>,  <32.905785, 39.807270, 61.762257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518421, 39.145840, 61.488689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474190, 39.444107, 61.225857>,  <32.447651, 39.623066, 61.068157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474190, 39.444107, 61.225857>,  <32.518421, 39.145840, 61.488689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474190, 39.444107, 61.225857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258841, -0.616710, -0.743418,
		-0.959570, -0.252284, -0.124815,
		-0.110578, 0.745669, -0.657077,
		32.441017, 39.667809, 61.028732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022026, 39.005493, 60.920387>,  <32.518421, 39.145840, 61.488689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022026, 39.005493, 60.920387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270195, 39.288975, 60.786030>,  <32.419094, 39.459064, 60.705414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270195, 39.288975, 60.786030>,  <32.022026, 39.005493, 60.920387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270195, 39.288975, 60.786030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264115, -0.592072, -0.761376,
		-0.738461, 0.383657, -0.554511,
		0.620418, 0.708701, -0.335893,
		32.456322, 39.501587, 60.685261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248774, 38.990623, 60.767605>,  <32.022026, 39.005493, 60.920387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248774, 38.990623, 60.767605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977186, 38.710796, 60.856693>,  <30.814234, 38.542900, 60.910145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977186, 38.710796, 60.856693>,  <31.248774, 38.990623, 60.767605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977186, 38.710796, 60.856693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377557, 0.592889, 0.711290,
		-0.629644, 0.398855, -0.666681,
		-0.678970, -0.699569, 0.222718,
		30.773495, 38.500927, 60.923508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596365, 39.335506, 60.792130>,  <31.248774, 38.990623, 60.767605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596365, 39.335506, 60.792130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522619, 38.993862, 60.986656>,  <30.478371, 38.788876, 61.103371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522619, 38.993862, 60.986656>,  <30.596365, 39.335506, 60.792130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522619, 38.993862, 60.986656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433360, 0.514745, 0.739754,
		-0.882161, -0.074363, -0.465040,
		-0.184367, -0.854112, 0.486314,
		30.467310, 38.737629, 61.132549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841679, 39.353123, 60.955650>,  <30.596365, 39.335506, 60.792130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841679, 39.353123, 60.955650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971178, 39.095238, 61.232643>,  <30.048878, 38.940506, 61.398838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971178, 39.095238, 61.232643>,  <29.841679, 39.353123, 60.955650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971178, 39.095238, 61.232643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571457, 0.450081, 0.686196,
		-0.754071, -0.617882, -0.222709,
		0.323751, -0.644708, 0.692486,
		30.068304, 38.901825, 61.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254665, 39.025845, 61.303257>,  <29.841679, 39.353123, 60.955650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254665, 39.025845, 61.303257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567738, 38.990829, 61.549751>,  <29.755581, 38.969822, 61.697647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.567738, 38.990829, 61.549751>,  <29.254665, 39.025845, 61.303257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567738, 38.990829, 61.549751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487310, 0.529755, 0.694182,
		-0.387224, -0.843621, 0.371970,
		0.782679, -0.087539, 0.616239,
		29.802542, 38.964569, 61.734623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990074, 38.808563, 61.886662>,  <29.254665, 39.025845, 61.303257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990074, 38.808563, 61.886662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332447, 38.988998, 61.987778>,  <29.537870, 39.097260, 62.048447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332447, 38.988998, 61.987778>,  <28.990074, 38.808563, 61.886662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332447, 38.988998, 61.987778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516851, 0.731413, 0.444859,
		0.015778, -0.511422, 0.859184,
		0.855930, 0.451089, 0.252789,
		29.589226, 39.124325, 62.063614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.920465, 38.989521, 62.495312>,  <28.990074, 38.808563, 61.886662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.920465, 38.989521, 62.495312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206789, 39.254997, 62.408470>,  <29.378584, 39.414284, 62.356365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206789, 39.254997, 62.408470>,  <28.920465, 38.989521, 62.495312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206789, 39.254997, 62.408470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521639, 0.714916, 0.465604,
		0.464228, -0.220033, 0.857949,
		0.715810, 0.663687, -0.217107,
		29.421532, 39.454102, 62.343338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912420, 39.482605, 63.087868>,  <28.920465, 38.989521, 62.495312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912420, 39.482605, 63.087868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172997, 39.683907, 62.860760>,  <29.329342, 39.804688, 62.724495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.172997, 39.683907, 62.860760>,  <28.912420, 39.482605, 63.087868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172997, 39.683907, 62.860760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324134, 0.861221, 0.391453,
		0.685974, -0.070975, 0.724156,
		0.651442, 0.503250, -0.567770,
		29.368429, 39.834881, 62.690430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322906, 39.910667, 63.509846>,  <28.912420, 39.482605, 63.087868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322906, 39.910667, 63.509846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299149, 40.074413, 63.145672>,  <29.284893, 40.172661, 62.927166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.299149, 40.074413, 63.145672>,  <29.322906, 39.910667, 63.509846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299149, 40.074413, 63.145672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670761, 0.659093, 0.340114,
		0.739292, 0.630884, 0.235442,
		-0.059394, 0.409369, -0.910433,
		29.281330, 40.197224, 62.872543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372057, 40.587421, 63.638531>,  <29.322906, 39.910667, 63.509846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372057, 40.587421, 63.638531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232422, 40.610809, 63.264423>,  <29.148642, 40.624844, 63.039959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232422, 40.610809, 63.264423>,  <29.372057, 40.587421, 63.638531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232422, 40.610809, 63.264423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462210, 0.857454, 0.226128,
		0.815169, 0.511227, -0.272297,
		-0.349085, 0.058474, -0.935265,
		29.127697, 40.628353, 62.983845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<35.400696, 33.610519, 46.975826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752468, 33.750507, 47.104900>,  <35.963531, 33.834499, 47.182346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752468, 33.750507, 47.104900>,  <35.400696, 33.610519, 46.975826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752468, 33.750507, 47.104900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375871, 0.094537, 0.921837,
		0.292109, -0.931979, 0.214682,
		0.879428, 0.349970, 0.322688,
		36.016296, 33.855499, 47.201706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626011, 33.287857, 47.641090>,  <35.400696, 33.610519, 46.975826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626011, 33.287857, 47.641090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771351, 33.658768, 47.605019>,  <35.858555, 33.881313, 47.583374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.771351, 33.658768, 47.605019>,  <35.626011, 33.287857, 47.641090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771351, 33.658768, 47.605019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407260, 0.245143, 0.879798,
		0.837925, -0.282944, 0.466716,
		0.363346, 0.927280, -0.090180,
		35.880356, 33.936951, 47.577965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913322, 33.507244, 48.254025>,  <35.626011, 33.287857, 47.641090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913322, 33.507244, 48.254025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839340, 33.854889, 48.070530>,  <35.794949, 34.063477, 47.960434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839340, 33.854889, 48.070530>,  <35.913322, 33.507244, 48.254025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839340, 33.854889, 48.070530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489234, 0.323407, 0.809974,
		0.852315, 0.374241, 0.365381,
		-0.184959, 0.869109, -0.458736,
		35.783852, 34.115623, 47.932907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842094, 33.821091, 48.849735>,  <35.913322, 33.507244, 48.254025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842094, 33.821091, 48.849735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721062, 34.079475, 48.569401>,  <35.648441, 34.234509, 48.401199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721062, 34.079475, 48.569401>,  <35.842094, 33.821091, 48.849735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721062, 34.079475, 48.569401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680131, 0.368799, 0.633569,
		0.667730, 0.668370, 0.327746,
		-0.302586, 0.645964, -0.700837,
		35.630287, 34.273266, 48.359150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911037, 34.457283, 49.132114>,  <35.842094, 33.821091, 48.849735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911037, 34.457283, 49.132114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639149, 34.481232, 48.839706>,  <35.476013, 34.495602, 48.664261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639149, 34.481232, 48.839706>,  <35.911037, 34.457283, 49.132114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639149, 34.481232, 48.839706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627782, 0.467913, 0.622051,
		0.379295, 0.881745, -0.280468,
		-0.679725, 0.059868, -0.731020,
		35.435230, 34.499191, 48.620399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658382, 35.098103, 49.191235>,  <35.911037, 34.457283, 49.132114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658382, 35.098103, 49.191235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381004, 34.890118, 48.991726>,  <35.214577, 34.765327, 48.872021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.381004, 34.890118, 48.991726>,  <35.658382, 35.098103, 49.191235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381004, 34.890118, 48.991726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696858, 0.308111, 0.647655,
		-0.183078, 0.796687, -0.575997,
		-0.693449, -0.519959, -0.498769,
		35.172970, 34.734131, 48.842094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031548, 35.542931, 49.047184>,  <35.658382, 35.098103, 49.191235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031548, 35.542931, 49.047184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888870, 35.173988, 48.987801>,  <34.803265, 34.952625, 48.952171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.888870, 35.173988, 48.987801>,  <35.031548, 35.542931, 49.047184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888870, 35.173988, 48.987801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773741, 0.202607, 0.600229,
		-0.523543, 0.328965, -0.785929,
		-0.356690, -0.922351, -0.148461,
		34.781864, 34.897282, 48.943264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340256, 35.614792, 48.976406>,  <35.031548, 35.542931, 49.047184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340256, 35.614792, 48.976406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389164, 35.228855, 49.069466>,  <34.418510, 34.997292, 49.125301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.389164, 35.228855, 49.069466>,  <34.340256, 35.614792, 48.976406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389164, 35.228855, 49.069466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844416, 0.022046, 0.535234,
		-0.521547, -0.261895, -0.812035,
		0.122273, -0.964845, 0.232646,
		34.425846, 34.939404, 49.139259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698704, 35.399761, 48.856342>,  <34.340256, 35.614792, 48.976406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698704, 35.399761, 48.856342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879440, 35.132011, 49.092236>,  <33.987881, 34.971363, 49.233772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.879440, 35.132011, 49.092236>,  <33.698704, 35.399761, 48.856342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879440, 35.132011, 49.092236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788380, 0.009752, 0.615111,
		-0.417488, -0.742864, -0.523313,
		0.451841, -0.669371, 0.589731,
		34.014992, 34.931202, 49.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130875, 34.921658, 48.900360>,  <33.698704, 35.399761, 48.856342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130875, 34.921658, 48.900360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380451, 34.875504, 49.209522>,  <33.530197, 34.847813, 49.395020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.380451, 34.875504, 49.209522>,  <33.130875, 34.921658, 48.900360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380451, 34.875504, 49.209522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776879, 0.015475, 0.629460,
		-0.084592, -0.993200, -0.079986,
		0.623942, -0.115386, 0.772905,
		33.567635, 34.840889, 49.441395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695808, 34.590816, 49.346581>,  <33.130875, 34.921658, 48.900360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695808, 34.590816, 49.346581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015568, 34.652729, 49.578789>,  <33.207424, 34.689877, 49.718113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.015568, 34.652729, 49.578789>,  <32.695808, 34.590816, 49.346581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015568, 34.652729, 49.578789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570399, -0.107935, 0.814246,
		0.188685, -0.982036, 0.002002,
		0.799402, 0.154778, 0.580517,
		33.255390, 34.699162, 49.752945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937290, 33.949749, 49.813824>,  <32.695808, 34.590816, 49.346581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937290, 33.949749, 49.813824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004368, 34.307636, 49.979408>,  <33.044617, 34.522369, 50.078758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.004368, 34.307636, 49.979408>,  <32.937290, 33.949749, 49.813824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004368, 34.307636, 49.979408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822455, -0.104546, 0.559140,
		0.543548, -0.434232, 0.718330,
		0.167698, 0.894714, 0.413961,
		33.054676, 34.576050, 50.103596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738941, 33.767422, 50.462158>,  <32.937290, 33.949749, 49.813824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738941, 33.767422, 50.462158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.749123, 34.165230, 50.421600>,  <32.755234, 34.403915, 50.397266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.749123, 34.165230, 50.421600>,  <32.738941, 33.767422, 50.462158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749123, 34.165230, 50.421600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766108, 0.084566, 0.637124,
		0.642208, 0.061459, 0.764063,
		0.025457, 0.994521, -0.101393,
		32.756760, 34.463585, 50.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798088, 34.034286, 51.055439>,  <32.738941, 33.767422, 50.462158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798088, 34.034286, 51.055439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633057, 34.323055, 50.833229>,  <32.534039, 34.496315, 50.699902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.633057, 34.323055, 50.833229>,  <32.798088, 34.034286, 51.055439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633057, 34.323055, 50.833229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769476, 0.050195, 0.636700,
		0.487533, 0.690151, 0.534793,
		-0.412575, 0.721923, -0.555527,
		32.509285, 34.539631, 50.666573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590038, 34.514870, 51.512104>,  <32.798088, 34.034286, 51.055439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590038, 34.514870, 51.512104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.373932, 34.619373, 51.192142>,  <32.244267, 34.682076, 51.000164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.373932, 34.619373, 51.192142>,  <32.590038, 34.514870, 51.512104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373932, 34.619373, 51.192142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801400, 0.130171, 0.583792,
		0.256646, 0.956451, 0.139045,
		-0.540269, 0.261259, -0.799908,
		32.211853, 34.697750, 50.952171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137753, 35.052128, 51.811508>,  <32.590038, 34.514870, 51.512104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137753, 35.052128, 51.811508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949406, 34.931866, 51.479752>,  <31.836397, 34.859707, 51.280697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.949406, 34.931866, 51.479752>,  <32.137753, 35.052128, 51.811508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949406, 34.931866, 51.479752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871085, 0.009662, 0.491037,
		-0.139621, 0.953683, -0.266449,
		-0.470868, -0.300659, -0.829390,
		31.808146, 34.841667, 51.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702620, 35.557903, 51.755657>,  <32.137753, 35.052128, 51.811508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702620, 35.557903, 51.755657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.547413, 35.257980, 51.541279>,  <31.454288, 35.078026, 51.412651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.547413, 35.257980, 51.541279>,  <31.702620, 35.557903, 51.755657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547413, 35.257980, 51.541279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881484, 0.132104, 0.453360,
		-0.269130, 0.648340, -0.712197,
		-0.388015, -0.749803, -0.535948,
		31.431009, 35.033039, 51.380493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053539, 35.826054, 51.494576>,  <31.702620, 35.557903, 51.755657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053539, 35.826054, 51.494576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032553, 35.427616, 51.466171>,  <31.019960, 35.188553, 51.449131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.032553, 35.427616, 51.466171>,  <31.053539, 35.826054, 51.494576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032553, 35.427616, 51.466171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973083, 0.035017, 0.227778,
		-0.224402, 0.081046, -0.971121,
		-0.052466, -0.996095, -0.071006,
		31.016813, 35.128788, 51.444870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681881, 35.729279, 50.948296>,  <31.053539, 35.826054, 51.494576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681881, 35.729279, 50.948296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.661354, 35.398922, 51.172894>,  <30.649038, 35.200706, 51.307652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.661354, 35.398922, 51.172894>,  <30.681881, 35.729279, 50.948296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661354, 35.398922, 51.172894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997699, 0.017449, -0.065518,
		0.044313, -0.563561, -0.824885,
		-0.051317, -0.825890, 0.561490,
		30.645960, 35.151154, 51.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054262, 35.408955, 50.792595>,  <30.681881, 35.729279, 50.948296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054262, 35.408955, 50.792595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113937, 35.209690, 51.134258>,  <30.149742, 35.090134, 51.339256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113937, 35.209690, 51.134258>,  <30.054262, 35.408955, 50.792595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113937, 35.209690, 51.134258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988511, -0.053915, 0.141210,
		-0.024293, -0.865410, -0.500475,
		0.149187, -0.498155, 0.854158,
		30.158693, 35.060242, 51.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534945, 34.872883, 50.750942>,  <30.054262, 35.408955, 50.792595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534945, 34.872883, 50.750942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651859, 34.924366, 51.129993>,  <29.722008, 34.955254, 51.357426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.651859, 34.924366, 51.129993>,  <29.534945, 34.872883, 50.750942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651859, 34.924366, 51.129993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948551, -0.087115, 0.304403,
		0.121731, -0.987849, 0.096620,
		0.292287, 0.128705, 0.947630,
		29.739546, 34.962978, 51.414284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245579, 34.303818, 51.068897>,  <29.534945, 34.872883, 50.750942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245579, 34.303818, 51.068897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.336412, 34.578255, 51.345364>,  <29.390913, 34.742916, 51.511242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.336412, 34.578255, 51.345364>,  <29.245579, 34.303818, 51.068897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336412, 34.578255, 51.345364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856351, -0.197307, 0.477213,
		0.463784, -0.700249, 0.542730,
		0.227083, 0.686092, 0.691167,
		29.404537, 34.784081, 51.552715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177198, 34.022572, 51.777336>,  <29.245579, 34.303818, 51.068897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177198, 34.022572, 51.777336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.130987, 34.419838, 51.783867>,  <29.103260, 34.658199, 51.787785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.130987, 34.419838, 51.783867>,  <29.177198, 34.022572, 51.777336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130987, 34.419838, 51.783867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925332, -0.113584, 0.361746,
		0.361130, 0.026683, 0.932134,
		-0.115528, 0.993170, 0.016328,
		29.096329, 34.717789, 51.788765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717096, 34.049477, 52.232304>,  <29.177198, 34.022572, 51.777336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717096, 34.049477, 52.232304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697435, 34.428837, 52.107010>,  <28.685638, 34.656452, 52.031834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.697435, 34.428837, 52.107010>,  <28.717096, 34.049477, 52.232304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697435, 34.428837, 52.107010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953301, 0.049024, 0.298016,
		0.297995, 0.313256, 0.901704,
		-0.049150, 0.948403, -0.313236,
		28.682690, 34.713356, 52.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341309, 34.424129, 52.807159>,  <28.717096, 34.049477, 52.232304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.341309, 34.424129, 52.807159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.314875, 34.634918, 52.468235>,  <28.299013, 34.761391, 52.264881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.314875, 34.634918, 52.468235>,  <28.341309, 34.424129, 52.807159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314875, 34.634918, 52.468235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987849, 0.085153, 0.130007,
		0.140661, 0.845605, 0.514943,
		-0.066086, 0.526973, -0.847308,
		28.295050, 34.793011, 52.214043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781658, 34.865452, 52.949848>,  <28.341309, 34.424129, 52.807159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781658, 34.865452, 52.949848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.817484, 34.954426, 52.561520>,  <27.838980, 35.007809, 52.328522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.817484, 34.954426, 52.561520>,  <27.781658, 34.865452, 52.949848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817484, 34.954426, 52.561520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963692, 0.265536, -0.028069,
		0.251546, 0.938091, 0.238137,
		0.089566, 0.222431, -0.970826,
		27.844353, 35.021156, 52.270271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649734, 35.585762, 52.794136>,  <27.781658, 34.865452, 52.949848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649734, 35.585762, 52.794136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.551855, 35.365269, 52.475071>,  <27.493128, 35.232971, 52.283634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.551855, 35.365269, 52.475071>,  <27.649734, 35.585762, 52.794136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551855, 35.365269, 52.475071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949545, 0.302691, 0.082114,
		0.196181, 0.777508, -0.597490,
		-0.244699, -0.551234, -0.797661,
		27.478445, 35.199898, 52.235771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193640, 36.004436, 52.427864>,  <27.649734, 35.585762, 52.794136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193640, 36.004436, 52.427864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.127678, 35.637360, 52.283279>,  <27.088100, 35.417114, 52.196529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.127678, 35.637360, 52.283279>,  <27.193640, 36.004436, 52.427864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127678, 35.637360, 52.283279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985632, 0.139741, 0.094883,
		-0.036562, 0.371914, -0.927547,
		-0.164905, -0.917689, -0.361461,
		27.078207, 35.362053, 52.174843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667459, 36.047195, 51.926273>,  <27.193640, 36.004436, 52.427864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667459, 36.047195, 51.926273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.671570, 35.664242, 52.041729>,  <26.674036, 35.434471, 52.111000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.671570, 35.664242, 52.041729>,  <26.667459, 36.047195, 51.926273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671570, 35.664242, 52.041729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994991, -0.038493, -0.092259,
		0.099437, -0.286242, -0.952984,
		0.010275, -0.957384, 0.288635,
		26.674652, 35.377026, 52.128319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072664, 35.716358, 51.605904>,  <26.667459, 36.047195, 51.926273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072664, 35.716358, 51.605904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.173714, 35.450451, 51.887119>,  <26.234343, 35.290905, 52.055847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.173714, 35.450451, 51.887119>,  <26.072664, 35.716358, 51.605904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173714, 35.450451, 51.887119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967523, -0.180289, 0.177187,
		0.008962, -0.724968, -0.688724,
		0.252624, -0.664769, 0.703039,
		26.249500, 35.251019, 52.098030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.741220, 35.002701, 51.348526>,  <26.072664, 35.716358, 51.605904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.741220, 35.002701, 51.348526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.776258, 35.019493, 51.746635>,  <25.797281, 35.029568, 51.985500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.776258, 35.019493, 51.746635>,  <25.741220, 35.002701, 51.348526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.776258, 35.019493, 51.746635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868378, -0.486336, 0.096944,
		0.488106, -0.872763, -0.006142,
		0.087596, 0.041985, 0.995271,
		25.802538, 35.032089, 52.045216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496342, 34.394215, 51.642727>,  <25.741220, 35.002701, 51.348526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496342, 34.394215, 51.642727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.506813, 34.578789, 51.997440>,  <25.513096, 34.689533, 52.210270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.506813, 34.578789, 51.997440>,  <25.496342, 34.394215, 51.642727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.506813, 34.578789, 51.997440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776599, -0.549184, 0.308692,
		0.629451, -0.696759, 0.343974,
		0.026179, 0.461436, 0.886787,
		25.514668, 34.717220, 52.263477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367622, 33.910946, 52.185558>,  <25.496342, 34.394215, 51.642727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367622, 33.910946, 52.185558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268122, 34.282169, 52.296425>,  <25.208422, 34.504906, 52.362946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.268122, 34.282169, 52.296425>,  <25.367622, 33.910946, 52.185558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268122, 34.282169, 52.296425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879945, -0.336123, 0.335734,
		0.404746, -0.160379, 0.900255,
		-0.248752, 0.928062, 0.277169,
		25.193497, 34.560589, 52.379574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992826, 33.784580, 52.786781>,  <25.367622, 33.910946, 52.185558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992826, 33.784580, 52.786781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.907625, 34.161251, 52.682571>,  <24.856504, 34.387253, 52.620045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.907625, 34.161251, 52.682571>,  <24.992826, 33.784580, 52.786781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907625, 34.161251, 52.682571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964550, -0.160146, 0.209753,
		0.155797, 0.295969, 0.942406,
		-0.213003, 0.941677, -0.260527,
		24.843725, 34.443752, 52.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.655573, 34.131443, 53.320255>,  <24.992826, 33.784580, 52.786781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.655573, 34.131443, 53.320255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.538536, 34.311134, 52.982597>,  <24.468315, 34.418949, 52.780003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.538536, 34.311134, 52.982597>,  <24.655573, 34.131443, 53.320255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538536, 34.311134, 52.982597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955903, -0.160794, 0.245756,
		-0.025334, 0.878830, 0.476463,
		-0.292590, 0.449226, -0.844149,
		24.450760, 34.445904, 52.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<33.637188, 31.306276, 50.654942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238106, 31.313848, 50.628941>,  <32.998657, 31.318392, 50.613342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.238106, 31.313848, 50.628941>,  <33.637188, 31.306276, 50.654942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238106, 31.313848, 50.628941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012269, 0.893646, 0.448604,
		0.066578, 0.448372, -0.891364,
		-0.997706, 0.018930, -0.064998,
		32.938793, 31.319527, 50.609440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450455, 31.980843, 50.359741>,  <33.637188, 31.306276, 50.654942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450455, 31.980843, 50.359741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136299, 31.857765, 50.574585>,  <32.947807, 31.783918, 50.703491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.136299, 31.857765, 50.574585>,  <33.450455, 31.980843, 50.359741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136299, 31.857765, 50.574585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029850, 0.847872, 0.529361,
		-0.618283, 0.431787, -0.656724,
		-0.785388, -0.307692, 0.537114,
		32.900684, 31.765457, 50.735718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189289, 32.586826, 50.528576>,  <33.450455, 31.980843, 50.359741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189289, 32.586826, 50.528576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007000, 32.328896, 50.774017>,  <32.897625, 32.174137, 50.921284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007000, 32.328896, 50.774017>,  <33.189289, 32.586826, 50.528576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007000, 32.328896, 50.774017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065616, 0.711813, 0.699297,
		-0.887701, 0.278422, -0.366699,
		-0.455721, -0.644828, 0.613608,
		32.870285, 32.135448, 50.958099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702137, 32.995110, 50.846493>,  <33.189289, 32.586826, 50.528576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702137, 32.995110, 50.846493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766251, 32.664524, 51.062370>,  <32.804718, 32.466171, 51.191898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766251, 32.664524, 51.062370>,  <32.702137, 32.995110, 50.846493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766251, 32.664524, 51.062370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036877, 0.541366, 0.839978,
		-0.986382, -0.154539, 0.056295,
		0.160285, -0.826463, 0.539693,
		32.814335, 32.416584, 51.224277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122730, 32.952549, 51.338936>,  <32.702137, 32.995110, 50.846493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122730, 32.952549, 51.338936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440762, 32.754101, 51.478485>,  <32.631580, 32.635033, 51.562214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440762, 32.754101, 51.478485>,  <32.122730, 32.952549, 51.338936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440762, 32.754101, 51.478485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049903, 0.519757, 0.852855,
		-0.604446, -0.695500, 0.388492,
		0.795082, -0.496118, 0.348872,
		32.679287, 32.605267, 51.583145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107796, 32.845608, 51.997631>,  <32.122730, 32.952549, 51.338936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107796, 32.845608, 51.997631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501431, 32.774765, 51.991905>,  <32.737610, 32.732258, 51.988468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.501431, 32.774765, 51.991905>,  <32.107796, 32.845608, 51.997631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501431, 32.774765, 51.991905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103156, 0.503846, 0.857612,
		-0.144674, -0.845442, 0.514098,
		0.984088, -0.177106, -0.014319,
		32.796658, 32.721634, 51.987610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210396, 32.628979, 52.623894>,  <32.107796, 32.845608, 51.997631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210396, 32.628979, 52.623894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565399, 32.758423, 52.492683>,  <32.778400, 32.836090, 52.413956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565399, 32.758423, 52.492683>,  <32.210396, 32.628979, 52.623894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565399, 32.758423, 52.492683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028234, 0.672352, 0.739693,
		0.459924, -0.665745, 0.587582,
		0.887509, 0.323613, -0.328027,
		32.831654, 32.855507, 52.394276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469009, 32.917301, 53.191265>,  <32.210396, 32.628979, 52.623894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469009, 32.917301, 53.191265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727531, 33.071587, 52.927898>,  <32.882645, 33.164158, 52.769878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.727531, 33.071587, 52.927898>,  <32.469009, 32.917301, 53.191265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727531, 33.071587, 52.927898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078947, 0.824413, 0.560456,
		0.758984, -0.414206, 0.502371,
		0.646305, 0.385716, -0.658416,
		32.921421, 33.187302, 52.730373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126049, 33.033413, 53.527763>,  <32.469009, 32.917301, 53.191265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126049, 33.033413, 53.527763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124786, 33.273388, 53.207748>,  <33.124027, 33.417374, 53.015739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.124786, 33.273388, 53.207748>,  <33.126049, 33.033413, 53.527763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124786, 33.273388, 53.207748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086772, 0.797189, 0.597462,
		0.996223, -0.067534, -0.054576,
		-0.003158, 0.599941, -0.800038,
		33.123840, 33.453369, 52.967735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691605, 33.469704, 53.596748>,  <33.126049, 33.033413, 53.527763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691605, 33.469704, 53.596748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468296, 33.690636, 53.349117>,  <33.334309, 33.823196, 53.200539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468296, 33.690636, 53.349117>,  <33.691605, 33.469704, 53.596748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468296, 33.690636, 53.349117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250028, 0.823505, 0.509240,
		0.791086, 0.129507, -0.597839,
		-0.558273, 0.552329, -0.619083,
		33.300816, 33.856335, 53.163391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061428, 34.022537, 53.691502>,  <33.691605, 33.469704, 53.596748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061428, 34.022537, 53.691502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715675, 34.141396, 53.529243>,  <33.508224, 34.212711, 53.431889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.715675, 34.141396, 53.529243>,  <34.061428, 34.022537, 53.691502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715675, 34.141396, 53.529243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010920, 0.795428, 0.605949,
		0.502715, 0.528202, -0.684310,
		-0.864383, 0.297147, -0.405642,
		33.456360, 34.230541, 53.407551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048344, 34.717270, 53.622272>,  <34.061428, 34.022537, 53.691502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048344, 34.717270, 53.622272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660297, 34.620228, 53.620628>,  <33.427471, 34.562004, 53.619644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660297, 34.620228, 53.620628>,  <34.048344, 34.717270, 53.622272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660297, 34.620228, 53.620628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180531, 0.710393, 0.680258,
		-0.162115, 0.660671, -0.732962,
		-0.970117, -0.242603, -0.004106,
		33.369263, 34.547447, 53.619396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335800, 35.202450, 53.088890>,  <34.048344, 34.717270, 53.622272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335800, 35.202450, 53.088890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673656, 35.399670, 53.172306>,  <34.876369, 35.518002, 53.222355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673656, 35.399670, 53.172306>,  <34.335800, 35.202450, 53.088890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673656, 35.399670, 53.172306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429289, -0.391066, -0.814112,
		-0.319843, 0.777155, -0.541969,
		0.844637, 0.493049, 0.208544,
		34.927048, 35.547585, 53.234871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477444, 35.444931, 52.476192>,  <34.335800, 35.202450, 53.088890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477444, 35.444931, 52.476192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815132, 35.403343, 52.686520>,  <35.017746, 35.378391, 52.812714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.815132, 35.403343, 52.686520>,  <34.477444, 35.444931, 52.476192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815132, 35.403343, 52.686520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421551, -0.477096, -0.771151,
		0.331037, 0.872680, -0.358948,
		0.844221, -0.103965, 0.525816,
		35.068398, 35.372154, 52.844265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021358, 35.421928, 51.875961>,  <34.477444, 35.444931, 52.476192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021358, 35.421928, 51.875961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186466, 35.263138, 52.203869>,  <35.285530, 35.167862, 52.400616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.186466, 35.263138, 52.203869>,  <35.021358, 35.421928, 51.875961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186466, 35.263138, 52.203869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544786, -0.613684, -0.571489,
		0.729951, 0.682495, -0.037042,
		0.412771, -0.396979, 0.819773,
		35.310299, 35.144043, 52.449802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660515, 35.246067, 51.621117>,  <35.021358, 35.421928, 51.875961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660515, 35.246067, 51.621117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648006, 35.045025, 51.966698>,  <35.640499, 34.924400, 52.174046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.648006, 35.045025, 51.966698>,  <35.660515, 35.246067, 51.621117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648006, 35.045025, 51.966698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672456, -0.650076, -0.353842,
		0.739476, 0.569902, 0.358312,
		-0.031275, -0.502606, 0.863949,
		35.638622, 34.894241, 52.225883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318607, 35.339073, 52.011074>,  <35.660515, 35.246067, 51.621117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318607, 35.339073, 52.011074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139118, 35.008499, 52.147110>,  <36.031425, 34.810154, 52.228733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139118, 35.008499, 52.147110>,  <36.318607, 35.339073, 52.011074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139118, 35.008499, 52.147110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608147, -0.561230, -0.561408,
		0.654834, -0.045090, 0.754427,
		-0.448721, -0.826431, 0.340091,
		36.004501, 34.760571, 52.249138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846466, 34.946087, 52.333675>,  <36.318607, 35.339073, 52.011074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846466, 34.946087, 52.333675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547104, 34.696453, 52.243870>,  <36.367485, 34.546673, 52.189987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547104, 34.696453, 52.243870>,  <36.846466, 34.946087, 52.333675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547104, 34.696453, 52.243870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644603, -0.604763, -0.467705,
		0.156108, -0.494757, 0.854895,
		-0.748409, -0.624081, -0.224513,
		36.322582, 34.509228, 52.176517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119617, 34.350159, 52.499603>,  <36.846466, 34.946087, 52.333675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119617, 34.350159, 52.499603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807175, 34.254272, 52.268986>,  <36.619709, 34.196739, 52.130615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.807175, 34.254272, 52.268986>,  <37.119617, 34.350159, 52.499603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807175, 34.254272, 52.268986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609273, -0.494598, -0.619806,
		-0.136577, -0.835409, 0.532390,
		-0.781110, -0.239719, -0.576543,
		36.572842, 34.182358, 52.096024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217621, 33.632351, 52.433666>,  <37.119617, 34.350159, 52.499603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217621, 33.632351, 52.433666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995449, 33.779495, 52.135357>,  <36.862148, 33.867783, 51.956371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995449, 33.779495, 52.135357>,  <37.217621, 33.632351, 52.433666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995449, 33.779495, 52.135357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668687, -0.335550, -0.663524,
		-0.494329, -0.867229, -0.059609,
		-0.555425, 0.367859, -0.745776,
		36.828823, 33.889854, 51.911625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325951, 33.091602, 51.971378>,  <37.217621, 33.632351, 52.433666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325951, 33.091602, 51.971378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176571, 33.396019, 51.759209>,  <37.086945, 33.578671, 51.631908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.176571, 33.396019, 51.759209>,  <37.325951, 33.091602, 51.971378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176571, 33.396019, 51.759209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595611, -0.241647, -0.766064,
		-0.711184, -0.602010, -0.363045,
		-0.373450, 0.761046, -0.530419,
		37.064537, 33.624332, 51.600082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348103, 32.900124, 51.207413>,  <37.325951, 33.091602, 51.971378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348103, 32.900124, 51.207413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252701, 33.287285, 51.175713>,  <37.195457, 33.519581, 51.156693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.252701, 33.287285, 51.175713>,  <37.348103, 32.900124, 51.207413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252701, 33.287285, 51.175713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436836, 0.034040, -0.898897,
		-0.867345, -0.249015, -0.430933,
		-0.238507, 0.967901, -0.079254,
		37.181149, 33.577656, 51.151936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107731, 33.066891, 50.499931>,  <37.348103, 32.900124, 51.207413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107731, 33.066891, 50.499931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250217, 33.407566, 50.653679>,  <37.335709, 33.611969, 50.745930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.250217, 33.407566, 50.653679>,  <37.107731, 33.066891, 50.499931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250217, 33.407566, 50.653679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553540, 0.139066, -0.821130,
		-0.752798, 0.505264, -0.421905,
		0.356214, 0.851686, 0.384372,
		37.357082, 33.663071, 50.768990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040092, 33.537704, 49.992012>,  <37.107731, 33.066891, 50.499931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040092, 33.537704, 49.992012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320457, 33.700665, 50.226192>,  <37.488674, 33.798439, 50.366699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320457, 33.700665, 50.226192>,  <37.040092, 33.537704, 49.992012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320457, 33.700665, 50.226192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637560, 0.010111, -0.770334,
		-0.319754, 0.913194, -0.252655,
		0.700910, 0.407400, 0.585449,
		37.530731, 33.822884, 50.401829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227749, 33.980145, 49.576614>,  <37.040092, 33.537704, 49.992012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227749, 33.980145, 49.576614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523788, 33.933285, 49.841499>,  <37.701412, 33.905167, 50.000431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523788, 33.933285, 49.841499>,  <37.227749, 33.980145, 49.576614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523788, 33.933285, 49.841499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667080, 0.003138, -0.744980,
		0.085200, 0.993109, 0.080473,
		0.740098, -0.117154, 0.662216,
		37.745819, 33.898140, 50.040165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112930, 34.439201, 48.983887>,  <37.227749, 33.980145, 49.576614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112930, 34.439201, 48.983887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871754, 34.724545, 48.841015>,  <36.727047, 34.895752, 48.755291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871754, 34.724545, 48.841015>,  <37.112930, 34.439201, 48.983887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871754, 34.724545, 48.841015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372898, 0.143797, 0.916662,
		0.705271, 0.685887, 0.179309,
		-0.602943, 0.713359, -0.357182,
		36.690872, 34.938553, 48.733860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120377, 35.083294, 49.483753>,  <37.112930, 34.439201, 48.983887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120377, 35.083294, 49.483753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779278, 35.105217, 49.275978>,  <36.574619, 35.118370, 49.151314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779278, 35.105217, 49.275978>,  <37.120377, 35.083294, 49.483753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779278, 35.105217, 49.275978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488743, 0.267077, 0.830542,
		0.184250, 0.962116, -0.200963,
		-0.852750, 0.054808, -0.519436,
		36.523453, 35.121658, 49.120148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881901, 35.682224, 49.748493>,  <37.120377, 35.083294, 49.483753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881901, 35.682224, 49.748493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570492, 35.473251, 49.609367>,  <36.383648, 35.347866, 49.525894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570492, 35.473251, 49.609367>,  <36.881901, 35.682224, 49.748493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570492, 35.473251, 49.609367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531822, 0.254849, 0.807600,
		-0.333279, 0.813704, -0.476246,
		-0.778518, -0.522434, -0.347810,
		36.336937, 35.316521, 49.505024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269539, 35.999908, 49.658978>,  <36.881901, 35.682224, 49.748493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269539, 35.999908, 49.658978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008762, 36.099331, 49.372429>,  <35.852295, 36.158985, 49.200500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.008762, 36.099331, 49.372429>,  <36.269539, 35.999908, 49.658978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008762, 36.099331, 49.372429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007165, 0.942688, 0.333598,
		0.758237, 0.222619, -0.612795,
		-0.651940, 0.248555, -0.716376,
		35.813179, 36.173897, 49.157516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499245, 36.658577, 49.572701>,  <36.269539, 35.999908, 49.658978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499245, 36.658577, 49.572701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130375, 36.670177, 49.418423>,  <35.909054, 36.677139, 49.325855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130375, 36.670177, 49.418423>,  <36.499245, 36.658577, 49.572701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130375, 36.670177, 49.418423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056062, 0.976631, 0.207483,
		0.382697, 0.212957, -0.898995,
		-0.922172, 0.029004, -0.385692,
		35.853722, 36.678879, 49.302715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429195, 37.327663, 49.110935>,  <36.499245, 36.658577, 49.572701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429195, 37.327663, 49.110935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059689, 37.205730, 49.203659>,  <35.837986, 37.132572, 49.259293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059689, 37.205730, 49.203659>,  <36.429195, 37.327663, 49.110935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059689, 37.205730, 49.203659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220281, 0.918102, 0.329492,
		-0.313261, 0.253311, -0.915260,
		-0.923766, -0.304832, 0.231805,
		35.782558, 37.114281, 49.273201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964897, 37.811554, 48.781826>,  <36.429195, 37.327663, 49.110935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964897, 37.811554, 48.781826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761871, 37.631100, 49.075455>,  <35.640057, 37.522827, 49.251633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.761871, 37.631100, 49.075455>,  <35.964897, 37.811554, 48.781826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761871, 37.631100, 49.075455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291287, 0.891650, 0.346573,
		-0.810884, -0.037917, -0.583978,
		-0.507563, -0.451136, 0.734069,
		35.609604, 37.495758, 49.295677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443005, 38.272007, 48.935028>,  <35.964897, 37.811554, 48.781826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443005, 38.272007, 48.935028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 38.021141, 49.241024>,  <35.349277, 37.870621, 49.424622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.384426, 38.021141, 49.241024>,  <35.443005, 38.272007, 48.935028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384426, 38.021141, 49.241024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359847, 0.754123, 0.549371,
		-0.921447, -0.194827, -0.336123,
		-0.146446, -0.627169, 0.764992,
		35.340492, 37.832989, 49.470520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817833, 38.518658, 49.322010>,  <35.443005, 38.272007, 48.935028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817833, 38.518658, 49.322010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033772, 38.297840, 49.576195>,  <35.163334, 38.165348, 49.728706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033772, 38.297840, 49.576195>,  <34.817833, 38.518658, 49.322010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033772, 38.297840, 49.576195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235560, 0.625681, 0.743664,
		-0.808135, -0.551150, 0.207729,
		0.539842, -0.552048, 0.635463,
		35.195724, 38.132225, 49.766834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350952, 38.412815, 49.882935>,  <34.817833, 38.518658, 49.322010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350952, 38.412815, 49.882935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718727, 38.373600, 50.035267>,  <34.939392, 38.350071, 50.126667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.718727, 38.373600, 50.035267>,  <34.350952, 38.412815, 49.882935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718727, 38.373600, 50.035267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269804, 0.547271, 0.792276,
		-0.286091, -0.831194, 0.476727,
		0.919433, -0.098040, 0.380829,
		34.994556, 38.344189, 50.149517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231716, 38.203671, 50.542843>,  <34.350952, 38.412815, 49.882935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231716, 38.203671, 50.542843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603401, 38.350250, 50.523739>,  <34.826412, 38.438198, 50.512276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.603401, 38.350250, 50.523739>,  <34.231716, 38.203671, 50.542843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603401, 38.350250, 50.523739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114356, 0.408034, 0.905776,
		0.351402, -0.836199, 0.421056,
		0.929214, 0.366442, -0.047760,
		34.882164, 38.460182, 50.509411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637745, 38.013786, 51.170151>,  <34.231716, 38.203671, 50.542843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637745, 38.013786, 51.170151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845097, 38.331482, 51.043362>,  <34.969509, 38.522099, 50.967289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.845097, 38.331482, 51.043362>,  <34.637745, 38.013786, 51.170151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845097, 38.331482, 51.043362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030028, 0.353523, 0.934944,
		0.854624, -0.494172, 0.159409,
		0.518378, 0.794239, -0.316968,
		35.000610, 38.569752, 50.948273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106441, 38.147320, 51.722321>,  <34.637745, 38.013786, 51.170151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106441, 38.147320, 51.722321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077705, 38.489418, 51.517036>,  <35.060463, 38.694679, 51.393864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077705, 38.489418, 51.517036>,  <35.106441, 38.147320, 51.722321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077705, 38.489418, 51.517036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040958, 0.511581, 0.858259,
		0.996575, 0.082681, -0.001726,
		-0.071845, 0.855248, -0.513215,
		35.056152, 38.745991, 51.363071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352119, 38.661724, 52.152916>,  <35.106441, 38.147320, 51.722321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352119, 38.661724, 52.152916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155594, 38.888306, 51.888268>,  <35.037678, 39.024254, 51.729481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.155594, 38.888306, 51.888268>,  <35.352119, 38.661724, 52.152916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155594, 38.888306, 51.888268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199726, 0.666108, 0.718617,
		0.847775, 0.485207, -0.214131,
		-0.491312, 0.566458, -0.661618,
		35.008202, 39.058243, 51.689781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632931, 39.274776, 52.387089>,  <35.352119, 38.661724, 52.152916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632931, 39.274776, 52.387089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309135, 39.363037, 52.169449>,  <35.114857, 39.415993, 52.038864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309135, 39.363037, 52.169449>,  <35.632931, 39.274776, 52.387089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309135, 39.363037, 52.169449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332244, 0.591905, 0.734345,
		0.484090, 0.775216, -0.405829,
		-0.809488, 0.220655, -0.544096,
		35.066288, 39.429234, 52.006222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668530, 39.963306, 52.443218>,  <35.632931, 39.274776, 52.387089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668530, 39.963306, 52.443218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302383, 39.837624, 52.342514>,  <35.082695, 39.762215, 52.282089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.302383, 39.837624, 52.342514>,  <35.668530, 39.963306, 52.443218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302383, 39.837624, 52.342514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394122, 0.571406, 0.719835,
		-0.082315, 0.758137, -0.646879,
		-0.915364, -0.314203, -0.251763,
		35.027775, 39.743362, 52.266987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303547, 40.469727, 52.388371>,  <35.668530, 39.963306, 52.443218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303547, 40.469727, 52.388371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049816, 40.176712, 52.487179>,  <34.897579, 40.000904, 52.546463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.049816, 40.176712, 52.487179>,  <35.303547, 40.469727, 52.388371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049816, 40.176712, 52.487179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383084, 0.575399, 0.722609,
		-0.671475, 0.363738, -0.645613,
		-0.634325, -0.732538, 0.247024,
		34.859520, 39.956951, 52.561287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663944, 40.854866, 52.541355>,  <35.303547, 40.469727, 52.388371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663944, 40.854866, 52.541355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623737, 40.482674, 52.682266>,  <34.599613, 40.259357, 52.766811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623737, 40.482674, 52.682266>,  <34.663944, 40.854866, 52.541355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623737, 40.482674, 52.682266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615305, 0.336376, 0.712917,
		-0.781855, -0.145102, -0.606340,
		-0.100513, -0.930482, 0.352279,
		34.593582, 40.203529, 52.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879398, 40.806400, 52.692776>,  <34.663944, 40.854866, 52.541355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879398, 40.806400, 52.692776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094524, 40.548298, 52.909813>,  <34.223598, 40.393436, 53.040035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.094524, 40.548298, 52.909813>,  <33.879398, 40.806400, 52.692776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094524, 40.548298, 52.909813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479128, 0.295621, 0.826465,
		-0.693683, -0.704452, -0.150172,
		0.537811, -0.645257, 0.542590,
		34.255867, 40.354721, 53.072590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404091, 40.395058, 53.140820>,  <33.879398, 40.806400, 52.692776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404091, 40.395058, 53.140820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762100, 40.354427, 53.314537>,  <33.976906, 40.330051, 53.418770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.762100, 40.354427, 53.314537>,  <33.404091, 40.395058, 53.140820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762100, 40.354427, 53.314537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390073, 0.293902, 0.872619,
		-0.216274, -0.950424, 0.223429,
		0.895024, -0.101571, 0.434298,
		34.030609, 40.323956, 53.444828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271748, 40.105667, 53.684261>,  <33.404091, 40.395058, 53.140820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271748, 40.105667, 53.684261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636776, 40.241100, 53.775970>,  <33.855793, 40.322361, 53.830997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636776, 40.241100, 53.775970>,  <33.271748, 40.105667, 53.684261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636776, 40.241100, 53.775970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327685, 0.270142, 0.905343,
		0.244589, -0.901327, 0.357472,
		0.912577, 0.338575, 0.229278,
		33.910549, 40.342674, 53.844753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439140, 39.792419, 54.297028>,  <33.271748, 40.105667, 53.684261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439140, 39.792419, 54.297028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.680145, 40.111618, 54.302376>,  <33.824749, 40.303139, 54.305584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.680145, 40.111618, 54.302376>,  <33.439140, 39.792419, 54.297028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680145, 40.111618, 54.302376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230039, 0.157595, 0.960336,
		0.764242, -0.581686, 0.278523,
		0.602508, 0.798001, 0.013369,
		33.860897, 40.351017, 54.306385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688915, 39.763084, 54.981464>,  <33.439140, 39.792419, 54.297028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688915, 39.763084, 54.981464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759098, 40.128277, 54.834122>,  <33.801208, 40.347393, 54.745716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.759098, 40.128277, 54.834122>,  <33.688915, 39.763084, 54.981464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759098, 40.128277, 54.834122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191590, 0.398674, 0.896857,
		0.965665, -0.086783, 0.244866,
		0.175454, 0.912977, -0.368359,
		33.811733, 40.402168, 54.723614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062267, 40.189545, 55.556496>,  <33.688915, 39.763084, 54.981464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062267, 40.189545, 55.556496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879398, 40.430740, 55.294991>,  <33.769676, 40.575459, 55.138088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.879398, 40.430740, 55.294991>,  <34.062267, 40.189545, 55.556496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879398, 40.430740, 55.294991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313493, 0.578644, 0.752923,
		0.832297, 0.549164, -0.075507,
		-0.457170, 0.602985, -0.653763,
		33.742249, 40.611637, 55.098862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143269, 40.796852, 55.823322>,  <34.062267, 40.189545, 55.556496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143269, 40.796852, 55.823322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830910, 40.863335, 55.582462>,  <33.643494, 40.903225, 55.437946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.830910, 40.863335, 55.582462>,  <34.143269, 40.796852, 55.823322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830910, 40.863335, 55.582462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413595, 0.584821, 0.697799,
		0.468129, 0.793951, -0.387939,
		-0.780893, 0.166210, -0.602146,
		33.596642, 40.913197, 55.401817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891899, 41.441936, 56.075005>,  <34.143269, 40.796852, 55.823322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891899, 41.441936, 56.075005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598812, 41.282547, 55.854336>,  <33.422958, 41.186913, 55.721935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.598812, 41.282547, 55.854336>,  <33.891899, 41.441936, 56.075005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598812, 41.282547, 55.854336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678684, 0.368172, 0.635482,
		-0.050109, 0.840043, -0.540201,
		-0.732719, -0.398469, -0.551675,
		33.378998, 41.163006, 55.688835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490456, 41.991039, 55.978378>,  <33.891899, 41.441936, 56.075005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490456, 41.991039, 55.978378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263172, 41.672222, 55.896545>,  <33.126801, 41.480930, 55.847446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.263172, 41.672222, 55.896545>,  <33.490456, 41.991039, 55.978378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263172, 41.672222, 55.896545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619719, 0.250929, 0.743629,
		-0.541372, 0.549320, -0.636525,
		-0.568212, -0.797046, -0.204578,
		33.092709, 41.433109, 55.835171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775246, 42.239037, 55.960201>,  <33.490456, 41.991039, 55.978378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775246, 42.239037, 55.960201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754093, 41.841560, 55.999783>,  <32.741402, 41.603077, 56.023533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754093, 41.841560, 55.999783>,  <32.775246, 42.239037, 55.960201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754093, 41.841560, 55.999783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653220, 0.109371, 0.749227,
		-0.755319, -0.025021, -0.654879,
		-0.052878, -0.993686, 0.098954,
		32.738232, 41.543453, 56.029469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999863, 42.035538, 55.983307>,  <32.775246, 42.239037, 55.960201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999863, 42.035538, 55.983307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249863, 41.777756, 56.159512>,  <32.399864, 41.623089, 56.265236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.249863, 41.777756, 56.159512>,  <31.999863, 42.035538, 55.983307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249863, 41.777756, 56.159512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606597, -0.045764, 0.793691,
		-0.491338, -0.763273, -0.419526,
		0.625002, -0.644453, 0.440513,
		32.437363, 41.584419, 56.291664>
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
