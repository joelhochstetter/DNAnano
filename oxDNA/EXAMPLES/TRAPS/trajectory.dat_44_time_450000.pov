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
	<36.360607, 52.554535, 50.538410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396465, 52.825859, 50.246696>,  <36.417980, 52.988651, 50.071667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396465, 52.825859, 50.246696>,  <36.360607, 52.554535, 50.538410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396465, 52.825859, 50.246696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120856, 0.734235, 0.668051,
		0.988614, 0.028248, 0.147801,
		0.089649, 0.678307, -0.729289,
		36.423359, 53.029350, 50.027908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886169, 52.648632, 49.999462>,  <36.360607, 52.554535, 50.538410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886169, 52.648632, 49.999462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997334, 52.762051, 50.366585>,  <37.064030, 52.830101, 50.586857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997334, 52.762051, 50.366585>,  <36.886169, 52.648632, 49.999462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997334, 52.762051, 50.366585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223303, -0.910201, 0.348812,
		0.934293, -0.301886, -0.189633,
		0.277906, 0.283547, 0.917807,
		37.080704, 52.847115, 50.641926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929176, 51.997883, 50.407448>,  <36.886169, 52.648632, 49.999462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929176, 51.997883, 50.407448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949104, 52.265049, 50.704475>,  <36.961060, 52.425346, 50.882694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949104, 52.265049, 50.704475>,  <36.929176, 51.997883, 50.407448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949104, 52.265049, 50.704475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458170, -0.645365, 0.611215,
		0.887467, -0.370673, 0.273867,
		0.049816, 0.667912, 0.742572,
		36.964050, 52.465424, 50.927246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344681, 51.818058, 50.894321>,  <36.929176, 51.997883, 50.407448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344681, 51.818058, 50.894321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066460, 52.052032, 51.061203>,  <36.899529, 52.192417, 51.161331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066460, 52.052032, 51.061203>,  <37.344681, 51.818058, 50.894321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066460, 52.052032, 51.061203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357712, -0.785522, 0.504973,
		0.623098, 0.201996, 0.755610,
		-0.695551, 0.584938, 0.417201,
		36.857796, 52.227512, 51.186363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825085, 52.320652, 51.275471>,  <37.344681, 51.818058, 50.894321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825085, 52.320652, 51.275471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911160, 52.211254, 51.650467>,  <37.962803, 52.145615, 51.875465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911160, 52.211254, 51.650467>,  <37.825085, 52.320652, 51.275471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911160, 52.211254, 51.650467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833260, 0.552055, -0.030211,
		-0.509286, 0.787677, 0.346687,
		0.215187, -0.273494, 0.937494,
		37.975716, 52.129208, 51.931717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947624, 52.882214, 51.811543>,  <37.825085, 52.320652, 51.275471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947624, 52.882214, 51.811543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160530, 52.551384, 51.883812>,  <38.288273, 52.352886, 51.927174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160530, 52.551384, 51.883812>,  <37.947624, 52.882214, 51.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160530, 52.551384, 51.883812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836405, 0.546739, 0.038767,
		-0.130842, 0.130478, 0.982780,
		0.532265, -0.827075, 0.180669,
		38.320210, 52.303261, 51.938011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420174, 53.022579, 52.378410>,  <37.947624, 52.882214, 51.811543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420174, 53.022579, 52.378410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555473, 52.725628, 52.147079>,  <38.636654, 52.547459, 52.008282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555473, 52.725628, 52.147079>,  <38.420174, 53.022579, 52.378410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555473, 52.725628, 52.147079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931483, 0.351562, 0.093510,
		0.133898, -0.570332, 0.810427,
		0.338247, -0.742378, -0.578328,
		38.656948, 52.502914, 51.973579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979568, 52.866859, 52.736664>,  <38.420174, 53.022579, 52.378410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979568, 52.866859, 52.736664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020390, 52.720524, 52.366638>,  <39.044880, 52.632721, 52.144623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020390, 52.720524, 52.366638>,  <38.979568, 52.866859, 52.736664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020390, 52.720524, 52.366638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980244, 0.195369, 0.030872,
		0.169436, -0.909941, 0.378548,
		0.102048, -0.365839, -0.925067,
		39.051003, 52.610771, 52.089119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436108, 52.268539, 52.742352>,  <38.979568, 52.866859, 52.736664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436108, 52.268539, 52.742352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425423, 52.528759, 52.438755>,  <39.419010, 52.684891, 52.256596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425423, 52.528759, 52.438755>,  <39.436108, 52.268539, 52.742352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425423, 52.528759, 52.438755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979069, 0.170276, 0.111487,
		0.201767, -0.740129, -0.641482,
		-0.026714, 0.650549, -0.758994,
		39.417408, 52.723923, 52.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828205, 52.096703, 52.057659>,  <39.436108, 52.268539, 52.742352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828205, 52.096703, 52.057659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881004, 52.483753, 52.143700>,  <39.912685, 52.715984, 52.195324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881004, 52.483753, 52.143700>,  <39.828205, 52.096703, 52.057659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881004, 52.483753, 52.143700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990416, -0.137644, 0.011417,
		0.040655, 0.211534, -0.976525,
		0.131998, 0.967630, 0.215102,
		39.920605, 52.774044, 52.208229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199661, 52.562855, 51.503860>,  <39.828205, 52.096703, 52.057659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199661, 52.562855, 51.503860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248318, 52.691437, 51.879494>,  <40.277512, 52.768585, 52.104874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248318, 52.691437, 51.879494>,  <40.199661, 52.562855, 51.503860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248318, 52.691437, 51.879494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963427, -0.265832, -0.033796,
		0.238774, 0.908846, -0.342032,
		0.121638, 0.321453, 0.939080,
		40.284809, 52.787872, 52.161217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667690, 53.125797, 51.214588>,  <40.199661, 52.562855, 51.503860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667690, 53.125797, 51.214588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272808, 53.133621, 51.151299>,  <40.035877, 53.138317, 51.113327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.272808, 53.133621, 51.151299>,  <40.667690, 53.125797, 51.214588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272808, 53.133621, 51.151299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158983, 0.194811, -0.967870,
		0.011886, -0.980646, -0.195429,
		-0.987210, 0.019566, -0.158221,
		39.976646, 53.139492, 51.103832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399448, 52.478146, 50.662930>,  <40.667690, 53.125797, 51.214588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399448, 52.478146, 50.662930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220821, 52.833534, 50.705261>,  <40.113644, 53.046768, 50.730659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220821, 52.833534, 50.705261>,  <40.399448, 52.478146, 50.662930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220821, 52.833534, 50.705261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284830, 0.253285, -0.924510,
		-0.848203, -0.382714, -0.366172,
		-0.446569, 0.888469, 0.105829,
		40.086849, 53.100075, 50.737011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100487, 52.593037, 50.471069>,  <40.399448, 52.478146, 50.662930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100487, 52.593037, 50.471069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171375, 52.202881, 50.523544>,  <41.213909, 51.968788, 50.555031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171375, 52.202881, 50.523544>,  <41.100487, 52.593037, 50.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171375, 52.202881, 50.523544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914595, 0.212451, 0.344064,
		-0.363467, 0.059010, 0.929736,
		0.177220, -0.975388, 0.131190,
		41.224541, 51.910263, 50.562901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468285, 52.452709, 51.123161>,  <41.100487, 52.593037, 50.471069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468285, 52.452709, 51.123161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532440, 52.154358, 50.864571>,  <41.570934, 51.975346, 50.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532440, 52.154358, 50.864571>,  <41.468285, 52.452709, 51.123161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532440, 52.154358, 50.864571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986956, 0.111979, 0.115665,
		-0.013880, -0.656599, 0.754112,
		0.160390, -0.745881, -0.646480,
		41.580559, 51.930595, 50.670628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926201, 52.021191, 51.365467>,  <41.468285, 52.452709, 51.123161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926201, 52.021191, 51.365467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983456, 51.934425, 50.979210>,  <42.017807, 51.882366, 50.747456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983456, 51.934425, 50.979210>,  <41.926201, 52.021191, 51.365467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983456, 51.934425, 50.979210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988354, 0.082260, 0.128021,
		0.051663, -0.972718, 0.226164,
		0.143133, -0.216916, -0.965640,
		42.026394, 51.869350, 50.689518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.707325, 51.942814, 51.261375>,  <41.926201, 52.021191, 51.365467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.707325, 51.942814, 51.261375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430626, 51.766331, 51.490047>,  <42.264606, 51.660442, 51.627251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430626, 51.766331, 51.490047>,  <42.707325, 51.942814, 51.261375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430626, 51.766331, 51.490047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278162, -0.893361, -0.352891,
		0.666416, -0.085092, 0.740708,
		-0.691748, -0.441209, 0.571681,
		42.223103, 51.633968, 51.661552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423130, 52.134598, 51.590210>,  <42.707325, 51.942814, 51.261375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423130, 52.134598, 51.590210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516415, 51.823082, 51.823139>,  <43.572388, 51.636173, 51.962894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.516415, 51.823082, 51.823139>,  <43.423130, 52.134598, 51.590210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516415, 51.823082, 51.823139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315955, -0.627029, -0.712045,
		0.919665, -0.017928, -0.392294,
		0.233214, -0.778790, 0.582321,
		43.586380, 51.589443, 51.997837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044689, 51.637424, 51.334824>,  <43.423130, 52.134598, 51.590210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044689, 51.637424, 51.334824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770126, 51.449448, 51.556816>,  <43.605389, 51.336662, 51.690014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770126, 51.449448, 51.556816>,  <44.044689, 51.637424, 51.334824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770126, 51.449448, 51.556816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158410, -0.648211, -0.744801,
		0.709756, -0.599150, 0.370493,
		-0.686405, -0.469938, 0.554983,
		43.564205, 51.308468, 51.723312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.207058, 50.870079, 51.645271>,  <44.044689, 51.637424, 51.334824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.207058, 50.870079, 51.645271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831314, 50.966709, 51.547905>,  <43.605869, 51.024685, 51.489487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831314, 50.966709, 51.547905>,  <44.207058, 50.870079, 51.645271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831314, 50.966709, 51.547905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055500, -0.593350, -0.803029,
		-0.338419, -0.767840, 0.543961,
		-0.939357, 0.241571, -0.243416,
		43.549507, 51.039181, 51.474880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422695, 50.802208, 52.313614>,  <44.207058, 50.870079, 51.645271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422695, 50.802208, 52.313614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704857, 51.071419, 52.224674>,  <44.874153, 51.232944, 52.171310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.704857, 51.071419, 52.224674>,  <44.422695, 50.802208, 52.313614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.704857, 51.071419, 52.224674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200418, 0.490278, 0.848210,
		0.679881, -0.553769, 0.480731,
		0.705404, 0.673029, -0.222346,
		44.916477, 51.273327, 52.157970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020378, 50.781048, 52.856258>,  <44.422695, 50.802208, 52.313614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020378, 50.781048, 52.856258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952118, 51.140240, 52.694023>,  <44.911160, 51.355755, 52.596680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.952118, 51.140240, 52.694023>,  <45.020378, 50.781048, 52.856258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952118, 51.140240, 52.694023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244935, 0.360049, 0.900206,
		0.954403, 0.252967, 0.158504,
		-0.170653, 0.897982, -0.405593,
		44.900921, 51.409634, 52.572346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.367874, 51.363205, 53.183056>,  <45.020378, 50.781048, 52.856258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.367874, 51.363205, 53.183056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042084, 51.497772, 52.993973>,  <44.846611, 51.578510, 52.880524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.042084, 51.497772, 52.993973>,  <45.367874, 51.363205, 53.183056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042084, 51.497772, 52.993973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362519, 0.341044, 0.867334,
		0.452998, 0.877790, -0.155816,
		-0.814477, 0.336414, -0.472708,
		44.797741, 51.598698, 52.852161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187687, 52.176708, 53.321014>,  <45.367874, 51.363205, 53.183056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187687, 52.176708, 53.321014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864986, 51.958538, 53.230087>,  <44.671368, 51.827637, 53.175529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864986, 51.958538, 53.230087>,  <45.187687, 52.176708, 53.321014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864986, 51.958538, 53.230087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417762, 0.254406, 0.872211,
		-0.417891, 0.798620, -0.433098,
		-0.806748, -0.545421, -0.227319,
		44.622963, 51.794910, 53.161892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788540, 51.974808, 52.944527>,  <45.187687, 52.176708, 53.321014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788540, 51.974808, 52.944527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101997, 52.136345, 52.755718>,  <46.290073, 52.233269, 52.642433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101997, 52.136345, 52.755718>,  <45.788540, 51.974808, 52.944527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101997, 52.136345, 52.755718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615694, -0.605920, 0.503767,
		-0.082562, -0.685396, -0.723475,
		0.783648, 0.403847, -0.472020,
		46.337093, 52.257500, 52.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279636, 51.513500, 52.435654>,  <45.788540, 51.974808, 52.944527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279636, 51.513500, 52.435654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464272, 51.782558, 52.666992>,  <46.575050, 51.943993, 52.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464272, 51.782558, 52.666992>,  <46.279636, 51.513500, 52.435654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464272, 51.782558, 52.666992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575865, -0.723118, 0.381419,
		0.674773, 0.156992, -0.721135,
		0.461586, 0.672647, 0.578346,
		46.602749, 51.984352, 52.840496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962780, 51.596073, 52.335705>,  <46.279636, 51.513500, 52.435654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962780, 51.596073, 52.335705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871807, 51.674648, 52.717216>,  <46.817223, 51.721794, 52.946121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.871807, 51.674648, 52.717216>,  <46.962780, 51.596073, 52.335705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.871807, 51.674648, 52.717216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464451, -0.838980, 0.283546,
		0.855898, 0.507469, 0.099573,
		-0.227430, 0.196439, 0.953775,
		46.803577, 51.733582, 53.003349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549465, 51.485680, 52.678978>,  <46.962780, 51.596073, 52.335705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549465, 51.485680, 52.678978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229889, 51.430977, 52.913239>,  <47.038143, 51.398155, 53.053795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229889, 51.430977, 52.913239>,  <47.549465, 51.485680, 52.678978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229889, 51.430977, 52.913239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369718, -0.879742, 0.298936,
		0.474341, 0.455359, 0.753425,
		-0.798943, -0.136757, 0.585652,
		46.990208, 51.389950, 53.088936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.766468, 51.313095, 53.380524>,  <47.549465, 51.485680, 52.678978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.766468, 51.313095, 53.380524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415703, 51.120956, 53.387344>,  <47.205246, 51.005672, 53.391438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.415703, 51.120956, 53.387344>,  <47.766468, 51.313095, 53.380524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.415703, 51.120956, 53.387344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413374, -0.735589, 0.536685,
		-0.245255, 0.477673, 0.843610,
		-0.876911, -0.480351, 0.017051,
		47.152630, 50.976852, 53.392460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283245, 51.681160, 53.869629>,  <47.766468, 51.313095, 53.380524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283245, 51.681160, 53.869629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515831, 51.479568, 54.125099>,  <47.655380, 51.358612, 54.278381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.515831, 51.479568, 54.125099>,  <47.283245, 51.681160, 53.869629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.515831, 51.479568, 54.125099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110562, 0.826690, 0.551688,
		-0.806027, -0.250172, 0.536409,
		0.581460, -0.503982, 0.638675,
		47.690269, 51.328373, 54.316700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.175777, 51.824234, 54.597496>,  <47.283245, 51.681160, 53.869629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.175777, 51.824234, 54.597496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561371, 51.731770, 54.544876>,  <47.792725, 51.676289, 54.513306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.561371, 51.731770, 54.544876>,  <47.175777, 51.824234, 54.597496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.561371, 51.731770, 54.544876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265162, 0.873840, 0.407546,
		0.020739, -0.427747, 0.903661,
		0.963981, -0.231165, -0.131545,
		47.850567, 51.662418, 54.505413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.447552, 52.006008, 55.315762>,  <47.175777, 51.824234, 54.597496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.447552, 52.006008, 55.315762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728176, 51.991344, 55.031097>,  <47.896553, 51.982548, 54.860298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.728176, 51.991344, 55.031097>,  <47.447552, 52.006008, 55.315762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.728176, 51.991344, 55.031097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462439, 0.783253, 0.415530,
		0.542178, -0.620622, 0.566455,
		0.701564, -0.036660, -0.711662,
		47.938644, 51.980347, 54.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.102947, 51.898373, 55.631489>,  <47.447552, 52.006008, 55.315762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.102947, 51.898373, 55.631489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.074032, 52.110954, 55.293892>,  <48.056683, 52.238503, 55.091331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.074032, 52.110954, 55.293892>,  <48.102947, 51.898373, 55.631489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.074032, 52.110954, 55.293892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226568, 0.832836, 0.505025,
		0.971309, -0.154715, -0.180616,
		-0.072288, 0.531457, -0.843995,
		48.052345, 52.270390, 55.040695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.352657, 52.444881, 55.849422>,  <48.102947, 51.898373, 55.631489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.352657, 52.444881, 55.849422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.296783, 52.593086, 55.482117>,  <48.263260, 52.682011, 55.261734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.296783, 52.593086, 55.482117>,  <48.352657, 52.444881, 55.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.296783, 52.593086, 55.482117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117222, 0.927023, 0.356214,
		0.983233, -0.057882, -0.172926,
		-0.139688, 0.370512, -0.918264,
		48.254875, 52.704239, 55.206638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.914391, 52.930653, 55.565498>,  <48.352657, 52.444881, 55.849422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.914391, 52.930653, 55.565498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.546780, 53.024620, 55.438881>,  <48.326214, 53.081001, 55.362911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.546780, 53.024620, 55.438881>,  <48.914391, 52.930653, 55.565498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.546780, 53.024620, 55.438881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009990, 0.816640, 0.577061,
		0.394063, 0.527173, -0.752863,
		-0.919029, 0.234919, -0.316541,
		48.271072, 53.095097, 55.343918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.848145, 53.521904, 55.082169>,  <48.914391, 52.930653, 55.565498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.848145, 53.521904, 55.082169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.553436, 53.485649, 55.350182>,  <48.376610, 53.463894, 55.510990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.553436, 53.485649, 55.350182>,  <48.848145, 53.521904, 55.082169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.553436, 53.485649, 55.350182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318455, 0.827656, 0.462139,
		-0.596447, 0.553868, -0.580931,
		-0.736775, -0.090641, 0.670035,
		48.332405, 53.458458, 55.551193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.221687, 53.862438, 54.472187>,  <48.848145, 53.521904, 55.082169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.221687, 53.862438, 54.472187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.288319, 53.903202, 54.079887>,  <49.328297, 53.927662, 53.844509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.288319, 53.903202, 54.079887>,  <49.221687, 53.862438, 54.472187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.288319, 53.903202, 54.079887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733794, 0.651575, 0.192341,
		0.658633, -0.751707, 0.033756,
		0.166578, 0.101912, -0.980748,
		49.338291, 53.933777, 53.785664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.942768, 53.765167, 54.351887>,  <49.221687, 53.862438, 54.472187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.942768, 53.765167, 54.351887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.803635, 54.017395, 54.074356>,  <49.720154, 54.168732, 53.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.803635, 54.017395, 54.074356>,  <49.942768, 53.765167, 54.351887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.803635, 54.017395, 54.074356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657417, 0.691658, 0.299019,
		0.668441, -0.352121, -0.655132,
		-0.347836, 0.630571, -0.693823,
		49.699284, 54.206566, 53.866211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.520840, 54.285774, 54.440102>,  <49.942768, 53.765167, 54.351887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.520840, 54.285774, 54.440102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.779400, 54.264580, 54.744564>,  <50.934536, 54.251862, 54.927242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.779400, 54.264580, 54.744564>,  <50.520840, 54.285774, 54.440102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.779400, 54.264580, 54.744564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668087, 0.521159, -0.531086,
		-0.368543, 0.851813, 0.372277,
		0.646402, -0.052986, 0.761155,
		50.973320, 54.248684, 54.972912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.777645, 54.993435, 54.359573>,  <50.520840, 54.285774, 54.440102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.777645, 54.993435, 54.359573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046017, 54.785297, 54.570892>,  <51.207039, 54.660416, 54.697681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.046017, 54.785297, 54.570892>,  <50.777645, 54.993435, 54.359573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.046017, 54.785297, 54.570892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739789, 0.518343, -0.428989,
		-0.050618, 0.678650, 0.732715,
		0.670932, -0.520341, 0.528295,
		51.247295, 54.629196, 54.729382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.192463, 55.430138, 54.867386>,  <50.777645, 54.993435, 54.359573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.192463, 55.430138, 54.867386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.390850, 55.120708, 54.709602>,  <51.509884, 54.935051, 54.614933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.390850, 55.120708, 54.709602>,  <51.192463, 55.430138, 54.867386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.390850, 55.120708, 54.709602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625554, 0.633363, -0.455559,
		0.602243, -0.020809, 0.798042,
		0.495970, -0.773575, -0.394455,
		51.539642, 54.888638, 54.591267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.778423, 55.532372, 54.978065>,  <51.192463, 55.430138, 54.867386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.778423, 55.532372, 54.978065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834126, 55.293983, 54.661728>,  <51.867546, 55.150951, 54.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.834126, 55.293983, 54.661728>,  <51.778423, 55.532372, 54.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.834126, 55.293983, 54.661728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692400, 0.629547, -0.352496,
		0.707948, -0.498492, 0.500315,
		0.139255, -0.595967, -0.790843,
		51.875900, 55.115192, 54.424477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.542000, 55.327087, 54.947041>,  <51.778423, 55.532372, 54.978065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.542000, 55.327087, 54.947041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.377335, 55.349918, 54.583221>,  <52.278534, 55.363617, 54.364929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.377335, 55.349918, 54.583221>,  <52.542000, 55.327087, 54.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.377335, 55.349918, 54.583221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718173, 0.634726, -0.285219,
		0.561032, -0.770626, -0.302287,
		-0.411667, 0.057078, -0.909545,
		52.253834, 55.367043, 54.310356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.042061, 55.186062, 54.378338>,  <52.542000, 55.327087, 54.947041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.042061, 55.186062, 54.378338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.760166, 55.451782, 54.278702>,  <52.591030, 55.611214, 54.218922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.760166, 55.451782, 54.278702>,  <53.042061, 55.186062, 54.378338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.760166, 55.451782, 54.278702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694909, 0.717093, -0.053659,
		0.142976, -0.210911, -0.966992,
		-0.704741, 0.664300, -0.249091,
		52.548744, 55.651073, 54.203976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.393440, 54.921600, 54.872875>,  <53.042061, 55.186062, 54.378338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.393440, 54.921600, 54.872875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.264019, 54.630878, 54.630531>,  <53.186367, 54.456444, 54.485123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.264019, 54.630878, 54.630531>,  <53.393440, 54.921600, 54.872875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.264019, 54.630878, 54.630531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734395, -0.596639, 0.323550,
		-0.596639, -0.340259, 0.726805,
		-0.323550, -0.726805, -0.605863,
		53.166954, 54.412838, 54.448772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.491661, 54.367413, 55.244770>,  <53.393440, 54.921600, 54.872875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.491661, 54.367413, 55.244770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.478165, 54.205070, 54.879444>,  <53.470066, 54.107666, 54.660248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.478165, 54.205070, 54.879444>,  <53.491661, 54.367413, 55.244770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.478165, 54.205070, 54.879444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775161, -0.587460, 0.232413,
		-0.630862, -0.700124, 0.334424,
		-0.033743, -0.405853, -0.913315,
		53.468040, 54.083313, 54.605450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.595287, 53.667507, 55.274597>,  <53.491661, 54.367413, 55.244770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.595287, 53.667507, 55.274597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.784241, 53.771866, 54.937840>,  <53.897614, 53.834480, 54.735783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.784241, 53.771866, 54.937840>,  <53.595287, 53.667507, 55.274597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.784241, 53.771866, 54.937840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867201, -0.308308, 0.391036,
		-0.157544, -0.914811, -0.371887,
		0.472379, 0.260895, -0.841897,
		53.925953, 53.850136, 54.685268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.064758, 53.114422, 55.024529>,  <53.595287, 53.667507, 55.274597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.064758, 53.114422, 55.024529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186653, 53.465797, 54.877296>,  <54.259792, 53.676620, 54.788956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.186653, 53.465797, 54.877296>,  <54.064758, 53.114422, 55.024529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.186653, 53.465797, 54.877296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943521, -0.225683, 0.242558,
		0.130001, -0.421212, -0.897597,
		0.304741, 0.878435, -0.368083,
		54.278076, 53.729328, 54.766872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.598495, 52.998745, 54.534939>,  <54.064758, 53.114422, 55.024529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.598495, 52.998745, 54.534939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.641182, 53.361351, 54.698326>,  <54.666794, 53.578915, 54.796356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.641182, 53.361351, 54.698326>,  <54.598495, 52.998745, 54.534939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.641182, 53.361351, 54.698326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981400, -0.161965, 0.103060,
		0.159582, 0.389869, -0.906937,
		0.106712, 0.906515, 0.408464,
		54.673195, 53.633305, 54.820866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.995426, 53.448406, 54.141369>,  <54.598495, 52.998745, 54.534939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.995426, 53.448406, 54.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.032928, 53.540932, 54.528709>,  <55.055431, 53.596447, 54.761112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.032928, 53.540932, 54.528709>,  <54.995426, 53.448406, 54.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.032928, 53.540932, 54.528709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992495, -0.098413, -0.072588,
		0.078507, 0.967888, -0.238809,
		0.093759, 0.231318, 0.968350,
		55.061058, 53.610329, 54.819214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.428013, 54.093872, 54.344402>,  <54.995426, 53.448406, 54.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.428013, 54.093872, 54.344402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.444901, 53.772774, 54.582333>,  <55.455032, 53.580116, 54.725090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.444901, 53.772774, 54.582333>,  <55.428013, 54.093872, 54.344402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.444901, 53.772774, 54.582333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983625, -0.071010, -0.165648,
		0.175211, 0.592080, 0.786602,
		0.042220, -0.802745, 0.594826,
		55.457565, 53.531952, 54.760780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.950306, 54.187115, 54.923077>,  <55.428013, 54.093872, 54.344402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.950306, 54.187115, 54.923077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903465, 53.803703, 54.819138>,  <55.875362, 53.573658, 54.756775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.903465, 53.803703, 54.819138>,  <55.950306, 54.187115, 54.923077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.903465, 53.803703, 54.819138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991703, -0.126830, 0.020950,
		-0.053037, -0.255235, 0.965423,
		-0.117097, -0.958524, -0.259844,
		55.868336, 53.516148, 54.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.508911, 53.977528, 55.272156>,  <55.950306, 54.187115, 54.923077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.508911, 53.977528, 55.272156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.398415, 53.696453, 55.009880>,  <56.332119, 53.527809, 54.852516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.398415, 53.696453, 55.009880>,  <56.508911, 53.977528, 55.272156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.398415, 53.696453, 55.009880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942729, -0.330824, -0.042633,
		-0.186961, -0.629915, 0.753825,
		-0.276239, -0.702682, -0.655690,
		56.315544, 53.485649, 54.813171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.570518, 53.344128, 55.647312>,  <56.508911, 53.977528, 55.272156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.570518, 53.344128, 55.647312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640511, 53.301437, 55.255806>,  <56.682507, 53.275822, 55.020901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.640511, 53.301437, 55.255806>,  <56.570518, 53.344128, 55.647312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.640511, 53.301437, 55.255806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962006, -0.193078, 0.193041,
		-0.209583, -0.975361, 0.068889,
		0.174984, -0.106730, -0.978769,
		56.693005, 53.269417, 54.962173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.874271, 52.693825, 55.399731>,  <56.570518, 53.344128, 55.647312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.874271, 52.693825, 55.399731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027657, 52.976173, 55.161507>,  <57.119690, 53.145584, 55.018570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.027657, 52.976173, 55.161507>,  <56.874271, 52.693825, 55.399731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.027657, 52.976173, 55.161507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904985, -0.415854, 0.089816,
		-0.184268, -0.573418, -0.798271,
		0.383467, 0.705873, -0.595564,
		57.142696, 53.187935, 54.982838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.266613, 52.430836, 55.002617>,  <56.874271, 52.693825, 55.399731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.266613, 52.430836, 55.002617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.422935, 52.798836, 54.990776>,  <57.516731, 53.019634, 54.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.422935, 52.798836, 54.990776>,  <57.266613, 52.430836, 55.002617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.422935, 52.798836, 54.990776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910637, -0.381744, 0.158152,
		0.134199, -0.088763, -0.986971,
		0.390808, 0.919996, -0.029601,
		57.540176, 53.074833, 54.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.889774, 52.435917, 54.672520>,  <57.266613, 52.430836, 55.002617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.889774, 52.435917, 54.672520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940872, 52.761307, 54.899479>,  <57.971531, 52.956539, 55.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.940872, 52.761307, 54.899479>,  <57.889774, 52.435917, 54.672520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.940872, 52.761307, 54.899479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932594, -0.293232, 0.210434,
		0.337563, 0.502272, -0.796099,
		0.127747, 0.813473, 0.567400,
		57.979195, 53.005348, 55.069698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.535652, 52.475288, 54.698288>,  <57.889774, 52.435917, 54.672520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.535652, 52.475288, 54.698288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.428093, 52.689186, 55.018723>,  <58.363560, 52.817524, 55.210983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.428093, 52.689186, 55.018723>,  <58.535652, 52.475288, 54.698288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.428093, 52.689186, 55.018723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893281, -0.172587, 0.415047,
		0.360202, 0.827199, -0.431272,
		-0.268895, 0.534748, 0.801087,
		58.347424, 52.849609, 55.259048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.008942, 53.030830, 54.748901>,  <58.535652, 52.475288, 54.698288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.008942, 53.030830, 54.748901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.864731, 52.834045, 55.065887>,  <58.778206, 52.715977, 55.256081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.864731, 52.834045, 55.065887>,  <59.008942, 53.030830, 54.748901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.864731, 52.834045, 55.065887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931844, -0.227396, 0.282767,
		0.041093, 0.840397, 0.540411,
		-0.360524, -0.491959, 0.792464,
		58.756573, 52.686459, 55.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.173401, 53.355793, 55.452076>,  <59.008942, 53.030830, 54.748901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.173401, 53.355793, 55.452076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170609, 52.955826, 55.447807>,  <59.168934, 52.715847, 55.445248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.170609, 52.955826, 55.447807>,  <59.173401, 53.355793, 55.452076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.170609, 52.955826, 55.447807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941772, -0.010159, 0.336099,
		-0.336180, -0.007701, 0.941766,
		-0.006979, -0.999919, -0.010668,
		59.168514, 52.655849, 55.444607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.512089, 53.171215, 56.087646>,  <59.173401, 53.355793, 55.452076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.512089, 53.171215, 56.087646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.580673, 52.897270, 55.804359>,  <59.621822, 52.732903, 55.634388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.580673, 52.897270, 55.804359>,  <59.512089, 53.171215, 56.087646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.580673, 52.897270, 55.804359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974307, 0.011317, 0.224940,
		-0.146037, -0.728587, 0.669204,
		0.171462, -0.684859, -0.708215,
		59.632111, 52.691811, 55.591896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.879654, 52.548618, 56.386482>,  <59.512089, 53.171215, 56.087646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.879654, 52.548618, 56.386482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.918655, 52.723152, 56.028687>,  <59.942059, 52.827873, 55.814011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.918655, 52.723152, 56.028687>,  <59.879654, 52.548618, 56.386482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.918655, 52.723152, 56.028687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954282, 0.214178, 0.208503,
		0.282556, -0.873921, -0.395504,
		0.097507, 0.436336, -0.894485,
		59.947906, 52.854053, 55.760342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.439835, 52.256207, 56.081547>,  <59.879654, 52.548618, 56.386482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.439835, 52.256207, 56.081547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.417809, 52.609333, 55.894951>,  <60.404594, 52.821209, 55.782993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.417809, 52.609333, 55.894951>,  <60.439835, 52.256207, 56.081547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.417809, 52.609333, 55.894951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985416, 0.123384, 0.117179,
		0.161004, -0.453231, -0.876732,
		-0.055066, 0.882813, -0.466486,
		60.401287, 52.874176, 55.755005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.947868, 52.184345, 55.498421>,  <60.439835, 52.256207, 56.081547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.947868, 52.184345, 55.498421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.869804, 52.569157, 55.574753>,  <60.822968, 52.800045, 55.620552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.869804, 52.569157, 55.574753>,  <60.947868, 52.184345, 55.498421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.869804, 52.569157, 55.574753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971731, 0.163309, 0.170494,
		0.132856, 0.218709, -0.966704,
		-0.195160, 0.962027, 0.190830,
		60.811256, 52.857765, 55.632000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.374313, 52.697540, 55.100182>,  <60.947868, 52.184345, 55.498421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.374313, 52.697540, 55.100182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.290527, 52.864201, 55.454025>,  <61.240257, 52.964195, 55.666332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.290527, 52.864201, 55.454025>,  <61.374313, 52.697540, 55.100182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.290527, 52.864201, 55.454025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975635, 0.028657, 0.217521,
		0.065279, 0.908617, -0.412497,
		-0.209464, 0.416647, 0.884607,
		61.227688, 52.989193, 55.719406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.916653, 53.099548, 55.296700>,  <61.374313, 52.697540, 55.100182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.916653, 53.099548, 55.296700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.745667, 53.085613, 55.658043>,  <61.643074, 53.077251, 55.874847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.745667, 53.085613, 55.658043>,  <61.916653, 53.099548, 55.296700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.745667, 53.085613, 55.658043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893717, 0.134221, 0.428083,
		-0.136165, 0.990339, -0.026236,
		-0.427469, -0.034842, 0.903358,
		61.617424, 53.075161, 55.929050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.661301, 53.689491, 55.531727>,  <61.916653, 53.099548, 55.296700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.661301, 53.689491, 55.531727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.880875, 54.012009, 55.619873>,  <62.012619, 54.205517, 55.672760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.880875, 54.012009, 55.619873>,  <61.661301, 53.689491, 55.531727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.880875, 54.012009, 55.619873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824329, 0.565856, -0.016962,
		-0.138371, -0.172341, 0.975270,
		0.548939, 0.806291, 0.220364,
		62.045555, 54.253895, 55.685982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.433952, 54.168442, 56.080185>,  <61.661301, 53.689491, 55.531727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.433952, 54.168442, 56.080185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660469, 54.460751, 55.927719>,  <61.796379, 54.636135, 55.836239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.660469, 54.460751, 55.927719>,  <61.433952, 54.168442, 56.080185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.660469, 54.460751, 55.927719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792996, 0.609140, -0.010299,
		0.224655, 0.308092, 0.924451,
		0.566293, 0.730772, -0.381163,
		61.830357, 54.679981, 55.813370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.314083, 54.896240, 56.460522>,  <61.433952, 54.168442, 56.080185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.314083, 54.896240, 56.460522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387436, 54.958496, 56.072266>,  <61.431446, 54.995850, 55.839310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.387436, 54.958496, 56.072266>,  <61.314083, 54.896240, 56.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.387436, 54.958496, 56.072266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826264, 0.559354, -0.066415,
		0.532597, 0.814186, 0.231176,
		0.183383, 0.155640, -0.970643,
		61.442451, 55.005188, 55.781075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.231144, 55.620621, 56.262653>,  <61.314083, 54.896240, 56.460522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.231144, 55.620621, 56.262653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.150070, 55.372627, 55.959457>,  <61.101425, 55.223831, 55.777542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.150070, 55.372627, 55.959457>,  <61.231144, 55.620621, 56.262653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.150070, 55.372627, 55.959457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921826, 0.381956, -0.065924,
		0.330389, 0.685371, -0.648930,
		-0.202680, -0.619981, -0.757986,
		61.089268, 55.186634, 55.732059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.044712, 55.779381, 56.319187>,  <61.231144, 55.620621, 56.262653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.044712, 55.779381, 56.319187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861046, 56.030190, 56.570908>,  <61.750847, 56.180676, 56.721939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.861046, 56.030190, 56.570908>,  <62.044712, 55.779381, 56.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.861046, 56.030190, 56.570908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417557, -0.777588, 0.470109,
		0.784103, -0.046912, 0.618856,
		-0.459161, 0.627022, 0.629297,
		61.723297, 56.218296, 56.759697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.419102, 56.067574, 56.943562>,  <62.044712, 55.779381, 56.319187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.419102, 56.067574, 56.943562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.165863, 56.375324, 56.977608>,  <62.013920, 56.559975, 56.998035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.165863, 56.375324, 56.977608>,  <62.419102, 56.067574, 56.943562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.165863, 56.375324, 56.977608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178150, -0.251832, 0.951232,
		0.753294, 0.587057, 0.296499,
		-0.633096, 0.769379, 0.085119,
		61.975933, 56.606136, 57.003143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.432423, 56.201599, 57.545799>,  <62.419102, 56.067574, 56.943562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.432423, 56.201599, 57.545799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.093224, 56.403912, 57.482437>,  <61.889706, 56.525299, 57.444420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.093224, 56.403912, 57.482437>,  <62.432423, 56.201599, 57.545799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.093224, 56.403912, 57.482437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243307, -0.105975, 0.964143,
		0.470857, 0.856129, 0.212926,
		-0.847995, 0.505779, -0.158403,
		61.838825, 56.555645, 57.434917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.297562, 56.847622, 57.971695>,  <62.432423, 56.201599, 57.545799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.297562, 56.847622, 57.971695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967293, 56.651520, 57.860046>,  <61.769131, 56.533859, 57.793056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.967293, 56.651520, 57.860046>,  <62.297562, 56.847622, 57.971695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.967293, 56.651520, 57.860046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270258, -0.090566, 0.958519,
		-0.495195, 0.866863, -0.057716,
		-0.825677, -0.490252, -0.279125,
		61.719589, 56.504444, 57.776310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.950264, 57.011585, 58.076160>,  <62.297562, 56.847622, 57.971695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.950264, 57.011585, 58.076160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.162369, 56.949867, 57.742691>,  <63.289631, 56.912838, 57.542610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.162369, 56.949867, 57.742691>,  <62.950264, 57.011585, 58.076160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.162369, 56.949867, 57.742691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822772, 0.330969, 0.462067,
		0.204627, -0.930942, 0.302449,
		0.530259, -0.154295, -0.833678,
		63.321445, 56.903580, 57.492588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.449657, 56.636261, 58.291077>,  <62.950264, 57.011585, 58.076160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.449657, 56.636261, 58.291077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.541267, 56.811356, 57.943298>,  <63.596233, 56.916412, 57.734631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.541267, 56.811356, 57.943298>,  <63.449657, 56.636261, 58.291077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.541267, 56.811356, 57.943298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948322, 0.101186, 0.300744,
		0.219623, -0.893391, -0.391942,
		0.229023, 0.437738, -0.869445,
		63.609974, 56.942677, 57.682465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.013863, 56.280598, 58.004757>,  <63.449657, 56.636261, 58.291077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.013863, 56.280598, 58.004757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017403, 56.664692, 57.893143>,  <64.019524, 56.895149, 57.826176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.017403, 56.664692, 57.893143>,  <64.013863, 56.280598, 58.004757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.017403, 56.664692, 57.893143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924318, 0.098618, 0.368660,
		0.381520, -0.261178, -0.886695,
		0.008841, 0.960240, -0.279036,
		64.020058, 56.952763, 57.809433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.620605, 56.489201, 57.698982>,  <64.013863, 56.280598, 58.004757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.620605, 56.489201, 57.698982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467628, 56.832851, 57.835007>,  <64.375839, 57.039040, 57.916622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.467628, 56.832851, 57.835007>,  <64.620605, 56.489201, 57.698982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.467628, 56.832851, 57.835007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877009, 0.221680, 0.426278,
		0.290841, 0.461263, -0.838241,
		-0.382448, 0.859124, 0.340059,
		64.352898, 57.090588, 57.937023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.099785, 57.134995, 57.500069>,  <64.620605, 56.489201, 57.698982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.099785, 57.134995, 57.500069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.886147, 57.182457, 57.834892>,  <64.757965, 57.210934, 58.035786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.886147, 57.182457, 57.834892>,  <65.099785, 57.134995, 57.500069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.886147, 57.182457, 57.834892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832454, 0.246584, 0.496201,
		-0.147528, 0.961830, -0.230475,
		-0.534093, 0.118657, 0.837058,
		64.725922, 57.218056, 58.086010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.404274, 57.645649, 57.883430>,  <65.099785, 57.134995, 57.500069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.404274, 57.645649, 57.883430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.214752, 57.362526, 58.093010>,  <65.101036, 57.192654, 58.218758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.214752, 57.362526, 58.093010>,  <65.404274, 57.645649, 57.883430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.214752, 57.362526, 58.093010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769694, -0.043771, 0.636910,
		-0.427874, 0.705052, 0.565532,
		-0.473809, -0.707804, 0.523946,
		65.072609, 57.150185, 58.250195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.182747, 57.909027, 58.555134>,  <65.404274, 57.645649, 57.883430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.182747, 57.909027, 58.555134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269012, 57.519299, 58.529251>,  <65.320770, 57.285461, 58.513721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.269012, 57.519299, 58.529251>,  <65.182747, 57.909027, 58.555134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.269012, 57.519299, 58.529251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666825, 0.098540, 0.738670,
		-0.713327, -0.202449, 0.670954,
		0.215659, -0.974322, -0.064706,
		65.333710, 57.227001, 58.509838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.201485, 57.492390, 59.184002>,  <65.182747, 57.909027, 58.555134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.201485, 57.492390, 59.184002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.443878, 57.309433, 58.923668>,  <65.589317, 57.199657, 58.767467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.443878, 57.309433, 58.923668>,  <65.201485, 57.492390, 59.184002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.443878, 57.309433, 58.923668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732858, 0.002818, 0.680376,
		-0.309365, -0.889261, 0.336911,
		0.605981, -0.457392, -0.650830,
		65.625671, 57.172215, 58.728420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.657661, 57.163654, 59.606243>,  <65.201485, 57.492390, 59.184002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.657661, 57.163654, 59.606243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.836243, 57.133209, 59.249619>,  <65.943390, 57.114941, 59.035645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.836243, 57.133209, 59.249619>,  <65.657661, 57.163654, 59.606243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.836243, 57.133209, 59.249619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880365, -0.140929, 0.452876,
		-0.160118, -0.987089, 0.004090,
		0.446453, -0.076115, -0.891564,
		65.970177, 57.110374, 58.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.114937, 56.493744, 59.488754>,  <65.657661, 57.163654, 59.606243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.114937, 56.493744, 59.488754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.228958, 56.821342, 59.289558>,  <66.297371, 57.017902, 59.170040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.228958, 56.821342, 59.289558>,  <66.114937, 56.493744, 59.488754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.228958, 56.821342, 59.289558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921431, -0.091042, 0.377725,
		0.264017, -0.566534, -0.780599,
		0.285062, 0.818994, -0.497985,
		66.314476, 57.067039, 59.140163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.856506, 56.509197, 59.269566>,  <66.114937, 56.493744, 59.488754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.856506, 56.509197, 59.269566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.776917, 56.901134, 59.276695>,  <66.729164, 57.136295, 59.280975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.776917, 56.901134, 59.276695>,  <66.856506, 56.509197, 59.269566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.776917, 56.901134, 59.276695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928247, 0.182592, 0.324064,
		0.314277, 0.081027, -0.945867,
		-0.198966, 0.979844, 0.017829,
		66.717224, 57.195087, 59.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.266151, 56.918930, 58.925346>,  <66.856506, 56.509197, 59.269566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.266151, 56.918930, 58.925346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.169891, 57.133430, 59.248955>,  <67.112137, 57.262131, 59.443119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.169891, 57.133430, 59.248955>,  <67.266151, 56.918930, 58.925346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.169891, 57.133430, 59.248955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969247, 0.176945, 0.171030,
		-0.051438, 0.825305, -0.562340,
		-0.240655, 0.536249, 0.809026,
		67.097694, 57.294304, 59.491661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.737083, 57.433086, 59.056591>,  <67.266151, 56.918930, 58.925346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.737083, 57.433086, 59.056591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.597450, 57.353424, 59.422867>,  <67.513672, 57.305626, 59.642632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.597450, 57.353424, 59.422867>,  <67.737083, 57.433086, 59.056591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.597450, 57.353424, 59.422867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936156, -0.030434, 0.350266,
		-0.041890, 0.979495, 0.197064,
		-0.349081, -0.199155, 0.915685,
		67.492729, 57.293678, 59.697571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.914192, 58.025005, 59.573521>,  <67.737083, 57.433086, 59.056591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.914192, 58.025005, 59.573521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.901596, 57.658737, 59.733795>,  <67.894035, 57.438976, 59.829960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.901596, 57.658737, 59.733795>,  <67.914192, 58.025005, 59.573521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.901596, 57.658737, 59.733795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910498, 0.139086, 0.389422,
		-0.412313, 0.377092, 0.829337,
		-0.031499, -0.915673, 0.400688,
		67.892143, 57.384037, 59.854000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.160469, 58.080540, 60.208668>,  <67.914192, 58.025005, 59.573521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.160469, 58.080540, 60.208668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236176, 57.702526, 60.102020>,  <68.281601, 57.475719, 60.038033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.236176, 57.702526, 60.102020>,  <68.160469, 58.080540, 60.208668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.236176, 57.702526, 60.102020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947221, 0.104166, 0.303185,
		-0.258748, -0.309931, 0.914873,
		0.189266, -0.945035, -0.266621,
		68.292953, 57.419014, 60.022034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.638824, 57.740559, 60.635170>,  <68.160469, 58.080540, 60.208668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.638824, 57.740559, 60.635170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.657623, 57.493111, 60.321457>,  <68.668900, 57.344643, 60.133228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.657623, 57.493111, 60.321457>,  <68.638824, 57.740559, 60.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.657623, 57.493111, 60.321457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967830, -0.166084, 0.189001,
		-0.247177, -0.767934, 0.590915,
		0.046999, -0.618622, -0.784282,
		68.671722, 57.307526, 60.086174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.898079, 57.133526, 60.862976>,  <68.638824, 57.740559, 60.635170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.898079, 57.133526, 60.862976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.972328, 57.216164, 60.478714>,  <69.016876, 57.265747, 60.248158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.972328, 57.216164, 60.478714>,  <68.898079, 57.133526, 60.862976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.972328, 57.216164, 60.478714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974258, -0.165982, 0.152552,
		-0.127936, -0.964245, -0.232087,
		0.185620, 0.206595, -0.960658,
		69.028015, 57.278141, 60.190517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.350014, 56.608337, 60.578373>,  <68.898079, 57.133526, 60.862976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.350014, 56.608337, 60.578373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.403152, 56.953182, 60.382774>,  <69.435036, 57.160091, 60.265415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.403152, 56.953182, 60.382774>,  <69.350014, 56.608337, 60.578373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.403152, 56.953182, 60.382774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990517, -0.098017, 0.096274,
		0.035069, -0.497144, -0.866959,
		0.132839, 0.862114, -0.488992,
		69.443001, 57.211815, 60.236076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.911705, 56.451698, 60.051285>,  <69.350014, 56.608337, 60.578373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.911705, 56.451698, 60.051285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.911766, 56.841290, 60.141945>,  <69.911804, 57.075043, 60.196342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.911766, 56.841290, 60.141945>,  <69.911705, 56.451698, 60.051285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.911766, 56.841290, 60.141945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998984, -0.010359, 0.043848,
		0.045054, 0.226415, -0.972988,
		0.000152, 0.973976, 0.226652,
		69.911812, 57.133484, 60.209942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.565826, 56.710655, 59.881046>,  <69.911705, 56.451698, 60.051285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.565826, 56.710655, 59.881046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.415276, 56.950916, 60.163200>,  <70.324944, 57.095074, 60.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.415276, 56.950916, 60.163200>,  <70.565826, 56.710655, 59.881046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.415276, 56.950916, 60.163200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925924, 0.217736, 0.308635,
		0.031793, 0.769294, -0.638104,
		-0.376369, 0.600648, 0.705385,
		70.302368, 57.131111, 60.374817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.920235, 57.258465, 59.759483>,  <70.565826, 56.710655, 59.881046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.920235, 57.258465, 59.759483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.798248, 57.252491, 60.140381>,  <70.725052, 57.248909, 60.368919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.798248, 57.252491, 60.140381>,  <70.920235, 57.258465, 59.759483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.798248, 57.252491, 60.140381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893105, 0.342705, 0.291406,
		-0.330689, 0.939324, -0.091181,
		-0.304973, -0.014931, 0.952244,
		70.706757, 57.248013, 60.426056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.831276, 58.061813, 60.123901>,  <70.920235, 57.258465, 59.759483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.831276, 58.061813, 60.123901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.926964, 57.741436, 60.343452>,  <70.984375, 57.549210, 60.475185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.926964, 57.741436, 60.343452>,  <70.831276, 58.061813, 60.123901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.926964, 57.741436, 60.343452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902867, 0.391459, 0.177736,
		-0.357220, 0.453049, 0.816787,
		0.239216, -0.800941, 0.548880,
		70.998726, 57.501152, 60.508118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.198158, 58.271935, 60.697876>,  <70.831276, 58.061813, 60.123901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.198158, 58.271935, 60.697876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.295616, 57.891869, 60.620071>,  <71.354088, 57.663830, 60.573391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.295616, 57.891869, 60.620071>,  <71.198158, 58.271935, 60.697876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.295616, 57.891869, 60.620071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962243, 0.261910, -0.074102,
		0.121352, -0.169111, 0.978098,
		0.243642, -0.950160, -0.194509,
		71.368706, 57.606819, 60.561718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.648155, 57.905396, 61.235619>,  <71.198158, 58.271935, 60.697876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.648155, 57.905396, 61.235619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707428, 57.764885, 60.865829>,  <71.742989, 57.680576, 60.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.707428, 57.764885, 60.865829>,  <71.648155, 57.905396, 61.235619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.707428, 57.764885, 60.865829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972973, 0.219183, 0.072674,
		0.177099, -0.910253, 0.374267,
		0.148185, -0.351281, -0.924469,
		71.751884, 57.659500, 60.588490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.204834, 57.360424, 61.209167>,  <71.648155, 57.905396, 61.235619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.204834, 57.360424, 61.209167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.173012, 57.543179, 60.854782>,  <72.153915, 57.652832, 60.642151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.173012, 57.543179, 60.854782>,  <72.204834, 57.360424, 61.209167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.173012, 57.543179, 60.854782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987270, 0.158909, -0.006705,
		0.137724, -0.875216, -0.463713,
		-0.079556, 0.456886, -0.885960,
		72.149147, 57.680244, 60.588993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.692879, 57.111774, 60.625027>,  <72.204834, 57.360424, 61.209167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.692879, 57.111774, 60.625027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.592186, 57.495773, 60.575958>,  <72.531769, 57.726173, 60.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.592186, 57.495773, 60.575958>,  <72.692879, 57.111774, 60.625027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.592186, 57.495773, 60.575958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958586, 0.264766, 0.104935,
		0.133216, -0.091176, -0.986884,
		-0.251726, 0.959993, -0.122671,
		72.516670, 57.783772, 60.539158>
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
