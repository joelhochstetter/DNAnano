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
	<40.325260, 34.594585, 50.187401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327724, 34.539734, 49.791187>,  <40.329205, 34.506824, 49.553459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327724, 34.539734, 49.791187>,  <40.325260, 34.594585, 50.187401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327724, 34.539734, 49.791187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969197, 0.244708, -0.027848,
		0.246210, -0.959851, 0.134409,
		0.006161, -0.137126, -0.990535,
		40.329571, 34.498596, 49.494026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001343, 34.504677, 49.985203>,  <40.325260, 34.594585, 50.187401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001343, 34.504677, 49.985203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800957, 34.606361, 49.654285>,  <40.680725, 34.667370, 49.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800957, 34.606361, 49.654285>,  <41.001343, 34.504677, 49.985203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800957, 34.606361, 49.654285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863896, 0.089249, -0.495700,
		-0.052177, -0.963022, -0.264321,
		-0.500960, 0.254210, -0.827294,
		40.650669, 34.682625, 49.406097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217201, 34.049866, 49.406025>,  <41.001343, 34.504677, 49.985203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.217201, 34.049866, 49.406025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107597, 34.428062, 49.335644>,  <41.041836, 34.654980, 49.293415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107597, 34.428062, 49.335644>,  <41.217201, 34.049866, 49.406025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107597, 34.428062, 49.335644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929707, 0.213601, -0.300033,
		-0.246095, -0.245797, -0.937561,
		-0.274011, 0.945494, -0.175953,
		41.025394, 34.711712, 49.282856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542633, 34.171856, 48.840950>,  <41.217201, 34.049866, 49.406025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542633, 34.171856, 48.840950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465584, 34.530876, 48.999596>,  <41.419353, 34.746288, 49.094784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465584, 34.530876, 48.999596>,  <41.542633, 34.171856, 48.840950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465584, 34.530876, 48.999596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919867, 0.305898, -0.245501,
		-0.341672, 0.317541, -0.884549,
		-0.192625, 0.897549, 0.396612,
		41.407795, 34.800140, 49.118580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757610, 34.656120, 48.390770>,  <41.542633, 34.171856, 48.840950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757610, 34.656120, 48.390770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747471, 34.873993, 48.726074>,  <41.741386, 35.004719, 48.927258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747471, 34.873993, 48.726074>,  <41.757610, 34.656120, 48.390770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747471, 34.873993, 48.726074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934538, 0.310652, -0.173592,
		-0.354959, 0.778982, -0.516905,
		-0.025353, 0.544685, 0.838257,
		41.739864, 35.037399, 48.977551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987057, 35.373005, 48.238731>,  <41.757610, 34.656120, 48.390770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987057, 35.373005, 48.238731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037155, 35.328609, 48.633091>,  <42.067215, 35.301971, 48.869705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037155, 35.328609, 48.633091>,  <41.987057, 35.373005, 48.238731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037155, 35.328609, 48.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920274, 0.384281, -0.073645,
		-0.370688, 0.916520, 0.150270,
		0.125243, -0.110990, 0.985898,
		42.074730, 35.295311, 48.928860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490833, 35.896534, 48.445045>,  <41.987057, 35.373005, 48.238731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490833, 35.896534, 48.445045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492275, 35.647427, 48.758003>,  <42.493141, 35.497963, 48.945778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492275, 35.647427, 48.758003>,  <42.490833, 35.896534, 48.445045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492275, 35.647427, 48.758003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934834, 0.279908, 0.218489,
		-0.355068, 0.730621, 0.583198,
		0.003610, -0.622771, 0.782395,
		42.493359, 35.460594, 48.992722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746609, 36.277554, 48.954044>,  <42.490833, 35.896534, 48.445045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746609, 36.277554, 48.954044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798630, 35.892937, 49.050819>,  <42.829842, 35.662167, 49.108883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798630, 35.892937, 49.050819>,  <42.746609, 36.277554, 48.954044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798630, 35.892937, 49.050819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903802, 0.215300, 0.369849,
		-0.407712, 0.170562, 0.897039,
		0.130050, -0.961538, 0.241935,
		42.837646, 35.604477, 49.123402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100452, 36.367916, 49.632568>,  <42.746609, 36.277554, 48.954044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100452, 36.367916, 49.632568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167812, 35.989410, 49.522133>,  <43.208229, 35.762306, 49.455872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167812, 35.989410, 49.522133>,  <43.100452, 36.367916, 49.632568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167812, 35.989410, 49.522133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807605, -0.028145, 0.589051,
		-0.565169, -0.322163, 0.759470,
		0.168395, -0.946266, -0.276087,
		43.218330, 35.705532, 49.439308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358879, 36.010986, 50.205971>,  <43.100452, 36.367916, 49.632568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358879, 36.010986, 50.205971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492302, 35.752998, 49.930943>,  <43.572357, 35.598206, 49.765926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.492302, 35.752998, 49.930943>,  <43.358879, 36.010986, 50.205971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.492302, 35.752998, 49.930943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814593, -0.169927, 0.554583,
		-0.474526, -0.745077, 0.468707,
		0.333561, -0.644969, -0.687569,
		43.592369, 35.559509, 49.724670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612736, 35.313538, 50.589291>,  <43.358879, 36.010986, 50.205971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612736, 35.313538, 50.589291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785786, 35.363625, 50.232155>,  <43.889614, 35.393677, 50.017872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785786, 35.363625, 50.232155>,  <43.612736, 35.313538, 50.589291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785786, 35.363625, 50.232155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845555, -0.399992, 0.353614,
		-0.312850, -0.907925, -0.278922,
		0.432622, 0.125216, -0.892838,
		43.915573, 35.401188, 49.964302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882980, 34.609657, 50.400223>,  <43.612736, 35.313538, 50.589291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882980, 34.609657, 50.400223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081123, 34.893799, 50.200214>,  <44.200008, 35.064281, 50.080208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081123, 34.893799, 50.200214>,  <43.882980, 34.609657, 50.400223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081123, 34.893799, 50.200214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868368, -0.389280, 0.307243,
		0.023602, -0.586398, -0.809679,
		0.495359, 0.710351, -0.500022,
		44.229733, 35.106903, 50.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.462463, 34.282528, 50.129215>,  <43.882980, 34.609657, 50.400223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.462463, 34.282528, 50.129215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557644, 34.668983, 50.089314>,  <44.614754, 34.900856, 50.065372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.557644, 34.668983, 50.089314>,  <44.462463, 34.282528, 50.129215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.557644, 34.668983, 50.089314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904158, -0.182821, 0.386103,
		0.354793, -0.182064, -0.917047,
		0.237950, 0.966142, -0.099751,
		44.629028, 34.958824, 50.059387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208382, 34.376789, 49.863297>,  <44.462463, 34.282528, 50.129215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208382, 34.376789, 49.863297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140202, 34.738899, 50.018951>,  <45.099293, 34.956165, 50.112343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140202, 34.738899, 50.018951>,  <45.208382, 34.376789, 49.863297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140202, 34.738899, 50.018951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885794, -0.032228, 0.462959,
		0.431646, 0.423605, -0.796392,
		-0.170446, 0.905273, 0.389138,
		45.089069, 35.010483, 50.135693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855236, 34.833168, 49.743286>,  <45.208382, 34.376789, 49.863297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855236, 34.833168, 49.743286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671547, 35.003906, 50.054905>,  <45.561333, 35.106350, 50.241879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.671547, 35.003906, 50.054905>,  <45.855236, 34.833168, 49.743286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.671547, 35.003906, 50.054905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865316, 0.016655, 0.500950,
		0.200853, 0.904172, -0.377004,
		-0.459223, 0.426844, 0.779049,
		45.533779, 35.131958, 50.288620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283607, 35.354229, 49.934059>,  <45.855236, 34.833168, 49.743286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283607, 35.354229, 49.934059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055309, 35.311356, 50.259701>,  <45.918331, 35.285629, 50.455086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055309, 35.311356, 50.259701>,  <46.283607, 35.354229, 49.934059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055309, 35.311356, 50.259701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821039, -0.060066, 0.567703,
		-0.011951, 0.992423, 0.122287,
		-0.570746, -0.107187, 0.814101,
		45.884087, 35.279198, 50.503929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566227, 35.742558, 50.323528>,  <46.283607, 35.354229, 49.934059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566227, 35.742558, 50.323528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364689, 35.506851, 50.576164>,  <46.243767, 35.365429, 50.727745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.364689, 35.506851, 50.576164>,  <46.566227, 35.742558, 50.323528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.364689, 35.506851, 50.576164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820221, -0.097074, 0.563749,
		-0.270885, 0.802089, 0.532236,
		-0.503843, -0.589262, 0.631594,
		46.213535, 35.330074, 50.765644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.663891, 36.042931, 51.008339>,  <46.566227, 35.742558, 50.323528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.663891, 36.042931, 51.008339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.567142, 35.658718, 51.063305>,  <46.509094, 35.428192, 51.096283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.567142, 35.658718, 51.063305>,  <46.663891, 36.042931, 51.008339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.567142, 35.658718, 51.063305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856256, -0.144675, 0.495877,
		-0.456424, 0.237602, 0.857452,
		-0.241873, -0.960528, 0.137415,
		46.494579, 35.370560, 51.104530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.895393, 35.875305, 51.647045>,  <46.663891, 36.042931, 51.008339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.895393, 35.875305, 51.647045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864719, 35.510353, 51.486210>,  <46.846313, 35.291382, 51.389709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864719, 35.510353, 51.486210>,  <46.895393, 35.875305, 51.647045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864719, 35.510353, 51.486210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839342, -0.276746, 0.467885,
		-0.538167, -0.301608, 0.787025,
		-0.076688, -0.912384, -0.402088,
		46.841713, 35.236637, 51.365585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211693, 35.461258, 52.205509>,  <46.895393, 35.875305, 51.647045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211693, 35.461258, 52.205509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204632, 35.227032, 51.881336>,  <47.200394, 35.086494, 51.686832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.204632, 35.227032, 51.881336>,  <47.211693, 35.461258, 52.205509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.204632, 35.227032, 51.881336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835096, -0.454368, 0.310105,
		-0.549821, -0.671313, 0.497027,
		-0.017656, -0.585567, -0.810432,
		47.199337, 35.051361, 51.638206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.558987, 34.874535, 52.430298>,  <47.211693, 35.461258, 52.205509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.558987, 34.874535, 52.430298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579418, 34.839722, 52.032341>,  <47.591675, 34.818836, 51.793568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.579418, 34.839722, 52.032341>,  <47.558987, 34.874535, 52.430298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.579418, 34.839722, 52.032341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838641, -0.537190, 0.090045,
		-0.542284, -0.838959, 0.045550,
		0.051075, -0.087030, -0.994896,
		47.594742, 34.813614, 51.733871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<23.961761, 35.022144, 51.467827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.171349, 34.901417, 51.786415>,  <24.297100, 34.828979, 51.977570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.171349, 34.901417, 51.786415>,  <23.961761, 35.022144, 51.467827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.171349, 34.901417, 51.786415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807358, 0.473908, -0.351545,
		-0.271353, 0.827235, 0.491985,
		0.523966, -0.301815, 0.796471,
		24.328539, 34.810871, 52.025356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404991, 35.556271, 51.584217>,  <23.961761, 35.022144, 51.467827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404991, 35.556271, 51.584217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.579767, 35.255775, 51.782093>,  <24.684633, 35.075478, 51.900818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.579767, 35.255775, 51.782093>,  <24.404991, 35.556271, 51.584217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579767, 35.255775, 51.782093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890947, 0.437079, -0.123191,
		-0.123674, 0.494573, 0.860292,
		0.436942, -0.751239, 0.494694,
		24.710850, 35.030403, 51.930500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892757, 35.808434, 51.973019>,  <24.404991, 35.556271, 51.584217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892757, 35.808434, 51.973019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.020031, 35.429371, 51.962437>,  <25.096395, 35.201931, 51.956089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.020031, 35.429371, 51.962437>,  <24.892757, 35.808434, 51.973019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020031, 35.429371, 51.962437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920833, 0.315571, -0.229088,
		0.225445, 0.048534, 0.973046,
		0.318184, -0.947660, -0.026452,
		25.115486, 35.145073, 51.954502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495939, 35.829964, 52.352997>,  <24.892757, 35.808434, 51.973019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495939, 35.829964, 52.352997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.489452, 35.507576, 52.116302>,  <25.485559, 35.314144, 51.974285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.489452, 35.507576, 52.116302>,  <25.495939, 35.829964, 52.352997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489452, 35.507576, 52.116302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942971, 0.184463, -0.277090,
		0.332480, -0.562487, 0.757011,
		-0.016219, -0.805966, -0.591740,
		25.484587, 35.265785, 51.938782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148281, 35.469765, 52.557705>,  <25.495939, 35.829964, 52.352997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148281, 35.469765, 52.557705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.053421, 35.304989, 52.205780>,  <25.996506, 35.206123, 51.994625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.053421, 35.304989, 52.205780>,  <26.148281, 35.469765, 52.557705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053421, 35.304989, 52.205780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957119, 0.056035, -0.284226,
		0.166384, -0.909486, 0.380988,
		-0.237151, -0.411941, -0.879809,
		25.982275, 35.181408, 51.941837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683754, 35.003109, 52.398598>,  <26.148281, 35.469765, 52.557705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683754, 35.003109, 52.398598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.513987, 35.057629, 52.040539>,  <26.412127, 35.090340, 51.825703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.513987, 35.057629, 52.040539>,  <26.683754, 35.003109, 52.398598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513987, 35.057629, 52.040539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902330, -0.018542, -0.430648,
		-0.075294, -0.990494, -0.115116,
		-0.424420, 0.136298, -0.895148,
		26.386662, 35.098518, 51.771996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744719, 34.404655, 51.876778>,  <26.683754, 35.003109, 52.398598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744719, 34.404655, 51.876778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.705107, 34.730015, 51.647488>,  <26.681339, 34.925228, 51.509914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.705107, 34.730015, 51.647488>,  <26.744719, 34.404655, 51.876778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705107, 34.730015, 51.647488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767586, -0.304147, -0.564186,
		-0.633249, -0.495867, -0.594231,
		-0.099028, 0.813394, -0.573222,
		26.675398, 34.974033, 51.475521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122482, 34.281406, 51.282799>,  <26.744719, 34.404655, 51.876778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122482, 34.281406, 51.282799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.032335, 34.664936, 51.213676>,  <26.978247, 34.895054, 51.172203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.032335, 34.664936, 51.213676>,  <27.122482, 34.281406, 51.282799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032335, 34.664936, 51.213676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677140, 0.026624, -0.735372,
		-0.700493, -0.282746, -0.655259,
		-0.225370, 0.958825, -0.172808,
		26.964724, 34.952583, 51.161835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122089, 34.262493, 50.621490>,  <27.122482, 34.281406, 51.282799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122089, 34.262493, 50.621490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.175629, 34.634785, 50.757626>,  <27.207752, 34.858158, 50.839306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.175629, 34.634785, 50.757626>,  <27.122089, 34.262493, 50.621490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175629, 34.634785, 50.757626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822899, 0.086978, -0.561491,
		-0.552197, 0.355218, -0.754254,
		0.133848, 0.930728, 0.340337,
		27.215782, 34.914001, 50.859726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453234, 34.653122, 50.141670>,  <27.122089, 34.262493, 50.621490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453234, 34.653122, 50.141670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532238, 34.918629, 50.430229>,  <27.579639, 35.077930, 50.603363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532238, 34.918629, 50.430229>,  <27.453234, 34.653122, 50.141670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532238, 34.918629, 50.430229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882814, 0.199489, -0.425256,
		-0.426180, 0.720848, -0.546579,
		0.197508, 0.663764, 0.721393,
		27.591490, 35.117760, 50.646648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.808004, 35.300259, 49.809338>,  <27.453234, 34.653122, 50.141670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.808004, 35.300259, 49.809338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.904366, 35.325413, 50.196743>,  <27.962181, 35.340504, 50.429184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.904366, 35.325413, 50.196743>,  <27.808004, 35.300259, 49.809338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.904366, 35.325413, 50.196743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924321, 0.289443, -0.248703,
		-0.295969, 0.955127, 0.011602,
		0.240901, 0.062885, 0.968510,
		27.976637, 35.344276, 50.487297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208750, 35.858131, 49.853092>,  <27.808004, 35.300259, 49.809338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208750, 35.858131, 49.853092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309278, 35.627556, 50.164104>,  <28.369596, 35.489208, 50.350712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.309278, 35.627556, 50.164104>,  <28.208750, 35.858131, 49.853092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309278, 35.627556, 50.164104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962793, 0.231328, -0.139704,
		-0.099332, 0.783709, 0.613133,
		0.251322, -0.576444, 0.777528,
		28.384676, 35.454624, 50.397362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794802, 36.267853, 50.187931>,  <28.208750, 35.858131, 49.853092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794802, 36.267853, 50.187931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811998, 35.885853, 50.305325>,  <28.822317, 35.656654, 50.375763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.811998, 35.885853, 50.305325>,  <28.794802, 36.267853, 50.187931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811998, 35.885853, 50.305325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984778, -0.009012, -0.173584,
		0.168417, 0.296483, 0.940071,
		0.042992, -0.954996, 0.293487,
		28.824896, 35.599354, 50.393372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419069, 36.257996, 50.624420>,  <28.794802, 36.267853, 50.187931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419069, 36.257996, 50.624420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.346649, 35.884563, 50.500713>,  <29.303198, 35.660503, 50.426491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.346649, 35.884563, 50.500713>,  <29.419069, 36.257996, 50.624420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346649, 35.884563, 50.500713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953994, -0.090297, -0.285907,
		0.238992, -0.346803, 0.906979,
		-0.181051, -0.933581, -0.309268,
		29.292334, 35.604488, 50.407932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992060, 35.837589, 50.878002>,  <29.419069, 36.257996, 50.624420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992060, 35.837589, 50.878002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.829094, 35.643333, 50.568638>,  <29.731314, 35.526779, 50.383018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.829094, 35.643333, 50.568638>,  <29.992060, 35.837589, 50.878002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829094, 35.643333, 50.568638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906519, -0.112480, -0.406905,
		0.110615, -0.866893, 0.486067,
		-0.407416, -0.485639, -0.773412,
		29.706869, 35.497643, 50.336613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460674, 35.287380, 50.807392>,  <29.992060, 35.837589, 50.878002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460674, 35.287380, 50.807392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.265814, 35.264389, 50.458824>,  <30.148897, 35.250595, 50.249683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.265814, 35.264389, 50.458824>,  <30.460674, 35.287380, 50.807392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265814, 35.264389, 50.458824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854020, -0.239960, -0.461595,
		-0.182575, -0.969080, 0.165985,
		-0.487152, -0.057479, -0.871424,
		30.119669, 35.247147, 50.197395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707411, 34.671032, 50.503239>,  <30.460674, 35.287380, 50.807392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707411, 34.671032, 50.503239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.542835, 34.874870, 50.200974>,  <30.444090, 34.997173, 50.019615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.542835, 34.874870, 50.200974>,  <30.707411, 34.671032, 50.503239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542835, 34.874870, 50.200974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760999, -0.264209, -0.592516,
		-0.501598, -0.818843, -0.279097,
		-0.411437, 0.509597, -0.755665,
		30.419403, 35.027748, 49.974274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674459, 34.273666, 49.974937>,  <30.707411, 34.671032, 50.503239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674459, 34.273666, 49.974937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.655731, 34.636337, 49.807247>,  <30.644493, 34.853939, 49.706635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.655731, 34.636337, 49.807247>,  <30.674459, 34.273666, 49.974937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655731, 34.636337, 49.807247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848871, -0.185101, -0.495133,
		-0.526523, -0.379050, -0.760983,
		-0.046822, 0.906675, -0.419225,
		30.641685, 34.908340, 49.681480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854994, 34.180550, 49.244076>,  <30.674459, 34.273666, 49.974937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854994, 34.180550, 49.244076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.948952, 34.564186, 49.307274>,  <31.005327, 34.794369, 49.345192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.948952, 34.564186, 49.307274>,  <30.854994, 34.180550, 49.244076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948952, 34.564186, 49.307274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862894, -0.130921, -0.488132,
		-0.447479, 0.250994, -0.858350,
		0.234894, 0.959094, 0.157997,
		31.019421, 34.851913, 49.354671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051876, 34.478222, 48.564190>,  <30.854994, 34.180550, 49.244076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051876, 34.478222, 48.564190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223942, 34.731724, 48.821350>,  <31.327181, 34.883823, 48.975647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.223942, 34.731724, 48.821350>,  <31.051876, 34.478222, 48.564190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223942, 34.731724, 48.821350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893015, -0.194416, -0.405865,
		-0.132227, 0.748707, -0.649579,
		0.430162, 0.633751, 0.642900,
		31.352991, 34.921848, 49.014221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542521, 34.909195, 48.204762>,  <31.051876, 34.478222, 48.564190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542521, 34.909195, 48.204762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672335, 34.945980, 48.581318>,  <31.750223, 34.968052, 48.807251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.672335, 34.945980, 48.581318>,  <31.542521, 34.909195, 48.204762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672335, 34.945980, 48.581318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941810, -0.123577, -0.312607,
		0.087587, 0.988065, -0.126713,
		0.324535, 0.091959, 0.941393,
		31.769695, 34.973568, 48.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.056763, 35.033356, 35.495514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.215200, 34.905018, 35.151382>,  <24.310263, 34.828014, 34.944904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.215200, 34.905018, 35.151382>,  <24.056763, 35.033356, 35.495514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.215200, 34.905018, 35.151382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917427, 0.176986, 0.356375,
		0.037925, -0.930448, 0.364456,
		0.396092, -0.320846, -0.860330,
		24.334028, 34.808765, 34.893284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.613113, 34.608524, 35.691353>,  <24.056763, 35.033356, 35.495514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.613113, 34.608524, 35.691353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.685665, 34.791679, 35.343227>,  <24.729197, 34.901573, 35.134354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.685665, 34.791679, 35.343227>,  <24.613113, 34.608524, 35.691353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.685665, 34.791679, 35.343227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890206, 0.299623, 0.343159,
		0.417893, -0.836999, -0.353267,
		0.181377, 0.457885, -0.870313,
		24.740078, 34.929047, 35.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240707, 34.252193, 35.383232>,  <24.613113, 34.608524, 35.691353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240707, 34.252193, 35.383232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.203901, 34.640602, 35.295010>,  <25.181818, 34.873650, 35.242077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.203901, 34.640602, 35.295010>,  <25.240707, 34.252193, 35.383232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203901, 34.640602, 35.295010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965311, 0.141340, 0.219539,
		0.244351, -0.192701, -0.950347,
		-0.092017, 0.971025, -0.220553,
		25.176296, 34.931911, 35.228844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644190, 34.445690, 34.749050>,  <25.240707, 34.252193, 35.383232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644190, 34.445690, 34.749050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.582211, 34.711063, 35.041855>,  <25.545023, 34.870289, 35.217537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.582211, 34.711063, 35.041855>,  <25.644190, 34.445690, 34.749050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582211, 34.711063, 35.041855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975609, -0.013870, 0.219079,
		0.155498, 0.748104, -0.645106,
		-0.154946, 0.663437, 0.732013,
		25.535727, 34.910095, 35.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137056, 35.055176, 34.784737>,  <25.644190, 34.445690, 34.749050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137056, 35.055176, 34.784737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.007189, 34.919731, 35.137993>,  <25.929268, 34.838463, 35.349945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.007189, 34.919731, 35.137993>,  <26.137056, 35.055176, 34.784737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007189, 34.919731, 35.137993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932568, -0.270409, 0.239159,
		0.157827, 0.901233, 0.403571,
		-0.324667, -0.338611, 0.883139,
		25.909788, 34.818150, 35.402935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376589, 35.306656, 35.359482>,  <26.137056, 35.055176, 34.784737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376589, 35.306656, 35.359482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.325575, 34.922646, 35.459152>,  <26.294968, 34.692238, 35.518955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.325575, 34.922646, 35.459152>,  <26.376589, 35.306656, 35.359482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.325575, 34.922646, 35.459152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983109, -0.089107, 0.159865,
		-0.131271, 0.265351, 0.955174,
		-0.127533, -0.960025, 0.249171,
		26.287315, 34.634640, 35.533905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835384, 35.206814, 35.911209>,  <26.376589, 35.306656, 35.359482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835384, 35.206814, 35.911209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.757618, 34.851646, 35.744450>,  <26.710958, 34.638546, 35.644394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.757618, 34.851646, 35.744450>,  <26.835384, 35.206814, 35.911209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757618, 34.851646, 35.744450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941784, -0.287814, 0.173798,
		-0.274308, -0.358841, 0.892182,
		-0.194416, -0.887917, -0.416900,
		26.699293, 34.585270, 35.619381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974276, 34.638485, 36.374249>,  <26.835384, 35.206814, 35.911209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974276, 34.638485, 36.374249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.008923, 34.490528, 36.004238>,  <27.029711, 34.401756, 35.782230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.008923, 34.490528, 36.004238>,  <26.974276, 34.638485, 36.374249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008923, 34.490528, 36.004238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943563, -0.267475, 0.195309,
		-0.319665, -0.889741, 0.325846,
		0.086619, -0.369890, -0.925029,
		27.034908, 34.379562, 35.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617561, 33.988705, 36.528881>,  <26.974276, 34.638485, 36.374249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617561, 33.988705, 36.528881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.439680, 33.653267, 36.654739>,  <26.332951, 33.452003, 36.730255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.439680, 33.653267, 36.654739>,  <26.617561, 33.988705, 36.528881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439680, 33.653267, 36.654739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876461, -0.335051, 0.345771,
		-0.184540, 0.429537, 0.883993,
		-0.444704, -0.838593, 0.314642,
		26.306269, 33.401688, 36.749130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761511, 33.884880, 37.320278>,  <26.617561, 33.988705, 36.528881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761511, 33.884880, 37.320278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.723131, 33.576633, 37.068264>,  <26.700104, 33.391685, 36.917057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.723131, 33.576633, 37.068264>,  <26.761511, 33.884880, 37.320278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723131, 33.576633, 37.068264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928765, -0.296983, 0.221804,
		-0.358035, -0.563873, 0.744216,
		-0.095950, -0.770616, -0.630036,
		26.694345, 33.345448, 36.879253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896961, 33.275459, 37.765026>,  <26.761511, 33.884880, 37.320278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896961, 33.275459, 37.765026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.947718, 33.226166, 37.371334>,  <26.978172, 33.196590, 37.135117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.947718, 33.226166, 37.371334>,  <26.896961, 33.275459, 37.765026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947718, 33.226166, 37.371334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983231, -0.115393, 0.141211,
		-0.130975, -0.985646, 0.106525,
		0.126892, -0.123234, -0.984232,
		26.985785, 33.189198, 37.076065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364157, 33.520916, 38.290714>,  <26.896961, 33.275459, 37.765026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364157, 33.520916, 38.290714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.688526, 33.754936, 38.295109>,  <27.883148, 33.895348, 38.297745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.688526, 33.754936, 38.295109>,  <27.364157, 33.520916, 38.290714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688526, 33.754936, 38.295109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179060, -0.265985, 0.947201,
		0.557084, -0.766138, -0.320452,
		0.810923, 0.585050, 0.010991,
		27.931803, 33.930450, 38.298405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938583, 33.197765, 38.396336>,  <27.364157, 33.520916, 38.290714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938583, 33.197765, 38.396336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994905, 33.565891, 38.542316>,  <28.028698, 33.786766, 38.629906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.994905, 33.565891, 38.542316>,  <27.938583, 33.197765, 38.396336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994905, 33.565891, 38.542316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346372, -0.391118, 0.852674,
		0.927470, 0.006348, -0.373843,
		0.140804, 0.920319, 0.364949,
		28.037148, 33.841988, 38.651802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651817, 33.342800, 38.677189>,  <27.938583, 33.197765, 38.396336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651817, 33.342800, 38.677189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.382032, 33.565060, 38.871655>,  <28.220161, 33.698418, 38.988335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.382032, 33.565060, 38.871655>,  <28.651817, 33.342800, 38.677189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382032, 33.565060, 38.871655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439523, -0.226905, 0.869099,
		0.593230, 0.799853, -0.091184,
		-0.674461, 0.555653, 0.486161,
		28.179693, 33.731754, 39.017502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223383, 33.132744, 39.171207>,  <28.651817, 33.342800, 38.677189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223383, 33.132744, 39.171207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578333, 33.282982, 39.278160>,  <29.791304, 33.373123, 39.342331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.578333, 33.282982, 39.278160>,  <29.223383, 33.132744, 39.171207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578333, 33.282982, 39.278160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456915, -0.638989, -0.618807,
		-0.061569, 0.671284, -0.738638,
		0.887377, 0.375594, 0.267378,
		29.844545, 33.395660, 39.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645618, 33.264996, 38.543583>,  <29.223383, 33.132744, 39.171207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645618, 33.264996, 38.543583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912861, 33.272907, 38.841103>,  <30.073206, 33.277653, 39.019615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.912861, 33.272907, 38.841103>,  <29.645618, 33.264996, 38.543583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.912861, 33.272907, 38.841103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664338, -0.466055, -0.584334,
		0.335096, 0.884534, -0.324515,
		0.668106, 0.019780, 0.743803,
		30.113293, 33.278843, 39.064243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257244, 33.580746, 38.377728>,  <29.645618, 33.264996, 38.543583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257244, 33.580746, 38.377728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322815, 33.307697, 38.662586>,  <30.362158, 33.143867, 38.833500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.322815, 33.307697, 38.662586>,  <30.257244, 33.580746, 38.377728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322815, 33.307697, 38.662586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615571, -0.493328, -0.614574,
		0.770844, 0.539122, 0.339333,
		0.163928, -0.682624, 0.712146,
		30.371994, 33.102909, 38.876228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926172, 33.512737, 38.467327>,  <30.257244, 33.580746, 38.377728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926172, 33.512737, 38.467327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738111, 33.178627, 38.581360>,  <30.625275, 32.978161, 38.649780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.738111, 33.178627, 38.581360>,  <30.926172, 33.512737, 38.467327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738111, 33.178627, 38.581360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537778, -0.527240, -0.657885,
		0.699822, -0.155996, 0.697076,
		-0.470153, -0.835275, 0.285083,
		30.597065, 32.928043, 38.666885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082293, 34.070007, 38.943958>,  <30.926172, 33.512737, 38.467327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082293, 34.070007, 38.943958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161804, 34.459126, 38.896381>,  <31.209511, 34.692596, 38.867836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.161804, 34.459126, 38.896381>,  <31.082293, 34.070007, 38.943958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161804, 34.459126, 38.896381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852531, 0.111778, -0.510585,
		-0.483402, 0.202896, 0.851561,
		0.198781, 0.972800, -0.118941,
		31.221439, 34.750965, 38.860699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638866, 33.802723, 39.546604>,  <31.082293, 34.070007, 38.943958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638866, 33.802723, 39.546604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911221, 34.075558, 39.653301>,  <31.074633, 34.239258, 39.717319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.911221, 34.075558, 39.653301>,  <30.638866, 33.802723, 39.546604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911221, 34.075558, 39.653301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116109, -0.259076, 0.958853,
		0.723128, -0.683840, -0.097205,
		0.680885, 0.682087, 0.266745,
		31.115486, 34.280186, 39.733326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947830, 33.534370, 40.016129>,  <30.638866, 33.802723, 39.546604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947830, 33.534370, 40.016129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021481, 33.922020, 40.081718>,  <31.065670, 34.154610, 40.121071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.021481, 33.922020, 40.081718>,  <30.947830, 33.534370, 40.016129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.021481, 33.922020, 40.081718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153542, -0.136420, 0.978680,
		0.970836, -0.205378, 0.123684,
		0.184126, 0.969128, 0.163976,
		31.076719, 34.212757, 40.130913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525188, 33.617783, 40.404881>,  <30.947830, 33.534370, 40.016129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525188, 33.617783, 40.404881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287918, 33.932930, 40.471092>,  <31.145555, 34.122021, 40.510818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.287918, 33.932930, 40.471092>,  <31.525188, 33.617783, 40.404881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287918, 33.932930, 40.471092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049612, -0.240992, 0.969258,
		0.803543, 0.566728, 0.182039,
		-0.593176, 0.787872, 0.165530,
		31.109966, 34.169292, 40.520752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749100, 34.072655, 41.022079>,  <31.525188, 33.617783, 40.404881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749100, 34.072655, 41.022079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358500, 34.139503, 40.967648>,  <31.124140, 34.179615, 40.934990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.358500, 34.139503, 40.967648>,  <31.749100, 34.072655, 41.022079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358500, 34.139503, 40.967648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158329, -0.127912, 0.979066,
		0.146219, 0.977603, 0.151367,
		-0.976500, 0.167124, -0.136080,
		31.065550, 34.189640, 40.926823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493656, 34.616184, 41.540775>,  <31.749100, 34.072655, 41.022079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493656, 34.616184, 41.540775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200958, 34.358578, 41.451515>,  <31.025339, 34.204014, 41.397961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.200958, 34.358578, 41.451515>,  <31.493656, 34.616184, 41.540775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200958, 34.358578, 41.451515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207577, -0.101273, 0.972962,
		-0.649202, 0.758279, -0.059578,
		-0.731743, -0.644016, -0.223148,
		30.981436, 34.165375, 41.384571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784651, 34.841770, 41.520405>,  <31.493656, 34.616184, 41.540775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784651, 34.841770, 41.520405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818642, 34.466053, 41.653381>,  <30.839037, 34.240623, 41.733166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.818642, 34.466053, 41.653381>,  <30.784651, 34.841770, 41.520405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818642, 34.466053, 41.653381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301992, 0.293673, 0.906950,
		-0.949516, -0.177464, -0.258702,
		0.084977, -0.939289, 0.332439,
		30.844135, 34.184265, 41.753113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154264, 34.557095, 42.073849>,  <30.784651, 34.841770, 41.520405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154264, 34.557095, 42.073849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.529955, 34.424175, 42.108341>,  <30.755369, 34.344425, 42.129036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.529955, 34.424175, 42.108341>,  <30.154264, 34.557095, 42.073849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.529955, 34.424175, 42.108341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051677, 0.385176, 0.921395,
		-0.339393, -0.860940, 0.378939,
		0.939224, -0.332298, 0.086236,
		30.811722, 34.324486, 42.134212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245325, 34.229755, 42.732372>,  <30.154264, 34.557095, 42.073849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245325, 34.229755, 42.732372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601553, 34.371998, 42.618935>,  <30.815290, 34.457344, 42.550873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601553, 34.371998, 42.618935>,  <30.245325, 34.229755, 42.732372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601553, 34.371998, 42.618935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133655, 0.391384, 0.910470,
		0.434768, -0.848741, 0.301025,
		0.890570, 0.355609, -0.283599,
		30.868725, 34.478680, 42.533855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788191, 33.949055, 43.124996>,  <30.245325, 34.229755, 42.732372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788191, 33.949055, 43.124996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880072, 34.317207, 42.998425>,  <30.935200, 34.538101, 42.922482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.880072, 34.317207, 42.998425>,  <30.788191, 33.949055, 43.124996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880072, 34.317207, 42.998425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245976, 0.369467, 0.896097,
		0.941666, -0.127999, 0.311259,
		0.229700, 0.920386, -0.316430,
		30.948982, 34.593323, 42.903496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097691, 34.262989, 43.544888>,  <30.788191, 33.949055, 43.124996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097691, 34.262989, 43.544888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931402, 34.580914, 43.368046>,  <30.831629, 34.771667, 43.261940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.931402, 34.580914, 43.368046>,  <31.097691, 34.262989, 43.544888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931402, 34.580914, 43.368046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259377, 0.362302, 0.895244,
		0.871723, 0.486842, 0.055539,
		-0.415720, 0.794810, -0.442102,
		30.806686, 34.819355, 43.235416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348310, 34.903950, 43.865490>,  <31.097691, 34.262989, 43.544888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348310, 34.903950, 43.865490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994434, 34.993267, 43.701801>,  <30.782108, 35.046856, 43.603588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994434, 34.993267, 43.701801>,  <31.348310, 34.903950, 43.865490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994434, 34.993267, 43.701801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267629, 0.475476, 0.838032,
		0.381700, 0.850919, -0.360890,
		-0.884692, 0.223292, -0.409219,
		30.729027, 35.060253, 43.579037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217625, 35.494473, 44.243088>,  <31.348310, 34.903950, 43.865490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217625, 35.494473, 44.243088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887127, 35.372437, 44.053673>,  <30.688828, 35.299213, 43.940025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.887127, 35.372437, 44.053673>,  <31.217625, 35.494473, 44.243088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887127, 35.372437, 44.053673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561690, 0.509915, 0.651530,
		0.042688, 0.804305, -0.592682,
		-0.826246, -0.305091, -0.473537,
		30.639254, 35.280910, 43.911613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754913, 36.059429, 44.123959>,  <31.217625, 35.494473, 44.243088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754913, 36.059429, 44.123959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555729, 35.713501, 44.149616>,  <30.436218, 35.505943, 44.165012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555729, 35.713501, 44.149616>,  <30.754913, 36.059429, 44.123959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555729, 35.713501, 44.149616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595494, 0.394776, 0.699670,
		-0.630415, 0.310209, -0.711581,
		-0.497959, -0.864825, 0.064146,
		30.406342, 35.454052, 44.168861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920521, 36.742809, 44.330597>,  <30.754913, 36.059429, 44.123959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920521, 36.742809, 44.330597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888805, 36.705376, 44.727577>,  <30.869776, 36.682915, 44.965767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888805, 36.705376, 44.727577>,  <30.920521, 36.742809, 44.330597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888805, 36.705376, 44.727577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447749, -0.892847, -0.048421,
		0.890637, 0.440529, 0.112692,
		-0.079286, -0.093583, 0.992450,
		30.865019, 36.677299, 45.025311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645430, 36.646915, 44.681717>,  <30.920521, 36.742809, 44.330597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645430, 36.646915, 44.681717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332300, 36.439098, 44.818695>,  <31.144423, 36.314407, 44.900883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.332300, 36.439098, 44.818695>,  <31.645430, 36.646915, 44.681717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332300, 36.439098, 44.818695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529697, -0.845178, -0.071387,
		0.326512, 0.125506, 0.936823,
		-0.782823, -0.519541, 0.342441,
		31.097454, 36.283237, 44.921429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849760, 37.005299, 45.269756>,  <31.645430, 36.646915, 44.681717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849760, 37.005299, 45.269756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988108, 37.245529, 45.558109>,  <32.071117, 37.389668, 45.731121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.988108, 37.245529, 45.558109>,  <31.849760, 37.005299, 45.269756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988108, 37.245529, 45.558109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592526, -0.455919, 0.664116,
		0.727521, -0.656842, 0.198171,
		0.345869, 0.600580, 0.720887,
		32.091869, 37.425705, 45.774376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991175, 36.664600, 45.974812>,  <31.849760, 37.005299, 45.269756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991175, 36.664600, 45.974812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922766, 37.052097, 46.046680>,  <31.881720, 37.284595, 46.089802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.922766, 37.052097, 46.046680>,  <31.991175, 36.664600, 45.974812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922766, 37.052097, 46.046680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853289, -0.236804, 0.464566,
		0.492594, -0.073864, 0.867119,
		-0.171022, 0.968746, 0.179676,
		31.871460, 37.342720, 46.100582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433308, 36.403095, 46.552444>,  <31.991175, 36.664600, 45.974812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433308, 36.403095, 46.552444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257027, 36.699623, 46.754917>,  <32.151257, 36.877541, 46.876400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257027, 36.699623, 46.754917>,  <32.433308, 36.403095, 46.552444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257027, 36.699623, 46.754917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295911, -0.652354, 0.697761,
		0.847477, 0.157721, 0.506860,
		-0.440704, 0.741322, 0.506184,
		32.124817, 36.922020, 46.906773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665928, 36.415829, 47.299068>,  <32.433308, 36.403095, 46.552444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665928, 36.415829, 47.299068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305588, 36.565063, 47.210281>,  <32.089382, 36.654606, 47.157009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305588, 36.565063, 47.210281>,  <32.665928, 36.415829, 47.299068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305588, 36.565063, 47.210281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403671, -0.531772, 0.744492,
		0.159728, 0.760278, 0.629654,
		-0.900853, 0.373089, -0.221964,
		32.035332, 36.676991, 47.143692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352428, 36.613308, 47.903515>,  <32.665928, 36.415829, 47.299068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352428, 36.613308, 47.903515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052235, 36.546486, 47.647743>,  <31.872118, 36.506393, 47.494282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052235, 36.546486, 47.647743>,  <32.352428, 36.613308, 47.903515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052235, 36.546486, 47.647743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489548, -0.509451, 0.707674,
		-0.443976, 0.844128, 0.300554,
		-0.750485, -0.167054, -0.639425,
		31.827089, 36.496368, 47.455917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217968, 36.054169, 48.478611>,  <32.352428, 36.613308, 47.903515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217968, 36.054169, 48.478611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240627, 35.790134, 48.778233>,  <32.254223, 35.631714, 48.958004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.240627, 35.790134, 48.778233>,  <32.217968, 36.054169, 48.478611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240627, 35.790134, 48.778233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997157, 0.074745, -0.009543,
		-0.049689, 0.747464, 0.662441,
		0.056648, -0.660084, 0.749053,
		32.257622, 35.592110, 49.002949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694344, 36.375526, 48.964832>,  <32.217968, 36.054169, 48.478611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694344, 36.375526, 48.964832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685940, 35.988121, 49.064060>,  <32.680897, 35.755676, 49.123596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.685940, 35.988121, 49.064060>,  <32.694344, 36.375526, 48.964832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685940, 35.988121, 49.064060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999320, -0.027866, -0.024146,
		0.030298, 0.247390, 0.968442,
		-0.021014, -0.968515, 0.248066,
		32.679634, 35.697567, 49.138481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185738, 36.253613, 49.535290>,  <32.694344, 36.375526, 48.964832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185738, 36.253613, 49.535290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142906, 35.897781, 49.357666>,  <33.117207, 35.684284, 49.251091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142906, 35.897781, 49.357666>,  <33.185738, 36.253613, 49.535290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142906, 35.897781, 49.357666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974148, -0.004512, -0.225867,
		0.198923, -0.456764, 0.867062,
		-0.107080, -0.889576, -0.444058,
		33.110783, 35.630909, 49.224449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801670, 35.746658, 49.806183>,  <33.185738, 36.253613, 49.535290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801670, 35.746658, 49.806183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623421, 35.610115, 49.475151>,  <33.516472, 35.528187, 49.276531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623421, 35.610115, 49.475151>,  <33.801670, 35.746658, 49.806183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623421, 35.610115, 49.475151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892731, -0.238311, -0.382411,
		-0.066681, -0.909220, 0.410942,
		-0.445628, -0.341361, -0.827580,
		33.489731, 35.507706, 49.226875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068249, 35.148487, 49.700348>,  <33.801670, 35.746658, 49.806183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068249, 35.148487, 49.700348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942581, 35.246689, 49.333519>,  <33.867180, 35.305611, 49.113422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942581, 35.246689, 49.333519>,  <34.068249, 35.148487, 49.700348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942581, 35.246689, 49.333519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856620, -0.343122, -0.385317,
		-0.409265, -0.906639, -0.102505,
		-0.314171, 0.245505, -0.917074,
		33.848331, 35.320339, 49.058395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248264, 34.510082, 49.267120>,  <34.068249, 35.148487, 49.700348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248264, 34.510082, 49.267120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203064, 34.825642, 49.025501>,  <34.175945, 35.014977, 48.880531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203064, 34.825642, 49.025501>,  <34.248264, 34.510082, 49.267120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203064, 34.825642, 49.025501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829237, -0.260025, -0.494726,
		-0.547355, -0.556800, -0.624801,
		-0.112999, 0.788898, -0.604045,
		34.169163, 35.062309, 48.844288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570904, 34.225086, 48.634262>,  <34.248264, 34.510082, 49.267120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570904, 34.225086, 48.634262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524334, 34.617569, 48.572704>,  <34.496391, 34.853058, 48.535770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524334, 34.617569, 48.572704>,  <34.570904, 34.225086, 48.634262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524334, 34.617569, 48.572704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797482, -0.000007, -0.603342,
		-0.592003, -0.192974, -0.782492,
		-0.116424, 0.981204, -0.153897,
		34.489407, 34.911930, 48.526535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587650, 34.336674, 47.926815>,  <34.570904, 34.225086, 48.634262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587650, 34.336674, 47.926815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700077, 34.682652, 48.093132>,  <34.767532, 34.890236, 48.192921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.700077, 34.682652, 48.093132>,  <34.587650, 34.336674, 47.926815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700077, 34.682652, 48.093132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802366, 0.025903, -0.596269,
		-0.526507, 0.501206, -0.686718,
		0.281066, 0.864940, 0.415789,
		34.784397, 34.942135, 48.217869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789169, 34.860062, 47.369347>,  <34.587650, 34.336674, 47.926815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789169, 34.860062, 47.369347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966164, 34.980183, 47.707348>,  <35.072361, 35.052254, 47.910149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.966164, 34.980183, 47.707348>,  <34.789169, 34.860062, 47.369347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966164, 34.980183, 47.707348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856617, 0.137268, -0.497358,
		-0.265348, 0.943916, -0.196503,
		0.442490, 0.300300, 0.844998,
		35.098911, 35.070274, 47.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175377, 35.481430, 47.179077>,  <34.789169, 34.860062, 47.369347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175377, 35.481430, 47.179077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319065, 35.384140, 47.539474>,  <35.405277, 35.325764, 47.755714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319065, 35.384140, 47.539474>,  <35.175377, 35.481430, 47.179077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319065, 35.384140, 47.539474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918150, 0.265081, -0.294504,
		-0.167206, 0.933044, 0.318544,
		0.359225, -0.243229, 0.900998,
		35.426834, 35.311172, 47.809772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522533, 36.069725, 47.481476>,  <35.175377, 35.481430, 47.179077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522533, 36.069725, 47.481476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682907, 35.743446, 47.648277>,  <35.779133, 35.547680, 47.748360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682907, 35.743446, 47.648277>,  <35.522533, 36.069725, 47.481476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682907, 35.743446, 47.648277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894766, 0.250995, -0.369318,
		0.196584, 0.521196, 0.830488,
		0.400935, -0.815694, 0.417007,
		35.803188, 35.498737, 47.773380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147594, 36.275311, 47.672211>,  <35.522533, 36.069725, 47.481476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147594, 36.275311, 47.672211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154427, 35.876141, 47.697018>,  <36.158524, 35.636639, 47.711903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.154427, 35.876141, 47.697018>,  <36.147594, 36.275311, 47.672211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154427, 35.876141, 47.697018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848707, -0.018324, -0.528546,
		0.528588, 0.061663, 0.846636,
		0.017078, -0.997929, 0.062020,
		36.159550, 35.576763, 47.715622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895576, 36.160271, 47.859016>,  <36.147594, 36.275311, 47.672211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895576, 36.160271, 47.859016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737148, 35.825401, 47.708141>,  <36.642090, 35.624481, 47.617615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737148, 35.825401, 47.708141>,  <36.895576, 36.160271, 47.859016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737148, 35.825401, 47.708141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781497, -0.091682, -0.617137,
		0.482066, -0.539205, 0.690558,
		-0.396075, -0.837169, -0.377190,
		36.618324, 35.574249, 47.594986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511669, 35.716213, 47.821732>,  <36.895576, 36.160271, 47.859016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511669, 35.716213, 47.821732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231586, 35.562458, 47.581081>,  <37.063538, 35.470207, 47.436691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.231586, 35.562458, 47.581081>,  <37.511669, 35.716213, 47.821732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231586, 35.562458, 47.581081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706305, -0.250048, -0.662276,
		0.104132, -0.888664, 0.446578,
		-0.700207, -0.384385, -0.601630,
		37.021523, 35.447144, 47.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796597, 35.039753, 47.556599>,  <37.511669, 35.716213, 47.821732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796597, 35.039753, 47.556599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519711, 35.179291, 47.303886>,  <37.353577, 35.263012, 47.152260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.519711, 35.179291, 47.303886>,  <37.796597, 35.039753, 47.556599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519711, 35.179291, 47.303886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571943, -0.268716, -0.775031,
		-0.440134, -0.897831, -0.013508,
		-0.692217, 0.348843, -0.631779,
		37.312046, 35.283943, 47.114353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429329, 35.309132, 47.284412>,  <37.796597, 35.039753, 47.556599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429329, 35.309132, 47.284412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463326, 35.142239, 46.922485>,  <38.483723, 35.042103, 46.705330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.463326, 35.142239, 46.922485>,  <38.429329, 35.309132, 47.284412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463326, 35.142239, 46.922485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855059, -0.435658, 0.281204,
		-0.511518, -0.797572, 0.319732,
		0.084987, -0.417231, -0.904818,
		38.488823, 35.017071, 46.651039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024509, 35.362061, 46.934002>,  <38.429329, 35.309132, 47.284412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024509, 35.362061, 46.934002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372696, 35.377022, 46.737679>,  <39.581608, 35.385998, 46.619884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.372696, 35.377022, 46.737679>,  <39.024509, 35.362061, 46.934002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372696, 35.377022, 46.737679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292408, 0.762813, 0.576727,
		0.395966, -0.645537, 0.653064,
		0.870464, 0.037403, -0.490809,
		39.633835, 35.388241, 46.590435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697060, 35.429092, 47.433472>,  <39.024509, 35.362061, 46.934002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697060, 35.429092, 47.433472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786423, 35.571259, 47.070423>,  <39.840042, 35.656559, 46.852596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786423, 35.571259, 47.070423>,  <39.697060, 35.429092, 47.433472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786423, 35.571259, 47.070423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305527, 0.858692, 0.411463,
		0.925604, -0.369226, 0.083249,
		0.223408, 0.355416, -0.907617,
		39.853447, 35.677883, 46.798138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689648, 35.024509, 48.158222>,  <39.697060, 35.429092, 47.433472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689648, 35.024509, 48.158222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868431, 34.936993, 48.505177>,  <39.975700, 34.884483, 48.713348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.868431, 34.936993, 48.505177>,  <39.689648, 35.024509, 48.158222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868431, 34.936993, 48.505177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888584, 0.003256, 0.458703,
		-0.103184, -0.975766, -0.192959,
		0.446958, -0.218791, 0.867386,
		40.002518, 34.871357, 48.765392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153175, 34.571686, 48.592133>,  <39.689648, 35.024509, 48.158222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153175, 34.571686, 48.592133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.438171, 34.677616, 48.852047>,  <39.609169, 34.741177, 49.007996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.438171, 34.677616, 48.852047>,  <39.153175, 34.571686, 48.592133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438171, 34.677616, 48.852047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688826, 0.087512, 0.719625,
		0.133714, -0.960316, 0.244774,
		0.712488, 0.264830, 0.649789,
		39.651917, 34.757065, 49.046982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223598, 34.151825, 49.169945>,  <39.153175, 34.571686, 48.592133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223598, 34.151825, 49.169945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335217, 34.509789, 49.309242>,  <39.402187, 34.724567, 49.392822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335217, 34.509789, 49.309242>,  <39.223598, 34.151825, 49.169945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335217, 34.509789, 49.309242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618813, -0.109732, 0.777837,
		0.734304, -0.432553, 0.523158,
		0.279049, 0.894906, 0.348247,
		39.418930, 34.778259, 49.413715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351803, 34.156727, 49.880821>,  <39.223598, 34.151825, 49.169945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351803, 34.156727, 49.880821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232407, 34.536140, 49.838505>,  <39.160767, 34.763786, 49.813114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232407, 34.536140, 49.838505>,  <39.351803, 34.156727, 49.880821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232407, 34.536140, 49.838505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546835, -0.079123, 0.833494,
		0.782223, 0.306643, 0.542307,
		-0.298494, 0.948530, -0.105791,
		39.142857, 34.820698, 49.806767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596508, 34.579082, 50.472630>,  <39.351803, 34.156727, 49.880821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596508, 34.579082, 50.472630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234928, 34.693043, 50.345070>,  <39.017979, 34.761417, 50.268532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234928, 34.693043, 50.345070>,  <39.596508, 34.579082, 50.472630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234928, 34.693043, 50.345070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373867, -0.164527, 0.912773,
		0.207581, 0.944332, 0.255240,
		-0.903954, 0.284900, -0.318902,
		38.963741, 34.778511, 50.249401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404366, 34.967850, 50.943771>,  <39.596508, 34.579082, 50.472630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404366, 34.967850, 50.943771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059181, 34.848984, 50.780312>,  <38.852070, 34.777664, 50.682236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059181, 34.848984, 50.780312>,  <39.404366, 34.967850, 50.943771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059181, 34.848984, 50.780312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395509, -0.106026, 0.912322,
		-0.314440, 0.948920, -0.026036,
		-0.862960, -0.297168, -0.408645,
		38.800293, 34.759834, 50.657719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811489, 35.327831, 51.315914>,  <39.404366, 34.967850, 50.943771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811489, 35.327831, 51.315914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611450, 35.043022, 51.118763>,  <38.491428, 34.872139, 51.000473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.611450, 35.043022, 51.118763>,  <38.811489, 35.327831, 51.315914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611450, 35.043022, 51.118763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697364, -0.006310, 0.716690,
		-0.513407, 0.702132, -0.493381,
		-0.500097, -0.712019, -0.492880,
		38.461422, 34.829418, 50.970898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217716, 35.643574, 51.379898>,  <38.811489, 35.327831, 51.315914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217716, 35.643574, 51.379898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148899, 35.255306, 51.312717>,  <38.107609, 35.022346, 51.272411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148899, 35.255306, 51.312717>,  <38.217716, 35.643574, 51.379898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148899, 35.255306, 51.312717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825926, 0.049218, 0.561626,
		-0.536886, 0.235338, -0.810166,
		-0.172047, -0.970667, -0.167947,
		38.097286, 34.964108, 51.262333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501801, 35.530338, 51.088478>,  <38.217716, 35.643574, 51.379898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501801, 35.530338, 51.088478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619869, 35.182068, 51.245857>,  <37.690708, 34.973106, 51.340286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619869, 35.182068, 51.245857>,  <37.501801, 35.530338, 51.088478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619869, 35.182068, 51.245857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874953, -0.080882, 0.477406,
		-0.383841, -0.485166, -0.785672,
		0.295168, -0.870673, 0.393451,
		37.708420, 34.920864, 51.363892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890881, 35.312222, 51.280174>,  <37.501801, 35.530338, 51.088478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890881, 35.312222, 51.280174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121502, 35.057224, 51.484596>,  <37.259876, 34.904224, 51.607250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.121502, 35.057224, 51.484596>,  <36.890881, 35.312222, 51.280174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121502, 35.057224, 51.484596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733470, -0.128228, 0.667517,
		-0.360009, -0.759706, -0.541516,
		0.576555, -0.637498, 0.511059,
		37.294468, 34.865974, 51.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373241, 34.729794, 51.441738>,  <36.890881, 35.312222, 51.280174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373241, 34.729794, 51.441738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670490, 34.728073, 51.709396>,  <36.848839, 34.727043, 51.869991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670490, 34.728073, 51.709396>,  <36.373241, 34.729794, 51.441738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670490, 34.728073, 51.709396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668571, -0.046732, 0.742179,
		0.028082, -0.998898, -0.037600,
		0.743118, -0.004296, 0.669146,
		36.893425, 34.726784, 51.910141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216679, 34.213821, 51.894028>,  <36.373241, 34.729794, 51.441738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216679, 34.213821, 51.894028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469536, 34.438133, 52.107914>,  <36.621250, 34.572720, 52.236248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469536, 34.438133, 52.107914>,  <36.216679, 34.213821, 51.894028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469536, 34.438133, 52.107914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684710, 0.081221, 0.724275,
		0.362731, -0.823969, 0.435317,
		0.632138, 0.560783, 0.534719,
		36.659176, 34.606369, 52.268330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275536, 33.992191, 52.700809>,  <36.216679, 34.213821, 51.894028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275536, 33.992191, 52.700809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379871, 34.378326, 52.697052>,  <36.442471, 34.610008, 52.694798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.379871, 34.378326, 52.697052>,  <36.275536, 33.992191, 52.700809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379871, 34.378326, 52.697052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621228, 0.175292, 0.763773,
		0.738945, -0.193384, 0.645417,
		0.260838, 0.965337, -0.009396,
		36.458122, 34.667927, 52.694233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203827, 34.161602, 53.347572>,  <36.275536, 33.992191, 52.700809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203827, 34.161602, 53.347572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245304, 34.522343, 53.179810>,  <36.270191, 34.738789, 53.079151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.245304, 34.522343, 53.179810>,  <36.203827, 34.161602, 53.347572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245304, 34.522343, 53.179810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589344, 0.395397, 0.704510,
		0.801200, 0.174125, 0.572503,
		0.103693, 0.901855, -0.419411,
		36.276413, 34.792900, 53.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454716, 34.696579, 53.862740>,  <36.203827, 34.161602, 53.347572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454716, 34.696579, 53.862740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319859, 34.926823, 53.564743>,  <36.238945, 35.064968, 53.385944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.319859, 34.926823, 53.564743>,  <36.454716, 34.696579, 53.862740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319859, 34.926823, 53.564743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550248, 0.521613, 0.652034,
		0.763912, 0.629758, 0.140869,
		-0.337144, 0.575609, -0.744989,
		36.218716, 35.099506, 53.341248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583794, 35.395554, 54.087547>,  <36.454716, 34.696579, 53.862740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583794, 35.395554, 54.087547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.292759, 35.417053, 53.813984>,  <36.118137, 35.429955, 53.649845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.292759, 35.417053, 53.813984>,  <36.583794, 35.395554, 54.087547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292759, 35.417053, 53.813984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519466, 0.607984, 0.600426,
		0.448080, 0.792128, -0.414438,
		-0.727585, 0.053753, -0.683908,
		36.074482, 35.433178, 53.608810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443802, 36.087868, 54.018780>,  <36.583794, 35.395554, 54.087547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443802, 36.087868, 54.018780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114998, 35.913502, 53.872204>,  <35.917713, 35.808884, 53.784260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.114998, 35.913502, 53.872204>,  <36.443802, 36.087868, 54.018780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114998, 35.913502, 53.872204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569459, 0.633002, 0.524428,
		0.003352, 0.639758, -0.768569,
		-0.822013, -0.435910, -0.366438,
		35.868393, 35.782730, 53.762272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032658, 36.669262, 53.825035>,  <36.443802, 36.087868, 54.018780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032658, 36.669262, 53.825035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769440, 36.369766, 53.856926>,  <35.611507, 36.190067, 53.876060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.769440, 36.369766, 53.856926>,  <36.032658, 36.669262, 53.825035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769440, 36.369766, 53.856926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634938, 0.608686, 0.475768,
		-0.404756, 0.262457, -0.875950,
		-0.658047, -0.748744, 0.079726,
		35.572025, 36.145142, 53.880844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333138, 36.898071, 53.484177>,  <36.032658, 36.669262, 53.825035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333138, 36.898071, 53.484177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296520, 36.609699, 53.758953>,  <35.274548, 36.436676, 53.923817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.296520, 36.609699, 53.758953>,  <35.333138, 36.898071, 53.484177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296520, 36.609699, 53.758953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623868, 0.579195, 0.524712,
		-0.776150, -0.380522, -0.502788,
		-0.091548, -0.720928, 0.686937,
		35.269054, 36.393421, 53.965034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660503, 36.987015, 53.585346>,  <35.333138, 36.898071, 53.484177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660503, 36.987015, 53.585346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805416, 36.772068, 53.889977>,  <34.892365, 36.643101, 54.072754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.805416, 36.772068, 53.889977>,  <34.660503, 36.987015, 53.585346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805416, 36.772068, 53.889977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672997, 0.414485, 0.612599,
		-0.644849, -0.734469, -0.211485,
		0.362277, -0.537362, 0.761575,
		34.914101, 36.610859, 54.118450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043209, 36.856735, 53.900887>,  <34.660503, 36.987015, 53.585346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043209, 36.856735, 53.900887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351967, 36.797295, 54.148144>,  <34.537220, 36.761631, 54.296497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351967, 36.797295, 54.148144>,  <34.043209, 36.856735, 53.900887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351967, 36.797295, 54.148144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559156, 0.303986, 0.771322,
		-0.302527, -0.941015, 0.151552,
		0.771895, -0.148604, 0.618138,
		34.583534, 36.752712, 54.333584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694794, 36.639507, 54.482265>,  <34.043209, 36.856735, 53.900887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694794, 36.639507, 54.482265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048473, 36.784477, 54.600147>,  <34.260681, 36.871460, 54.670876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048473, 36.784477, 54.600147>,  <33.694794, 36.639507, 54.482265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048473, 36.784477, 54.600147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450874, 0.497228, 0.741267,
		0.122116, -0.788299, 0.603053,
		0.884195, 0.362421, 0.294704,
		34.313732, 36.893204, 54.688557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606918, 36.757858, 55.158264>,  <33.694794, 36.639507, 54.482265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606918, 36.757858, 55.158264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922440, 36.979343, 55.051544>,  <34.111752, 37.112236, 54.987511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.922440, 36.979343, 55.051544>,  <33.606918, 36.757858, 55.158264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922440, 36.979343, 55.051544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229320, 0.667863, 0.708075,
		0.570258, -0.497352, 0.653794,
		0.788808, 0.553714, -0.266802,
		34.159081, 37.145458, 54.971504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921806, 36.871418, 55.766876>,  <33.606918, 36.757858, 55.158264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921806, 36.871418, 55.766876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018505, 37.172104, 55.521442>,  <34.076523, 37.352516, 55.374184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.018505, 37.172104, 55.521442>,  <33.921806, 36.871418, 55.766876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018505, 37.172104, 55.521442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312817, 0.658951, 0.684053,
		0.918535, 0.026574, 0.394446,
		0.241742, 0.751717, -0.613582,
		34.091026, 37.397617, 55.337368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124775, 37.435833, 56.189911>,  <33.921806, 36.871418, 55.766876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124775, 37.435833, 56.189911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085026, 37.621479, 55.837837>,  <34.061176, 37.732864, 55.626595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.085026, 37.621479, 55.837837>,  <34.124775, 37.435833, 56.189911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085026, 37.621479, 55.837837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129136, 0.871067, 0.473884,
		0.986635, 0.160754, -0.026626,
		-0.099372, 0.464112, -0.880185,
		34.055214, 37.760712, 55.573780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505505, 38.121853, 56.281193>,  <34.124775, 37.435833, 56.189911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505505, 38.121853, 56.281193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221558, 38.126286, 55.999493>,  <34.051189, 38.128944, 55.830475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.221558, 38.126286, 55.999493>,  <34.505505, 38.121853, 56.281193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221558, 38.126286, 55.999493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391421, 0.825049, 0.407533,
		0.585556, 0.564952, -0.581338,
		-0.709869, 0.011086, -0.704247,
		34.008598, 38.129612, 55.788219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396931, 38.847992, 56.140041>,  <34.505505, 38.121853, 56.281193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396931, 38.847992, 56.140041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075439, 38.670948, 55.980980>,  <33.882545, 38.564724, 55.885544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.075439, 38.670948, 55.980980>,  <34.396931, 38.847992, 56.140041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075439, 38.670948, 55.980980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581080, 0.727607, 0.364600,
		0.127961, 0.524106, -0.841985,
		-0.803724, -0.442607, -0.397653,
		33.834324, 38.538166, 55.861683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942600, 39.392296, 55.871109>,  <34.396931, 38.847992, 56.140041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942600, 39.392296, 55.871109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.705444, 39.072548, 55.910061>,  <33.563152, 38.880699, 55.933430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.705444, 39.072548, 55.910061>,  <33.942600, 39.392296, 55.871109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705444, 39.072548, 55.910061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679203, 0.561357, 0.472823,
		-0.432625, 0.214194, -0.875760,
		-0.592890, -0.799374, 0.097376,
		33.527576, 38.832737, 55.939274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189392, 39.676739, 55.809433>,  <33.942600, 39.392296, 55.871109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189392, 39.676739, 55.809433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137596, 39.314255, 55.970440>,  <33.106518, 39.096764, 56.067043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137596, 39.314255, 55.970440>,  <33.189392, 39.676739, 55.809433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137596, 39.314255, 55.970440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689242, 0.374096, 0.620481,
		-0.712865, -0.197085, -0.673039,
		-0.129494, -0.906206, 0.402519,
		33.098747, 39.042393, 56.091194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364365, 39.436291, 55.809807>,  <33.189392, 39.676739, 55.809433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364365, 39.436291, 55.809807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516983, 39.209908, 56.102139>,  <32.608555, 39.074078, 56.277538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.516983, 39.209908, 56.102139>,  <32.364365, 39.436291, 55.809807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516983, 39.209908, 56.102139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780185, 0.226835, 0.582972,
		-0.495716, -0.792615, -0.355004,
		0.381545, -0.565957, 0.730832,
		32.631447, 39.040119, 56.321388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841276, 38.941868, 56.027161>,  <32.364365, 39.436291, 55.809807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841276, 38.941868, 56.027161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076836, 38.941391, 56.350445>,  <32.218170, 38.941105, 56.544415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.076836, 38.941391, 56.350445>,  <31.841276, 38.941868, 56.027161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.076836, 38.941391, 56.350445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808146, -0.013214, 0.588834,
		0.009975, -0.999912, -0.008749,
		0.588898, -0.001197, 0.808206,
		32.253506, 38.941032, 56.592907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546280, 38.533016, 56.466442>,  <31.841276, 38.941868, 56.027161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546280, 38.533016, 56.466442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796627, 38.741215, 56.698776>,  <31.946836, 38.866135, 56.838177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796627, 38.741215, 56.698776>,  <31.546280, 38.533016, 56.466442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796627, 38.741215, 56.698776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722204, 0.105599, 0.683572,
		0.294463, -0.847307, 0.441997,
		0.625870, 0.520499, 0.580833,
		31.984388, 38.897366, 56.873028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561449, 38.157299, 57.070911>,  <31.546280, 38.533016, 56.466442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561449, 38.157299, 57.070911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664467, 38.537086, 57.142677>,  <31.726276, 38.764957, 57.185738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664467, 38.537086, 57.142677>,  <31.561449, 38.157299, 57.070911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664467, 38.537086, 57.142677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717433, 0.063515, 0.693726,
		0.647273, -0.307382, 0.697535,
		0.257543, 0.949464, 0.179415,
		31.741730, 38.821926, 57.196503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523104, 38.178963, 57.828659>,  <31.561449, 38.157299, 57.070911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523104, 38.178963, 57.828659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508982, 38.547050, 57.672733>,  <31.500507, 38.767902, 57.579178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.508982, 38.547050, 57.672733>,  <31.523104, 38.178963, 57.828659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508982, 38.547050, 57.672733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702136, 0.254732, 0.664919,
		0.711168, 0.297181, 0.637122,
		-0.035306, 0.920215, -0.389818,
		31.498390, 38.823116, 57.555786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377857, 38.626213, 58.373848>,  <31.523104, 38.178963, 57.828659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377857, 38.626213, 58.373848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276268, 38.865707, 58.070004>,  <31.215315, 39.009403, 57.887695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.276268, 38.865707, 58.070004>,  <31.377857, 38.626213, 58.373848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276268, 38.865707, 58.070004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664812, 0.462367, 0.586721,
		0.702512, 0.654010, 0.280621,
		-0.253972, 0.598739, -0.759612,
		31.200077, 39.045330, 57.842121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386497, 39.364475, 58.583431>,  <31.377857, 38.626213, 58.373848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386497, 39.364475, 58.583431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145271, 39.356155, 58.264462>,  <31.000536, 39.351166, 58.073082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.145271, 39.356155, 58.264462>,  <31.386497, 39.364475, 58.583431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145271, 39.356155, 58.264462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680368, 0.535274, 0.500581,
		0.416429, 0.844423, -0.336954,
		-0.603064, -0.020797, -0.797422,
		30.964352, 39.349915, 58.025234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086254, 40.089577, 58.412178>,  <31.386497, 39.364475, 58.583431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086254, 40.089577, 58.412178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.835417, 39.851570, 58.211102>,  <30.684914, 39.708767, 58.090454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.835417, 39.851570, 58.211102>,  <31.086254, 40.089577, 58.412178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835417, 39.851570, 58.211102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778936, 0.476204, 0.408031,
		-0.003401, 0.647441, -0.762108,
		-0.627095, -0.595021, -0.502695,
		30.647289, 39.673065, 58.060291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612675, 40.502678, 58.007385>,  <31.086254, 40.089577, 58.412178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612675, 40.502678, 58.007385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.397919, 40.168819, 58.056549>,  <30.269064, 39.968502, 58.086048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.397919, 40.168819, 58.056549>,  <30.612675, 40.502678, 58.007385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397919, 40.168819, 58.056549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785203, 0.547649, 0.289029,
		-0.308551, 0.058665, -0.949397,
		-0.536892, -0.834649, 0.122914,
		30.236851, 39.918427, 58.093422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244831, 40.613434, 57.448044>,  <30.612675, 40.502678, 58.007385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244831, 40.613434, 57.448044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093439, 40.366222, 57.723663>,  <30.002604, 40.217896, 57.889034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.093439, 40.366222, 57.723663>,  <30.244831, 40.613434, 57.448044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093439, 40.366222, 57.723663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762070, 0.630586, 0.147006,
		-0.525358, -0.469464, -0.709649,
		-0.378481, -0.618033, 0.689048,
		29.979895, 40.180813, 57.930378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.582573, 40.529171, 57.318329>,  <30.244831, 40.613434, 57.448044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.582573, 40.529171, 57.318329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591105, 40.408203, 57.699505>,  <29.596224, 40.335625, 57.928211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.591105, 40.408203, 57.699505>,  <29.582573, 40.529171, 57.318329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591105, 40.408203, 57.699505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861913, 0.477423, 0.170802,
		-0.506608, -0.824992, -0.250475,
		0.021328, -0.302417, 0.952937,
		29.597504, 40.317478, 57.985386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864811, 40.469704, 57.369518>,  <29.582573, 40.529171, 57.318329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864811, 40.469704, 57.369518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026823, 40.495819, 57.734306>,  <29.124031, 40.511486, 57.953178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.026823, 40.495819, 57.734306>,  <28.864811, 40.469704, 57.369518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026823, 40.495819, 57.734306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705477, 0.656799, 0.266304,
		-0.581594, -0.751235, 0.312082,
		0.405032, 0.065286, 0.911969,
		29.148333, 40.515404, 58.007896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283581, 40.383751, 57.809647>,  <28.864811, 40.469704, 57.369518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283581, 40.383751, 57.809647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556108, 40.536404, 58.059502>,  <28.719625, 40.627995, 58.209415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.556108, 40.536404, 58.059502>,  <28.283581, 40.383751, 57.809647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556108, 40.536404, 58.059502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674614, 0.658546, 0.333485,
		-0.284082, -0.648596, 0.706131,
		0.681317, 0.381628, 0.624633,
		28.760504, 40.650890, 58.246891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984291, 40.414711, 58.474541>,  <28.283581, 40.383751, 57.809647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984291, 40.414711, 58.474541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300261, 40.657875, 58.506683>,  <28.489843, 40.803776, 58.525970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.300261, 40.657875, 58.506683>,  <27.984291, 40.414711, 58.474541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300261, 40.657875, 58.506683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580024, 0.698221, 0.419595,
		0.198972, -0.378058, 0.904148,
		0.789926, 0.607915, 0.080356,
		28.537239, 40.840248, 58.530788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108377, 40.656216, 59.243702>,  <27.984291, 40.414711, 58.474541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108377, 40.656216, 59.243702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.223021, 40.927944, 58.973476>,  <28.291805, 41.090981, 58.811340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.223021, 40.927944, 58.973476>,  <28.108377, 40.656216, 59.243702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223021, 40.927944, 58.973476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585238, 0.682427, 0.437939,
		0.758521, 0.269847, 0.593151,
		0.286606, 0.679320, -0.675560,
		28.309002, 41.131741, 58.770809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127262, 41.167797, 59.674038>,  <28.108377, 40.656216, 59.243702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127262, 41.167797, 59.674038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125727, 41.317684, 59.303185>,  <28.124805, 41.407616, 59.080673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.125727, 41.317684, 59.303185>,  <28.127262, 41.167797, 59.674038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125727, 41.317684, 59.303185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641552, 0.710263, 0.289720,
		0.767070, 0.595916, 0.237672,
		-0.003839, 0.374714, -0.927132,
		28.124575, 41.430099, 59.025043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104483, 41.952755, 59.716793>,  <28.127262, 41.167797, 59.674038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104483, 41.952755, 59.716793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.935024, 41.859909, 59.366562>,  <27.833349, 41.804199, 59.156422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.935024, 41.859909, 59.366562>,  <28.104483, 41.952755, 59.716793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935024, 41.859909, 59.366562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722566, 0.669534, 0.172115,
		0.546281, 0.705582, -0.451366,
		-0.423646, -0.232119, -0.875583,
		27.807930, 41.790272, 59.103886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069376, 42.528374, 59.425922>,  <28.104483, 41.952755, 59.716793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069376, 42.528374, 59.425922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794550, 42.277817, 59.278641>,  <27.629654, 42.127483, 59.190273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794550, 42.277817, 59.278641>,  <28.069376, 42.528374, 59.425922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794550, 42.277817, 59.278641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720859, 0.651186, 0.237317,
		0.091117, 0.428477, -0.898947,
		-0.687066, -0.626390, -0.368206,
		27.588430, 42.089901, 59.168179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562399, 42.855198, 58.988785>,  <28.069376, 42.528374, 59.425922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562399, 42.855198, 58.988785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376541, 42.550903, 59.170063>,  <27.265026, 42.368328, 59.278831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.376541, 42.550903, 59.170063>,  <27.562399, 42.855198, 58.988785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376541, 42.550903, 59.170063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708372, 0.626432, 0.325256,
		-0.531331, -0.169903, -0.829952,
		-0.464646, -0.760734, 0.453197,
		27.237146, 42.322681, 59.306023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829037, 42.979332, 58.880981>,  <27.562399, 42.855198, 58.988785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829037, 42.979332, 58.880981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.883009, 42.740459, 59.197250>,  <26.915392, 42.597134, 59.387012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.883009, 42.740459, 59.197250>,  <26.829037, 42.979332, 58.880981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.883009, 42.740459, 59.197250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705784, 0.502151, 0.499714,
		-0.695459, -0.625472, -0.353727,
		0.134933, -0.597185, 0.790673,
		26.923489, 42.561302, 59.434452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236036, 42.951336, 59.102646>,  <26.829037, 42.979332, 58.880981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.236036, 42.951336, 59.102646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.496681, 42.883549, 59.398399>,  <26.653069, 42.842876, 59.575851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.496681, 42.883549, 59.398399>,  <26.236036, 42.951336, 59.102646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496681, 42.883549, 59.398399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509390, 0.624490, 0.592059,
		-0.562070, -0.762425, 0.320600,
		0.651613, -0.169468, 0.739380,
		26.692165, 42.832710, 59.620213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932663, 43.332836, 58.483624>,  <26.236036, 42.951336, 59.102646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932663, 43.332836, 58.483624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.877064, 43.353329, 58.088036>,  <25.843704, 43.365623, 57.850685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.877064, 43.353329, 58.088036>,  <25.932663, 43.332836, 58.483624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877064, 43.353329, 58.088036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987981, 0.075362, -0.134957,
		0.067616, -0.995839, -0.061088,
		-0.138999, 0.051228, -0.988966,
		25.835363, 43.368698, 57.791348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258595, 42.705811, 58.122265>,  <25.932663, 43.332836, 58.483624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258595, 42.705811, 58.122265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.229101, 43.015148, 57.870392>,  <26.211405, 43.200748, 57.719269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.229101, 43.015148, 57.870392>,  <26.258595, 42.705811, 58.122265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229101, 43.015148, 57.870392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990043, -0.019157, -0.139454,
		-0.119908, -0.633700, -0.764230,
		-0.073732, 0.773342, -0.629687,
		26.206982, 43.247150, 57.681484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595093, 42.497227, 57.479340>,  <26.258595, 42.705811, 58.122265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595093, 42.497227, 57.479340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.574974, 42.890404, 57.550091>,  <26.562902, 43.126312, 57.592541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.574974, 42.890404, 57.550091>,  <26.595093, 42.497227, 57.479340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574974, 42.890404, 57.550091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986001, 0.077061, -0.147862,
		-0.158971, 0.166964, -0.973063,
		-0.050298, 0.982947, 0.176877,
		26.559885, 43.185287, 57.603153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779596, 42.845989, 56.923214>,  <26.595093, 42.497227, 57.479340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779596, 42.845989, 56.923214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.875391, 43.108597, 57.209328>,  <26.932867, 43.266163, 57.380997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.875391, 43.108597, 57.209328>,  <26.779596, 42.845989, 56.923214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875391, 43.108597, 57.209328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952216, -0.014990, -0.305057,
		-0.189554, 0.754158, -0.628740,
		0.239486, 0.656521, 0.715280,
		26.947237, 43.305553, 57.423912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.075584, 43.482178, 56.673252>,  <26.779596, 42.845989, 56.923214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.075584, 43.482178, 56.673252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240967, 43.364925, 57.018070>,  <27.340197, 43.294575, 57.224960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.240967, 43.364925, 57.018070>,  <27.075584, 43.482178, 56.673252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.240967, 43.364925, 57.018070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836801, -0.250869, -0.486651,
		0.358912, 0.922573, 0.141567,
		0.413456, -0.293128, 0.862050,
		27.365004, 43.276985, 57.276684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773670, 43.691185, 56.614346>,  <27.075584, 43.482178, 56.673252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773670, 43.691185, 56.614346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.779972, 43.372978, 56.856636>,  <27.783754, 43.182053, 57.002010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.779972, 43.372978, 56.856636>,  <27.773670, 43.691185, 56.614346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779972, 43.372978, 56.856636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820884, -0.335588, -0.462093,
		0.570877, 0.504510, 0.647741,
		0.015756, -0.795519, 0.605724,
		27.784698, 43.134323, 57.038353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500793, 43.687771, 56.796021>,  <27.773670, 43.691185, 56.614346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500793, 43.687771, 56.796021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345360, 43.323044, 56.849075>,  <28.252100, 43.104206, 56.880909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.345360, 43.323044, 56.849075>,  <28.500793, 43.687771, 56.796021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345360, 43.323044, 56.849075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726119, -0.391646, -0.565123,
		0.567235, -0.123289, 0.814276,
		-0.388582, -0.911819, 0.132633,
		28.228785, 43.049500, 56.888866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045305, 43.247112, 57.208488>,  <28.500793, 43.687771, 56.796021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045305, 43.247112, 57.208488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795666, 43.001076, 57.015755>,  <28.645882, 42.853455, 56.900116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.795666, 43.001076, 57.015755>,  <29.045305, 43.247112, 57.208488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.795666, 43.001076, 57.015755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772788, -0.394910, -0.496835,
		0.115319, -0.682428, 0.721799,
		-0.624099, -0.615092, -0.481832,
		28.608437, 42.816547, 56.871204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399055, 42.689465, 57.265308>,  <29.045305, 43.247112, 57.208488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399055, 42.689465, 57.265308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.143600, 42.669628, 56.958145>,  <28.990328, 42.657726, 56.773846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.143600, 42.669628, 56.958145>,  <29.399055, 42.689465, 57.265308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143600, 42.669628, 56.958145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752805, -0.247050, -0.610123,
		-0.159455, -0.967733, 0.195108,
		-0.638637, -0.049591, -0.767908,
		28.952009, 42.654751, 56.727772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588129, 42.067047, 56.916142>,  <29.399055, 42.689465, 57.265308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588129, 42.067047, 56.916142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.394083, 42.292297, 56.648544>,  <29.277655, 42.427448, 56.487988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.394083, 42.292297, 56.648544>,  <29.588129, 42.067047, 56.916142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394083, 42.292297, 56.648544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591978, -0.351593, -0.725220,
		-0.643604, -0.747845, -0.162795,
		-0.485115, 0.563126, -0.668994,
		29.248549, 42.461235, 56.447845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608351, 41.624020, 56.225677>,  <29.588129, 42.067047, 56.916142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608351, 41.624020, 56.225677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.504692, 41.999153, 56.133316>,  <29.442497, 42.224232, 56.077900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.504692, 41.999153, 56.133316>,  <29.608351, 41.624020, 56.225677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504692, 41.999153, 56.133316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658534, -0.003311, -0.752544,
		-0.706523, -0.347076, -0.616736,
		-0.259147, 0.937831, -0.230901,
		29.426949, 42.280502, 56.064045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723427, 41.710571, 55.568333>,  <29.608351, 41.624020, 56.225677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723427, 41.710571, 55.568333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691332, 42.100037, 55.653694>,  <29.672075, 42.333717, 55.704910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.691332, 42.100037, 55.653694>,  <29.723427, 41.710571, 55.568333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691332, 42.100037, 55.653694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653487, 0.213053, -0.726336,
		-0.752673, 0.081179, -0.653371,
		-0.080240, 0.973662, 0.213408,
		29.667259, 42.392136, 55.717716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476137, 42.069977, 54.937695>,  <29.723427, 41.710571, 55.568333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476137, 42.069977, 54.937695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636618, 42.384987, 55.124821>,  <29.732906, 42.573994, 55.237095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.636618, 42.384987, 55.124821>,  <29.476137, 42.069977, 54.937695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636618, 42.384987, 55.124821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476928, 0.256436, -0.840702,
		-0.782035, 0.560403, -0.272709,
		0.401200, 0.787521, 0.467814,
		29.756977, 42.621243, 55.265163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296095, 42.680244, 54.443562>,  <29.476137, 42.069977, 54.937695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296095, 42.680244, 54.443562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610106, 42.755638, 54.679600>,  <29.798512, 42.800877, 54.821220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.610106, 42.755638, 54.679600>,  <29.296095, 42.680244, 54.443562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610106, 42.755638, 54.679600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579061, 0.115110, -0.807117,
		-0.220056, 0.975307, -0.018780,
		0.785025, 0.188486, 0.590093,
		29.845613, 42.812183, 54.856628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518415, 43.453388, 54.412941>,  <29.296095, 42.680244, 54.443562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518415, 43.453388, 54.412941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806440, 43.190845, 54.503010>,  <29.979256, 43.033318, 54.557053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.806440, 43.190845, 54.503010>,  <29.518415, 43.453388, 54.412941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806440, 43.190845, 54.503010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543443, 0.331628, -0.771163,
		0.431488, 0.677653, 0.595487,
		0.720061, -0.656361, 0.225172,
		30.022459, 42.993938, 54.570560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132170, 43.685009, 54.044891>,  <29.518415, 43.453388, 54.412941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132170, 43.685009, 54.044891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256821, 43.329212, 54.178570>,  <30.331612, 43.115734, 54.258778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.256821, 43.329212, 54.178570>,  <30.132170, 43.685009, 54.044891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256821, 43.329212, 54.178570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699857, -0.023037, -0.713911,
		0.642720, 0.456361, 0.615342,
		0.311626, -0.889496, 0.334194,
		30.350309, 43.062363, 54.278828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745491, 43.722115, 54.446426>,  <30.132170, 43.685009, 54.044891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745491, 43.722115, 54.446426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718231, 43.349789, 54.302795>,  <30.701876, 43.126392, 54.216618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.718231, 43.349789, 54.302795>,  <30.745491, 43.722115, 54.446426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718231, 43.349789, 54.302795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803006, 0.162407, -0.573415,
		0.592062, -0.327417, 0.736384,
		-0.068152, -0.930818, -0.359073,
		30.697786, 43.070545, 54.195072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365877, 43.666378, 54.208176>,  <30.745491, 43.722115, 54.446426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365877, 43.666378, 54.208176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221388, 43.320023, 54.069752>,  <31.134695, 43.112209, 53.986698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.221388, 43.320023, 54.069752>,  <31.365877, 43.666378, 54.208176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221388, 43.320023, 54.069752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714989, -0.018962, -0.698879,
		0.598589, -0.499876, 0.625951,
		-0.361222, -0.865889, -0.346056,
		31.113022, 43.060257, 53.965935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895763, 43.301491, 54.015499>,  <31.365877, 43.666378, 54.208176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895763, 43.301491, 54.015499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590313, 43.150723, 53.805813>,  <31.407042, 43.060261, 53.680000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590313, 43.150723, 53.805813>,  <31.895763, 43.301491, 54.015499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590313, 43.150723, 53.805813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575316, -0.028695, -0.817428,
		0.293062, -0.925802, 0.238760,
		-0.763627, -0.376919, -0.524219,
		31.361225, 43.037647, 53.648548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200607, 42.861000, 53.580898>,  <31.895763, 43.301491, 54.015499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200607, 42.861000, 53.580898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834940, 42.946724, 53.443279>,  <31.615540, 42.998158, 53.360706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.834940, 42.946724, 53.443279>,  <32.200607, 42.861000, 53.580898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834940, 42.946724, 53.443279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375941, 0.130946, -0.917345,
		-0.151548, -0.967948, -0.200276,
		-0.914167, 0.214314, -0.344047,
		31.560690, 43.011017, 53.340065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169514, 42.454033, 53.007244>,  <32.200607, 42.861000, 53.580898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169514, 42.454033, 53.007244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891901, 42.736378, 52.950550>,  <31.725334, 42.905785, 52.916534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891901, 42.736378, 52.950550>,  <32.169514, 42.454033, 53.007244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891901, 42.736378, 52.950550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206297, 0.006371, -0.978469,
		-0.689757, -0.708325, -0.150038,
		-0.694029, 0.705858, -0.141730,
		31.683693, 42.948135, 52.908031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623417, 42.168087, 52.506477>,  <32.169514, 42.454033, 53.007244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623417, 42.168087, 52.506477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666225, 42.565781, 52.509350>,  <31.691910, 42.804398, 52.511074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.666225, 42.565781, 52.509350>,  <31.623417, 42.168087, 52.506477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666225, 42.565781, 52.509350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221243, -0.016768, -0.975075,
		-0.969329, 0.105941, -0.221761,
		0.107019, 0.994231, 0.007185,
		31.698332, 42.864052, 52.511505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399450, 42.284748, 51.917347>,  <31.623417, 42.168087, 52.506477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399450, 42.284748, 51.917347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605135, 42.612373, 52.019115>,  <31.728546, 42.808949, 52.080177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.605135, 42.612373, 52.019115>,  <31.399450, 42.284748, 51.917347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605135, 42.612373, 52.019115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416319, 0.020983, -0.908977,
		-0.749844, 0.573325, -0.330200,
		0.514210, 0.819059, 0.254420,
		31.759398, 42.858089, 52.095440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420073, 42.768806, 51.293633>,  <31.399450, 42.284748, 51.917347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420073, 42.768806, 51.293633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731138, 42.860077, 51.527958>,  <31.917778, 42.914841, 51.668552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.731138, 42.860077, 51.527958>,  <31.420073, 42.768806, 51.293633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731138, 42.860077, 51.527958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621880, -0.142502, -0.770038,
		-0.092225, 0.963135, -0.252717,
		0.777663, 0.228176, 0.585812,
		31.964437, 42.928532, 51.703701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838160, 43.086296, 50.876472>,  <31.420073, 42.768806, 51.293633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838160, 43.086296, 50.876472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073734, 42.979355, 51.181541>,  <32.215080, 42.915192, 51.364582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.073734, 42.979355, 51.181541>,  <31.838160, 43.086296, 50.876472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073734, 42.979355, 51.181541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724583, -0.243307, -0.644811,
		0.357956, 0.932376, 0.050427,
		0.588937, -0.267353, 0.762677,
		32.250416, 42.899151, 51.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482281, 43.370609, 50.691124>,  <31.838160, 43.086296, 50.876472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482281, 43.370609, 50.691124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551350, 43.088585, 50.966248>,  <32.592789, 42.919373, 51.131321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.551350, 43.088585, 50.966248>,  <32.482281, 43.370609, 50.691124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551350, 43.088585, 50.966248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780322, -0.328208, -0.532332,
		0.601068, 0.628629, 0.493501,
		0.172668, -0.705057, 0.687808,
		32.603149, 42.877068, 51.172588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211571, 43.338478, 50.822189>,  <32.482281, 43.370609, 50.691124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211571, 43.338478, 50.822189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098335, 42.985947, 50.973518>,  <33.030396, 42.774429, 51.064316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098335, 42.985947, 50.973518>,  <33.211571, 43.338478, 50.822189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098335, 42.985947, 50.973518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833840, -0.421063, -0.356956,
		0.473893, 0.214415, 0.854079,
		-0.283084, -0.881324, 0.378326,
		33.013409, 42.721550, 51.087017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834869, 43.056751, 51.009361>,  <33.211571, 43.338478, 50.822189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834869, 43.056751, 51.009361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577919, 42.752579, 50.971218>,  <33.423748, 42.570076, 50.948334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.577919, 42.752579, 50.971218>,  <33.834869, 43.056751, 51.009361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577919, 42.752579, 50.971218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745115, -0.590585, -0.309859,
		0.179311, -0.270098, 0.945989,
		-0.642379, -0.760432, -0.095355,
		33.385204, 42.524448, 50.942612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165318, 42.601727, 51.282246>,  <33.834869, 43.056751, 51.009361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165318, 42.601727, 51.282246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909134, 42.409805, 51.042377>,  <33.755424, 42.294651, 50.898457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909134, 42.409805, 51.042377>,  <34.165318, 42.601727, 51.282246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909134, 42.409805, 51.042377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700003, -0.685908, -0.198810,
		-0.315927, -0.547099, 0.775160,
		-0.640457, -0.479805, -0.599668,
		33.716995, 42.265865, 50.862476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363129, 41.933270, 51.442394>,  <34.165318, 42.601727, 51.282246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363129, 41.933270, 51.442394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132381, 41.876377, 51.120651>,  <33.993935, 41.842243, 50.927605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132381, 41.876377, 51.120651>,  <34.363129, 41.933270, 51.442394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132381, 41.876377, 51.120651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598185, -0.744117, -0.297430,
		-0.556234, -0.652733, 0.514337,
		-0.576869, -0.142228, -0.804359,
		33.959320, 41.833710, 50.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197697, 41.216690, 51.562130>,  <34.363129, 41.933270, 51.442394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197697, 41.216690, 51.562130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167763, 41.343674, 51.184002>,  <34.149803, 41.419865, 50.957127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.167763, 41.343674, 51.184002>,  <34.197697, 41.216690, 51.562130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167763, 41.343674, 51.184002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507925, -0.803652, -0.310091,
		-0.858145, -0.503354, -0.101104,
		-0.074833, 0.317456, -0.945316,
		34.145313, 41.438911, 50.900406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985611, 40.685566, 51.190094>,  <34.197697, 41.216690, 51.562130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985611, 40.685566, 51.190094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153156, 40.914066, 50.907753>,  <34.253685, 41.051167, 50.738350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153156, 40.914066, 50.907753>,  <33.985611, 40.685566, 51.190094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153156, 40.914066, 50.907753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526041, -0.786256, -0.324165,
		-0.740159, -0.235526, -0.629835,
		0.418862, 0.571253, -0.705850,
		34.278816, 41.085442, 50.695999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017391, 40.318180, 50.597019>,  <33.985611, 40.685566, 51.190094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017391, 40.318180, 50.597019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280495, 40.603535, 50.500324>,  <34.438354, 40.774750, 50.442307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.280495, 40.603535, 50.500324>,  <34.017391, 40.318180, 50.597019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280495, 40.603535, 50.500324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600927, -0.690494, -0.402622,
		-0.454142, 0.119562, -0.882870,
		0.657755, 0.713389, -0.241734,
		34.477821, 40.817551, 50.427803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342308, 40.111813, 49.988853>,  <34.017391, 40.318180, 50.597019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342308, 40.111813, 49.988853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597275, 40.385910, 50.129791>,  <34.750256, 40.550369, 50.214352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597275, 40.385910, 50.129791>,  <34.342308, 40.111813, 49.988853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597275, 40.385910, 50.129791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743812, -0.427875, -0.513485,
		-0.201103, 0.589379, -0.782425,
		0.637417, 0.685241, 0.352340,
		34.788502, 40.591484, 50.235493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728321, 40.272907, 49.440350>,  <34.342308, 40.111813, 49.988853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728321, 40.272907, 49.440350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945198, 40.361099, 49.764675>,  <35.075325, 40.414013, 49.959270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.945198, 40.361099, 49.764675>,  <34.728321, 40.272907, 49.440350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945198, 40.361099, 49.764675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796026, -0.443719, -0.411651,
		0.269013, 0.868621, -0.416089,
		0.542195, 0.220478, 0.810811,
		35.107857, 40.427242, 50.007919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387978, 40.440777, 49.172779>,  <34.728321, 40.272907, 49.440350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387978, 40.440777, 49.172779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453613, 40.344143, 49.555344>,  <35.492992, 40.286163, 49.784882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.453613, 40.344143, 49.555344>,  <35.387978, 40.440777, 49.172779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453613, 40.344143, 49.555344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829153, -0.491468, -0.266394,
		0.534399, 0.836719, 0.119664,
		0.164086, -0.241580, 0.956407,
		35.502838, 40.271667, 49.842266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127659, 40.664391, 49.212929>,  <35.387978, 40.440777, 49.172779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127659, 40.664391, 49.212929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021061, 40.408974, 49.501717>,  <35.957104, 40.255722, 49.674988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.021061, 40.408974, 49.501717>,  <36.127659, 40.664391, 49.212929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021061, 40.408974, 49.501717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768893, -0.592526, -0.240242,
		0.581192, 0.491095, 0.648878,
		-0.266495, -0.638544, 0.721971,
		35.941113, 40.217411, 49.718307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854469, 40.311817, 49.386627>,  <36.127659, 40.664391, 49.212929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854469, 40.311817, 49.386627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599659, 40.068901, 49.576534>,  <36.446774, 39.923153, 49.690479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.599659, 40.068901, 49.576534>,  <36.854469, 40.311817, 49.386627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599659, 40.068901, 49.576534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610433, -0.773525, -0.170382,
		0.470713, 0.181275, 0.863463,
		-0.637025, -0.607288, 0.474764,
		36.408550, 39.886715, 49.718964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266171, 39.781609, 49.771549>,  <36.854469, 40.311817, 49.386627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266171, 39.781609, 49.771549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906876, 39.609631, 49.735085>,  <36.691299, 39.506443, 49.713207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906876, 39.609631, 49.735085>,  <37.266171, 39.781609, 49.771549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906876, 39.609631, 49.735085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438292, -0.891667, -0.113272,
		-0.032585, -0.141700, 0.989373,
		-0.898242, -0.429944, -0.091161,
		36.637402, 39.480648, 49.707737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364391, 39.122749, 50.109501>,  <37.266171, 39.781609, 49.771549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364391, 39.122749, 50.109501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050674, 39.090557, 49.863441>,  <36.862442, 39.071239, 49.715805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.050674, 39.090557, 49.863441>,  <37.364391, 39.122749, 50.109501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050674, 39.090557, 49.863441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323757, -0.898920, -0.295168,
		-0.529209, -0.430656, 0.731076,
		-0.784295, -0.080485, -0.615145,
		36.815388, 39.066410, 49.678898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264122, 38.457321, 50.121414>,  <37.364391, 39.122749, 50.109501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264122, 38.457321, 50.121414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048389, 38.554371, 49.798859>,  <36.918949, 38.612598, 49.605328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.048389, 38.554371, 49.798859>,  <37.264122, 38.457321, 50.121414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048389, 38.554371, 49.798859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230392, -0.878545, -0.418424,
		-0.809965, -0.411454, 0.417927,
		-0.539330, 0.242622, -0.806386,
		36.886589, 38.627159, 49.556942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871727, 37.843243, 49.958332>,  <37.264122, 38.457321, 50.121414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871727, 37.843243, 49.958332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.887699, 38.064499, 49.625481>,  <36.897282, 38.197250, 49.425770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.887699, 38.064499, 49.625481>,  <36.871727, 37.843243, 49.958332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887699, 38.064499, 49.625481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129352, -0.828651, -0.544615,
		-0.990794, -0.085890, -0.104639,
		0.039932, 0.553137, -0.832133,
		36.899677, 38.230438, 49.375839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438866, 37.451958, 49.468914>,  <36.871727, 37.843243, 49.958332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438866, 37.451958, 49.468914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625034, 37.707867, 49.224270>,  <36.736736, 37.861412, 49.077484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.625034, 37.707867, 49.224270>,  <36.438866, 37.451958, 49.468914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625034, 37.707867, 49.224270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055562, -0.710777, -0.701220,
		-0.883341, 0.292384, -0.366361,
		0.465426, 0.639772, -0.611613,
		36.764664, 37.899799, 49.040787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225548, 37.242977, 48.886475>,  <36.438866, 37.451958, 49.468914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225548, 37.242977, 48.886475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553619, 37.458004, 48.808167>,  <36.750462, 37.587021, 48.761181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.553619, 37.458004, 48.808167>,  <36.225548, 37.242977, 48.886475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553619, 37.458004, 48.808167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341599, -0.734657, -0.586165,
		-0.458930, 0.413884, -0.786183,
		0.820179, 0.537568, -0.195774,
		36.799675, 37.619274, 48.749435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236992, 37.387882, 48.114532>,  <36.225548, 37.242977, 48.886475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236992, 37.387882, 48.114532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611214, 37.434635, 48.247841>,  <36.835747, 37.462688, 48.327827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611214, 37.434635, 48.247841>,  <36.236992, 37.387882, 48.114532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611214, 37.434635, 48.247841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300401, -0.759588, -0.576876,
		0.185721, 0.639816, -0.745750,
		0.935557, 0.116886, 0.333272,
		36.891880, 37.469700, 48.347824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923595, 37.599113, 47.375381>,  <36.236992, 37.387882, 48.114532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923595, 37.599113, 47.375381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746735, 37.467285, 47.041702>,  <35.640617, 37.388187, 46.841496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.746735, 37.467285, 47.041702>,  <35.923595, 37.599113, 47.375381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746735, 37.467285, 47.041702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821483, 0.522179, 0.229118,
		0.360089, 0.786583, -0.501620,
		-0.442156, -0.329569, -0.834195,
		35.614086, 37.368416, 46.791443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630810, 38.199768, 46.974430>,  <35.923595, 37.599113, 47.375381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630810, 38.199768, 46.974430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425087, 37.884895, 46.838291>,  <35.301655, 37.695972, 46.756607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.425087, 37.884895, 46.838291>,  <35.630810, 38.199768, 46.974430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425087, 37.884895, 46.838291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849061, 0.523252, 0.072817,
		0.120768, 0.326427, -0.937475,
		-0.514305, -0.787180, -0.340349,
		35.270794, 37.648743, 46.736187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253479, 38.372784, 46.441494>,  <35.630810, 38.199768, 46.974430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253479, 38.372784, 46.441494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047806, 38.065174, 46.593399>,  <34.924404, 37.880608, 46.684544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.047806, 38.065174, 46.593399>,  <35.253479, 38.372784, 46.441494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047806, 38.065174, 46.593399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848751, 0.519961, -0.096235,
		-0.123457, -0.371809, -0.920063,
		-0.514179, -0.769024, 0.379766,
		34.893551, 37.834465, 46.707329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618778, 38.451096, 46.186848>,  <35.253479, 38.372784, 46.441494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618778, 38.451096, 46.186848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533863, 38.183472, 46.471745>,  <34.482914, 38.022896, 46.642685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.533863, 38.183472, 46.471745>,  <34.618778, 38.451096, 46.186848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533863, 38.183472, 46.471745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936888, 0.346552, 0.046293,
		-0.277803, -0.657467, -0.700402,
		-0.212289, -0.669059, 0.712246,
		34.470177, 37.982754, 46.685417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965851, 38.191189, 46.064350>,  <34.618778, 38.451096, 46.186848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965851, 38.191189, 46.064350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017635, 38.140305, 46.457706>,  <34.048706, 38.109776, 46.693722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017635, 38.140305, 46.457706>,  <33.965851, 38.191189, 46.064350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017635, 38.140305, 46.457706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927645, 0.334821, 0.165439,
		-0.350306, -0.933655, -0.074658,
		0.129466, -0.127210, 0.983390,
		34.056477, 38.102142, 46.752724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276054, 37.957226, 46.288410>,  <33.965851, 38.191189, 46.064350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276054, 37.957226, 46.288410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461624, 38.067390, 46.625198>,  <33.572968, 38.133488, 46.827271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.461624, 38.067390, 46.625198>,  <33.276054, 37.957226, 46.288410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461624, 38.067390, 46.625198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864871, 0.346538, 0.363192,
		-0.191749, -0.896694, 0.398964,
		0.463929, 0.275411, 0.841973,
		33.600803, 38.150013, 46.877789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908432, 37.580612, 46.837566>,  <33.276054, 37.957226, 46.288410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908432, 37.580612, 46.837566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.100128, 37.894455, 46.994904>,  <33.215145, 38.082760, 47.089306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.100128, 37.894455, 46.994904>,  <32.908432, 37.580612, 46.837566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100128, 37.894455, 46.994904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864271, 0.343816, 0.367187,
		0.152860, -0.515926, 0.842884,
		0.479239, 0.784609, 0.393344,
		33.243900, 38.129837, 47.112907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559372, 37.721176, 47.478703>,  <32.908432, 37.580612, 46.837566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559372, 37.721176, 47.478703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766068, 38.062321, 47.448765>,  <32.890087, 38.267006, 47.430801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.766068, 38.062321, 47.448765>,  <32.559372, 37.721176, 47.478703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766068, 38.062321, 47.448765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756359, 0.495727, 0.426821,
		0.401121, -0.163949, 0.901234,
		0.516743, 0.852863, -0.074842,
		32.921089, 38.318180, 47.426311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516479, 38.090775, 48.137081>,  <32.559372, 37.721176, 47.478703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516479, 38.090775, 48.137081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570274, 38.340389, 47.829185>,  <32.602551, 38.490158, 47.644447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.570274, 38.340389, 47.829185>,  <32.516479, 38.090775, 48.137081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570274, 38.340389, 47.829185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725777, 0.590905, 0.352248,
		0.674657, 0.511286, 0.532377,
		0.134485, 0.624033, -0.769737,
		32.610619, 38.527599, 47.598263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737087, 38.725601, 48.452171>,  <32.516479, 38.090775, 48.137081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737087, 38.725601, 48.452171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580002, 38.793304, 48.090591>,  <32.485748, 38.833927, 47.873642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.580002, 38.793304, 48.090591>,  <32.737087, 38.725601, 48.452171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580002, 38.793304, 48.090591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802988, 0.416041, 0.426756,
		0.448311, 0.893455, -0.027475,
		-0.392718, 0.169257, -0.903950,
		32.462185, 38.844082, 47.819408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431217, 39.437794, 48.540432>,  <32.737087, 38.725601, 48.452171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431217, 39.437794, 48.540432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288204, 39.306385, 48.190750>,  <32.202396, 39.227539, 47.980942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.288204, 39.306385, 48.190750>,  <32.431217, 39.437794, 48.540432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288204, 39.306385, 48.190750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811007, 0.573377, 0.116214,
		0.463072, 0.750539, -0.471440,
		-0.357536, -0.328526, -0.874208,
		32.180943, 39.207829, 47.928490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329155, 39.952126, 48.254642>,  <32.431217, 39.437794, 48.540432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329155, 39.952126, 48.254642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089676, 39.698666, 48.058662>,  <31.945990, 39.546589, 47.941074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.089676, 39.698666, 48.058662>,  <32.329155, 39.952126, 48.254642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089676, 39.698666, 48.058662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729435, 0.684017, 0.006697,
		0.330888, 0.361395, -0.871726,
		-0.598696, -0.633652, -0.489947,
		31.910067, 39.508572, 47.911678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033329, 40.363884, 47.680054>,  <32.329155, 39.952126, 48.254642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033329, 40.363884, 47.680054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.779518, 40.067165, 47.766876>,  <31.627232, 39.889133, 47.818970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.779518, 40.067165, 47.766876>,  <32.033329, 40.363884, 47.680054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779518, 40.067165, 47.766876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695538, 0.670500, 0.258180,
		-0.337056, 0.012849, -0.941397,
		-0.634524, -0.741798, 0.217059,
		31.589161, 39.844627, 47.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384495, 40.657166, 47.569660>,  <32.033329, 40.363884, 47.680054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384495, 40.657166, 47.569660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265535, 40.330715, 47.767849>,  <31.194160, 40.134846, 47.886765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.265535, 40.330715, 47.767849>,  <31.384495, 40.657166, 47.569660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265535, 40.330715, 47.767849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761397, 0.515843, 0.392659,
		-0.576046, -0.260477, -0.774805,
		-0.297399, -0.816123, 0.495476,
		31.176315, 40.085876, 47.916492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689531, 40.777924, 47.617397>,  <31.384495, 40.657166, 47.569660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689531, 40.777924, 47.617397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790089, 40.500149, 47.887081>,  <30.850424, 40.333485, 48.048893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790089, 40.500149, 47.887081>,  <30.689531, 40.777924, 47.617397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790089, 40.500149, 47.887081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670740, 0.377200, 0.638615,
		-0.697789, -0.612763, -0.370961,
		0.251393, -0.694437, 0.674210,
		30.865507, 40.291817, 48.089344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971123, 40.503536, 47.904224>,  <30.689531, 40.777924, 47.617397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971123, 40.503536, 47.904224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235556, 40.395672, 48.184296>,  <30.394217, 40.330952, 48.352337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.235556, 40.395672, 48.184296>,  <29.971123, 40.503536, 47.904224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235556, 40.395672, 48.184296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654752, 0.248399, 0.713862,
		-0.366425, -0.930366, -0.012350,
		0.661085, -0.269663, 0.700178,
		30.433882, 40.314774, 48.394348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611734, 40.343250, 48.493717>,  <29.971123, 40.503536, 47.904224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611734, 40.343250, 48.493717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977383, 40.400795, 48.645340>,  <30.196772, 40.435322, 48.736313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.977383, 40.400795, 48.645340>,  <29.611734, 40.343250, 48.493717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977383, 40.400795, 48.645340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404056, 0.246145, 0.880995,
		0.033440, -0.958497, 0.283135,
		0.914123, 0.143863, 0.379055,
		30.251619, 40.443954, 48.759056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545532, 40.140255, 49.270992>,  <29.611734, 40.343250, 48.493717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545532, 40.140255, 49.270992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864965, 40.380081, 49.249866>,  <30.056625, 40.523975, 49.237190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.864965, 40.380081, 49.249866>,  <29.545532, 40.140255, 49.270992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864965, 40.380081, 49.249866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209935, 0.359697, 0.909145,
		0.564089, -0.714939, 0.413117,
		0.798580, 0.599567, -0.052811,
		30.104540, 40.559952, 49.234024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904299, 40.070263, 49.924217>,  <29.545532, 40.140255, 49.270992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904299, 40.070263, 49.924217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.044483, 40.417336, 49.783192>,  <30.128593, 40.625580, 49.698578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.044483, 40.417336, 49.783192>,  <29.904299, 40.070263, 49.924217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044483, 40.417336, 49.783192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280757, 0.456454, 0.844290,
		0.893506, -0.196908, 0.403578,
		0.350462, 0.867685, -0.352561,
		30.149622, 40.677643, 49.677425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394066, 40.306316, 50.389126>,  <29.904299, 40.070263, 49.924217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394066, 40.306316, 50.389126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252909, 40.623695, 50.190769>,  <30.168215, 40.814121, 50.071754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252909, 40.623695, 50.190769>,  <30.394066, 40.306316, 50.389126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252909, 40.623695, 50.190769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186422, 0.459741, 0.868265,
		0.916904, 0.398851, -0.014324,
		-0.352894, 0.793446, -0.495893,
		30.147041, 40.861729, 50.042000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725700, 40.877670, 50.712070>,  <30.394066, 40.306316, 50.389126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725700, 40.877670, 50.712070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418171, 41.036472, 50.511551>,  <30.233654, 41.131752, 50.391239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.418171, 41.036472, 50.511551>,  <30.725700, 40.877670, 50.712070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418171, 41.036472, 50.511551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323413, 0.434878, 0.840408,
		0.551650, 0.808250, -0.205947,
		-0.768821, 0.397005, -0.501299,
		30.187525, 41.155575, 50.361160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624933, 41.464176, 51.037788>,  <30.725700, 40.877670, 50.712070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624933, 41.464176, 51.037788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285103, 41.405731, 50.835056>,  <30.081205, 41.370667, 50.713417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.285103, 41.405731, 50.835056>,  <30.624933, 41.464176, 51.037788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285103, 41.405731, 50.835056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520844, 0.384159, 0.762328,
		0.083319, 0.911633, -0.402472,
		-0.849576, -0.146109, -0.506827,
		30.030230, 41.361900, 50.683010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351816, 42.076149, 51.051182>,  <30.624933, 41.464176, 51.037788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351816, 42.076149, 51.051182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056826, 41.818913, 50.968662>,  <29.879831, 41.664570, 50.919151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056826, 41.818913, 50.968662>,  <30.351816, 42.076149, 51.051182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056826, 41.818913, 50.968662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571067, 0.430702, 0.698841,
		-0.360567, 0.633188, -0.684883,
		-0.737478, -0.643093, -0.206295,
		29.835583, 41.625984, 50.906773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739328, 42.494732, 50.954655>,  <30.351816, 42.076149, 51.051182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739328, 42.494732, 50.954655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614019, 42.124668, 51.040386>,  <29.538834, 41.902630, 51.091827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.614019, 42.124668, 51.040386>,  <29.739328, 42.494732, 50.954655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614019, 42.124668, 51.040386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462653, 0.345778, 0.816327,
		-0.829345, 0.156572, -0.536351,
		-0.313272, -0.925161, 0.214331,
		29.520039, 41.847118, 51.104687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971191, 42.420250, 50.961906>,  <29.739328, 42.494732, 50.954655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971191, 42.420250, 50.961906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.104422, 42.114185, 51.182304>,  <29.184361, 41.930546, 51.314541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.104422, 42.114185, 51.182304>,  <28.971191, 42.420250, 50.961906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104422, 42.114185, 51.182304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573680, 0.299305, 0.762436,
		-0.748300, -0.570041, -0.339265,
		0.333076, -0.765160, 0.550991,
		29.204344, 41.884636, 51.347603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450167, 42.023849, 51.320927>,  <28.971191, 42.420250, 50.961906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450167, 42.023849, 51.320927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762959, 41.892181, 51.532646>,  <28.950634, 41.813179, 51.659679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.762959, 41.892181, 51.532646>,  <28.450167, 42.023849, 51.320927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762959, 41.892181, 51.532646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532545, 0.088428, 0.841770,
		-0.323889, -0.940121, -0.106149,
		0.781979, -0.329169, 0.529298,
		28.997553, 41.793430, 51.691437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258835, 41.462727, 51.790066>,  <28.450167, 42.023849, 51.320927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258835, 41.462727, 51.790066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.579273, 41.632820, 51.958549>,  <28.771536, 41.734875, 52.059639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.579273, 41.632820, 51.958549>,  <28.258835, 41.462727, 51.790066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579273, 41.632820, 51.958549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493363, 0.070696, 0.866946,
		0.338879, -0.902317, 0.266430,
		0.801096, 0.425237, 0.421212,
		28.819603, 41.760391, 52.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318712, 41.088902, 52.323246>,  <28.258835, 41.462727, 51.790066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318712, 41.088902, 52.323246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505442, 41.434376, 52.399269>,  <28.617479, 41.641659, 52.444885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.505442, 41.434376, 52.399269>,  <28.318712, 41.088902, 52.323246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505442, 41.434376, 52.399269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450355, 0.047216, 0.891600,
		0.761087, -0.501816, 0.411007,
		0.466825, 0.863685, 0.190061,
		28.645489, 41.693481, 52.456287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552877, 41.073792, 52.963467>,  <28.318712, 41.088902, 52.323246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552877, 41.073792, 52.963467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552301, 41.467522, 52.892925>,  <28.551956, 41.703758, 52.850601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.552301, 41.467522, 52.892925>,  <28.552877, 41.073792, 52.963467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552301, 41.467522, 52.892925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589376, 0.141630, 0.795347,
		0.807857, 0.105083, 0.579934,
		-0.001442, 0.984326, -0.176350,
		28.551868, 41.762821, 52.840019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541365, 41.455555, 53.609810>,  <28.552877, 41.073792, 52.963467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541365, 41.455555, 53.609810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415485, 41.749187, 53.369118>,  <28.339958, 41.925369, 53.224701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.415485, 41.749187, 53.369118>,  <28.541365, 41.455555, 53.609810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415485, 41.749187, 53.369118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682265, 0.265800, 0.681076,
		0.659908, 0.624876, 0.417194,
		-0.314698, 0.734084, -0.601735,
		28.321075, 41.969414, 53.188599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553621, 42.100735, 53.948513>,  <28.541365, 41.455555, 53.609810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553621, 42.100735, 53.948513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285482, 42.173100, 53.660648>,  <28.124599, 42.216518, 53.487930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.285482, 42.173100, 53.660648>,  <28.553621, 42.100735, 53.948513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285482, 42.173100, 53.660648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609817, 0.418278, 0.673177,
		0.422801, 0.890121, -0.170069,
		-0.670345, 0.180909, -0.719659,
		28.084379, 42.227371, 53.444752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244564, 42.837109, 54.145985>,  <28.553621, 42.100735, 53.948513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244564, 42.837109, 54.145985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.974913, 42.663532, 53.906902>,  <27.813122, 42.559387, 53.763454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.974913, 42.663532, 53.906902>,  <28.244564, 42.837109, 54.145985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974913, 42.663532, 53.906902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736359, 0.458061, 0.497952,
		0.057701, 0.775805, -0.628329,
		-0.674127, -0.433943, -0.597702,
		27.772675, 42.533348, 53.727592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791033, 43.351212, 54.209999>,  <28.244564, 42.837109, 54.145985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791033, 43.351212, 54.209999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.581249, 43.043003, 54.065090>,  <27.455379, 42.858078, 53.978146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.581249, 43.043003, 54.065090>,  <27.791033, 43.351212, 54.209999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581249, 43.043003, 54.065090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759638, 0.231265, 0.607837,
		-0.384568, 0.593984, -0.706604,
		-0.524458, -0.770519, -0.362277,
		27.423912, 42.811848, 53.956406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.178453, 43.635445, 53.920113>,  <27.791033, 43.351212, 54.209999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.178453, 43.635445, 53.920113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.124996, 43.255573, 54.033421>,  <27.092922, 43.027649, 54.101406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.124996, 43.255573, 54.033421>,  <27.178453, 43.635445, 53.920113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124996, 43.255573, 54.033421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718574, 0.289703, 0.632237,
		-0.682489, -0.119054, -0.721135,
		-0.133644, -0.949683, 0.283268,
		27.084904, 42.970669, 54.118401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.492262, 43.618221, 54.114986>,  <27.178453, 43.635445, 53.920113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.492262, 43.618221, 54.114986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.602398, 43.256233, 54.244732>,  <26.668480, 43.039040, 54.322578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.602398, 43.256233, 54.244732>,  <26.492262, 43.618221, 54.114986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602398, 43.256233, 54.244732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727352, 0.024517, 0.685827,
		-0.628607, -0.424762, -0.651483,
		0.275340, -0.904973, 0.324363,
		26.684999, 42.984741, 54.342041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.885138, 43.250301, 54.174927>,  <26.492262, 43.618221, 54.114986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.885138, 43.250301, 54.174927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.136839, 43.070137, 54.428280>,  <26.287861, 42.962040, 54.580292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.136839, 43.070137, 54.428280>,  <25.885138, 43.250301, 54.174927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136839, 43.070137, 54.428280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684138, 0.065682, 0.726389,
		-0.368774, -0.890403, -0.266811,
		0.629254, -0.450409, 0.633380,
		26.325615, 42.935013, 54.618294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.458481, 42.867638, 54.538322>,  <25.885138, 43.250301, 54.174927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.458481, 42.867638, 54.538322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.788332, 42.868473, 54.764591>,  <25.986242, 42.868973, 54.900352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.788332, 42.868473, 54.764591>,  <25.458481, 42.867638, 54.538322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788332, 42.868473, 54.764591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563838, 0.083527, 0.821651,
		-0.045537, -0.996503, 0.070053,
		0.824629, 0.002083, 0.565670,
		26.035721, 42.869099, 54.934292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.260504, 42.372345, 55.047054>,  <25.458481, 42.867638, 54.538322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.260504, 42.372345, 55.047054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.499348, 42.678013, 55.144630>,  <25.642654, 42.861412, 55.203175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.499348, 42.678013, 55.144630>,  <25.260504, 42.372345, 55.047054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499348, 42.678013, 55.144630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472772, 0.089582, 0.876620,
		0.648035, -0.638762, 0.414769,
		0.597107, 0.764171, 0.243936,
		25.678480, 42.907265, 55.217812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.140444, 41.800953, 55.608746>,  <25.260504, 42.372345, 55.047054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.140444, 41.800953, 55.608746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.975464, 41.460716, 55.739208>,  <24.876476, 41.256573, 55.817486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.975464, 41.460716, 55.739208>,  <25.140444, 41.800953, 55.608746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975464, 41.460716, 55.739208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426207, -0.496603, -0.756130,
		0.805129, -0.172856, 0.567352,
		-0.412450, -0.850592, 0.326157,
		24.851728, 41.205540, 55.837055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650263, 41.283791, 55.605453>,  <25.140444, 41.800953, 55.608746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650263, 41.283791, 55.605453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.312300, 41.072422, 55.572239>,  <25.109522, 40.945599, 55.552311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.312300, 41.072422, 55.572239>,  <25.650263, 41.283791, 55.605453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312300, 41.072422, 55.572239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412190, -0.544239, -0.730687,
		0.340920, -0.651592, 0.677644,
		-0.844910, -0.528424, -0.083038,
		25.058826, 40.913895, 55.547329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821791, 40.550476, 55.544289>,  <25.650263, 41.283791, 55.605453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821791, 40.550476, 55.544289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455490, 40.602470, 55.392235>,  <25.235710, 40.633667, 55.301003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.455490, 40.602470, 55.392235>,  <25.821791, 40.550476, 55.544289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455490, 40.602470, 55.392235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273177, -0.492332, -0.826428,
		-0.294578, -0.860647, 0.415345,
		-0.915750, 0.129985, -0.380139,
		25.180765, 40.641464, 55.278194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525023, 39.909119, 55.347450>,  <25.821791, 40.550476, 55.544289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525023, 39.909119, 55.347450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.356495, 40.197315, 55.127129>,  <25.255379, 40.370232, 54.994938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.356495, 40.197315, 55.127129>,  <25.525023, 39.909119, 55.347450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356495, 40.197315, 55.127129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251067, -0.490938, -0.834233,
		-0.871467, -0.489766, 0.025950,
		-0.421320, 0.720492, -0.550801,
		25.230099, 40.413464, 54.961887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.240358, 39.581760, 54.829563>,  <25.525023, 39.909119, 55.347450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.240358, 39.581760, 54.829563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.222706, 39.956032, 54.689533>,  <25.212114, 40.180595, 54.605515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.222706, 39.956032, 54.689533>,  <25.240358, 39.581760, 54.829563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222706, 39.956032, 54.689533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207593, -0.334178, -0.919364,
		-0.977219, -0.113247, -0.179493,
		-0.044133, 0.935682, -0.350074,
		25.209467, 40.236736, 54.584511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844833, 39.522141, 54.211159>,  <25.240358, 39.581760, 54.829563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844833, 39.522141, 54.211159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.050571, 39.864120, 54.184326>,  <25.174015, 40.069309, 54.168228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.050571, 39.864120, 54.184326>,  <24.844833, 39.522141, 54.211159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.050571, 39.864120, 54.184326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050870, -0.108501, -0.992794,
		-0.856072, 0.507229, -0.099299,
		0.514348, 0.854954, -0.067082,
		25.204876, 40.120605, 54.164200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.640383, 39.821705, 53.683876>,  <24.844833, 39.522141, 54.211159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.640383, 39.821705, 53.683876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.005697, 39.981373, 53.716320>,  <25.224886, 40.077171, 53.735786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.005697, 39.981373, 53.716320>,  <24.640383, 39.821705, 53.683876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.005697, 39.981373, 53.716320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181355, -0.220190, -0.958450,
		-0.364723, 0.890046, -0.273487,
		0.913284, 0.399167, 0.081106,
		25.279682, 40.101124, 53.740650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832075, 39.954002, 53.056778>,  <24.640383, 39.821705, 53.683876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832075, 39.954002, 53.056778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.193226, 39.986210, 53.225697>,  <25.409916, 40.005535, 53.327049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.193226, 39.986210, 53.225697>,  <24.832075, 39.954002, 53.056778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193226, 39.986210, 53.225697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429163, -0.111152, -0.896362,
		-0.025232, 0.990536, -0.134911,
		0.902874, 0.080516, 0.422297,
		25.464088, 40.010365, 53.352386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258284, 40.422157, 52.662910>,  <24.832075, 39.954002, 53.056778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258284, 40.422157, 52.662910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.510130, 40.180862, 52.858742>,  <25.661238, 40.036083, 52.976242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.510130, 40.180862, 52.858742>,  <25.258284, 40.422157, 52.662910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.510130, 40.180862, 52.858742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547248, -0.102941, -0.830616,
		0.551458, 0.790889, 0.265309,
		0.629614, -0.603240, 0.489579,
		25.699015, 39.999889, 53.005615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.934633, 40.571049, 52.410027>,  <25.258284, 40.422157, 52.662910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.934633, 40.571049, 52.410027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.991619, 40.208752, 52.569695>,  <26.025810, 39.991375, 52.665497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.991619, 40.208752, 52.569695>,  <25.934633, 40.571049, 52.410027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.991619, 40.208752, 52.569695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518847, -0.275103, -0.809393,
		0.842913, 0.322419, 0.430748,
		0.142463, -0.905740, 0.399173,
		26.034359, 39.937031, 52.689445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622837, 40.402462, 52.207634>,  <25.934633, 40.571049, 52.410027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622837, 40.402462, 52.207634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482327, 40.036781, 52.288467>,  <26.398020, 39.817371, 52.336967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.482327, 40.036781, 52.288467>,  <26.622837, 40.402462, 52.207634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482327, 40.036781, 52.288467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538773, -0.373901, -0.754931,
		0.765721, -0.156310, 0.623890,
		-0.351276, -0.914202, 0.202088,
		26.376944, 39.762520, 52.349094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153275, 39.985661, 52.305035>,  <26.622837, 40.402462, 52.207634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153275, 39.985661, 52.305035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852888, 39.747074, 52.191704>,  <26.672657, 39.603920, 52.123707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.852888, 39.747074, 52.191704>,  <27.153275, 39.985661, 52.305035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852888, 39.747074, 52.191704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579915, -0.390499, -0.714989,
		0.315830, -0.701239, 0.639153,
		-0.750967, -0.596469, -0.283328,
		26.627598, 39.568134, 52.106705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523800, 39.443069, 52.014793>,  <27.153275, 39.985661, 52.305035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523800, 39.443069, 52.014793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146168, 39.381416, 51.898209>,  <26.919588, 39.344425, 51.828259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.146168, 39.381416, 51.898209>,  <27.523800, 39.443069, 52.014793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146168, 39.381416, 51.898209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326876, -0.321882, -0.888563,
		0.043140, -0.934149, 0.354266,
		-0.944082, -0.154134, -0.291465,
		26.862944, 39.335175, 51.810768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506882, 38.682365, 51.740421>,  <27.523800, 39.443069, 52.014793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506882, 38.682365, 51.740421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209337, 38.904015, 51.590961>,  <27.030809, 39.037003, 51.501286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209337, 38.904015, 51.590961>,  <27.506882, 38.682365, 51.740421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209337, 38.904015, 51.590961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265179, -0.268479, -0.926066,
		-0.613473, -0.787950, 0.052770,
		-0.743862, 0.554124, -0.373653,
		26.986179, 39.070251, 51.478867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235140, 38.193481, 51.255955>,  <27.506882, 38.682365, 51.740421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235140, 38.193481, 51.255955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093058, 38.547161, 51.134621>,  <27.007809, 38.759369, 51.061821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.093058, 38.547161, 51.134621>,  <27.235140, 38.193481, 51.255955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093058, 38.547161, 51.134621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059963, -0.302279, -0.951332,
		-0.932863, -0.356108, 0.054352,
		-0.355206, 0.884203, -0.303338,
		26.986496, 38.812424, 51.043617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640434, 38.079189, 50.808846>,  <27.235140, 38.193481, 51.255955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640434, 38.079189, 50.808846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.808418, 38.433868, 50.731495>,  <26.909208, 38.646675, 50.685085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.808418, 38.433868, 50.731495>,  <26.640434, 38.079189, 50.808846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808418, 38.433868, 50.731495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148073, -0.277169, -0.949343,
		-0.895381, 0.370053, -0.247697,
		0.419961, 0.886700, -0.193377,
		26.934406, 38.699879, 50.673481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695723, 38.055103, 50.047775>,  <26.640434, 38.079189, 50.808846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695723, 38.055103, 50.047775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.909334, 38.381470, 50.136406>,  <27.037502, 38.577290, 50.189587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.909334, 38.381470, 50.136406>,  <26.695723, 38.055103, 50.047775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909334, 38.381470, 50.136406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519637, -0.110015, -0.847274,
		-0.666924, 0.567612, -0.482730,
		0.534031, 0.815912, 0.221580,
		27.069544, 38.626244, 50.202881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900032, 38.334164, 49.368214>,  <26.695723, 38.055103, 50.047775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900032, 38.334164, 49.368214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.153650, 38.523819, 49.612568>,  <27.305820, 38.637611, 49.759178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.153650, 38.523819, 49.612568>,  <26.900032, 38.334164, 49.368214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153650, 38.523819, 49.612568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705260, -0.030551, -0.708290,
		-0.317166, 0.879919, -0.353763,
		0.634046, 0.474140, 0.610883,
		27.343864, 38.666061, 49.795834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210876, 38.804020, 48.885597>,  <26.900032, 38.334164, 49.368214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210876, 38.804020, 48.885597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.449749, 38.761047, 49.203548>,  <27.593073, 38.735264, 49.394321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.449749, 38.761047, 49.203548>,  <27.210876, 38.804020, 48.885597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449749, 38.761047, 49.203548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774416, -0.180919, -0.606257,
		0.208942, 0.977612, -0.024841,
		0.597179, -0.107436, 0.794880,
		27.628902, 38.728817, 49.442013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822956, 39.158451, 48.753632>,  <27.210876, 38.804020, 48.885597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822956, 39.158451, 48.753632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936569, 38.904556, 49.041084>,  <28.004738, 38.752220, 49.213558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936569, 38.904556, 49.041084>,  <27.822956, 39.158451, 48.753632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936569, 38.904556, 49.041084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883408, -0.118105, -0.453476,
		0.372711, 0.763652, 0.527183,
		0.284035, -0.634733, 0.718636,
		28.021780, 38.714138, 49.256676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492321, 39.385464, 48.893238>,  <27.822956, 39.158451, 48.753632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492321, 39.385464, 48.893238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503252, 39.003788, 49.012421>,  <28.509811, 38.774784, 49.083931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.503252, 39.003788, 49.012421>,  <28.492321, 39.385464, 48.893238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503252, 39.003788, 49.012421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944343, -0.073106, -0.320737,
		0.327826, 0.290137, 0.899083,
		0.027329, -0.954189, 0.297955,
		28.511450, 38.717533, 49.101807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133303, 39.276115, 49.337387>,  <28.492321, 39.385464, 48.893238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133303, 39.276115, 49.337387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994656, 38.926693, 49.200706>,  <28.911467, 38.717041, 49.118698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.994656, 38.926693, 49.200706>,  <29.133303, 39.276115, 49.337387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994656, 38.926693, 49.200706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896885, -0.201971, -0.393452,
		0.274686, -0.442847, 0.853483,
		-0.346618, -0.873553, -0.341704,
		28.890671, 38.664627, 49.098194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750738, 38.923157, 49.248016>,  <29.133303, 39.276115, 49.337387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750738, 38.923157, 49.248016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.508913, 38.653175, 49.078808>,  <29.363817, 38.491188, 48.977283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.508913, 38.653175, 49.078808>,  <29.750738, 38.923157, 49.248016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508913, 38.653175, 49.078808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786491, -0.421634, -0.451284,
		0.126234, -0.605531, 0.785746,
		-0.604564, -0.674949, -0.423020,
		29.327543, 38.450691, 48.951900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099726, 38.209854, 49.330067>,  <29.750738, 38.923157, 49.248016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099726, 38.209854, 49.330067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847414, 38.132645, 49.029438>,  <29.696026, 38.086319, 48.849060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.847414, 38.132645, 49.029438>,  <30.099726, 38.209854, 49.330067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.847414, 38.132645, 49.029438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665612, -0.632440, -0.396207,
		-0.398844, -0.750173, 0.527412,
		-0.630780, -0.193028, -0.751569,
		29.658180, 38.074738, 48.803967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979326, 37.416451, 49.220810>,  <30.099726, 38.209854, 49.330067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979326, 37.416451, 49.220810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890112, 37.570610, 48.862656>,  <29.836584, 37.663105, 48.647762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890112, 37.570610, 48.862656>,  <29.979326, 37.416451, 49.220810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890112, 37.570610, 48.862656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678006, -0.598630, -0.426556,
		-0.700402, -0.702216, -0.127790,
		-0.223035, 0.385403, -0.895388,
		29.823202, 37.686230, 48.594040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844839, 36.915039, 48.866516>,  <29.979326, 37.416451, 49.220810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844839, 36.915039, 48.866516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943743, 37.201881, 48.605862>,  <30.003084, 37.373985, 48.449471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943743, 37.201881, 48.605862>,  <29.844839, 36.915039, 48.866516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943743, 37.201881, 48.605862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493805, -0.671888, -0.552018,
		-0.833679, -0.185291, -0.520237,
		0.247257, 0.717101, -0.651636,
		30.017920, 37.417011, 48.410370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671829, 36.703243, 48.275131>,  <29.844839, 36.915039, 48.866516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671829, 36.703243, 48.275131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943676, 36.965714, 48.143948>,  <30.106783, 37.123196, 48.065239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.943676, 36.965714, 48.143948>,  <29.671829, 36.703243, 48.275131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943676, 36.965714, 48.143948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483436, -0.736883, -0.472538,
		-0.551736, 0.162597, -0.818016,
		0.679615, 0.656175, -0.327960,
		30.147560, 37.162567, 48.045559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720385, 36.542175, 47.673840>,  <29.671829, 36.703243, 48.275131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720385, 36.542175, 47.673840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067112, 36.736069, 47.720589>,  <30.275148, 36.852406, 47.748638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.067112, 36.736069, 47.720589>,  <29.720385, 36.542175, 47.673840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067112, 36.736069, 47.720589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461475, -0.691119, -0.556234,
		-0.188847, 0.536090, -0.822766,
		0.866821, 0.484729, 0.116876,
		30.327158, 36.881489, 47.755650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080656, 36.441635, 47.052990>,  <29.720385, 36.542175, 47.673840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080656, 36.441635, 47.052990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360798, 36.552635, 47.316048>,  <30.528883, 36.619236, 47.473885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.360798, 36.552635, 47.316048>,  <30.080656, 36.441635, 47.052990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360798, 36.552635, 47.316048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568808, -0.773585, -0.279326,
		0.431234, 0.569702, -0.699626,
		0.700353, 0.277499, 0.657647,
		30.570904, 36.635883, 47.513340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733105, 36.403603, 46.663933>,  <30.080656, 36.441635, 47.052990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733105, 36.403603, 46.663933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804705, 36.364578, 47.055534>,  <30.847666, 36.341164, 47.290493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.804705, 36.364578, 47.055534>,  <30.733105, 36.403603, 46.663933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804705, 36.364578, 47.055534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402682, -0.900641, -0.163379,
		0.897666, 0.423471, -0.121931,
		0.179002, -0.097561, 0.979000,
		30.858406, 36.335312, 47.349236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494556, 36.131767, 46.631264>,  <30.733105, 36.403603, 46.663933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494556, 36.131767, 46.631264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.385859, 36.052540, 47.007969>,  <31.320639, 36.005005, 47.233994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.385859, 36.052540, 47.007969>,  <31.494556, 36.131767, 46.631264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385859, 36.052540, 47.007969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587362, -0.809324, -0.000731,
		0.762338, 0.552958, 0.336269,
		-0.271746, -0.198069, 0.941766,
		31.304335, 35.993118, 47.290497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136654, 35.844376, 46.931946>,  <31.494556, 36.131767, 46.631264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136654, 35.844376, 46.931946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848270, 35.703781, 47.170837>,  <31.675241, 35.619427, 47.314171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.848270, 35.703781, 47.170837>,  <32.136654, 35.844376, 46.931946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848270, 35.703781, 47.170837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475780, -0.877662, 0.057820,
		0.503842, 0.325835, 0.799984,
		-0.720956, -0.351484, 0.597228,
		31.631983, 35.598335, 47.350006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369663, 35.580704, 47.589241>,  <32.136654, 35.844376, 46.931946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369663, 35.580704, 47.589241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022926, 35.386375, 47.634079>,  <31.814884, 35.269779, 47.660980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.022926, 35.386375, 47.634079>,  <32.369663, 35.580704, 47.589241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022926, 35.386375, 47.634079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498530, -0.841347, 0.208816,
		-0.007138, 0.236892, 0.971510,
		-0.866843, -0.485817, 0.112092,
		31.762873, 35.240631, 47.667706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342167, 35.170753, 48.207989>,  <32.369663, 35.580704, 47.589241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342167, 35.170753, 48.207989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065872, 35.002621, 47.972630>,  <31.900097, 34.901741, 47.831413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065872, 35.002621, 47.972630>,  <32.342167, 35.170753, 48.207989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065872, 35.002621, 47.972630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409506, -0.898025, 0.160796,
		-0.595980, -0.129883, 0.792425,
		-0.690733, -0.420334, -0.588393,
		31.858652, 34.876522, 47.796112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168095, 34.541496, 48.614918>,  <32.342167, 35.170753, 48.207989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168095, 34.541496, 48.614918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049572, 34.490807, 48.236259>,  <31.978458, 34.460392, 48.009064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.049572, 34.490807, 48.236259>,  <32.168095, 34.541496, 48.614918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049572, 34.490807, 48.236259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403080, -0.915157, -0.003660,
		-0.865869, -0.382660, 0.322247,
		-0.296308, -0.126722, -0.946648,
		31.960680, 34.452789, 47.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862078, 33.976822, 48.562572>,  <32.168095, 34.541496, 48.614918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862078, 33.976822, 48.562572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932100, 34.013550, 48.170467>,  <31.974113, 34.035587, 47.935204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.932100, 34.013550, 48.170467>,  <31.862078, 33.976822, 48.562572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932100, 34.013550, 48.170467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314545, -0.948680, -0.032693,
		-0.932961, -0.302615, -0.194955,
		0.175056, 0.091824, -0.980267,
		31.984617, 34.041096, 47.876389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680790, 33.293274, 48.208321>,  <31.862078, 33.976822, 48.562572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680790, 33.293274, 48.208321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956892, 33.478859, 47.986225>,  <32.122555, 33.590210, 47.852970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956892, 33.478859, 47.986225>,  <31.680790, 33.293274, 48.208321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956892, 33.478859, 47.986225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522832, -0.850283, -0.060543,
		-0.500196, -0.248504, -0.829488,
		0.690254, 0.463966, -0.555234,
		32.163967, 33.618050, 47.819656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.731237, 32.881561, 47.729774>,  <31.680790, 33.293274, 48.208321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.731237, 32.881561, 47.729774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061398, 33.106628, 47.711391>,  <32.259495, 33.241669, 47.700363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.061398, 33.106628, 47.711391>,  <31.731237, 32.881561, 47.729774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061398, 33.106628, 47.711391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529587, -0.799920, -0.282248,
		-0.195573, 0.208631, -0.958240,
		0.825402, 0.562672, -0.045955,
		32.309017, 33.275429, 47.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065777, 32.563419, 47.132732>,  <31.731237, 32.881561, 47.729774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065777, 32.563419, 47.132732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363251, 32.779423, 47.290379>,  <32.541733, 32.909027, 47.384968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.363251, 32.779423, 47.290379>,  <32.065777, 32.563419, 47.132732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363251, 32.779423, 47.290379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633115, -0.758225, -0.155755,
		0.214718, 0.365352, -0.905767,
		0.743681, 0.540011, 0.394115,
		32.586353, 32.941425, 47.408611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544174, 32.516804, 46.676746>,  <32.065777, 32.563419, 47.132732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544174, 32.516804, 46.676746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729053, 32.600941, 47.021332>,  <32.839981, 32.651424, 47.228085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729053, 32.600941, 47.021332>,  <32.544174, 32.516804, 46.676746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729053, 32.600941, 47.021332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601909, -0.787816, -0.130582,
		0.651211, 0.578880, -0.490736,
		0.462201, 0.210343, 0.861467,
		32.867714, 32.664043, 47.279774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303417, 32.293350, 46.557095>,  <32.544174, 32.516804, 46.676746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303417, 32.293350, 46.557095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216602, 32.305038, 46.947384>,  <33.164513, 32.312050, 47.181557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.216602, 32.305038, 46.947384>,  <33.303417, 32.293350, 46.557095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216602, 32.305038, 46.947384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521701, -0.841356, 0.141241,
		0.825060, 0.539692, 0.167360,
		-0.217035, 0.029220, 0.975726,
		33.151493, 32.313805, 47.240101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995174, 32.174141, 46.922241>,  <33.303417, 32.293350, 46.557095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995174, 32.174141, 46.922241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668159, 32.054760, 47.119244>,  <33.471951, 31.983131, 47.237446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668159, 32.054760, 47.119244>,  <33.995174, 32.174141, 46.922241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668159, 32.054760, 47.119244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447090, -0.867976, 0.216168,
		0.362967, 0.396919, 0.843036,
		-0.817536, -0.298451, 0.492505,
		33.422897, 31.965225, 47.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131599, 31.844522, 47.515453>,  <33.995174, 32.174141, 46.922241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131599, 31.844522, 47.515453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779705, 31.659674, 47.470734>,  <33.568569, 31.548763, 47.443901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779705, 31.659674, 47.470734>,  <34.131599, 31.844522, 47.515453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779705, 31.659674, 47.470734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443812, -0.882515, 0.155558,
		-0.170553, 0.087232, 0.981480,
		-0.879740, -0.462123, -0.111801,
		33.515781, 31.521036, 47.437195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129681, 31.258827, 48.063400>,  <34.131599, 31.844522, 47.515453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129681, 31.258827, 48.063400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877857, 31.162319, 47.767982>,  <33.726765, 31.104414, 47.590733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877857, 31.162319, 47.767982>,  <34.129681, 31.258827, 48.063400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877857, 31.162319, 47.767982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385289, -0.922398, -0.027101,
		-0.674690, -0.301614, 0.673663,
		-0.629560, -0.241270, -0.738541,
		33.688988, 31.089937, 47.546421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983940, 31.098127, 48.758999>,  <34.129681, 31.258827, 48.063400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983940, 31.098127, 48.758999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079967, 30.865358, 48.448196>,  <34.137585, 30.725697, 48.261715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.079967, 30.865358, 48.448196>,  <33.983940, 31.098127, 48.758999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079967, 30.865358, 48.448196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736161, 0.630889, -0.245043,
		0.632798, -0.513173, 0.579845,
		0.240069, -0.581922, -0.777003,
		34.151989, 30.690783, 48.215096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737011, 30.974356, 48.798328>,  <33.983940, 31.098127, 48.758999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737011, 30.974356, 48.798328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616879, 30.866409, 48.432384>,  <34.544800, 30.801641, 48.212818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.616879, 30.866409, 48.432384>,  <34.737011, 30.974356, 48.798328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616879, 30.866409, 48.432384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866720, 0.323243, -0.379881,
		0.398239, -0.907021, 0.136816,
		-0.300335, -0.269865, -0.914861,
		34.526779, 30.785450, 48.157925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386341, 30.614426, 48.461582>,  <34.737011, 30.974356, 48.798328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386341, 30.614426, 48.461582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112267, 30.753031, 48.205315>,  <34.947823, 30.836193, 48.051556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112267, 30.753031, 48.205315>,  <35.386341, 30.614426, 48.461582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112267, 30.753031, 48.205315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710079, 0.513673, -0.481590,
		0.162217, -0.784901, -0.598011,
		-0.685182, 0.346513, -0.640668,
		34.906712, 30.856985, 48.013115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711075, 30.632290, 47.684101>,  <35.386341, 30.614426, 48.461582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711075, 30.632290, 47.684101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424252, 30.901012, 47.758404>,  <35.252159, 31.062246, 47.802986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.424252, 30.901012, 47.758404>,  <35.711075, 30.632290, 47.684101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424252, 30.901012, 47.758404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585357, 0.725090, -0.362770,
		-0.378399, -0.151395, -0.913178,
		-0.717057, 0.671807, 0.185754,
		35.209133, 31.102554, 47.814129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603050, 30.995636, 47.073383>,  <35.711075, 30.632290, 47.684101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603050, 30.995636, 47.073383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501545, 31.252739, 47.362511>,  <35.440643, 31.407001, 47.535988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.501545, 31.252739, 47.362511>,  <35.603050, 30.995636, 47.073383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501545, 31.252739, 47.362511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673744, 0.653639, -0.344708,
		-0.694027, 0.399520, -0.598924,
		-0.253762, 0.642759, 0.722818,
		35.425415, 31.445566, 47.579357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532543, 31.693882, 46.792427>,  <35.603050, 30.995636, 47.073383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532543, 31.693882, 46.792427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.601093, 31.753273, 47.182007>,  <35.642223, 31.788908, 47.415756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.601093, 31.753273, 47.182007>,  <35.532543, 31.693882, 46.792427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601093, 31.753273, 47.182007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789737, 0.570335, -0.225907,
		-0.589022, 0.807881, -0.019518,
		0.171374, 0.148479, 0.973953,
		35.652504, 31.797817, 47.474194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673859, 32.363342, 46.862755>,  <35.532543, 31.693882, 46.792427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673859, 32.363342, 46.862755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844326, 32.224289, 47.196827>,  <35.946606, 32.140858, 47.397270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.844326, 32.224289, 47.196827>,  <35.673859, 32.363342, 46.862755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844326, 32.224289, 47.196827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817767, 0.542810, -0.191348,
		-0.386828, 0.764533, 0.515609,
		0.426170, -0.347629, 0.835185,
		35.972176, 32.119999, 47.447384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941120, 32.985168, 47.270061>,  <35.673859, 32.363342, 46.862755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941120, 32.985168, 47.270061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136532, 32.674255, 47.428638>,  <36.253780, 32.487705, 47.523785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136532, 32.674255, 47.428638>,  <35.941120, 32.985168, 47.270061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136532, 32.674255, 47.428638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866241, 0.486570, -0.113471,
		-0.104696, 0.398846, 0.911022,
		0.488533, -0.777285, 0.396439,
		36.283092, 32.441071, 47.547569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369080, 33.283070, 47.775017>,  <35.941120, 32.985168, 47.270061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369080, 33.283070, 47.775017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542133, 32.933655, 47.685783>,  <36.645966, 32.724007, 47.632244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.542133, 32.933655, 47.685783>,  <36.369080, 33.283070, 47.775017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542133, 32.933655, 47.685783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901480, 0.422607, 0.093466,
		0.012629, -0.241538, 0.970309,
		0.432635, -0.873534, -0.223079,
		36.671925, 32.671593, 47.618858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937881, 33.369995, 48.142601>,  <36.369080, 33.283070, 47.775017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937881, 33.369995, 48.142601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030827, 33.065865, 47.899975>,  <37.086594, 32.883389, 47.754398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.030827, 33.065865, 47.899975>,  <36.937881, 33.369995, 48.142601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030827, 33.065865, 47.899975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930771, 0.354806, -0.088192,
		0.282267, -0.544079, 0.790129,
		0.232359, -0.760323, -0.606563,
		37.100533, 32.837769, 47.718006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605244, 33.138306, 48.376415>,  <36.937881, 33.369995, 48.142601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605244, 33.138306, 48.376415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562405, 33.031288, 47.993385>,  <37.536701, 32.967079, 47.763569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.562405, 33.031288, 47.993385>,  <37.605244, 33.138306, 48.376415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562405, 33.031288, 47.993385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848762, 0.476999, -0.228200,
		0.517816, -0.837192, 0.175997,
		-0.107097, -0.267546, -0.957575,
		37.530277, 32.951023, 47.706112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300613, 33.034157, 48.168674>,  <37.605244, 33.138306, 48.376415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300613, 33.034157, 48.168674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115105, 33.050819, 47.814686>,  <38.003799, 33.060818, 47.602291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.115105, 33.050819, 47.814686>,  <38.300613, 33.034157, 48.168674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115105, 33.050819, 47.814686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791302, 0.468713, -0.392618,
		0.398446, -0.882368, -0.250336,
		-0.463769, 0.041654, -0.884976,
		37.975975, 33.063316, 47.549194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782455, 32.842182, 47.700443>,  <38.300613, 33.034157, 48.168674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782455, 32.842182, 47.700443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523125, 33.054428, 47.482044>,  <38.367527, 33.181774, 47.351006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.523125, 33.054428, 47.482044>,  <38.782455, 32.842182, 47.700443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523125, 33.054428, 47.482044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760356, 0.488056, -0.428554,
		0.039083, -0.693000, -0.719877,
		-0.648329, 0.530614, -0.546002,
		38.328625, 33.213612, 47.318245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065479, 32.735256, 47.060677>,  <38.782455, 32.842182, 47.700443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065479, 32.735256, 47.060677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821838, 33.051880, 47.040958>,  <38.675655, 33.241856, 47.029125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.821838, 33.051880, 47.040958>,  <39.065479, 32.735256, 47.060677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821838, 33.051880, 47.040958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673712, 0.483617, -0.558772,
		-0.418460, -0.373561, -0.827855,
		-0.609100, 0.791560, -0.049298,
		38.639107, 33.289349, 47.026169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969051, 32.932968, 46.424995>,  <39.065479, 32.735256, 47.060677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969051, 32.932968, 46.424995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908157, 33.277187, 46.619427>,  <38.871620, 33.483719, 46.736088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.908157, 33.277187, 46.619427>,  <38.969051, 32.932968, 46.424995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908157, 33.277187, 46.619427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528686, 0.486440, -0.695606,
		-0.835054, 0.151089, -0.529015,
		-0.152236, 0.860551, 0.486083,
		38.862488, 33.535351, 46.765251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760254, 33.504631, 45.979031>,  <38.969051, 32.932968, 46.424995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760254, 33.504631, 45.979031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003796, 33.627705, 46.271503>,  <39.149921, 33.701550, 46.446987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003796, 33.627705, 46.271503>,  <38.760254, 33.504631, 45.979031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003796, 33.627705, 46.271503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588187, 0.443379, -0.676351,
		-0.532291, 0.841872, 0.088979,
		0.608853, 0.307679, 0.731185,
		39.186451, 33.720009, 46.490860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234665, 33.974884, 46.001949>,  <38.760254, 33.504631, 45.979031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234665, 33.974884, 46.001949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103535, 33.857441, 46.361134>,  <38.024857, 33.786976, 46.576645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.103535, 33.857441, 46.361134>,  <38.234665, 33.974884, 46.001949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103535, 33.857441, 46.361134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205672, 0.949865, 0.235491,
		-0.922080, -0.107486, -0.371774,
		-0.327823, -0.293605, 0.897958,
		38.005188, 33.769360, 46.630520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798477, 33.692703, 45.490688>,  <38.234665, 33.974884, 46.001949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798477, 33.692703, 45.490688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553524, 33.420788, 45.329254>,  <37.406551, 33.257641, 45.232391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.553524, 33.420788, 45.329254>,  <37.798477, 33.692703, 45.490688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553524, 33.420788, 45.329254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539027, 0.014417, -0.842165,
		0.578309, -0.733270, 0.357593,
		-0.612379, -0.679785, -0.403589,
		37.369812, 33.216854, 45.208176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212830, 33.277122, 45.016472>,  <37.798477, 33.692703, 45.490688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212830, 33.277122, 45.016472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.854767, 33.134834, 44.909023>,  <37.639927, 33.049461, 44.844555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.854767, 33.134834, 44.909023>,  <38.212830, 33.277122, 45.016472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854767, 33.134834, 44.909023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345807, -0.173942, -0.922042,
		0.281261, -0.918265, 0.278715,
		-0.895159, -0.355717, -0.268619,
		37.586220, 33.028118, 44.828438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327671, 32.478512, 44.767029>,  <38.212830, 33.277122, 45.016472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327671, 32.478512, 44.767029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027020, 32.664719, 44.580116>,  <37.846630, 32.776443, 44.467968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.027020, 32.664719, 44.580116>,  <38.327671, 32.478512, 44.767029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027020, 32.664719, 44.580116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482282, -0.095404, -0.870806,
		-0.449952, -0.879883, -0.152800,
		-0.751630, 0.465514, -0.467279,
		37.801529, 32.804371, 44.439934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007248, 32.424984, 44.510448>,  <38.327671, 32.478512, 44.767029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007248, 32.424984, 44.510448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739498, 32.128613, 44.488667>,  <38.578850, 31.950790, 44.475597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739498, 32.128613, 44.488667>,  <39.007248, 32.424984, 44.510448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739498, 32.128613, 44.488667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640377, -0.538264, -0.547896,
		0.376638, -0.401621, 0.834772,
		-0.669374, -0.740927, -0.054458,
		38.538685, 31.906334, 44.472328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356945, 32.712307, 45.216125>,  <39.007248, 32.424984, 44.510448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356945, 32.712307, 45.216125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986816, 32.571457, 45.272392>,  <38.764740, 32.486946, 45.306152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.986816, 32.571457, 45.272392>,  <39.356945, 32.712307, 45.216125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986816, 32.571457, 45.272392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364333, -0.722835, 0.587172,
		-0.105079, 0.594573, 0.797146,
		-0.925321, -0.352126, 0.140667,
		38.709221, 32.465820, 45.314594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716335, 33.145855, 44.886089>,  <39.356945, 32.712307, 45.216125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716335, 33.145855, 44.886089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923325, 33.444901, 45.052605>,  <40.047520, 33.624329, 45.152512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.923325, 33.444901, 45.052605>,  <39.716335, 33.145855, 44.886089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923325, 33.444901, 45.052605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150233, 0.399554, -0.904315,
		-0.842406, 0.530502, 0.094444,
		0.517477, 0.747612, 0.416285,
		40.078568, 33.669186, 45.177490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406845, 33.202957, 44.221954>,  <39.716335, 33.145855, 44.886089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406845, 33.202957, 44.221954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473236, 32.829769, 44.094189>,  <39.513073, 32.605858, 44.017529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.473236, 32.829769, 44.094189>,  <39.406845, 33.202957, 44.221954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473236, 32.829769, 44.094189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015919, 0.321329, -0.946834,
		0.986000, 0.162242, 0.038483,
		0.165982, -0.932966, -0.319413,
		39.523029, 32.549881, 43.998363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006554, 33.244453, 43.748508>,  <39.406845, 33.202957, 44.221954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006554, 33.244453, 43.748508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810368, 32.909149, 43.653210>,  <39.692657, 32.707966, 43.596031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.810368, 32.909149, 43.653210>,  <40.006554, 33.244453, 43.748508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810368, 32.909149, 43.653210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104208, 0.215008, -0.971037,
		0.865210, -0.501082, -0.018100,
		-0.490461, -0.838265, -0.238244,
		39.663231, 32.657669, 43.581738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405708, 32.889484, 43.380299>,  <40.006554, 33.244453, 43.748508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405708, 32.889484, 43.380299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040493, 32.768833, 43.270470>,  <39.821365, 32.696442, 43.204571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.040493, 32.768833, 43.270470>,  <40.405708, 32.889484, 43.380299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040493, 32.768833, 43.270470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247673, 0.124874, -0.960763,
		0.324080, -0.945212, -0.039309,
		-0.913034, -0.301628, -0.274573,
		39.766582, 32.678345, 43.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557064, 32.433338, 42.865433>,  <40.405708, 32.889484, 43.380299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557064, 32.433338, 42.865433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198612, 32.607891, 42.833122>,  <39.983540, 32.712624, 42.813736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.198612, 32.607891, 42.833122>,  <40.557064, 32.433338, 42.865433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198612, 32.607891, 42.833122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160540, 0.149068, -0.975708,
		-0.413740, -0.887327, -0.203640,
		-0.896129, 0.436381, -0.080776,
		39.929775, 32.738804, 42.808887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308769, 32.050209, 42.359142>,  <40.557064, 32.433338, 42.865433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308769, 32.050209, 42.359142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163464, 32.420219, 42.403622>,  <40.076279, 32.642227, 42.430309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163464, 32.420219, 42.403622>,  <40.308769, 32.050209, 42.359142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163464, 32.420219, 42.403622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134790, 0.170276, -0.976134,
		-0.921884, -0.339607, -0.186540,
		-0.363265, 0.925026, 0.111199,
		40.054485, 32.697727, 42.436981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815872, 32.208683, 41.931454>,  <40.308769, 32.050209, 42.359142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815872, 32.208683, 41.931454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989922, 32.558548, 42.016899>,  <40.094353, 32.768467, 42.068169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.989922, 32.558548, 42.016899>,  <39.815872, 32.208683, 41.931454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989922, 32.558548, 42.016899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312397, 0.075855, -0.946918,
		-0.844439, 0.478759, -0.240236,
		0.435123, 0.874663, 0.213617,
		40.120457, 32.820946, 42.080986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484268, 32.722496, 41.571701>,  <39.815872, 32.208683, 41.931454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484268, 32.722496, 41.571701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870571, 32.802052, 41.638336>,  <40.102352, 32.849785, 41.678318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.870571, 32.802052, 41.638336>,  <39.484268, 32.722496, 41.571701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870571, 32.802052, 41.638336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165300, 0.023162, -0.985971,
		-0.199956, 0.979748, -0.010507,
		0.965760, 0.198888, 0.166584,
		40.160301, 32.861717, 41.688313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749607, 33.305317, 41.289265>,  <39.484268, 32.722496, 41.571701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749607, 33.305317, 41.289265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068516, 33.064034, 41.280357>,  <40.259861, 32.919262, 41.275013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.068516, 33.064034, 41.280357>,  <39.749607, 33.305317, 41.289265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068516, 33.064034, 41.280357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004878, 0.030450, -0.999524,
		0.603600, 0.797002, 0.021335,
		0.797272, -0.603209, -0.022268,
		40.307697, 32.883072, 41.273678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095570, 33.742447, 40.699814>,  <39.749607, 33.305317, 41.289265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095570, 33.742447, 40.699814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182850, 33.357265, 40.636421>,  <40.235218, 33.126156, 40.598385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.182850, 33.357265, 40.636421>,  <40.095570, 33.742447, 40.699814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182850, 33.357265, 40.636421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091437, 0.181851, -0.979066,
		0.971611, 0.199141, 0.127729,
		0.218199, -0.962950, -0.158479,
		40.248310, 33.068382, 40.588879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547512, 33.784981, 40.130898>,  <40.095570, 33.742447, 40.699814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547512, 33.784981, 40.130898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.427315, 33.404358, 40.156933>,  <40.355198, 33.175983, 40.172554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.427315, 33.404358, 40.156933>,  <40.547512, 33.784981, 40.130898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427315, 33.404358, 40.156933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135783, -0.110224, -0.984588,
		0.944069, -0.287025, 0.162328,
		-0.300494, -0.951561, 0.065086,
		40.337166, 33.118889, 40.176460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094555, 33.383663, 40.342056>,  <40.547512, 33.784981, 40.130898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094555, 33.383663, 40.342056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197453, 33.069016, 40.117535>,  <41.259193, 32.880226, 39.982822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197453, 33.069016, 40.117535>,  <41.094555, 33.383663, 40.342056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197453, 33.069016, 40.117535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334971, 0.617423, -0.711746,
		0.906431, -0.004925, 0.422325,
		0.257248, -0.786616, -0.561301,
		41.274628, 32.833031, 39.949142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894604, 33.359474, 40.032146>,  <41.094555, 33.383663, 40.342056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894604, 33.359474, 40.032146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610577, 33.195503, 39.803146>,  <41.440159, 33.097122, 39.665745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610577, 33.195503, 39.803146>,  <41.894604, 33.359474, 40.032146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610577, 33.195503, 39.803146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429032, 0.392829, -0.813398,
		0.558332, -0.823191, -0.103062,
		-0.710068, -0.409929, -0.572505,
		41.397556, 33.072525, 39.631393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140694, 33.164043, 39.401642>,  <41.894604, 33.359474, 40.032146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140694, 33.164043, 39.401642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.749462, 33.185223, 39.321079>,  <41.514725, 33.197929, 39.272739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.749462, 33.185223, 39.321079>,  <42.140694, 33.164043, 39.401642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749462, 33.185223, 39.321079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208236, 0.236175, -0.949136,
		-0.002685, -0.970267, -0.242022,
		-0.978075, 0.052946, -0.201410,
		41.456039, 33.201107, 39.260654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802986, 33.363506, 39.731400>,  <42.140694, 33.164043, 39.401642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802986, 33.363506, 39.731400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.753860, 33.628628, 40.026859>,  <42.724384, 33.787701, 40.204136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.753860, 33.628628, 40.026859>,  <42.802986, 33.363506, 39.731400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753860, 33.628628, 40.026859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215972, 0.744300, -0.631960,
		-0.968645, 0.081915, -0.234557,
		-0.122814, 0.662803, 0.738654,
		42.717018, 33.827469, 40.248455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376972, 34.003143, 39.579418>,  <42.802986, 33.363506, 39.731400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376972, 34.003143, 39.579418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660900, 34.070042, 39.853111>,  <42.831257, 34.110180, 40.017326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660900, 34.070042, 39.853111>,  <42.376972, 34.003143, 39.579418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660900, 34.070042, 39.853111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403267, 0.699956, -0.589438,
		-0.577519, 0.694327, 0.429398,
		0.709822, 0.167250, 0.684237,
		42.873848, 34.120216, 40.058384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438721, 34.738884, 39.736629>,  <42.376972, 34.003143, 39.579418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438721, 34.738884, 39.736629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.790665, 34.559547, 39.799667>,  <43.001831, 34.451946, 39.837490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.790665, 34.559547, 39.799667>,  <42.438721, 34.738884, 39.736629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790665, 34.559547, 39.799667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411325, 0.552354, -0.725063,
		0.238031, 0.702775, 0.670409,
		0.879860, -0.448344, 0.157591,
		43.054623, 34.425045, 39.846943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042999, 35.274498, 39.705429>,  <42.438721, 34.738884, 39.736629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042999, 35.274498, 39.705429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161915, 34.902313, 39.619774>,  <43.233265, 34.679001, 39.568382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.161915, 34.902313, 39.619774>,  <43.042999, 35.274498, 39.705429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161915, 34.902313, 39.619774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381787, 0.321417, -0.866562,
		0.875132, 0.175867, 0.450794,
		0.297293, -0.930463, -0.214139,
		43.251102, 34.623173, 39.555531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850822, 35.030949, 39.678715>,  <43.042999, 35.274498, 39.705429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850822, 35.030949, 39.678715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.611557, 34.844494, 39.417973>,  <43.467999, 34.732620, 39.261528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.611557, 34.844494, 39.417973>,  <43.850822, 35.030949, 39.678715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611557, 34.844494, 39.417973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383151, 0.548076, -0.743511,
		0.703845, -0.694500, -0.149238,
		-0.598162, -0.466136, -0.651858,
		43.432110, 34.704655, 39.222416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319954, 34.689800, 39.264500>,  <43.850822, 35.030949, 39.678715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319954, 34.689800, 39.264500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979141, 34.761906, 39.067909>,  <43.774654, 34.805168, 38.949955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.979141, 34.761906, 39.067909>,  <44.319954, 34.689800, 39.264500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979141, 34.761906, 39.067909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519234, 0.410502, -0.749590,
		0.066629, -0.893865, -0.443359,
		-0.852031, 0.180262, -0.491476,
		43.723534, 34.815983, 38.920467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406567, 34.565865, 38.551643>,  <44.319954, 34.689800, 39.264500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406567, 34.565865, 38.551643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.112144, 34.836582, 38.546516>,  <43.935490, 34.999012, 38.543442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.112144, 34.836582, 38.546516>,  <44.406567, 34.565865, 38.551643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112144, 34.836582, 38.546516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445934, 0.470563, -0.761389,
		-0.509278, -0.566139, -0.648169,
		-0.736056, 0.676799, -0.012813,
		43.891327, 35.039623, 38.542671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019279, 34.586235, 37.834724>,  <44.406567, 34.565865, 38.551643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019279, 34.586235, 37.834724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081417, 34.925613, 38.037117>,  <44.118702, 35.129238, 38.158550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.081417, 34.925613, 38.037117>,  <44.019279, 34.586235, 37.834724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081417, 34.925613, 38.037117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522521, 0.364106, -0.770972,
		-0.838355, 0.384153, -0.386766,
		0.155348, 0.848442, 0.505978,
		44.128021, 35.180145, 38.188911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.733620, 35.150475, 37.486488>,  <44.019279, 34.586235, 37.834724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.733620, 35.150475, 37.486488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.042515, 35.273266, 37.708988>,  <44.227852, 35.346939, 37.842487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.042515, 35.273266, 37.708988>,  <43.733620, 35.150475, 37.486488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042515, 35.273266, 37.708988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482922, 0.285297, -0.827884,
		-0.412839, 0.907948, 0.072070,
		0.772237, 0.306978, 0.556250,
		44.274185, 35.365360, 37.875862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050274, 35.731461, 37.191917>,  <43.733620, 35.150475, 37.486488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050274, 35.731461, 37.191917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341713, 35.601021, 37.432850>,  <44.516579, 35.522758, 37.577408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341713, 35.601021, 37.432850>,  <44.050274, 35.731461, 37.191917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341713, 35.601021, 37.432850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680151, 0.240662, -0.692443,
		0.080844, 0.914190, 0.397141,
		0.728601, -0.326096, 0.602331,
		44.560291, 35.503193, 37.613548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702000, 35.981461, 36.897751>,  <44.050274, 35.731461, 37.191917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702000, 35.981461, 36.897751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.908306, 35.787186, 37.180058>,  <45.032089, 35.670620, 37.349442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.908306, 35.787186, 37.180058>,  <44.702000, 35.981461, 36.897751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908306, 35.787186, 37.180058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835096, 0.101042, -0.540745,
		0.191319, 0.868276, 0.457706,
		0.515763, -0.485683, 0.705762,
		45.063034, 35.641479, 37.391785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417980, 36.304993, 36.848270>,  <44.702000, 35.981461, 36.897751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417980, 36.304993, 36.848270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.408474, 35.945621, 37.023663>,  <45.402771, 35.730000, 37.128899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.408474, 35.945621, 37.023663>,  <45.417980, 36.304993, 36.848270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408474, 35.945621, 37.023663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778273, -0.291922, -0.555943,
		0.627475, 0.328045, 0.706159,
		-0.023769, -0.898425, 0.438482,
		45.401344, 35.676094, 37.155209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.047653, 36.083851, 37.021416>,  <45.417980, 36.304993, 36.848270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.047653, 36.083851, 37.021416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.858513, 35.731689, 37.007008>,  <45.745029, 35.520393, 36.998363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.858513, 35.731689, 37.007008>,  <46.047653, 36.083851, 37.021416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858513, 35.731689, 37.007008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792650, -0.407153, -0.453797,
		0.384858, -0.243133, 0.890376,
		-0.472852, -0.880405, -0.036024,
		45.716656, 35.467567, 36.996201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353706, 35.505310, 37.308060>,  <46.047653, 36.083851, 37.021416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353706, 35.505310, 37.308060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.135410, 35.440056, 36.979290>,  <46.004433, 35.400902, 36.782028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.135410, 35.440056, 36.979290>,  <46.353706, 35.505310, 37.308060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135410, 35.440056, 36.979290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829501, -0.244143, -0.502317,
		-0.118721, -0.955919, 0.268560,
		-0.545741, -0.163136, -0.821920,
		45.971687, 35.391117, 36.732716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.551048, 34.798412, 37.062653>,  <46.353706, 35.505310, 37.308060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.551048, 34.798412, 37.062653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.423534, 35.022667, 36.756954>,  <46.347027, 35.157219, 36.573536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.423534, 35.022667, 36.756954>,  <46.551048, 34.798412, 37.062653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.423534, 35.022667, 36.756954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814081, -0.251007, -0.523705,
		-0.485437, -0.789105, -0.376384,
		-0.318783, 0.560633, -0.764243,
		46.327900, 35.190857, 36.527679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600826, 34.454746, 36.440979>,  <46.551048, 34.798412, 37.062653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.600826, 34.454746, 36.440979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.607533, 34.833324, 36.312004>,  <46.611557, 35.060471, 36.234619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.607533, 34.833324, 36.312004>,  <46.600826, 34.454746, 36.440979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.607533, 34.833324, 36.312004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783750, -0.212682, -0.583526,
		-0.620850, -0.242927, -0.745340,
		0.016766, 0.946442, -0.322438,
		46.612564, 35.117256, 36.215271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.391052, 34.607029, 35.762947>,  <46.600826, 34.454746, 36.440979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.391052, 34.607029, 35.762947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.710850, 34.794334, 35.913433>,  <46.902729, 34.906719, 36.003723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.710850, 34.794334, 35.913433>,  <46.391052, 34.607029, 35.762947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.710850, 34.794334, 35.913433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571005, -0.398070, -0.717979,
		-0.186447, 0.788839, -0.585638,
		0.799494, 0.468267, 0.376211,
		46.950699, 34.934814, 36.026295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699646, 35.005684, 35.187923>,  <46.391052, 34.607029, 35.762947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699646, 35.005684, 35.187923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.967876, 34.911255, 35.469234>,  <47.128815, 34.854595, 35.638020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.967876, 34.911255, 35.469234>,  <46.699646, 35.005684, 35.187923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967876, 34.911255, 35.469234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606848, -0.370703, -0.703075,
		0.426685, 0.898247, -0.105322,
		0.670578, -0.236077, 0.703273,
		47.169048, 34.840431, 35.680218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379528, 35.370941, 35.295364>,  <46.699646, 35.005684, 35.187923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379528, 35.370941, 35.295364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.358013, 34.973190, 35.331867>,  <47.345104, 34.734539, 35.353767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.358013, 34.973190, 35.331867>,  <47.379528, 35.370941, 35.295364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.358013, 34.973190, 35.331867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314045, -0.103595, -0.943740,
		0.947883, -0.022102, 0.317850,
		-0.053786, -0.994374, 0.091255,
		47.341877, 34.674877, 35.359245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.120846, 35.146355, 35.150089>,  <47.379528, 35.370941, 35.295364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.120846, 35.146355, 35.150089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.773243, 34.962757, 35.076180>,  <47.564682, 34.852596, 35.031834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.773243, 34.962757, 35.076180>,  <48.120846, 35.146355, 35.150089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.773243, 34.962757, 35.076180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145914, 0.119098, -0.982102,
		0.472790, -0.880418, -0.036523,
		-0.869010, -0.458999, -0.184774,
		47.512539, 34.825058, 35.020748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.634214, 34.932438, 54.993965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.884277, 35.052982, 55.281956>,  <31.034315, 35.125309, 55.454750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.884277, 35.052982, 55.281956>,  <30.634214, 34.932438, 54.993965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884277, 35.052982, 55.281956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780154, -0.268703, -0.564941,
		0.023211, 0.914867, -0.403087,
		0.625157, 0.301357, 0.719974,
		31.071825, 35.143391, 55.497948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109537, 35.240513, 54.607800>,  <30.634214, 34.932438, 54.993965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109537, 35.240513, 54.607800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.287029, 35.175449, 54.960308>,  <31.393524, 35.136410, 55.171814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.287029, 35.175449, 54.960308>,  <31.109537, 35.240513, 54.607800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287029, 35.175449, 54.960308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772569, -0.428911, -0.468159,
		0.454140, 0.888581, -0.064653,
		0.443728, -0.162661, 0.881276,
		31.420147, 35.126652, 55.224689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758749, 35.487865, 54.547951>,  <31.109537, 35.240513, 54.607800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758749, 35.487865, 54.547951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.751865, 35.213100, 54.838566>,  <31.747736, 35.048241, 55.012936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.751865, 35.213100, 54.838566>,  <31.758749, 35.487865, 54.547951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751865, 35.213100, 54.838566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796783, -0.448395, -0.405066,
		0.604020, 0.571922, 0.555036,
		-0.017209, -0.686912, 0.726537,
		31.746702, 35.007027, 55.056526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469944, 35.513504, 54.670425>,  <31.758749, 35.487865, 54.547951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469944, 35.513504, 54.670425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.327789, 35.182648, 54.844570>,  <32.242496, 34.984135, 54.949059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.327789, 35.182648, 54.844570>,  <32.469944, 35.513504, 54.670425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327789, 35.182648, 54.844570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837886, -0.488352, -0.243843,
		0.414304, 0.278128, 0.866601,
		-0.355387, -0.827138, 0.435366,
		32.221172, 34.934505, 54.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003517, 35.257233, 55.039177>,  <32.469944, 35.513504, 54.670425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003517, 35.257233, 55.039177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766964, 34.944092, 54.961815>,  <32.625034, 34.756207, 54.915398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.766964, 34.944092, 54.961815>,  <33.003517, 35.257233, 55.039177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766964, 34.944092, 54.961815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771444, -0.479394, -0.418398,
		0.234827, -0.396634, 0.887433,
		-0.591380, -0.782856, -0.193406,
		32.589550, 34.709236, 54.903793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385277, 34.638203, 55.242088>,  <33.003517, 35.257233, 55.039177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385277, 34.638203, 55.242088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.096420, 34.519321, 54.992229>,  <32.923107, 34.447994, 54.842316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.096420, 34.519321, 54.992229>,  <33.385277, 34.638203, 55.242088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096420, 34.519321, 54.992229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684904, -0.433894, -0.585356,
		-0.097062, -0.850533, 0.516887,
		-0.722139, -0.297202, -0.624648,
		32.879780, 34.430161, 54.804836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600559, 34.017750, 55.057644>,  <33.385277, 34.638203, 55.242088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600559, 34.017750, 55.057644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.328144, 34.064545, 54.768509>,  <33.164696, 34.092621, 54.595028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.328144, 34.064545, 54.768509>,  <33.600559, 34.017750, 55.057644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328144, 34.064545, 54.768509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670411, -0.297411, -0.679777,
		-0.294465, -0.947562, 0.124162,
		-0.681058, 0.116931, -0.722833,
		33.123833, 34.099640, 54.551659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592678, 33.425743, 54.645958>,  <33.600559, 34.017750, 55.057644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592678, 33.425743, 54.645958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423515, 33.703812, 54.413445>,  <33.322018, 33.870651, 54.273937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.423515, 33.703812, 54.413445>,  <33.592678, 33.425743, 54.645958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423515, 33.703812, 54.413445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496187, -0.359118, -0.790464,
		-0.758256, -0.622716, -0.193062,
		-0.422902, 0.695168, -0.581287,
		33.296646, 33.912361, 54.239059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354019, 33.088692, 54.058617>,  <33.592678, 33.425743, 54.645958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354019, 33.088692, 54.058617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.395119, 33.470108, 53.945332>,  <33.419777, 33.698956, 53.877361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.395119, 33.470108, 53.945332>,  <33.354019, 33.088692, 54.058617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395119, 33.470108, 53.945332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546209, -0.292038, -0.785093,
		-0.831324, -0.074025, -0.550837,
		0.102749, 0.953538, -0.283211,
		33.425941, 33.756168, 53.860367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337940, 33.044029, 53.342716>,  <33.354019, 33.088692, 54.058617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337940, 33.044029, 53.342716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485004, 33.410870, 53.404366>,  <33.573242, 33.630974, 53.441357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485004, 33.410870, 53.404366>,  <33.337940, 33.044029, 53.342716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485004, 33.410870, 53.404366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617942, -0.117069, -0.777459,
		-0.694965, 0.381079, -0.609757,
		0.367657, 0.917101, 0.154126,
		33.595303, 33.686001, 53.450603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142399, 33.484447, 52.722439>,  <33.337940, 33.044029, 53.342716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142399, 33.484447, 52.722439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.451031, 33.641174, 52.922897>,  <33.636208, 33.735210, 53.043175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.451031, 33.641174, 52.922897>,  <33.142399, 33.484447, 52.722439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451031, 33.641174, 52.922897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560812, -0.047108, -0.826602,
		-0.300266, 0.918838, -0.256081,
		0.771576, 0.391814, 0.501151,
		33.682503, 33.758717, 53.073242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318356, 34.008873, 52.298996>,  <33.142399, 33.484447, 52.722439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318356, 34.008873, 52.298996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.651562, 33.968685, 52.516613>,  <33.851486, 33.944572, 52.647182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.651562, 33.968685, 52.516613>,  <33.318356, 34.008873, 52.298996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651562, 33.968685, 52.516613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488180, -0.329207, -0.808272,
		0.260311, 0.938897, -0.225188,
		0.833018, -0.100470, 0.544047,
		33.901466, 33.938545, 52.679829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796337, 34.374870, 51.891617>,  <33.318356, 34.008873, 52.298996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796337, 34.374870, 51.891617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057537, 34.205276, 52.142639>,  <34.214256, 34.103519, 52.293251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057537, 34.205276, 52.142639>,  <33.796337, 34.374870, 51.891617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057537, 34.205276, 52.142639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671399, -0.059345, -0.738716,
		0.350446, 0.903723, 0.245910,
		0.653002, -0.423984, 0.627556,
		34.253437, 34.078083, 52.330906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468277, 34.675632, 51.886116>,  <33.796337, 34.374870, 51.891617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468277, 34.675632, 51.886116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.549950, 34.299061, 51.993465>,  <34.598953, 34.073120, 52.057877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.549950, 34.299061, 51.993465>,  <34.468277, 34.675632, 51.886116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549950, 34.299061, 51.993465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659140, -0.070481, -0.748710,
		0.723771, 0.329772, 0.606141,
		0.204182, -0.941426, 0.268378,
		34.611206, 34.016632, 52.073978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125168, 34.457695, 51.538006>,  <34.468277, 34.675632, 51.886116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125168, 34.457695, 51.538006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988174, 34.090996, 51.620243>,  <34.905979, 33.870975, 51.669586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.988174, 34.090996, 51.620243>,  <35.125168, 34.457695, 51.538006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988174, 34.090996, 51.620243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581771, -0.378765, -0.719777,
		0.737729, -0.126905, 0.663062,
		-0.342488, -0.916751, 0.205596,
		34.885429, 33.815971, 51.681923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600914, 34.188324, 51.091534>,  <35.125168, 34.457695, 51.538006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600914, 34.188324, 51.091534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421143, 33.870312, 51.254475>,  <35.313278, 33.679504, 51.352238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.421143, 33.870312, 51.254475>,  <35.600914, 34.188324, 51.091534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421143, 33.870312, 51.254475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455165, -0.596170, -0.661367,
		0.768660, -0.111824, 0.629807,
		-0.449429, -0.795033, 0.407354,
		35.286312, 33.631802, 51.376682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044952, 33.703125, 51.201946>,  <35.600914, 34.188324, 51.091534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044952, 33.703125, 51.201946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704098, 33.499638, 51.152828>,  <35.499584, 33.377544, 51.123356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704098, 33.499638, 51.152828>,  <36.044952, 33.703125, 51.201946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704098, 33.499638, 51.152828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448648, -0.589335, -0.671863,
		0.269417, -0.627609, 0.730426,
		-0.852132, -0.508716, -0.122799,
		35.448460, 33.347023, 51.115990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175201, 32.926125, 51.323658>,  <36.044952, 33.703125, 51.201946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175201, 32.926125, 51.323658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.840469, 32.954292, 51.106495>,  <35.639629, 32.971191, 50.976196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.840469, 32.954292, 51.106495>,  <36.175201, 32.926125, 51.323658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840469, 32.954292, 51.106495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407297, -0.582573, -0.703362,
		-0.365817, -0.809722, 0.458833,
		-0.836832, 0.070420, -0.542912,
		35.589420, 32.975418, 50.943623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026840, 32.284134, 51.113964>,  <36.175201, 32.926125, 51.323658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026840, 32.284134, 51.113964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833515, 32.524834, 50.859623>,  <35.717522, 32.669254, 50.707016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.833515, 32.524834, 50.859623>,  <36.026840, 32.284134, 51.113964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833515, 32.524834, 50.859623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370350, -0.517587, -0.771326,
		-0.793254, -0.608278, 0.027297,
		-0.483310, 0.601748, -0.635854,
		35.688522, 32.705357, 50.668865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085598, 31.902988, 50.673317>,  <36.026840, 32.284134, 51.113964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085598, 31.902988, 50.673317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949749, 32.225143, 50.478996>,  <35.868240, 32.418438, 50.362404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.949749, 32.225143, 50.478996>,  <36.085598, 31.902988, 50.673317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949749, 32.225143, 50.478996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287568, -0.402856, -0.868914,
		-0.895522, -0.434807, -0.094783,
		-0.339626, 0.805388, -0.485803,
		35.847862, 32.466759, 50.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505951, 31.675892, 50.293518>,  <36.085598, 31.902988, 50.673317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505951, 31.675892, 50.293518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691120, 31.980812, 50.112587>,  <35.802223, 32.163765, 50.004028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.691120, 31.980812, 50.112587>,  <35.505951, 31.675892, 50.293518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691120, 31.980812, 50.112587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086077, -0.546548, -0.832993,
		-0.882208, 0.346679, -0.318628,
		0.462926, 0.762299, -0.452327,
		35.829998, 32.209503, 49.976891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326172, 31.578661, 49.616867>,  <35.505951, 31.675892, 50.293518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326172, 31.578661, 49.616867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.611412, 31.855669, 49.573231>,  <35.782555, 32.021873, 49.547050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.611412, 31.855669, 49.573231>,  <35.326172, 31.578661, 49.616867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611412, 31.855669, 49.573231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249626, -0.396226, -0.883568,
		-0.655114, 0.602842, -0.455420,
		0.713101, 0.692522, -0.109088,
		35.825344, 32.063427, 49.540504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674068, 31.303604, 50.059303>,  <35.326172, 31.578661, 49.616867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674068, 31.303604, 50.059303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421165, 31.356831, 49.754005>,  <34.269424, 31.388767, 49.570827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421165, 31.356831, 49.754005>,  <34.674068, 31.303604, 50.059303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421165, 31.356831, 49.754005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656468, 0.431187, 0.618973,
		0.411467, 0.892397, -0.185266,
		-0.632254, 0.133066, -0.763249,
		34.231491, 31.396749, 49.525032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318794, 31.903898, 50.184349>,  <34.674068, 31.303604, 50.059303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318794, 31.903898, 50.184349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077450, 31.727198, 49.918774>,  <33.932644, 31.621178, 49.759430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.077450, 31.727198, 49.918774>,  <34.318794, 31.903898, 50.184349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077450, 31.727198, 49.918774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780508, 0.497918, 0.378001,
		0.163603, 0.746279, -0.645214,
		-0.603358, -0.441753, -0.663938,
		33.896442, 31.594671, 49.719593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915543, 32.418655, 49.904331>,  <34.318794, 31.903898, 50.184349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915543, 32.418655, 49.904331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.726017, 32.070515, 49.850685>,  <33.612301, 31.861629, 49.818497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.726017, 32.070515, 49.850685>,  <33.915543, 32.418655, 49.904331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726017, 32.070515, 49.850685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847972, 0.409836, 0.336122,
		-0.237581, 0.272982, -0.932221,
		-0.473813, -0.870354, -0.134112,
		33.583874, 31.809408, 49.810452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241802, 32.484955, 49.639938>,  <33.915543, 32.418655, 49.904331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241802, 32.484955, 49.639938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210381, 32.135418, 49.831867>,  <33.191528, 31.925695, 49.947025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.210381, 32.135418, 49.831867>,  <33.241802, 32.484955, 49.639938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210381, 32.135418, 49.831867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826599, 0.326150, 0.458651,
		-0.557283, -0.360597, -0.747934,
		-0.078551, -0.873840, 0.479827,
		33.186817, 31.873266, 49.975815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569969, 32.307850, 49.546574>,  <33.241802, 32.484955, 49.639938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569969, 32.307850, 49.546574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.688004, 32.092758, 49.862492>,  <32.758823, 31.963705, 50.052044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.688004, 32.092758, 49.862492>,  <32.569969, 32.307850, 49.546574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688004, 32.092758, 49.862492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853065, 0.224044, 0.471258,
		-0.430357, -0.812807, -0.392603,
		0.295081, -0.537725, 0.789796,
		32.776527, 31.931440, 50.099430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926519, 32.057014, 49.879726>,  <32.569969, 32.307850, 49.546574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926519, 32.057014, 49.879726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.218262, 31.986994, 50.144272>,  <32.393307, 31.944983, 50.302998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.218262, 31.986994, 50.144272>,  <31.926519, 32.057014, 49.879726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218262, 31.986994, 50.144272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592691, 0.321155, 0.738632,
		-0.341695, -0.930708, 0.130487,
		0.729357, -0.175049, 0.661359,
		32.437069, 31.934479, 50.342678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559969, 31.837414, 50.439995>,  <31.926519, 32.057014, 49.879726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559969, 31.837414, 50.439995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.918072, 31.899788, 50.606941>,  <32.132935, 31.937212, 50.707108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.918072, 31.899788, 50.606941>,  <31.559969, 31.837414, 50.439995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918072, 31.899788, 50.606941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443949, 0.391449, 0.806025,
		-0.037689, -0.906891, 0.419676,
		0.895259, 0.155937, 0.417367,
		32.186649, 31.946569, 50.732151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519669, 31.538704, 51.248100>,  <31.559969, 31.837414, 50.439995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519669, 31.538704, 51.248100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831129, 31.788712, 51.226002>,  <32.018005, 31.938715, 51.212742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.831129, 31.788712, 51.226002>,  <31.519669, 31.538704, 51.248100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831129, 31.788712, 51.226002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346083, 0.501255, 0.793076,
		0.523385, -0.598407, 0.606612,
		0.778650, 0.625022, -0.055251,
		32.064724, 31.976217, 51.209427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710144, 31.627007, 51.898209>,  <31.519669, 31.538704, 51.248100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710144, 31.627007, 51.898209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.847977, 31.951981, 51.710075>,  <31.930676, 32.146965, 51.597195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.847977, 31.951981, 51.710075>,  <31.710144, 31.627007, 51.898209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847977, 31.951981, 51.710075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358664, 0.576944, 0.733822,
		0.867539, -0.084169, 0.490195,
		0.344580, 0.812435, -0.470333,
		31.951351, 32.195713, 51.568974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868338, 32.089836, 52.530735>,  <31.710144, 31.627007, 51.898209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868338, 32.089836, 52.530735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.854860, 32.299099, 52.190105>,  <31.846775, 32.424656, 51.985729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.854860, 32.299099, 52.190105>,  <31.868338, 32.089836, 52.530735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854860, 32.299099, 52.190105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529397, 0.713359, 0.459192,
		0.847705, 0.466290, 0.252922,
		-0.033692, 0.523156, -0.851571,
		31.844753, 32.456047, 51.934635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717363, 32.738575, 52.814461>,  <31.868338, 32.089836, 52.530735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717363, 32.738575, 52.814461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.640165, 32.740326, 52.421986>,  <31.593845, 32.741375, 52.186501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.640165, 32.740326, 52.421986>,  <31.717363, 32.738575, 52.814461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640165, 32.740326, 52.421986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604130, 0.787438, 0.122341,
		0.773162, 0.616378, -0.149330,
		-0.192996, 0.004375, -0.981190,
		31.582266, 32.741638, 52.127628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723370, 33.508659, 52.607601>,  <31.717363, 32.738575, 52.814461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723370, 33.508659, 52.607601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.537313, 33.329426, 52.302219>,  <31.425680, 33.221886, 52.118988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.537313, 33.329426, 52.302219>,  <31.723370, 33.508659, 52.607601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537313, 33.329426, 52.302219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659978, 0.750309, -0.038268,
		0.589976, 0.486065, -0.644724,
		-0.465142, -0.448081, -0.763457,
		31.397772, 33.195000, 52.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631226, 33.982761, 52.083622>,  <31.723370, 33.508659, 52.607601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631226, 33.982761, 52.083622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.334146, 33.717857, 52.043987>,  <31.155899, 33.558914, 52.020206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.334146, 33.717857, 52.043987>,  <31.631226, 33.982761, 52.083622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334146, 33.717857, 52.043987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664419, 0.747227, -0.014066,
		0.083357, 0.055390, -0.994979,
		-0.742696, -0.662256, -0.099089,
		31.111338, 33.519180, 52.014259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213789, 34.306923, 51.589630>,  <31.631226, 33.982761, 52.083622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213789, 34.306923, 51.589630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.999853, 34.014256, 51.758678>,  <30.871492, 33.838657, 51.860107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.999853, 34.014256, 51.758678>,  <31.213789, 34.306923, 51.589630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999853, 34.014256, 51.758678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749898, 0.641512, 0.161601,
		-0.389357, -0.230495, -0.891781,
		-0.534841, -0.731666, 0.422625,
		30.839401, 33.794754, 51.885468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643835, 34.298027, 51.282509>,  <31.213789, 34.306923, 51.589630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643835, 34.298027, 51.282509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.533964, 34.078415, 51.598259>,  <30.468042, 33.946648, 51.787708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.533964, 34.078415, 51.598259>,  <30.643835, 34.298027, 51.282509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533964, 34.078415, 51.598259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823233, 0.558469, 0.101974,
		-0.496830, -0.621831, -0.605382,
		-0.274677, -0.549034, 0.789376,
		30.451561, 33.913704, 51.835072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943958, 34.363140, 51.303658>,  <30.643835, 34.298027, 51.282509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943958, 34.363140, 51.303658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.029690, 34.240925, 51.674755>,  <30.081129, 34.167595, 51.897415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.029690, 34.240925, 51.674755>,  <29.943958, 34.363140, 51.303658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029690, 34.240925, 51.674755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826627, 0.449246, 0.338918,
		-0.520337, -0.839539, -0.156279,
		0.214327, -0.305537, 0.927745,
		30.093988, 34.149265, 51.953079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308178, 33.989033, 51.632656>,  <29.943958, 34.363140, 51.303658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308178, 33.989033, 51.632656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.542973, 34.139351, 51.919495>,  <29.683849, 34.229542, 52.091599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.542973, 34.139351, 51.919495>,  <29.308178, 33.989033, 51.632656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542973, 34.139351, 51.919495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800026, 0.405035, 0.442611,
		-0.124119, -0.833502, 0.538394,
		0.586986, 0.375793, 0.717097,
		29.719069, 34.252090, 52.134624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868029, 34.044270, 52.232998>,  <29.308178, 33.989033, 51.632656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868029, 34.044270, 52.232998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.164314, 34.293724, 52.332935>,  <29.342085, 34.443398, 52.392899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.164314, 34.293724, 52.332935>,  <28.868029, 34.044270, 52.232998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164314, 34.293724, 52.332935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628578, 0.512061, 0.585391,
		0.237136, -0.590653, 0.771295,
		0.740713, 0.623637, 0.249844,
		29.386528, 34.480816, 52.407887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.130835, 34.036144, 53.346077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291582, 34.369678, 53.194695>,  <29.388031, 34.569798, 53.103867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291582, 34.369678, 53.194695>,  <29.130835, 34.036144, 53.346077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291582, 34.369678, 53.194695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460662, 0.541281, 0.703424,
		0.791386, -0.108346, 0.601639,
		0.401869, 0.833832, -0.378452,
		29.412144, 34.619827, 53.081158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439732, 34.358730, 53.824066>,  <29.130835, 34.036144, 53.346077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439732, 34.358730, 53.824066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418825, 34.657177, 53.558563>,  <29.406282, 34.836246, 53.399261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418825, 34.657177, 53.558563>,  <29.439732, 34.358730, 53.824066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418825, 34.657177, 53.558563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229773, 0.637849, 0.735087,
		0.971840, 0.190933, 0.138102,
		-0.052264, 0.746119, -0.663758,
		29.403147, 34.881012, 53.359436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835394, 34.954342, 54.127861>,  <29.439732, 34.358730, 53.824066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835394, 34.954342, 54.127861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594955, 35.113190, 53.850452>,  <29.450693, 35.208500, 53.684006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594955, 35.113190, 53.850452>,  <29.835394, 34.954342, 54.127861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594955, 35.113190, 53.850452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302701, 0.690005, 0.657468,
		0.739632, 0.605133, -0.294550,
		-0.601097, 0.397124, -0.693524,
		29.414627, 35.232327, 53.642395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919125, 35.655743, 54.062145>,  <29.835394, 34.954342, 54.127861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919125, 35.655743, 54.062145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555550, 35.583672, 53.911751>,  <29.337404, 35.540428, 53.821514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555550, 35.583672, 53.911751>,  <29.919125, 35.655743, 54.062145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555550, 35.583672, 53.911751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390698, 0.682914, 0.617239,
		0.145552, 0.707929, -0.691123,
		-0.908939, -0.180179, -0.375986,
		29.282867, 35.529617, 53.798954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642939, 36.263126, 54.104645>,  <29.919125, 35.655743, 54.062145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642939, 36.263126, 54.104645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324839, 36.029476, 54.039688>,  <29.133978, 35.889286, 54.000713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324839, 36.029476, 54.039688>,  <29.642939, 36.263126, 54.104645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324839, 36.029476, 54.039688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561507, 0.608595, 0.560645,
		-0.228659, 0.537036, -0.811977,
		-0.795252, -0.584127, -0.162389,
		29.086264, 35.854237, 53.990971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209805, 36.702953, 53.900890>,  <29.642939, 36.263126, 54.104645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209805, 36.702953, 53.900890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983902, 36.392555, 54.013237>,  <28.848360, 36.206318, 54.080647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983902, 36.392555, 54.013237>,  <29.209805, 36.702953, 53.900890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983902, 36.392555, 54.013237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602290, 0.620233, 0.502552,
		-0.564179, 0.114656, -0.817653,
		-0.564755, -0.775993, 0.280866,
		28.814476, 36.159756, 54.097496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489422, 36.958755, 53.862659>,  <29.209805, 36.702953, 53.900890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489422, 36.958755, 53.862659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464457, 36.654732, 54.121399>,  <28.449476, 36.472317, 54.276642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464457, 36.654732, 54.121399>,  <28.489422, 36.958755, 53.862659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.464457, 36.654732, 54.121399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596730, 0.547932, 0.586245,
		-0.800011, -0.349405, -0.487748,
		-0.062416, -0.760057, 0.646852,
		28.445732, 36.426716, 54.315456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770281, 36.961769, 53.997124>,  <28.489422, 36.958755, 53.862659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770281, 36.961769, 53.997124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937027, 36.740604, 54.285709>,  <28.037075, 36.607906, 54.458862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.937027, 36.740604, 54.285709>,  <27.770281, 36.961769, 53.997124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937027, 36.740604, 54.285709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712204, 0.294498, 0.637210,
		-0.564793, -0.779459, -0.271023,
		0.416863, -0.552915, 0.721464,
		28.062086, 36.574730, 54.502148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263906, 36.597664, 54.374931>,  <27.770281, 36.961769, 53.997124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263906, 36.597664, 54.374931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569510, 36.597382, 54.633015>,  <27.752872, 36.597214, 54.787865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569510, 36.597382, 54.633015>,  <27.263906, 36.597664, 54.374931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569510, 36.597382, 54.633015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621431, 0.268154, 0.736150,
		-0.173531, -0.963376, 0.204436,
		0.764009, -0.000702, 0.645204,
		27.798712, 36.597172, 54.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027252, 36.228374, 54.948124>,  <27.263906, 36.597664, 54.374931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027252, 36.228374, 54.948124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318832, 36.455589, 55.100945>,  <27.493780, 36.591919, 55.192638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318832, 36.455589, 55.100945>,  <27.027252, 36.228374, 54.948124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318832, 36.455589, 55.100945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612938, 0.293038, 0.733782,
		0.304877, -0.769052, 0.561791,
		0.728942, 0.568056, 0.382041,
		27.537518, 36.626003, 55.215561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201662, 36.071629, 55.645744>,  <27.027252, 36.228374, 54.948124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201662, 36.071629, 55.645744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317123, 36.452831, 55.608952>,  <27.386400, 36.681553, 55.586876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317123, 36.452831, 55.608952>,  <27.201662, 36.071629, 55.645744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317123, 36.452831, 55.608952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603573, 0.255702, 0.755193,
		0.743222, -0.162472, 0.649017,
		0.288652, 0.953005, -0.091980,
		27.403719, 36.738731, 55.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173172, 36.309505, 56.280823>,  <27.201662, 36.071629, 55.645744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173172, 36.309505, 56.280823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223372, 36.654964, 56.085529>,  <27.253490, 36.862240, 55.968353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223372, 36.654964, 56.085529>,  <27.173172, 36.309505, 56.280823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223372, 36.654964, 56.085529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717982, 0.418683, 0.556063,
		0.684655, 0.280758, 0.672624,
		0.125497, 0.863643, -0.488233,
		27.261021, 36.914059, 55.939060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157293, 36.724007, 56.782509>,  <27.173172, 36.309505, 56.280823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157293, 36.724007, 56.782509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114950, 36.956734, 56.459949>,  <27.089544, 37.096371, 56.266415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.114950, 36.956734, 56.459949>,  <27.157293, 36.724007, 56.782509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114950, 36.956734, 56.459949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619848, 0.595514, 0.511030,
		0.777550, 0.553941, 0.297600,
		-0.105856, 0.581817, -0.806401,
		27.083193, 37.131279, 56.218029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282465, 37.415348, 57.014271>,  <27.157293, 36.724007, 56.782509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282465, 37.415348, 57.014271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061523, 37.448036, 56.682434>,  <26.928959, 37.467648, 56.483330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.061523, 37.448036, 56.682434>,  <27.282465, 37.415348, 57.014271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061523, 37.448036, 56.682434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597664, 0.654936, 0.462447,
		0.581120, 0.751253, -0.312919,
		-0.552356, 0.081717, -0.829593,
		26.895817, 37.472549, 56.433556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276926, 38.038097, 56.907955>,  <27.282465, 37.415348, 57.014271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276926, 38.038097, 56.907955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952782, 37.912655, 56.709980>,  <26.758295, 37.837391, 56.591194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952782, 37.912655, 56.709980>,  <27.276926, 38.038097, 56.907955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952782, 37.912655, 56.709980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536482, 0.736756, 0.411556,
		0.235584, 0.599036, -0.765282,
		-0.810362, -0.313604, -0.494940,
		26.709673, 37.818573, 56.561497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916574, 38.666405, 56.560268>,  <27.276926, 38.038097, 56.907955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916574, 38.666405, 56.560268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657837, 38.365299, 56.609154>,  <26.502594, 38.184635, 56.638485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657837, 38.365299, 56.609154>,  <26.916574, 38.666405, 56.560268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657837, 38.365299, 56.609154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690494, 0.646124, 0.325181,
		-0.323750, 0.125954, -0.937722,
		-0.646842, -0.752768, 0.122212,
		26.463785, 38.139469, 56.645817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449005, 38.967224, 56.262161>,  <26.916574, 38.666405, 56.560268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449005, 38.967224, 56.262161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289234, 38.673813, 56.482121>,  <26.193373, 38.497765, 56.614098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289234, 38.673813, 56.482121>,  <26.449005, 38.967224, 56.262161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289234, 38.673813, 56.482121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725566, 0.619580, 0.299458,
		-0.560369, -0.279376, -0.779702,
		-0.399426, -0.733532, 0.549899,
		26.169407, 38.453754, 56.647091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726974, 39.051968, 56.172588>,  <26.449005, 38.967224, 56.262161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726974, 39.051968, 56.172588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772091, 38.858067, 56.519527>,  <25.799160, 38.741726, 56.727692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.772091, 38.858067, 56.519527>,  <25.726974, 39.051968, 56.172588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772091, 38.858067, 56.519527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553654, 0.694187, 0.459969,
		-0.825073, -0.532091, -0.190088,
		0.112789, -0.484751, 0.867349,
		25.805927, 38.712643, 56.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.023123, 39.098400, 56.476215>,  <25.726974, 39.051968, 56.172588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.023123, 39.098400, 56.476215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259670, 39.007286, 56.785641>,  <25.401600, 38.952618, 56.971294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259670, 39.007286, 56.785641>,  <25.023123, 39.098400, 56.476215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.259670, 39.007286, 56.785641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494642, 0.655151, 0.571057,
		-0.636876, -0.720342, 0.274766,
		0.591370, -0.227781, 0.773562,
		25.437080, 38.938953, 57.017708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.581043, 38.977139, 57.063293>,  <25.023123, 39.098400, 56.476215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.581043, 38.977139, 57.063293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929853, 39.086712, 57.225544>,  <25.139139, 39.152454, 57.322895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.929853, 39.086712, 57.225544>,  <24.581043, 38.977139, 57.063293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929853, 39.086712, 57.225544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438942, 0.804344, 0.400451,
		-0.216569, -0.527251, 0.821647,
		0.872025, 0.273930, 0.405628,
		25.191462, 39.168892, 57.347233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294199, 39.227985, 57.716686>,  <24.581043, 38.977139, 57.063293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294199, 39.227985, 57.716686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675571, 39.343994, 57.683571>,  <24.904396, 39.413597, 57.663700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675571, 39.343994, 57.683571>,  <24.294199, 39.227985, 57.716686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675571, 39.343994, 57.683571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218877, 0.854197, 0.471635,
		0.207504, -0.431551, 0.877898,
		0.953433, 0.290018, -0.082792,
		24.961601, 39.431000, 57.658733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446228, 39.359524, 58.370930>,  <24.294199, 39.227985, 57.716686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446228, 39.359524, 58.370930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714319, 39.551010, 58.144081>,  <24.875174, 39.665901, 58.007973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714319, 39.551010, 58.144081>,  <24.446228, 39.359524, 58.370930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714319, 39.551010, 58.144081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252769, 0.865713, 0.432029,
		0.697785, -0.146205, 0.701227,
		0.670226, 0.478712, -0.567125,
		24.915386, 39.694622, 57.973942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841749, 39.757111, 58.815578>,  <24.446228, 39.359524, 58.370930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841749, 39.757111, 58.815578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832693, 39.924480, 58.452389>,  <24.827259, 40.024902, 58.234474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832693, 39.924480, 58.452389>,  <24.841749, 39.757111, 58.815578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.832693, 39.924480, 58.452389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301101, 0.863181, 0.405287,
		0.953323, 0.282567, 0.106445,
		-0.022640, 0.418421, -0.907971,
		24.825901, 40.050007, 58.179996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295723, 40.376549, 58.797153>,  <24.841749, 39.757111, 58.815578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295723, 40.376549, 58.797153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998625, 40.403973, 58.530731>,  <24.820366, 40.420429, 58.370876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998625, 40.403973, 58.530731>,  <25.295723, 40.376549, 58.797153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998625, 40.403973, 58.530731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267258, 0.881710, 0.388794,
		0.613924, 0.466783, -0.636562,
		-0.742745, 0.068564, -0.666054,
		24.775801, 40.424541, 58.330914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.097878, 40.141212, 58.881580>,  <25.295723, 40.376549, 58.797153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.097878, 40.141212, 58.881580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315226, 40.194828, 59.213070>,  <26.445635, 40.226997, 59.411964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315226, 40.194828, 59.213070>,  <26.097878, 40.141212, 58.881580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315226, 40.194828, 59.213070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664852, -0.671439, -0.327325,
		0.512562, 0.728837, -0.453957,
		0.543370, 0.134040, 0.828723,
		26.478237, 40.235039, 59.461685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771654, 40.226761, 58.694077>,  <26.097878, 40.141212, 58.881580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771654, 40.226761, 58.694077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770266, 40.093433, 59.071201>,  <26.769432, 40.013435, 59.297474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770266, 40.093433, 59.071201>,  <26.771654, 40.226761, 58.694077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.770266, 40.093433, 59.071201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708563, -0.666110, -0.232886,
		0.705639, 0.667230, 0.238493,
		-0.003474, -0.333320, 0.942807,
		26.769224, 39.993439, 59.354042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416388, 40.123493, 58.852638>,  <26.771654, 40.226761, 58.694077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416388, 40.123493, 58.852638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246538, 39.885040, 59.125202>,  <27.144629, 39.741970, 59.288742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246538, 39.885040, 59.125202>,  <27.416388, 40.123493, 58.852638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246538, 39.885040, 59.125202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736834, -0.664881, -0.122506,
		0.526088, 0.450069, 0.721574,
		-0.424625, -0.596130, 0.681412,
		27.119150, 39.706200, 59.329624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920887, 39.923943, 59.288746>,  <27.416388, 40.123493, 58.852638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920887, 39.923943, 59.288746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636461, 39.657909, 59.380009>,  <27.465807, 39.498291, 59.434769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636461, 39.657909, 59.380009>,  <27.920887, 39.923943, 59.288746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636461, 39.657909, 59.380009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681845, -0.731461, -0.007217,
		0.171691, 0.150439, 0.973597,
		-0.711063, -0.665081, 0.228161,
		27.423143, 39.458385, 59.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284748, 39.440285, 59.585320>,  <27.920887, 39.923943, 59.288746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284748, 39.440285, 59.585320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944929, 39.249065, 59.496109>,  <27.741037, 39.134335, 59.442581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944929, 39.249065, 59.496109>,  <28.284748, 39.440285, 59.585320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944929, 39.249065, 59.496109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515492, -0.842081, -0.158641,
		-0.111967, -0.249741, 0.961817,
		-0.849548, -0.478047, -0.223025,
		27.690065, 39.105652, 59.429203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410515, 38.804890, 59.824909>,  <28.284748, 39.440285, 59.585320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410515, 38.804890, 59.824909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096661, 38.762955, 59.580498>,  <27.908348, 38.737793, 59.433853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.096661, 38.762955, 59.580498>,  <28.410515, 38.804890, 59.824909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096661, 38.762955, 59.580498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390579, -0.848994, -0.355890,
		-0.481448, -0.517898, 0.707099,
		-0.784638, -0.104835, -0.611027,
		27.861269, 38.731503, 59.397190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234734, 38.013756, 59.818527>,  <28.410515, 38.804890, 59.824909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234734, 38.013756, 59.818527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043232, 38.137386, 59.489830>,  <27.928331, 38.211563, 59.292610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043232, 38.137386, 59.489830>,  <28.234734, 38.013756, 59.818527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043232, 38.137386, 59.489830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376104, -0.773549, -0.510067,
		-0.793311, -0.553258, 0.254093,
		-0.478752, 0.309077, -0.821747,
		27.899605, 38.230110, 59.243305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861244, 37.477295, 59.450924>,  <28.234734, 38.013756, 59.818527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861244, 37.477295, 59.450924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970881, 37.756935, 59.186760>,  <28.036663, 37.924717, 59.028263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970881, 37.756935, 59.186760>,  <27.861244, 37.477295, 59.450924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970881, 37.756935, 59.186760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448590, -0.700361, -0.555213,
		-0.850671, -0.144072, -0.505571,
		0.274092, 0.699098, -0.660406,
		28.053108, 37.966663, 58.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778448, 37.169331, 58.867508>,  <27.861244, 37.477295, 59.450924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778448, 37.169331, 58.867508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026470, 37.466560, 58.766811>,  <28.175283, 37.644897, 58.706394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026470, 37.466560, 58.766811>,  <27.778448, 37.169331, 58.867508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026470, 37.466560, 58.766811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398850, -0.574861, -0.714460,
		-0.675613, 0.342597, -0.652820,
		0.620053, 0.743076, -0.251739,
		28.212486, 37.689484, 58.691288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723915, 37.201199, 58.206596>,  <27.778448, 37.169331, 58.867508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723915, 37.201199, 58.206596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064346, 37.398167, 58.279465>,  <28.268604, 37.516350, 58.323185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064346, 37.398167, 58.279465>,  <27.723915, 37.201199, 58.206596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064346, 37.398167, 58.279465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446589, -0.496491, -0.744348,
		-0.276088, 0.714854, -0.642464,
		0.851078, 0.492423, 0.182171,
		28.319670, 37.545895, 58.334114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871609, 37.497242, 57.556721>,  <27.723915, 37.201199, 58.206596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871609, 37.497242, 57.556721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210979, 37.490746, 57.768345>,  <28.414602, 37.486847, 57.895321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210979, 37.490746, 57.768345>,  <27.871609, 37.497242, 57.556721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210979, 37.490746, 57.768345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446320, -0.515389, -0.731555,
		0.284551, 0.856802, -0.430024,
		0.848428, -0.016237, 0.529062,
		28.465508, 37.485874, 57.927063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331415, 37.649155, 57.046757>,  <27.871609, 37.497242, 57.556721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331415, 37.649155, 57.046757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546606, 37.509926, 57.353855>,  <28.675720, 37.426388, 57.538113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546606, 37.509926, 57.353855>,  <28.331415, 37.649155, 57.046757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546606, 37.509926, 57.353855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676209, -0.365604, -0.639590,
		0.503314, 0.863237, 0.038685,
		0.537975, -0.348074, 0.767742,
		28.707998, 37.405502, 57.584179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063818, 37.877552, 56.925735>,  <28.331415, 37.649155, 57.046757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063818, 37.877552, 56.925735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107460, 37.567711, 57.174923>,  <29.133646, 37.381805, 57.324436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107460, 37.567711, 57.174923>,  <29.063818, 37.877552, 56.925735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107460, 37.567711, 57.174923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717954, -0.372031, -0.588332,
		0.687486, 0.511451, 0.515539,
		0.109106, -0.774604, 0.622965,
		29.140192, 37.335331, 57.361813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780558, 37.659557, 56.845985>,  <29.063818, 37.877552, 56.925735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780558, 37.659557, 56.845985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612703, 37.333431, 57.005566>,  <29.511990, 37.137756, 57.101315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612703, 37.333431, 57.005566>,  <29.780558, 37.659557, 56.845985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612703, 37.333431, 57.005566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564162, -0.578595, -0.589024,
		0.711073, -0.022101, 0.702770,
		-0.419637, -0.815316, 0.398955,
		29.486813, 37.088837, 57.125252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430067, 37.245693, 57.140812>,  <29.780558, 37.659557, 56.845985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430067, 37.245693, 57.140812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125340, 36.994537, 57.077080>,  <29.942503, 36.843845, 57.038841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125340, 36.994537, 57.077080>,  <30.430067, 37.245693, 57.140812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125340, 36.994537, 57.077080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600152, -0.591538, -0.538424,
		0.243819, -0.505806, 0.827474,
		-0.761820, -0.627888, -0.159332,
		29.896793, 36.806171, 57.029282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764069, 36.595737, 57.175480>,  <30.430067, 37.245693, 57.140812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764069, 36.595737, 57.175480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407139, 36.495934, 57.025013>,  <30.192982, 36.436050, 56.934731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407139, 36.495934, 57.025013>,  <30.764069, 36.595737, 57.175480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407139, 36.495934, 57.025013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420802, -0.761375, -0.493187,
		-0.163353, -0.598376, 0.784387,
		-0.892323, -0.249508, -0.376171,
		30.139442, 36.421082, 56.912163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715612, 35.922359, 57.301331>,  <30.764069, 36.595737, 57.175480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715612, 35.922359, 57.301331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453251, 35.964951, 57.002411>,  <30.295834, 35.990505, 56.823059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453251, 35.964951, 57.002411>,  <30.715612, 35.922359, 57.301331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453251, 35.964951, 57.002411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483598, -0.700878, -0.524312,
		-0.579590, -0.705290, 0.408217,
		-0.655903, 0.106473, -0.747298,
		30.256479, 35.996891, 56.778221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493885, 35.216827, 57.134792>,  <30.715612, 35.922359, 57.301331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493885, 35.216827, 57.134792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437271, 35.454117, 56.817791>,  <30.403303, 35.596489, 56.627590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437271, 35.454117, 56.817791>,  <30.493885, 35.216827, 57.134792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437271, 35.454117, 56.817791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627071, -0.565734, -0.535468,
		-0.765996, -0.572742, -0.291920,
		-0.141536, 0.593221, -0.792500,
		30.394810, 35.632084, 56.580040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397999, 34.785919, 56.656887>,  <30.493885, 35.216827, 57.134792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397999, 34.785919, 56.656887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473621, 35.115585, 56.443344>,  <30.518995, 35.313385, 56.315216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473621, 35.115585, 56.443344>,  <30.397999, 34.785919, 56.656887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473621, 35.115585, 56.443344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734152, -0.479685, -0.480544,
		-0.652134, -0.301085, -0.695751,
		0.189057, 0.824166, -0.533861,
		30.530338, 35.362835, 56.283184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250397, 34.706757, 55.866398>,  <30.397999, 34.785919, 56.656887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250397, 34.706757, 55.866398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533169, 34.986744, 55.906990>,  <30.702831, 35.154736, 55.931343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533169, 34.986744, 55.906990>,  <30.250397, 34.706757, 55.866398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533169, 34.986744, 55.906990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617012, -0.540185, -0.572273,
		-0.345757, 0.467168, -0.813760,
		0.706929, 0.699967, 0.101476,
		30.745247, 35.196735, 55.937431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.706402, 34.774170, 50.455982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.668434, 34.793541, 50.853706>,  <47.645653, 34.805164, 51.092339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.668434, 34.793541, 50.853706>,  <47.706402, 34.774170, 50.455982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.668434, 34.793541, 50.853706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995397, 0.008628, -0.095445,
		-0.013204, -0.998788, 0.047413,
		-0.094920, 0.048455, 0.994305,
		47.639957, 34.808071, 51.151997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.228386, 34.271866, 50.581425>,  <47.706402, 34.774170, 50.455982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.228386, 34.271866, 50.581425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.222481, 34.518593, 50.896214>,  <47.218937, 34.666630, 51.085087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.222481, 34.518593, 50.896214>,  <47.228386, 34.271866, 50.581425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.222481, 34.518593, 50.896214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986273, 0.120467, -0.112928,
		-0.164459, -0.777834, 0.606571,
		-0.014767, 0.616816, 0.786969,
		47.218052, 34.703636, 51.132305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754154, 33.980549, 51.010063>,  <47.228386, 34.271866, 50.581425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754154, 33.980549, 51.010063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.785793, 34.367996, 51.104321>,  <46.804779, 34.600464, 51.160877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.785793, 34.367996, 51.104321>,  <46.754154, 33.980549, 51.010063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.785793, 34.367996, 51.104321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989233, 0.105470, -0.101460,
		-0.123129, -0.225084, 0.966528,
		0.079102, 0.968614, 0.235647,
		46.809525, 34.658581, 51.175014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214821, 34.174984, 51.495628>,  <46.754154, 33.980549, 51.010063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214821, 34.174984, 51.495628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.309914, 34.534458, 51.348198>,  <46.366970, 34.750141, 51.259739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.309914, 34.534458, 51.348198>,  <46.214821, 34.174984, 51.495628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309914, 34.534458, 51.348198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958958, 0.156778, -0.236264,
		-0.154542, 0.409616, 0.899072,
		0.237732, 0.898685, -0.368576,
		46.381233, 34.804062, 51.237625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589020, 34.482845, 51.551857>,  <46.214821, 34.174984, 51.495628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589020, 34.482845, 51.551857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.781132, 34.752529, 51.327438>,  <45.896397, 34.914341, 51.192787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.781132, 34.752529, 51.327438>,  <45.589020, 34.482845, 51.551857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.781132, 34.752529, 51.327438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858853, 0.231636, -0.456855,
		-0.178060, 0.701271, 0.690299,
		0.480278, 0.674213, -0.561044,
		45.925217, 34.954792, 51.159126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084591, 35.024952, 51.463882>,  <45.589020, 34.482845, 51.551857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084591, 35.024952, 51.463882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.356159, 35.117710, 51.185230>,  <45.519100, 35.173363, 51.018040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.356159, 35.117710, 51.185230>,  <45.084591, 35.024952, 51.463882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356159, 35.117710, 51.185230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732695, 0.153038, -0.663127,
		-0.047164, 0.960627, 0.273808,
		0.678921, 0.231894, -0.696629,
		45.559837, 35.187279, 50.976242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787468, 35.592022, 51.232868>,  <45.084591, 35.024952, 51.463882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787468, 35.592022, 51.232868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.028111, 35.450752, 50.946278>,  <45.172497, 35.365990, 50.774323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.028111, 35.450752, 50.946278>,  <44.787468, 35.592022, 51.232868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028111, 35.450752, 50.946278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697620, 0.204603, -0.686633,
		0.389097, 0.912908, -0.123293,
		0.601607, -0.353179, -0.716473,
		45.208591, 35.344799, 50.731335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833576, 36.117115, 50.678814>,  <44.787468, 35.592022, 51.232868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833576, 36.117115, 50.678814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.922028, 35.764988, 50.510937>,  <44.975098, 35.553711, 50.410210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.922028, 35.764988, 50.510937>,  <44.833576, 36.117115, 50.678814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922028, 35.764988, 50.510937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761306, 0.113148, -0.638443,
		0.609521, 0.460691, -0.645172,
		0.221125, -0.880319, -0.419693,
		44.988365, 35.500893, 50.385029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.935413, 36.211082, 49.873634>,  <44.833576, 36.117115, 50.678814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.935413, 36.211082, 49.873634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.836044, 35.832756, 49.957275>,  <44.776421, 35.605762, 50.007462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.836044, 35.832756, 49.957275>,  <44.935413, 36.211082, 49.873634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836044, 35.832756, 49.957275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732526, 0.042193, -0.679430,
		0.633790, -0.321961, -0.703314,
		-0.248425, -0.945812, 0.209103,
		44.761517, 35.549011, 50.020008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817730, 35.864014, 49.156334>,  <44.935413, 36.211082, 49.873634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817730, 35.864014, 49.156334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.647839, 35.635765, 49.437477>,  <44.545906, 35.498817, 49.606163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.647839, 35.635765, 49.437477>,  <44.817730, 35.864014, 49.156334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647839, 35.635765, 49.437477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854278, -0.004396, -0.519797,
		0.299696, -0.821203, -0.485600,
		-0.424724, -0.570618, 0.702853,
		44.520420, 35.464581, 49.648335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483250, 35.311962, 48.812500>,  <44.817730, 35.864014, 49.156334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483250, 35.311962, 48.812500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.298431, 35.321983, 49.167099>,  <44.187538, 35.327995, 49.379860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.298431, 35.321983, 49.167099>,  <44.483250, 35.311962, 48.812500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298431, 35.321983, 49.167099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886745, -0.028756, -0.461363,
		0.013933, -0.999272, 0.035504,
		-0.462049, 0.025055, 0.886500,
		44.159817, 35.329498, 49.433048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953480, 34.829826, 48.753712>,  <44.483250, 35.311962, 48.812500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953480, 34.829826, 48.753712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.825535, 35.026340, 49.077766>,  <43.748768, 35.144249, 49.272198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.825535, 35.026340, 49.077766>,  <43.953480, 34.829826, 48.753712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.825535, 35.026340, 49.077766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947391, -0.176410, -0.267076,
		0.011704, -0.852944, 0.521871,
		-0.319864, 0.491290, 0.810137,
		43.729576, 35.173729, 49.320808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459202, 34.444805, 49.153172>,  <43.953480, 34.829826, 48.753712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459202, 34.444805, 49.153172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374859, 34.825474, 49.242489>,  <43.324253, 35.053875, 49.296078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.374859, 34.825474, 49.242489>,  <43.459202, 34.444805, 49.153172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.374859, 34.825474, 49.242489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949557, -0.145169, -0.277969,
		-0.232120, -0.270639, 0.934278,
		-0.210857, 0.951673, 0.223291,
		43.311604, 35.110977, 49.309475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965820, 34.444363, 49.597576>,  <43.459202, 34.444805, 49.153172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965820, 34.444363, 49.597576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924026, 34.820404, 49.467785>,  <42.898949, 35.046028, 49.389908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924026, 34.820404, 49.467785>,  <42.965820, 34.444363, 49.597576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924026, 34.820404, 49.467785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991400, -0.124306, -0.040910,
		-0.078795, 0.317417, 0.945007,
		-0.104485, 0.940104, -0.324482,
		42.892681, 35.102436, 49.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569530, 34.781002, 50.077362>,  <42.965820, 34.444363, 49.597576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569530, 34.781002, 50.077362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.539097, 34.980991, 49.732285>,  <42.520836, 35.100986, 49.525238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.539097, 34.980991, 49.732285>,  <42.569530, 34.781002, 50.077362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.539097, 34.980991, 49.732285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996587, -0.065930, 0.049681,
		-0.032038, 0.863525, 0.503287,
		-0.076083, 0.499977, -0.862690,
		42.516273, 35.130985, 49.473476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953999, 35.331360, 50.219517>,  <42.569530, 34.781002, 50.077362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953999, 35.331360, 50.219517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.005329, 35.314697, 49.823174>,  <42.036129, 35.304699, 49.585369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.005329, 35.314697, 49.823174>,  <41.953999, 35.331360, 50.219517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005329, 35.314697, 49.823174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983754, 0.121124, -0.132500,
		0.125535, 0.991763, -0.025433,
		0.128328, -0.041654, -0.990857,
		42.043827, 35.302200, 49.525917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544277, 35.911453, 49.924690>,  <41.953999, 35.331360, 50.219517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544277, 35.911453, 49.924690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608166, 35.634449, 49.643288>,  <41.646500, 35.468246, 49.474445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.608166, 35.634449, 49.643288>,  <41.544277, 35.911453, 49.924690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608166, 35.634449, 49.643288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986573, -0.087350, -0.138002,
		0.034117, 0.716101, -0.697162,
		0.159720, -0.692510, -0.703506,
		41.656082, 35.426697, 49.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252579, 36.024902, 49.430103>,  <41.544277, 35.911453, 49.924690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252579, 36.024902, 49.430103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292046, 35.641071, 49.324669>,  <41.315727, 35.410774, 49.261406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.292046, 35.641071, 49.324669>,  <41.252579, 36.024902, 49.430103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292046, 35.641071, 49.324669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963584, -0.025972, -0.266140,
		0.248536, 0.280248, -0.927195,
		0.098666, -0.959576, -0.263588,
		41.321644, 35.353199, 49.245594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679249, 35.888191, 49.001419>,  <41.252579, 36.024902, 49.430103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679249, 35.888191, 49.001419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.792477, 35.515820, 49.093719>,  <40.860413, 35.292397, 49.149097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.792477, 35.515820, 49.093719>,  <40.679249, 35.888191, 49.001419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792477, 35.515820, 49.093719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922679, -0.329990, -0.199424,
		0.261794, -0.156455, -0.952358,
		0.283068, -0.930929, 0.230748,
		40.877396, 35.236542, 49.162945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009373, 36.050140, 49.170212>,  <40.679249, 35.888191, 49.001419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009373, 36.050140, 49.170212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070339, 35.741814, 48.922791>,  <40.106918, 35.556816, 48.774338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070339, 35.741814, 48.922791>,  <40.009373, 36.050140, 49.170212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070339, 35.741814, 48.922791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988315, -0.117473, -0.097133,
		0.002209, 0.626128, -0.779717,
		0.152414, -0.770820, -0.618552,
		40.116062, 35.510567, 48.737225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696312, 36.230217, 48.530006>,  <40.009373, 36.050140, 49.170212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696312, 36.230217, 48.530006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681103, 35.834202, 48.584229>,  <39.671978, 35.596592, 48.616760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681103, 35.834202, 48.584229>,  <39.696312, 36.230217, 48.530006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681103, 35.834202, 48.584229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994650, 0.050534, 0.090094,
		-0.096047, -0.131405, -0.986665,
		-0.038021, -0.990040, 0.135556,
		39.669697, 35.537189, 48.624897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146801, 35.727619, 48.150642>,  <39.696312, 36.230217, 48.530006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146801, 35.727619, 48.150642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244156, 35.610394, 48.520481>,  <39.302570, 35.540058, 48.742382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244156, 35.610394, 48.520481>,  <39.146801, 35.727619, 48.150642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244156, 35.610394, 48.520481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966544, -0.152851, 0.205985,
		0.080958, -0.943795, -0.320464,
		0.243390, -0.293066, 0.924594,
		39.317173, 35.522472, 48.797859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781601, 34.989796, 48.077927>,  <39.146801, 35.727619, 48.150642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781601, 34.989796, 48.077927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840759, 35.151978, 48.438755>,  <38.876255, 35.249287, 48.655254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.840759, 35.151978, 48.438755>,  <38.781601, 34.989796, 48.077927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840759, 35.151978, 48.438755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977859, -0.076596, 0.194743,
		0.148054, -0.910902, 0.385146,
		0.147891, 0.405451, 0.902074,
		38.885128, 35.273613, 48.709377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424377, 34.524330, 47.540585>,  <38.781601, 34.989796, 48.077927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424377, 34.524330, 47.540585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557304, 34.255108, 47.276291>,  <38.637058, 34.093575, 47.117714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.557304, 34.255108, 47.276291>,  <38.424377, 34.524330, 47.540585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557304, 34.255108, 47.276291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705254, -0.642472, 0.299744,
		-0.626245, 0.366376, -0.688175,
		0.332314, -0.673052, -0.660733,
		38.656998, 34.053192, 47.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862865, 34.324562, 47.154339>,  <38.424377, 34.524330, 47.540585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862865, 34.324562, 47.154339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.099190, 34.007618, 47.093536>,  <38.240986, 33.817451, 47.057056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.099190, 34.007618, 47.093536>,  <37.862865, 34.324562, 47.154339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099190, 34.007618, 47.093536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766402, -0.610045, 0.201178,
		-0.252135, -0.002362, -0.967689,
		0.590809, -0.792363, -0.152003,
		38.276432, 33.769909, 47.047935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484211, 33.926327, 46.688000>,  <37.862865, 34.324562, 47.154339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484211, 33.926327, 46.688000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742146, 33.686707, 46.877876>,  <37.896904, 33.542934, 46.991802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.742146, 33.686707, 46.877876>,  <37.484211, 33.926327, 46.688000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742146, 33.686707, 46.877876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748920, -0.619270, 0.235848,
		0.152676, -0.507586, -0.847966,
		0.644833, -0.599050, 0.474689,
		37.935596, 33.506992, 47.020283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452896, 33.189743, 46.392498>,  <37.484211, 33.926327, 46.688000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452896, 33.189743, 46.392498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613190, 33.153938, 46.757221>,  <37.709366, 33.132458, 46.976055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613190, 33.153938, 46.757221>,  <37.452896, 33.189743, 46.392498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613190, 33.153938, 46.757221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627948, -0.751528, 0.202205,
		0.667152, -0.653601, -0.357370,
		0.400735, -0.089508, 0.911811,
		37.733410, 33.127087, 47.030766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387638, 32.546913, 46.516441>,  <37.452896, 33.189743, 46.392498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387638, 32.546913, 46.516441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447655, 32.675289, 46.890495>,  <37.483665, 32.752316, 47.114929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.447655, 32.675289, 46.890495>,  <37.387638, 32.546913, 46.516441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447655, 32.675289, 46.890495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615835, -0.709609, 0.342348,
		0.773456, -0.627258, 0.091174,
		0.150043, 0.320939, 0.935139,
		37.492668, 32.771572, 47.171036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461277, 31.982218, 46.847355>,  <37.387638, 32.546913, 46.516441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461277, 31.982218, 46.847355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346405, 32.250618, 47.120789>,  <37.277481, 32.411659, 47.284847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.346405, 32.250618, 47.120789>,  <37.461277, 31.982218, 46.847355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346405, 32.250618, 47.120789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704427, -0.631527, 0.323970,
		0.649085, -0.388498, 0.654032,
		-0.287177, 0.671002, 0.683583,
		37.260250, 32.451920, 47.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298435, 31.569912, 47.443390>,  <37.461277, 31.982218, 46.847355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298435, 31.569912, 47.443390> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102623, 31.911007, 47.516273>,  <36.985134, 32.115662, 47.560005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.102623, 31.911007, 47.516273>,  <37.298435, 31.569912, 47.443390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102623, 31.911007, 47.516273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825555, -0.520512, 0.218007,
		0.280744, -0.043701, 0.958787,
		-0.489533, 0.852735, 0.182208,
		36.955765, 32.166828, 47.570934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007965, 31.390291, 48.032566>,  <37.298435, 31.569912, 47.443390>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007965, 31.390291, 48.032566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791561, 31.687006, 47.874043>,  <36.661716, 31.865034, 47.778931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.791561, 31.687006, 47.874043>,  <37.007965, 31.390291, 48.032566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791561, 31.687006, 47.874043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840994, -0.480457, 0.248776,
		-0.005869, 0.467881, 0.883772,
		-0.541012, 0.741787, -0.396305,
		36.629257, 31.909542, 47.755150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568596, 31.724602, 48.494736>,  <37.007965, 31.390291, 48.032566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568596, 31.724602, 48.494736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374718, 31.858511, 48.171501>,  <36.258392, 31.938856, 47.977562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.374718, 31.858511, 48.171501>,  <36.568596, 31.724602, 48.494736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374718, 31.858511, 48.171501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811655, -0.516490, 0.272863,
		-0.326021, 0.788140, 0.522059,
		-0.484692, 0.334773, -0.808084,
		36.229309, 31.958942, 47.929077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888206, 31.889080, 48.728771>,  <36.568596, 31.724602, 48.494736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888206, 31.889080, 48.728771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819714, 31.869034, 48.335190>,  <35.778618, 31.857006, 48.099041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.819714, 31.869034, 48.335190>,  <35.888206, 31.889080, 48.728771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819714, 31.869034, 48.335190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889711, -0.421117, 0.176278,
		-0.423195, 0.905621, 0.027518,
		-0.171229, -0.050117, -0.983956,
		35.768345, 31.853998, 48.040005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187721, 32.074535, 48.712803>,  <35.888206, 31.889080, 48.728771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187721, 32.074535, 48.712803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281414, 31.879057, 48.376633>,  <35.337631, 31.761768, 48.174931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.281414, 31.879057, 48.376633>,  <35.187721, 32.074535, 48.712803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281414, 31.879057, 48.376633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924737, -0.378757, -0.037485,
		-0.299997, 0.785949, -0.540635,
		0.234231, -0.488700, -0.840422,
		35.351685, 31.732447, 48.124508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532768, 32.049679, 48.501617>,  <35.187721, 32.074535, 48.712803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532768, 32.049679, 48.501617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.717670, 31.768908, 48.284874>,  <34.828613, 31.600445, 48.154827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.717670, 31.768908, 48.284874>,  <34.532768, 32.049679, 48.501617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717670, 31.768908, 48.284874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864076, -0.493849, -0.097395,
		-0.199232, 0.513230, -0.834806,
		0.462254, -0.701932, -0.541860,
		34.856346, 31.558329, 48.122314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.628435, 32.618790, 51.222862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877657, 32.793137, 51.482655>,  <31.027189, 32.897743, 51.638531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.877657, 32.793137, 51.482655>,  <30.628435, 32.618790, 51.222862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877657, 32.793137, 51.482655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696688, -0.686712, -0.207491,
		0.355567, 0.581764, -0.731521,
		0.623055, 0.435865, 0.649480,
		31.064573, 32.923897, 51.677498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252922, 32.685936, 50.873558>,  <30.628435, 32.618790, 51.222862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252922, 32.685936, 50.873558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350088, 32.711887, 51.260708>,  <31.408388, 32.727459, 51.492996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.350088, 32.711887, 51.260708>,  <31.252922, 32.685936, 50.873558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350088, 32.711887, 51.260708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826999, -0.535352, -0.171673,
		0.507016, 0.842134, -0.183699,
		0.242915, 0.064878, 0.967876,
		31.422962, 32.731350, 51.551071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797152, 33.098877, 50.843872>,  <31.252922, 32.685936, 50.873558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797152, 33.098877, 50.843872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815420, 32.877678, 51.176643>,  <31.826382, 32.744961, 51.376308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.815420, 32.877678, 51.176643>,  <31.797152, 33.098877, 50.843872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815420, 32.877678, 51.176643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735241, -0.545175, -0.402746,
		0.676265, 0.630065, 0.381686,
		0.045670, -0.552994, 0.831933,
		31.829121, 32.711781, 51.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436218, 33.233742, 51.099815>,  <31.797152, 33.098877, 50.843872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436218, 33.233742, 51.099815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279041, 32.884426, 51.215027>,  <32.184734, 32.674835, 51.284153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.279041, 32.884426, 51.215027>,  <32.436218, 33.233742, 51.099815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279041, 32.884426, 51.215027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717783, -0.487068, -0.497546,
		0.574793, 0.011238, 0.818222,
		-0.392938, -0.873292, 0.288029,
		32.161160, 32.622440, 51.301437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016376, 32.800285, 51.055332>,  <32.436218, 33.233742, 51.099815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016376, 32.800285, 51.055332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717735, 32.540859, 51.114594>,  <32.538551, 32.385204, 51.150150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.717735, 32.540859, 51.114594>,  <33.016376, 32.800285, 51.055332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717735, 32.540859, 51.114594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534608, -0.717446, -0.446617,
		0.395949, -0.254244, 0.882375,
		-0.746605, -0.648561, 0.148151,
		32.493755, 32.346291, 51.159039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349335, 32.246918, 51.308666>,  <33.016376, 32.800285, 51.055332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349335, 32.246918, 51.308666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007797, 32.137531, 51.131504>,  <32.802876, 32.071899, 51.025208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.007797, 32.137531, 51.131504>,  <33.349335, 32.246918, 51.308666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007797, 32.137531, 51.131504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477996, -0.748785, -0.459174,
		-0.206071, -0.603770, 0.770063,
		-0.853847, -0.273464, -0.442902,
		32.751644, 32.055492, 50.998634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149635, 31.539436, 51.303677>,  <33.349335, 32.246918, 51.308666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149635, 31.539436, 51.303677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970409, 31.700941, 50.984627>,  <32.862873, 31.797844, 50.793198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970409, 31.700941, 50.984627>,  <33.149635, 31.539436, 51.303677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970409, 31.700941, 50.984627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468256, -0.654034, -0.594117,
		-0.761558, -0.639700, 0.103988,
		-0.448068, 0.403762, -0.797629,
		32.835987, 31.822069, 50.745338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791096, 30.983732, 50.943066>,  <33.149635, 31.539436, 51.303677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791096, 30.983732, 50.943066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843948, 31.294130, 50.696369>,  <32.875660, 31.480370, 50.548351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843948, 31.294130, 50.696369>,  <32.791096, 30.983732, 50.943066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843948, 31.294130, 50.696369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526054, -0.582242, -0.619888,
		-0.840125, -0.242537, -0.485146,
		0.132127, 0.775996, -0.616744,
		32.883587, 31.526930, 50.511345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016506, 30.660244, 50.424007>,  <32.791096, 30.983732, 50.943066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016506, 30.660244, 50.424007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081844, 31.037912, 50.309563>,  <33.121048, 31.264513, 50.240894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.081844, 31.037912, 50.309563>,  <33.016506, 30.660244, 50.424007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081844, 31.037912, 50.309563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746186, -0.307952, -0.590231,
		-0.645387, -0.117081, -0.754830,
		0.163347, 0.944170, -0.286112,
		33.130848, 31.321163, 50.223728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138069, 30.601793, 49.673569>,  <33.016506, 30.660244, 50.424007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138069, 30.601793, 49.673569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243809, 30.984756, 49.720024>,  <33.307255, 31.214535, 49.747898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243809, 30.984756, 49.720024>,  <33.138069, 30.601793, 49.673569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243809, 30.984756, 49.720024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683024, -0.100838, -0.723401,
		-0.680879, 0.270559, -0.680589,
		0.264353, 0.957408, 0.116140,
		33.323116, 31.271978, 49.754868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124889, 30.961409, 48.945072>,  <33.138069, 30.601793, 49.673569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124889, 30.961409, 48.945072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377033, 31.152180, 49.190083>,  <33.528320, 31.266644, 49.337090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.377033, 31.152180, 49.190083>,  <33.124889, 30.961409, 48.945072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377033, 31.152180, 49.190083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671210, 0.061582, -0.738705,
		-0.390031, 0.876782, -0.281301,
		0.630360, 0.476929, 0.612523,
		33.566143, 31.295258, 49.373840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316547, 31.587471, 48.591034>,  <33.124889, 30.961409, 48.945072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316547, 31.587471, 48.591034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596619, 31.514297, 48.867088>,  <33.764660, 31.470394, 49.032722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596619, 31.514297, 48.867088>,  <33.316547, 31.587471, 48.591034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596619, 31.514297, 48.867088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685208, -0.099425, -0.721529,
		0.200608, 0.978085, 0.055732,
		0.700176, -0.182933, 0.690137,
		33.806671, 31.459417, 49.074131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736027, 31.762653, 48.094746>,  <33.316547, 31.587471, 48.591034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736027, 31.762653, 48.094746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063717, 31.880489, 47.897934>,  <33.260330, 31.951191, 47.779846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.063717, 31.880489, 47.897934>,  <32.736027, 31.762653, 48.094746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063717, 31.880489, 47.897934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323808, 0.945735, 0.027097,
		0.473308, 0.137123, 0.870159,
		0.819224, 0.294590, -0.492025,
		33.309483, 31.968866, 47.750328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052601, 32.347168, 48.482811>,  <32.736027, 31.762653, 48.094746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052601, 32.347168, 48.482811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120663, 32.350883, 48.088661>,  <33.161499, 32.353115, 47.852173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120663, 32.350883, 48.088661>,  <33.052601, 32.347168, 48.482811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120663, 32.350883, 48.088661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452575, 0.888993, -0.069768,
		0.875342, 0.457827, 0.155472,
		0.170155, 0.009292, -0.985373,
		33.171711, 32.353672, 47.793049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513020, 32.893677, 48.377056>,  <33.052601, 32.347168, 48.482811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513020, 32.893677, 48.377056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307217, 32.813393, 48.043591>,  <33.183735, 32.765224, 47.843510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.307217, 32.813393, 48.043591>,  <33.513020, 32.893677, 48.377056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307217, 32.813393, 48.043591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325253, 0.945246, -0.026835,
		0.793404, 0.257345, -0.551618,
		-0.514509, -0.200706, -0.833665,
		33.152863, 32.753181, 47.793491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553814, 33.462856, 48.108131>,  <33.513020, 32.893677, 48.377056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553814, 33.462856, 48.108131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240852, 33.323627, 47.901562>,  <33.053074, 33.240089, 47.777622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.240852, 33.323627, 47.901562>,  <33.553814, 33.462856, 48.108131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240852, 33.323627, 47.901562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464257, 0.878701, 0.111128,
		0.415100, 0.326699, -0.849093,
		-0.782405, -0.348068, -0.516421,
		33.006130, 33.219208, 47.746635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350845, 34.024910, 47.643688>,  <33.553814, 33.462856, 48.108131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350845, 34.024910, 47.643688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034962, 33.780464, 47.622181>,  <32.845432, 33.633797, 47.609276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.034962, 33.780464, 47.622181>,  <33.350845, 34.024910, 47.643688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034962, 33.780464, 47.622181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589041, 0.779824, -0.211909,
		0.171430, -0.135675, -0.975809,
		-0.789710, -0.611119, -0.053767,
		32.798050, 33.597130, 47.606052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949406, 34.162216, 47.042877>,  <33.350845, 34.024910, 47.643688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949406, 34.162216, 47.042877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677773, 33.982262, 47.274891>,  <32.514793, 33.874290, 47.414101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.677773, 33.982262, 47.274891>,  <32.949406, 34.162216, 47.042877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677773, 33.982262, 47.274891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633994, 0.757739, -0.154543,
		-0.369991, -0.472689, -0.799794,
		-0.679086, -0.449885, 0.580039,
		32.474045, 33.847298, 47.448902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250767, 34.150497, 46.641983>,  <32.949406, 34.162216, 47.042877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250767, 34.150497, 46.641983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195976, 34.123798, 47.037312>,  <32.163101, 34.107780, 47.274509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195976, 34.123798, 47.037312>,  <32.250767, 34.150497, 46.641983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195976, 34.123798, 47.037312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654153, 0.755322, -0.039654,
		-0.743856, -0.651946, -0.147122,
		-0.136976, -0.066743, 0.988324,
		32.154884, 34.103775, 47.333809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674038, 34.431427, 46.642830>,  <32.250767, 34.150497, 46.641983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674038, 34.431427, 46.642830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753777, 34.424992, 47.034748>,  <31.801620, 34.421131, 47.269897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.753777, 34.424992, 47.034748>,  <31.674038, 34.431427, 46.642830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753777, 34.424992, 47.034748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436683, 0.893639, 0.103523,
		-0.877250, -0.448498, 0.171118,
		0.199348, -0.016091, 0.979797,
		31.813581, 34.420166, 47.328686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035181, 34.350166, 46.993477>,  <31.674038, 34.431427, 46.642830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035181, 34.350166, 46.993477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299356, 34.534397, 47.230694>,  <31.457861, 34.644936, 47.373024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.299356, 34.534397, 47.230694>,  <31.035181, 34.350166, 46.993477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299356, 34.534397, 47.230694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626030, 0.773844, 0.096186,
		-0.414619, -0.434784, 0.799408,
		0.660438, 0.460573, 0.593039,
		31.497488, 34.672569, 47.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628332, 34.623356, 47.586349>,  <31.035181, 34.350166, 46.993477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628332, 34.623356, 47.586349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972788, 34.825176, 47.561462>,  <31.179461, 34.946270, 47.546532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.972788, 34.825176, 47.561462>,  <30.628332, 34.623356, 47.586349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972788, 34.825176, 47.561462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488995, 0.855553, 0.170038,
		0.139022, -0.116002, 0.983472,
		0.861137, 0.504551, -0.062216,
		31.231129, 34.976543, 47.542797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582359, 35.135826, 47.983643>,  <30.628332, 34.623356, 47.586349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582359, 35.135826, 47.983643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.920156, 35.269756, 47.816441>,  <31.122835, 35.350113, 47.716118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.920156, 35.269756, 47.816441>,  <30.582359, 35.135826, 47.983643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920156, 35.269756, 47.816441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273284, 0.940629, 0.201328,
		0.460597, -0.055786, 0.885854,
		0.844491, 0.334821, -0.418006,
		31.173504, 35.370201, 47.691040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856167, 35.639668, 48.487091>,  <30.582359, 35.135826, 47.983643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856167, 35.639668, 48.487091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991274, 35.753819, 48.128323>,  <31.072338, 35.822308, 47.913059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991274, 35.753819, 48.128323>,  <30.856167, 35.639668, 48.487091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991274, 35.753819, 48.128323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334764, 0.927042, 0.168892,
		0.879685, 0.243212, 0.408659,
		0.337768, 0.285376, -0.896924,
		31.092604, 35.839432, 47.859245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155788, 36.297729, 48.613373>,  <30.856167, 35.639668, 48.487091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155788, 36.297729, 48.613373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111891, 36.306835, 48.215893>,  <31.085552, 36.312298, 47.977406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111891, 36.306835, 48.215893>,  <31.155788, 36.297729, 48.613373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111891, 36.306835, 48.215893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316266, 0.946979, 0.056622,
		0.942302, 0.320488, -0.096725,
		-0.109743, 0.022764, -0.993699,
		31.078968, 36.313663, 47.917782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494986, 36.883156, 48.289677>,  <31.155788, 36.297729, 48.613373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494986, 36.883156, 48.289677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199083, 36.794285, 48.035622>,  <31.021542, 36.740963, 47.883190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199083, 36.794285, 48.035622>,  <31.494986, 36.883156, 48.289677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199083, 36.794285, 48.035622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402136, 0.902779, 0.152568,
		0.539491, 0.368275, -0.757181,
		-0.739754, -0.222181, -0.635137,
		30.977158, 36.727631, 47.845081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460033, 37.422535, 47.817772>,  <31.494986, 36.883156, 48.289677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460033, 37.422535, 47.817772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096476, 37.255821, 47.823467>,  <30.878342, 37.155792, 47.826885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.096476, 37.255821, 47.823467>,  <31.460033, 37.422535, 47.817772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096476, 37.255821, 47.823467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411161, 0.901294, 0.136438,
		-0.069695, 0.118155, -0.990546,
		-0.908894, -0.416783, 0.014234,
		30.823807, 37.130787, 47.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971674, 38.091431, 47.643475>,  <31.460033, 37.422535, 47.817772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971674, 38.091431, 47.643475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.721987, 37.802624, 47.762840>,  <30.572174, 37.629341, 47.834457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.721987, 37.802624, 47.762840>,  <30.971674, 38.091431, 47.643475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721987, 37.802624, 47.762840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689195, 0.688793, 0.224889,
		-0.367917, -0.065285, -0.927564,
		-0.624218, -0.722013, 0.298413,
		30.534721, 37.586021, 47.852364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132046, 38.644268, 47.333378>,  <30.971674, 38.091431, 47.643475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132046, 38.644268, 47.333378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362587, 38.921043, 47.507290>,  <31.500912, 39.087109, 47.611637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.362587, 38.921043, 47.507290>,  <31.132046, 38.644268, 47.333378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362587, 38.921043, 47.507290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800413, -0.370691, -0.471091,
		-0.164798, 0.619519, -0.767488,
		0.576351, 0.691943, 0.434781,
		31.535492, 39.128628, 47.637726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587305, 38.789330, 46.848675>,  <31.132046, 38.644268, 47.333378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587305, 38.789330, 46.848675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.768080, 38.924084, 47.179073>,  <31.876545, 39.004936, 47.377312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.768080, 38.924084, 47.179073>,  <31.587305, 38.789330, 46.848675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.768080, 38.924084, 47.179073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888145, -0.083379, -0.451935,
		-0.083379, 0.937847, -0.336884,
		0.451935, 0.336884, 0.825992,
		31.903660, 39.025150, 47.426872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147774, 39.279209, 46.580288>,  <31.587305, 38.789330, 46.848675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147774, 39.279209, 46.580288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231785, 39.125057, 46.939705>,  <32.282192, 39.032566, 47.155354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.231785, 39.125057, 46.939705>,  <32.147774, 39.279209, 46.580288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231785, 39.125057, 46.939705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960810, -0.088708, -0.262630,
		0.180920, 0.918485, 0.351644,
		0.210028, -0.385378, 0.898539,
		32.294792, 39.009445, 47.209267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869797, 39.388737, 46.725712>,  <32.147774, 39.279209, 46.580288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869797, 39.388737, 46.725712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781471, 39.117607, 47.006226>,  <32.728474, 38.954929, 47.174534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.781471, 39.117607, 47.006226>,  <32.869797, 39.388737, 46.725712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781471, 39.117607, 47.006226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834517, -0.503461, -0.223851,
		0.504798, 0.535800, 0.676829,
		-0.220818, -0.677824, 0.701280,
		32.715225, 38.914261, 47.216610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415909, 39.448792, 47.128288>,  <32.869797, 39.388737, 46.725712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415909, 39.448792, 47.128288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251427, 39.096481, 47.222214>,  <33.152737, 38.885094, 47.278568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.251427, 39.096481, 47.222214>,  <33.415909, 39.448792, 47.128288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251427, 39.096481, 47.222214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911543, -0.397254, 0.106207,
		-0.000263, 0.257718, 0.966220,
		-0.411206, -0.880779, 0.234816,
		33.128063, 38.832249, 47.292660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836216, 39.130848, 47.645203>,  <33.415909, 39.448792, 47.128288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836216, 39.130848, 47.645203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651966, 38.812721, 47.487572>,  <33.541416, 38.621845, 47.392994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.651966, 38.812721, 47.487572>,  <33.836216, 39.130848, 47.645203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651966, 38.812721, 47.487572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873477, -0.485046, -0.042061,
		-0.157692, -0.363589, 0.918115,
		-0.460621, -0.795320, -0.394075,
		33.513779, 38.574127, 47.369350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126556, 38.526260, 47.948315>,  <33.836216, 39.130848, 47.645203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126556, 38.526260, 47.948315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952488, 38.406750, 47.608585>,  <33.848045, 38.335045, 47.404747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.952488, 38.406750, 47.608585>,  <34.126556, 38.526260, 47.948315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952488, 38.406750, 47.608585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735965, -0.661438, -0.144410,
		-0.518630, -0.687918, 0.507731,
		-0.435176, -0.298777, -0.849326,
		33.821934, 38.317116, 47.353786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230442, 37.809433, 48.008759>,  <34.126556, 38.526260, 47.948315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230442, 37.809433, 48.008759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176636, 37.910667, 47.625542>,  <34.144352, 37.971409, 47.395611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.176636, 37.910667, 47.625542>,  <34.230442, 37.809433, 48.008759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176636, 37.910667, 47.625542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754790, -0.600255, -0.264547,
		-0.642026, -0.758708, -0.110288,
		-0.134513, 0.253090, -0.958046,
		34.136280, 37.986595, 47.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189941, 37.215061, 47.732998>,  <34.230442, 37.809433, 48.008759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189941, 37.215061, 47.732998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273266, 37.457672, 47.426083>,  <34.323261, 37.603241, 47.241936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273266, 37.457672, 47.426083>,  <34.189941, 37.215061, 47.732998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273266, 37.457672, 47.426083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755378, -0.598108, -0.267716,
		-0.621297, -0.523821, -0.582753,
		0.208314, 0.606530, -0.767285,
		34.335758, 37.639629, 47.195896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370075, 36.798252, 47.246975>,  <34.189941, 37.215061, 47.732998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370075, 36.798252, 47.246975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539665, 37.119991, 47.080475>,  <34.641418, 37.313034, 46.980576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539665, 37.119991, 47.080475>,  <34.370075, 36.798252, 47.246975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539665, 37.119991, 47.080475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695950, -0.583463, -0.418598,
		-0.579566, -0.112212, -0.807163,
		0.423978, 0.804350, -0.416249,
		34.666859, 37.361298, 46.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536510, 36.593895, 46.547935>,  <34.370075, 36.798252, 47.246975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536510, 36.593895, 46.547935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764492, 36.910461, 46.636314>,  <34.901279, 37.100403, 46.689342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.764492, 36.910461, 46.636314>,  <34.536510, 36.593895, 46.547935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764492, 36.910461, 46.636314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799500, -0.472083, -0.371400,
		-0.189626, 0.388327, -0.901800,
		0.569949, 0.791416, 0.220949,
		34.935478, 37.147888, 46.702599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977100, 36.777103, 45.916199>,  <34.536510, 36.593895, 46.547935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977100, 36.777103, 45.916199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.178673, 36.885422, 46.244278>,  <35.299618, 36.950413, 46.441124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.178673, 36.885422, 46.244278>,  <34.977100, 36.777103, 45.916199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178673, 36.885422, 46.244278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841031, -0.370163, -0.394519,
		0.196773, 0.888622, -0.414284,
		0.503931, 0.270795, 0.820197,
		35.329853, 36.966660, 46.490337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.135658, 41.575611, 52.300678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790167, 41.666206, 52.120602>,  <29.582872, 41.720566, 52.012554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790167, 41.666206, 52.120602>,  <30.135658, 41.575611, 52.300678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790167, 41.666206, 52.120602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291593, -0.503990, -0.812999,
		-0.411028, -0.833485, 0.369269,
		-0.863730, 0.226489, -0.450192,
		29.531048, 41.734154, 51.985542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819305, 40.913433, 51.979366>,  <30.135658, 41.575611, 52.300678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819305, 40.913433, 51.979366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658112, 41.233009, 51.800797>,  <29.561396, 41.424755, 51.693653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.658112, 41.233009, 51.800797>,  <29.819305, 40.913433, 51.979366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658112, 41.233009, 51.800797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134572, -0.430758, -0.892378,
		-0.905258, -0.419692, 0.066074,
		-0.402986, 0.798941, -0.446426,
		29.537216, 41.472691, 51.666870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233776, 40.650742, 51.594471>,  <29.819305, 40.913433, 51.979366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233776, 40.650742, 51.594471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374895, 40.997417, 51.453396>,  <29.459566, 41.205421, 51.368752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374895, 40.997417, 51.453396>,  <29.233776, 40.650742, 51.594471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374895, 40.997417, 51.453396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057258, -0.396217, -0.916370,
		-0.933946, 0.303099, -0.189409,
		0.352798, 0.866685, -0.352690,
		29.480734, 41.257423, 51.347588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890871, 40.726715, 50.806034>,  <29.233776, 40.650742, 51.594471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890871, 40.726715, 50.806034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180830, 41.000938, 50.832958>,  <29.354805, 41.165474, 50.849113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.180830, 41.000938, 50.832958>,  <28.890871, 40.726715, 50.806034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.180830, 41.000938, 50.832958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276004, -0.199528, -0.940218,
		-0.631144, 0.700142, -0.333854,
		0.724900, 0.685558, 0.067311,
		29.398300, 41.206604, 50.853153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900352, 41.060562, 50.097679>,  <28.890871, 40.726715, 50.806034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900352, 41.060562, 50.097679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248100, 41.182400, 50.253330>,  <29.456749, 41.255501, 50.346722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.248100, 41.182400, 50.253330>,  <28.900352, 41.060562, 50.097679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248100, 41.182400, 50.253330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464356, -0.234197, -0.854123,
		-0.169025, 0.923243, -0.345042,
		0.869370, 0.304590, 0.389128,
		29.508911, 41.273777, 50.370068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126318, 41.649773, 49.709301>,  <28.900352, 41.060562, 50.097679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126318, 41.649773, 49.709301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445665, 41.492195, 49.891472>,  <29.637274, 41.397648, 50.000774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445665, 41.492195, 49.891472>,  <29.126318, 41.649773, 49.709301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445665, 41.492195, 49.891472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470270, -0.064485, -0.880164,
		0.376101, 0.916871, 0.133776,
		0.798369, -0.393941, 0.455430,
		29.685177, 41.374012, 50.028099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721891, 41.848347, 49.303841>,  <29.126318, 41.649773, 49.709301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721891, 41.848347, 49.303841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844324, 41.539330, 49.526367>,  <29.917784, 41.353920, 49.659885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.844324, 41.539330, 49.526367>,  <29.721891, 41.848347, 49.303841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844324, 41.539330, 49.526367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556624, -0.328848, -0.762908,
		0.772323, 0.543174, 0.329361,
		0.306082, -0.772542, 0.556321,
		29.936148, 41.307568, 49.693264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459446, 41.802464, 49.077995>,  <29.721891, 41.848347, 49.303841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459446, 41.802464, 49.077995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359720, 41.462105, 49.262959>,  <30.299885, 41.257889, 49.373936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359720, 41.462105, 49.262959>,  <30.459446, 41.802464, 49.077995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359720, 41.462105, 49.262959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576934, -0.514007, -0.634779,
		0.777812, 0.108522, 0.619058,
		-0.249312, -0.850894, 0.462410,
		30.284927, 41.206837, 49.401680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082815, 41.395950, 49.189514>,  <30.459446, 41.802464, 49.077995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082815, 41.395950, 49.189514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781773, 41.132767, 49.199894>,  <30.601147, 40.974857, 49.206120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.781773, 41.132767, 49.199894>,  <31.082815, 41.395950, 49.189514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781773, 41.132767, 49.199894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489750, -0.585665, -0.645865,
		0.440150, -0.473374, 0.763011,
		-0.752604, -0.657962, 0.025946,
		30.555992, 40.935379, 49.207676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433022, 40.763912, 49.150936>,  <31.082815, 41.395950, 49.189514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433022, 40.763912, 49.150936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062412, 40.677933, 49.027420>,  <30.840048, 40.626343, 48.953308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.062412, 40.677933, 49.027420>,  <31.433022, 40.763912, 49.150936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062412, 40.677933, 49.027420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370530, -0.663752, -0.649723,
		-0.065304, -0.716400, 0.694627,
		-0.926522, -0.214951, -0.308793,
		30.784456, 40.613449, 48.934780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505112, 40.049549, 49.202770>,  <31.433022, 40.763912, 49.150936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505112, 40.049549, 49.202770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207151, 40.155788, 48.957958>,  <31.028376, 40.219532, 48.811073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207151, 40.155788, 48.957958>,  <31.505112, 40.049549, 49.202770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207151, 40.155788, 48.957958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272337, -0.716390, -0.642354,
		-0.609060, -0.645167, 0.461307,
		-0.744901, 0.265601, -0.612027,
		30.983681, 40.235470, 48.774349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040165, 39.493309, 49.133312>,  <31.505112, 40.049549, 49.202770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040165, 39.493309, 49.133312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001293, 39.725967, 48.810265>,  <30.977970, 39.865562, 48.616436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001293, 39.725967, 48.810265>,  <31.040165, 39.493309, 49.133312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001293, 39.725967, 48.810265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414197, -0.714212, -0.564218,
		-0.904984, -0.389342, -0.171510,
		-0.097179, 0.581647, -0.807615,
		30.972139, 39.900463, 48.567982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982038, 38.946316, 48.622715>,  <31.040165, 39.493309, 49.133312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982038, 38.946316, 48.622715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.036491, 39.289009, 48.423725>,  <31.069162, 39.494625, 48.304333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.036491, 39.289009, 48.423725>,  <30.982038, 38.946316, 48.622715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036491, 39.289009, 48.423725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612836, -0.467367, -0.637182,
		-0.778396, -0.218129, -0.588659,
		0.136132, 0.856731, -0.497474,
		31.077332, 39.546028, 48.274483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807653, 38.835564, 47.956867>,  <30.982038, 38.946316, 48.622715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807653, 38.835564, 47.956867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.064934, 39.141605, 47.944855>,  <31.219303, 39.325230, 47.937649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.064934, 39.141605, 47.944855>,  <30.807653, 38.835564, 47.956867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064934, 39.141605, 47.944855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579806, -0.512292, -0.633547,
		-0.500115, 0.390087, -0.773121,
		0.643202, 0.765107, -0.030030,
		31.257895, 39.371136, 47.935844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302134, 38.385479, 47.614655>,  <30.807653, 38.835564, 47.956867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302134, 38.385479, 47.614655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204830, 38.066925, 47.836140>,  <30.146448, 37.875793, 47.969028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.204830, 38.066925, 47.836140>,  <30.302134, 38.385479, 47.614655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.204830, 38.066925, 47.836140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852181, 0.448121, 0.270139,
		-0.463264, -0.406147, -0.787675,
		-0.243257, -0.796387, 0.553709,
		30.131853, 37.828011, 48.002251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566031, 38.268929, 47.459499>,  <30.302134, 38.385479, 47.614655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566031, 38.268929, 47.459499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645271, 38.087574, 47.807106>,  <29.692816, 37.978760, 48.015671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.645271, 38.087574, 47.807106>,  <29.566031, 38.268929, 47.459499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645271, 38.087574, 47.807106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844978, 0.370332, 0.385832,
		-0.496758, -0.810735, -0.309742,
		0.198100, -0.453391, 0.869018,
		29.704700, 37.951557, 48.067810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908581, 38.107243, 47.810760>,  <29.566031, 38.268929, 47.459499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908581, 38.107243, 47.810760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138218, 38.043236, 48.131962>,  <29.276001, 38.004829, 48.324680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138218, 38.043236, 48.131962>,  <28.908581, 38.107243, 47.810760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138218, 38.043236, 48.131962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757383, 0.268850, 0.595055,
		-0.311108, -0.949796, 0.033149,
		0.574093, -0.160020, 0.803001,
		29.310446, 37.995232, 48.372864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542311, 37.657291, 48.302219>,  <28.908581, 38.107243, 47.810760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542311, 37.657291, 48.302219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802612, 37.872723, 48.516304>,  <28.958794, 38.001984, 48.644756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802612, 37.872723, 48.516304>,  <28.542311, 37.657291, 48.302219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802612, 37.872723, 48.516304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691822, 0.130105, 0.710250,
		0.312894, -0.832468, 0.457269,
		0.650753, 0.538581, 0.535210,
		28.997839, 38.034298, 48.676868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633499, 37.425053, 48.975163>,  <28.542311, 37.657291, 48.302219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633499, 37.425053, 48.975163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706724, 37.817894, 48.992859>,  <28.750660, 38.053600, 49.003479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.706724, 37.817894, 48.992859>,  <28.633499, 37.425053, 48.975163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706724, 37.817894, 48.992859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741346, 0.108349, 0.662319,
		0.645673, -0.154045, 0.747915,
		0.183062, 0.982105, 0.044243,
		28.761642, 38.112526, 49.006130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419258, 37.551991, 49.661491>,  <28.633499, 37.425053, 48.975163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419258, 37.551991, 49.661491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454590, 37.905121, 49.476963>,  <28.475788, 38.117001, 49.366245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.454590, 37.905121, 49.476963>,  <28.419258, 37.551991, 49.661491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454590, 37.905121, 49.476963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557376, 0.427641, 0.711656,
		0.825548, 0.194268, 0.529840,
		0.088329, 0.882827, -0.461319,
		28.481089, 38.169968, 49.338566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517717, 37.988327, 50.162388>,  <28.419258, 37.551991, 49.661491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517717, 37.988327, 50.162388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342999, 38.202904, 49.873547>,  <28.238167, 38.331650, 49.700241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.342999, 38.202904, 49.873547>,  <28.517717, 37.988327, 50.162388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342999, 38.202904, 49.873547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600970, 0.423290, 0.677983,
		0.669359, 0.730105, 0.137494,
		-0.436799, 0.536443, -0.722104,
		28.211958, 38.363838, 49.656914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496212, 38.551632, 50.416672>,  <28.517717, 37.988327, 50.162388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496212, 38.551632, 50.416672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221933, 38.586033, 50.127556>,  <28.057367, 38.606674, 49.954086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221933, 38.586033, 50.127556>,  <28.496212, 38.551632, 50.416672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221933, 38.586033, 50.127556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539557, 0.606459, 0.584025,
		0.488569, 0.790450, -0.369445,
		-0.685696, 0.086000, -0.722790,
		28.016224, 38.611832, 49.910717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246820, 39.166710, 50.563316>,  <28.496212, 38.551632, 50.416672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246820, 39.166710, 50.563316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953007, 39.004173, 50.345936>,  <27.776718, 38.906651, 50.215508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953007, 39.004173, 50.345936>,  <28.246820, 39.166710, 50.563316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953007, 39.004173, 50.345936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677307, 0.487908, 0.550636,
		0.041409, 0.772548, -0.633605,
		-0.734534, -0.406344, -0.543456,
		27.732647, 38.882271, 50.182899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820650, 39.686909, 50.475548>,  <28.246820, 39.166710, 50.563316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820650, 39.686909, 50.475548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617945, 39.346760, 50.418903>,  <27.496321, 39.142670, 50.384918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.617945, 39.346760, 50.418903>,  <27.820650, 39.686909, 50.475548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617945, 39.346760, 50.418903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671563, 0.286406, 0.683355,
		-0.540549, 0.441401, -0.716220,
		-0.506764, -0.850374, -0.141612,
		27.465916, 39.091648, 50.376419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172745, 39.956753, 50.357563>,  <27.820650, 39.686909, 50.475548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172745, 39.956753, 50.357563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108532, 39.580612, 50.477539>,  <27.070004, 39.354927, 50.549522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.108532, 39.580612, 50.477539>,  <27.172745, 39.956753, 50.357563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.108532, 39.580612, 50.477539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618035, 0.332699, 0.712280,
		-0.769585, -0.071028, -0.634581,
		-0.160533, -0.940354, 0.299938,
		27.060371, 39.298508, 50.567520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.459930, 39.983471, 50.711098>,  <27.172745, 39.956753, 50.357563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.459930, 39.983471, 50.711098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613592, 39.629028, 50.814827>,  <26.705790, 39.416363, 50.877064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.613592, 39.629028, 50.814827>,  <26.459930, 39.983471, 50.711098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613592, 39.629028, 50.814827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434548, 0.074291, 0.897579,
		-0.814613, -0.457496, -0.356515,
		0.384153, -0.886103, 0.259322,
		26.728838, 39.363197, 50.892624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948002, 39.610760, 50.880665>,  <26.459930, 39.983471, 50.711098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948002, 39.610760, 50.880665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254080, 39.443226, 51.076237>,  <26.437727, 39.342705, 51.193581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254080, 39.443226, 51.076237>,  <25.948002, 39.610760, 50.880665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254080, 39.443226, 51.076237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511688, 0.065230, 0.856691,
		-0.390703, -0.905717, -0.164398,
		0.765197, -0.418833, 0.488931,
		26.483639, 39.317577, 51.222916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613251, 39.221348, 51.446873>,  <25.948002, 39.610760, 50.880665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613251, 39.221348, 51.446873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998993, 39.248466, 51.549183>,  <26.230438, 39.264736, 51.610569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.998993, 39.248466, 51.549183>,  <25.613251, 39.221348, 51.446873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998993, 39.248466, 51.549183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264131, 0.188555, 0.945876,
		0.015894, -0.979720, 0.199740,
		0.964356, 0.067791, 0.255777,
		26.288300, 39.268803, 51.625916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.991421, 38.740246, 57.612595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769829, 38.804932, 57.285927>,  <32.636875, 38.843742, 57.089924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.769829, 38.804932, 57.285927>,  <32.991421, 38.740246, 57.612595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769829, 38.804932, 57.285927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760654, -0.300411, -0.575464,
		-0.338397, -0.940001, 0.043415,
		-0.553979, 0.161712, -0.816674,
		32.603634, 38.853447, 57.040924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179825, 38.258228, 57.187977>,  <32.991421, 38.740246, 57.612595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179825, 38.258228, 57.187977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002419, 38.480305, 56.906536>,  <32.895973, 38.613548, 56.737671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.002419, 38.480305, 56.906536>,  <33.179825, 38.258228, 57.187977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002419, 38.480305, 56.906536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674567, -0.310117, -0.669916,
		-0.590128, -0.771748, -0.236967,
		-0.443519, 0.555187, -0.703604,
		32.869362, 38.646862, 56.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852016, 37.887688, 56.660927>,  <33.179825, 38.258228, 57.187977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852016, 37.887688, 56.660927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911148, 38.233139, 56.468140>,  <32.946625, 38.440411, 56.352467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911148, 38.233139, 56.468140>,  <32.852016, 37.887688, 56.660927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911148, 38.233139, 56.468140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477252, -0.489119, -0.730064,
		-0.866244, -0.122096, -0.484473,
		0.147827, 0.863629, -0.481967,
		32.955498, 38.492229, 56.323551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841179, 37.738785, 55.958614>,  <32.852016, 37.887688, 56.660927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841179, 37.738785, 55.958614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017235, 38.097656, 55.943954>,  <33.122868, 38.312981, 55.935158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.017235, 38.097656, 55.943954>,  <32.841179, 37.738785, 55.958614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017235, 38.097656, 55.943954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531254, -0.293096, -0.794898,
		-0.723909, 0.330398, -0.605635,
		0.440142, 0.897180, -0.036650,
		33.149277, 38.366810, 55.932961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866657, 37.976601, 55.252724>,  <32.841179, 37.738785, 55.958614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866657, 37.976601, 55.252724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164257, 38.144253, 55.460876>,  <33.342815, 38.244846, 55.585766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.164257, 38.144253, 55.460876>,  <32.866657, 37.976601, 55.252724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164257, 38.144253, 55.460876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660336, -0.342207, -0.668469,
		-0.102101, 0.840964, -0.531370,
		0.743997, 0.419134, 0.520379,
		33.387455, 38.269993, 55.616989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205902, 38.316883, 54.726898>,  <32.866657, 37.976601, 55.252724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205902, 38.316883, 54.726898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447330, 38.245724, 55.037781>,  <33.592186, 38.203030, 55.224312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.447330, 38.245724, 55.037781>,  <33.205902, 38.316883, 54.726898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447330, 38.245724, 55.037781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581754, -0.568325, -0.581867,
		0.545219, 0.803343, -0.239533,
		0.603571, -0.177896, 0.777210,
		33.628403, 38.192356, 55.270943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867199, 38.334805, 54.457581>,  <33.205902, 38.316883, 54.726898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867199, 38.334805, 54.457581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902729, 38.142853, 54.806709>,  <33.924046, 38.027679, 55.016186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.902729, 38.142853, 54.806709>,  <33.867199, 38.334805, 54.457581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902729, 38.142853, 54.806709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670291, -0.619381, -0.408750,
		0.736763, 0.621352, 0.266648,
		0.088821, -0.479884, 0.872824,
		33.929375, 37.998886, 55.068558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585308, 38.239120, 54.430069>,  <33.867199, 38.334805, 54.457581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585308, 38.239120, 54.430069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432999, 37.987179, 54.700859>,  <34.341614, 37.836014, 54.863331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432999, 37.987179, 54.700859>,  <34.585308, 38.239120, 54.430069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432999, 37.987179, 54.700859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521907, -0.750754, -0.404946,
		0.763297, 0.199123, 0.614595,
		-0.380776, -0.629856, 0.676972,
		34.318768, 37.798222, 54.903950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183174, 37.861504, 54.678177>,  <34.585308, 38.239120, 54.430069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183174, 37.861504, 54.678177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874935, 37.629299, 54.783398>,  <34.689991, 37.489979, 54.846531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874935, 37.629299, 54.783398>,  <35.183174, 37.861504, 54.678177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874935, 37.629299, 54.783398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476597, -0.798907, -0.366883,
		0.423131, -0.157349, 0.892301,
		-0.770594, -0.580507, 0.263050,
		34.643757, 37.455147, 54.862312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506844, 37.352997, 55.045399>,  <35.183174, 37.861504, 54.678177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506844, 37.352997, 55.045399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154022, 37.200363, 54.934853>,  <34.942329, 37.108784, 54.868526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154022, 37.200363, 54.934853>,  <35.506844, 37.352997, 55.045399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154022, 37.200363, 54.934853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464469, -0.802682, -0.374126,
		-0.079071, -0.458361, 0.885242,
		-0.882052, -0.381585, -0.276363,
		34.889408, 37.085888, 54.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579422, 36.604954, 55.232628>,  <35.506844, 37.352997, 55.045399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579422, 36.604954, 55.232628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270023, 36.647060, 54.982628>,  <35.084385, 36.672325, 54.832626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.270023, 36.647060, 54.982628>,  <35.579422, 36.604954, 55.232628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270023, 36.647060, 54.982628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297497, -0.810433, -0.504672,
		-0.559647, -0.576297, 0.595548,
		-0.773493, 0.105265, -0.625003,
		35.037975, 36.678638, 54.795128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324604, 35.950306, 55.185177>,  <35.579422, 36.604954, 55.232628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324604, 35.950306, 55.185177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199833, 36.155224, 54.865112>,  <35.124969, 36.278175, 54.673073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199833, 36.155224, 54.865112>,  <35.324604, 35.950306, 55.185177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199833, 36.155224, 54.865112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362086, -0.714529, -0.598617,
		-0.878406, -0.476451, 0.037386,
		-0.311925, 0.512293, -0.800162,
		35.106255, 36.308910, 54.625065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974564, 35.400486, 54.752399>,  <35.324604, 35.950306, 55.185177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974564, 35.400486, 54.752399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083000, 35.704830, 54.516571>,  <35.148064, 35.887436, 54.375072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.083000, 35.704830, 54.516571>,  <34.974564, 35.400486, 54.752399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083000, 35.704830, 54.516571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449476, -0.641691, -0.621453,
		-0.851164, -0.096526, -0.515949,
		0.271094, 0.760865, -0.589570,
		35.164330, 35.933090, 54.339699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681168, 35.258080, 54.054699>,  <34.974564, 35.400486, 54.752399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681168, 35.258080, 54.054699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991188, 35.508480, 54.020245>,  <35.177200, 35.658718, 53.999573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991188, 35.508480, 54.020245>,  <34.681168, 35.258080, 54.054699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991188, 35.508480, 54.020245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393862, -0.585175, -0.708832,
		-0.494130, 0.515458, -0.700099,
		0.775054, 0.625997, -0.086134,
		35.223705, 35.696278, 53.994404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111080, 34.812222, 53.652889>,  <34.681168, 35.258080, 54.054699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111080, 34.812222, 53.652889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924992, 34.466801, 53.575066>,  <33.813339, 34.259548, 53.528370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924992, 34.466801, 53.575066>,  <34.111080, 34.812222, 53.652889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924992, 34.466801, 53.575066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752640, 0.270192, 0.600441,
		-0.465942, 0.425770, -0.775640,
		-0.465222, -0.863548, -0.194558,
		33.785423, 34.207737, 53.516697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514305, 34.941170, 53.357235>,  <34.111080, 34.812222, 53.652889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514305, 34.941170, 53.357235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464386, 34.579346, 53.520306>,  <33.434433, 34.362251, 53.618149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.464386, 34.579346, 53.520306>,  <33.514305, 34.941170, 53.357235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464386, 34.579346, 53.520306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798693, 0.335370, 0.499617,
		-0.588655, -0.263258, -0.764317,
		-0.124801, -0.904557, 0.407679,
		33.426945, 34.307980, 53.642609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794594, 34.933498, 53.587761>,  <33.514305, 34.941170, 53.357235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794594, 34.933498, 53.587761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915333, 34.591061, 53.755566>,  <32.987778, 34.385597, 53.856247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915333, 34.591061, 53.755566>,  <32.794594, 34.933498, 53.587761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915333, 34.591061, 53.755566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789458, 0.022232, 0.613402,
		-0.534456, -0.516343, -0.669139,
		0.301850, -0.856093, 0.419513,
		33.005886, 34.334232, 53.881420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181900, 34.566658, 53.806202>,  <32.794594, 34.933498, 53.587761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181900, 34.566658, 53.806202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467556, 34.400845, 54.031826>,  <32.638950, 34.301357, 54.167202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.467556, 34.400845, 54.031826>,  <32.181900, 34.566658, 53.806202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467556, 34.400845, 54.031826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633406, -0.039646, 0.772803,
		-0.297991, -0.909170, -0.290881,
		0.714142, -0.414534, 0.564060,
		32.681797, 34.276485, 54.201042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899576, 33.977730, 54.056438>,  <32.181900, 34.566658, 53.806202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899576, 33.977730, 54.056438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189388, 34.118313, 54.293602>,  <32.363274, 34.202663, 54.435898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.189388, 34.118313, 54.293602>,  <31.899576, 33.977730, 54.056438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189388, 34.118313, 54.293602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684923, 0.270962, 0.676357,
		0.077053, -0.896136, 0.437039,
		0.724530, 0.351453, 0.592906,
		32.406746, 34.223751, 54.471474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774080, 33.702179, 54.706223>,  <31.899576, 33.977730, 54.056438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774080, 33.702179, 54.706223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993795, 34.030685, 54.767948>,  <32.125626, 34.227787, 54.804985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.993795, 34.030685, 54.767948>,  <31.774080, 33.702179, 54.706223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993795, 34.030685, 54.767948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627929, 0.283816, 0.724675,
		0.551352, -0.494953, 0.671590,
		0.549287, 0.821262, 0.154313,
		32.158581, 34.277065, 54.814243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614212, 33.846790, 55.386852>,  <31.774080, 33.702179, 54.706223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614212, 33.846790, 55.386852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811773, 34.176563, 55.276310>,  <31.930309, 34.374428, 55.209984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811773, 34.176563, 55.276310>,  <31.614212, 33.846790, 55.386852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811773, 34.176563, 55.276310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476181, 0.522390, 0.707362,
		0.727538, -0.217770, 0.650588,
		0.493903, 0.824430, -0.276361,
		31.959944, 34.423893, 55.193401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898186, 34.164169, 56.005238>,  <31.614212, 33.846790, 55.386852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898186, 34.164169, 56.005238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866491, 34.438068, 55.715454>,  <31.847475, 34.602409, 55.541584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866491, 34.438068, 55.715454>,  <31.898186, 34.164169, 56.005238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866491, 34.438068, 55.715454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514344, 0.594452, 0.618124,
		0.853916, 0.421597, 0.305097,
		-0.079234, 0.684751, -0.724457,
		31.842722, 34.643494, 55.498116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900070, 34.763821, 56.399006>,  <31.898186, 34.164169, 56.005238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900070, 34.763821, 56.399006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756395, 34.879196, 56.043976>,  <31.670191, 34.948421, 55.830959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.756395, 34.879196, 56.043976>,  <31.900070, 34.763821, 56.399006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756395, 34.879196, 56.043976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613729, 0.643471, 0.457473,
		0.703081, 0.709049, -0.054106,
		-0.359186, 0.288435, -0.887576,
		31.648640, 34.965725, 55.777702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842869, 35.532021, 56.488213>,  <31.900070, 34.763821, 56.399006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842869, 35.532021, 56.488213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617979, 35.428974, 56.173878>,  <31.483046, 35.367146, 55.985275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.617979, 35.428974, 56.173878>,  <31.842869, 35.532021, 56.488213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617979, 35.428974, 56.173878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739129, 0.582753, 0.337767,
		0.370934, 0.770735, -0.518049,
		-0.562224, -0.257616, -0.785836,
		31.449312, 35.351688, 55.938126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588095, 36.144051, 55.996750>,  <31.842869, 35.532021, 56.488213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588095, 36.144051, 55.996750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.324638, 35.843147, 55.989902>,  <31.166565, 35.662605, 55.985794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.324638, 35.843147, 55.989902>,  <31.588095, 36.144051, 55.996750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324638, 35.843147, 55.989902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709750, 0.613545, 0.346147,
		-0.249889, 0.240137, -0.938024,
		-0.658643, -0.752261, -0.017119,
		31.127045, 35.617470, 55.984768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963900, 36.470192, 55.678955>,  <31.588095, 36.144051, 55.996750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963900, 36.470192, 55.678955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839685, 36.132614, 55.853916>,  <30.765156, 35.930065, 55.958893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.839685, 36.132614, 55.853916>,  <30.963900, 36.470192, 55.678955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839685, 36.132614, 55.853916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819635, 0.470780, 0.326443,
		-0.481420, -0.257136, -0.837923,
		-0.310538, -0.843947, 0.437401,
		30.746525, 35.879429, 55.985138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211866, 36.432606, 55.561653>,  <30.963900, 36.470192, 55.678955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211866, 36.432606, 55.561653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264572, 36.192608, 55.877285>,  <30.296196, 36.048611, 56.066666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.264572, 36.192608, 55.877285>,  <30.211866, 36.432606, 55.561653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264572, 36.192608, 55.877285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803456, 0.401592, 0.439524,
		-0.580600, -0.691904, -0.429154,
		0.131764, -0.599994, 0.789079,
		30.304102, 36.012611, 56.114010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577143, 36.139042, 55.663818>,  <30.211866, 36.432606, 55.561653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577143, 36.139042, 55.663818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769676, 36.118729, 56.013844>,  <29.885197, 36.106541, 56.223858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.769676, 36.118729, 56.013844>,  <29.577143, 36.139042, 55.663818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769676, 36.118729, 56.013844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663666, 0.631033, 0.401678,
		-0.572595, -0.774092, 0.270031,
		0.481334, -0.050788, 0.875065,
		29.914076, 36.103493, 56.276363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863852, 36.099365, 55.375397>,  <29.577143, 36.139042, 55.663818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863852, 36.099365, 55.375397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579205, 36.218647, 55.120941>,  <28.408417, 36.290218, 54.968269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.579205, 36.218647, 55.120941>,  <28.863852, 36.099365, 55.375397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.579205, 36.218647, 55.120941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279511, -0.710537, -0.645764,
		-0.644572, -0.637345, 0.422278,
		-0.711618, 0.298210, -0.636137,
		28.365719, 36.308109, 54.930099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540728, 35.436306, 55.174786>,  <28.863852, 36.099365, 55.375397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540728, 35.436306, 55.174786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.486547, 35.736813, 54.916405>,  <28.454039, 35.917118, 54.761375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.486547, 35.736813, 54.916405>,  <28.540728, 35.436306, 55.174786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486547, 35.736813, 54.916405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256524, -0.603136, -0.755263,
		-0.957000, -0.268002, -0.111023,
		-0.135450, 0.751267, -0.645950,
		28.445913, 35.962193, 54.722618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160284, 35.148487, 54.577888>,  <28.540728, 35.436306, 55.174786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160284, 35.148487, 54.577888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.360708, 35.461746, 54.430580>,  <28.480963, 35.649700, 54.342194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.360708, 35.461746, 54.430580>,  <28.160284, 35.148487, 54.577888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360708, 35.461746, 54.430580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183660, -0.512077, -0.839074,
		-0.845699, 0.352791, -0.400414,
		0.501061, 0.783144, -0.368269,
		28.511026, 35.696690, 54.320099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023975, 35.067257, 53.881947>,  <28.160284, 35.148487, 54.577888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023975, 35.067257, 53.881947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.338554, 35.311787, 53.917244>,  <28.527302, 35.458504, 53.938423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.338554, 35.311787, 53.917244>,  <28.023975, 35.067257, 53.881947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338554, 35.311787, 53.917244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407487, -0.406154, -0.817920,
		-0.464170, 0.679210, -0.568525,
		0.786448, 0.611320, 0.088245,
		28.574490, 35.495182, 53.943718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148491, 35.372360, 53.249172>,  <28.023975, 35.067257, 53.881947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148491, 35.372360, 53.249172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506250, 35.424889, 53.420193>,  <28.720907, 35.456406, 53.522804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.506250, 35.424889, 53.420193>,  <28.148491, 35.372360, 53.249172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506250, 35.424889, 53.420193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446273, -0.325727, -0.833512,
		0.029812, 0.936300, -0.349934,
		0.894400, 0.131317, 0.427556,
		28.774570, 35.464283, 53.548458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640938, 35.678608, 52.747360>,  <28.148491, 35.372360, 53.249172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640938, 35.678608, 52.747360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.885923, 35.544243, 53.033592>,  <29.032915, 35.463623, 53.205330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.885923, 35.544243, 53.033592>,  <28.640938, 35.678608, 52.747360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885923, 35.544243, 53.033592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633914, -0.332107, -0.698468,
		0.472274, 0.881400, 0.009538,
		0.612463, -0.335915, 0.715577,
		29.069662, 35.443470, 53.248264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254290, 35.785755, 52.460690>,  <28.640938, 35.678608, 52.747360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254290, 35.785755, 52.460690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277523, 35.495476, 52.734913>,  <29.291464, 35.321308, 52.899448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.277523, 35.495476, 52.734913>,  <29.254290, 35.785755, 52.460690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277523, 35.495476, 52.734913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522377, -0.563111, -0.640334,
		0.850734, 0.395315, 0.346378,
		0.058085, -0.725694, 0.685561,
		29.294949, 35.277767, 52.940582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937548, 35.554348, 52.374001>,  <29.254290, 35.785755, 52.460690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937548, 35.554348, 52.374001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.757181, 35.272240, 52.592823>,  <29.648962, 35.102974, 52.724117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.757181, 35.272240, 52.592823>,  <29.937548, 35.554348, 52.374001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757181, 35.272240, 52.592823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579633, -0.697457, -0.421402,
		0.678749, 0.127074, 0.723292,
		-0.450916, -0.705270, 0.547055,
		29.621906, 35.060658, 52.756939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408421, 35.170105, 52.719364>,  <29.937548, 35.554348, 52.374001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408421, 35.170105, 52.719364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.075794, 34.959087, 52.649857>,  <29.876219, 34.832478, 52.608150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.075794, 34.959087, 52.649857>,  <30.408421, 35.170105, 52.719364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075794, 34.959087, 52.649857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550870, -0.743359, -0.379421,
		0.070986, -0.411239, 0.908759,
		-0.831567, -0.527542, -0.173771,
		29.826324, 34.800823, 52.597725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501354, 34.620087, 53.088512>,  <30.408421, 35.170105, 52.719364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501354, 34.620087, 53.088512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.238646, 34.494709, 52.814171>,  <30.081020, 34.419483, 52.649567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.238646, 34.494709, 52.814171>,  <30.501354, 34.620087, 53.088512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238646, 34.494709, 52.814171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657911, -0.682646, -0.318036,
		-0.368512, -0.660111, 0.654563,
		-0.656774, -0.313445, -0.685858,
		30.041613, 34.400677, 52.608414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610615, 33.962048, 53.106319>,  <30.501354, 34.620087, 53.088512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610615, 33.962048, 53.106319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422672, 34.009415, 52.756413>,  <30.309908, 34.037834, 52.546471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.422672, 34.009415, 52.756413>,  <30.610615, 33.962048, 53.106319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422672, 34.009415, 52.756413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507842, -0.774287, -0.377593,
		-0.722034, -0.621656, 0.303662,
		-0.469855, 0.118422, -0.874765,
		30.281715, 34.044941, 52.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159565, 33.379406, 52.964783>,  <30.610615, 33.962048, 53.106319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159565, 33.379406, 52.964783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.232445, 33.547981, 52.609436>,  <30.276173, 33.649128, 52.396229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.232445, 33.547981, 52.609436>,  <30.159565, 33.379406, 52.964783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232445, 33.547981, 52.609436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391174, -0.859980, -0.327746,
		-0.902101, -0.287791, -0.321542,
		0.182197, 0.421439, -0.888365,
		30.287104, 33.674412, 52.342926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039621, 32.954506, 52.460190>,  <30.159565, 33.379406, 52.964783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039621, 32.954506, 52.460190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292557, 33.204201, 52.276676>,  <30.444319, 33.354015, 52.166569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.292557, 33.204201, 52.276676>,  <30.039621, 32.954506, 52.460190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.292557, 33.204201, 52.276676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524242, -0.780818, -0.339844,
		-0.570367, -0.025616, -0.820991,
		0.632339, 0.624233, -0.458782,
		30.482258, 33.391472, 52.139042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218077, 32.622852, 51.902359>,  <30.039621, 32.954506, 52.460190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218077, 32.622852, 51.902359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499258, 32.906849, 51.919163>,  <30.667967, 33.077248, 51.929245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499258, 32.906849, 51.919163>,  <30.218077, 32.622852, 51.902359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499258, 32.906849, 51.919163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682404, -0.656629, -0.321192,
		-0.200457, 0.254453, -0.946082,
		0.702952, 0.709995, 0.042014,
		30.710144, 33.119846, 51.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.719376, 38.623363, 51.948433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.983086, 38.922947, 51.975018>,  <26.141312, 39.102695, 51.990967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.983086, 38.922947, 51.975018>,  <25.719376, 38.623363, 51.948433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.983086, 38.922947, 51.975018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330892, 0.209624, 0.920091,
		0.675179, -0.628585, 0.386024,
		0.659275, 0.748959, 0.066460,
		26.180868, 39.147633, 51.994957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827736, 38.666348, 52.703308>,  <25.719376, 38.623363, 51.948433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827736, 38.666348, 52.703308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.997795, 39.003376, 52.571053>,  <26.099831, 39.205593, 52.491699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.997795, 39.003376, 52.571053>,  <25.827736, 38.666348, 52.703308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997795, 39.003376, 52.571053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159804, 0.429431, 0.888848,
		0.890906, -0.325053, 0.317218,
		0.425146, 0.842573, -0.330638,
		26.125340, 39.256149, 52.471863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481508, 38.895618, 53.209942>,  <25.827736, 38.666348, 52.703308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481508, 38.895618, 53.209942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.301397, 39.213543, 53.047203>,  <26.193331, 39.404297, 52.949558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.301397, 39.213543, 53.047203>,  <26.481508, 38.895618, 53.209942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.301397, 39.213543, 53.047203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199952, 0.354325, 0.913495,
		0.870213, 0.492676, -0.000620,
		-0.450277, 0.794811, -0.406850,
		26.166315, 39.451984, 52.925148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471329, 39.380131, 53.784557>,  <26.481508, 38.895618, 53.209942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471329, 39.380131, 53.784557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245728, 39.570862, 53.514881>,  <26.110367, 39.685303, 53.353077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.245728, 39.570862, 53.514881>,  <26.471329, 39.380131, 53.784557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.245728, 39.570862, 53.514881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522989, 0.425561, 0.738499,
		0.639049, 0.769109, 0.009361,
		-0.564002, 0.476832, -0.674190,
		26.076527, 39.713913, 53.312626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594400, 40.032825, 53.944595>,  <26.471329, 39.380131, 53.784557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594400, 40.032825, 53.944595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.241680, 40.046722, 53.756462>,  <26.030048, 40.055061, 53.643581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.241680, 40.046722, 53.756462>,  <26.594400, 40.032825, 53.944595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.241680, 40.046722, 53.756462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358135, 0.599563, 0.715726,
		0.306860, 0.799573, -0.516255,
		-0.881803, 0.034738, -0.470337,
		25.977139, 40.057144, 53.615360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387518, 40.761936, 53.810875>,  <26.594400, 40.032825, 53.944595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387518, 40.761936, 53.810875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.045288, 40.554897, 53.814541>,  <25.839951, 40.430676, 53.816742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.045288, 40.554897, 53.814541>,  <26.387518, 40.761936, 53.810875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045288, 40.554897, 53.814541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355996, 0.601128, 0.715480,
		-0.375840, 0.608884, -0.698573,
		-0.855576, -0.517596, 0.009168,
		25.788614, 40.399620, 53.817291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798079, 41.262993, 53.867378>,  <26.387518, 40.761936, 53.810875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798079, 41.262993, 53.867378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.661709, 40.910522, 53.998409>,  <25.579887, 40.699039, 54.077026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.661709, 40.910522, 53.998409>,  <25.798079, 41.262993, 53.867378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661709, 40.910522, 53.998409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394210, 0.450333, 0.801124,
		-0.853446, 0.143989, -0.500896,
		-0.340923, -0.881174, 0.327573,
		25.559433, 40.646172, 54.096680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167868, 41.395512, 54.121197>,  <25.798079, 41.262993, 53.867378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167868, 41.395512, 54.121197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.190418, 41.024311, 54.268517>,  <25.203949, 40.801590, 54.356907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.190418, 41.024311, 54.268517>,  <25.167868, 41.395512, 54.121197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.190418, 41.024311, 54.268517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502231, 0.292454, 0.813778,
		-0.862893, -0.230850, -0.449581,
		0.056378, -0.927997, 0.368297,
		25.207333, 40.745911, 54.379005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587885, 41.381672, 54.457710>,  <25.167868, 41.395512, 54.121197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587885, 41.381672, 54.457710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.781385, 41.058983, 54.593468>,  <24.897486, 40.865372, 54.674923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.781385, 41.058983, 54.593468>,  <24.587885, 41.381672, 54.457710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781385, 41.058983, 54.593468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437866, 0.112684, 0.891950,
		-0.757799, -0.580090, -0.298725,
		0.483750, -0.806721, 0.339394,
		24.926510, 40.816967, 54.695286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.019968, 40.896225, 54.745712>,  <24.587885, 41.381672, 54.457710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.019968, 40.896225, 54.745712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.378277, 40.820515, 54.906593>,  <24.593262, 40.775089, 55.003124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.378277, 40.820515, 54.906593>,  <24.019968, 40.896225, 54.745712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.378277, 40.820515, 54.906593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329789, 0.323708, 0.886822,
		-0.298053, -0.927031, 0.227546,
		0.895770, -0.189278, 0.402207,
		24.647007, 40.763733, 55.027256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.883347, 40.524090, 55.323570>,  <24.019968, 40.896225, 54.745712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.883347, 40.524090, 55.323570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.259926, 40.638344, 55.395226>,  <24.485872, 40.706898, 55.438217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.259926, 40.638344, 55.395226>,  <23.883347, 40.524090, 55.323570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.259926, 40.638344, 55.395226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265706, 0.301482, 0.915701,
		0.207547, -0.909683, 0.359724,
		0.941448, 0.285632, 0.179136,
		24.542360, 40.724033, 55.448967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.153551, 40.069302, 55.866348>,  <23.883347, 40.524090, 55.323570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.153551, 40.069302, 55.866348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.341761, 40.421558, 55.844166>,  <24.454685, 40.632912, 55.830856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.341761, 40.421558, 55.844166>,  <24.153551, 40.069302, 55.866348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341761, 40.421558, 55.844166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210149, 0.172879, 0.962263,
		0.856998, -0.441112, 0.266410,
		0.470522, 0.880644, -0.055458,
		24.482918, 40.685753, 55.827530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766781, 40.109043, 56.336033>,  <24.153551, 40.069302, 55.866348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766781, 40.109043, 56.336033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.589449, 40.461788, 56.271816>,  <24.483049, 40.673435, 56.233288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.589449, 40.461788, 56.271816>,  <24.766781, 40.109043, 56.336033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589449, 40.461788, 56.271816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316656, 0.013470, 0.948445,
		0.838563, 0.471309, 0.273277,
		-0.443330, 0.881865, -0.160539,
		24.456450, 40.726349, 56.223656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992041, 40.417049, 56.993710>,  <24.766781, 40.109043, 56.336033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992041, 40.417049, 56.993710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.038387, 40.360661, 57.386993>,  <25.066195, 40.326828, 57.622963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.038387, 40.360661, 57.386993>,  <24.992041, 40.417049, 56.993710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038387, 40.360661, 57.386993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442397, -0.878945, -0.178156,
		0.889303, 0.455612, -0.039474,
		0.115865, -0.140972, 0.983210,
		25.073147, 40.318371, 57.681957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709044, 40.318546, 57.157398>,  <24.992041, 40.417049, 56.993710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709044, 40.318546, 57.157398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.481985, 40.141769, 57.435238>,  <25.345751, 40.035702, 57.601940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.481985, 40.141769, 57.435238>,  <25.709044, 40.318546, 57.157398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.481985, 40.141769, 57.435238> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496915, -0.856606, -0.138927,
		0.656395, 0.266296, 0.705855,
		-0.567645, -0.441941, 0.694599,
		25.311691, 40.009186, 57.643616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172834, 39.872704, 57.539646>,  <25.709044, 40.318546, 57.157398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172834, 39.872704, 57.539646> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.802883, 39.728428, 57.587811>,  <25.580912, 39.641861, 57.616707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.802883, 39.728428, 57.587811>,  <26.172834, 39.872704, 57.539646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.802883, 39.728428, 57.587811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308680, -0.897068, -0.316204,
		0.222067, -0.255283, 0.941019,
		-0.924880, -0.360692, 0.120408,
		25.525419, 39.620220, 57.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290995, 39.361252, 57.886272>,  <26.172834, 39.872704, 57.539646>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290995, 39.361252, 57.886272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943148, 39.272072, 57.710064>,  <25.734440, 39.218563, 57.604340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.943148, 39.272072, 57.710064>,  <26.290995, 39.361252, 57.886272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.943148, 39.272072, 57.710064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369708, -0.885409, -0.281721,
		-0.327231, -0.407853, 0.852394,
		-0.869618, -0.222949, -0.440520,
		25.682262, 39.205189, 57.577908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218678, 38.627434, 57.979839>,  <26.290995, 39.361252, 57.886272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218678, 38.627434, 57.979839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.954151, 38.714317, 57.692654>,  <25.795435, 38.766449, 57.520340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.954151, 38.714317, 57.692654>,  <26.218678, 38.627434, 57.979839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954151, 38.714317, 57.692654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196491, -0.873569, -0.445274,
		-0.723912, -0.435542, 0.535028,
		-0.661319, 0.217210, -0.717967,
		25.755756, 38.779480, 57.477264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797125, 38.004948, 57.908546>,  <26.218678, 38.627434, 57.979839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797125, 38.004948, 57.908546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.813145, 38.221878, 57.572861>,  <25.822758, 38.352036, 57.371449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.813145, 38.221878, 57.572861>,  <25.797125, 38.004948, 57.908546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.813145, 38.221878, 57.572861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401772, -0.777741, -0.483425,
		-0.914863, -0.317811, -0.249040,
		0.040050, 0.542325, -0.839214,
		25.825159, 38.384575, 57.321098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.640699, 37.497803, 57.348804>,  <25.797125, 38.004948, 57.908546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.640699, 37.497803, 57.348804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.815115, 37.797871, 57.149963>,  <25.919765, 37.977913, 57.030659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.815115, 37.797871, 57.149963>,  <25.640699, 37.497803, 57.348804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815115, 37.797871, 57.149963> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425042, -0.658560, -0.620998,
		-0.793226, 0.059493, -0.606014,
		0.436041, 0.750173, -0.497100,
		25.945927, 38.022923, 57.000832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409309, 37.400303, 56.595127>,  <25.640699, 37.497803, 57.348804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409309, 37.400303, 56.595127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.748138, 37.611847, 56.616207>,  <25.951435, 37.738773, 56.628853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.748138, 37.611847, 56.616207>,  <25.409309, 37.400303, 56.595127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.748138, 37.611847, 56.616207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391480, -0.553810, -0.734872,
		-0.359460, 0.643120, -0.676155,
		0.847072, 0.528859, 0.052696,
		26.002260, 37.770504, 56.632015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717388, 37.306385, 55.921215>,  <25.409309, 37.400303, 56.595127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717388, 37.306385, 55.921215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.030216, 37.486504, 56.093544>,  <26.217913, 37.594574, 56.196941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.030216, 37.486504, 56.093544>,  <25.717388, 37.306385, 55.921215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030216, 37.486504, 56.093544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605374, -0.384809, -0.696738,
		-0.147953, 0.805704, -0.573543,
		0.782069, 0.450293, 0.430819,
		26.264837, 37.621590, 56.222790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150171, 37.582924, 55.377739>,  <25.717388, 37.306385, 55.921215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150171, 37.582924, 55.377739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.375378, 37.558628, 55.707424>,  <26.510502, 37.544048, 55.905235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.375378, 37.558628, 55.707424>,  <26.150171, 37.582924, 55.377739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.375378, 37.558628, 55.707424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761504, -0.349391, -0.545928,
		0.321133, 0.935006, -0.150457,
		0.563015, -0.060742, 0.824212,
		26.544283, 37.540405, 55.954689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824720, 37.958092, 55.210701>,  <26.150171, 37.582924, 55.377739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824720, 37.958092, 55.210701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893911, 37.705349, 55.512917>,  <26.935427, 37.553703, 55.694244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.893911, 37.705349, 55.512917>,  <26.824720, 37.958092, 55.210701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.893911, 37.705349, 55.512917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926383, -0.156153, -0.342683,
		0.334505, 0.759195, 0.558327,
		0.172978, -0.631854, 0.755539,
		26.945805, 37.515793, 55.739578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421473, 38.126354, 55.324413>,  <26.824720, 37.958092, 55.210701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421473, 38.126354, 55.324413> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.393070, 37.766994, 55.497772>,  <27.376028, 37.551380, 55.601788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.393070, 37.766994, 55.497772>,  <27.421473, 38.126354, 55.324413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393070, 37.766994, 55.497772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882372, -0.259198, -0.392728,
		0.465163, 0.354535, 0.811128,
		-0.071007, -0.898399, 0.433402,
		27.371769, 37.497475, 55.627792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049271, 37.836296, 55.412479>,  <27.421473, 38.126354, 55.324413>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049271, 37.836296, 55.412479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.834686, 37.508636, 55.493683>,  <27.705936, 37.312042, 55.542404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.834686, 37.508636, 55.493683>,  <28.049271, 37.836296, 55.412479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834686, 37.508636, 55.493683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732710, -0.571446, -0.369574,
		0.418745, -0.049512, 0.906753,
		-0.536459, -0.819145, 0.203012,
		27.673748, 37.262894, 55.554588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546915, 37.368011, 55.583828>,  <28.049271, 37.836296, 55.412479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546915, 37.368011, 55.583828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238913, 37.141621, 55.466003>,  <28.054111, 37.005787, 55.395309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238913, 37.141621, 55.466003>,  <28.546915, 37.368011, 55.583828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238913, 37.141621, 55.466003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637439, -0.662410, -0.393554,
		0.027624, -0.490801, 0.870834,
		-0.770006, -0.565975, -0.294557,
		28.007912, 36.971828, 55.377636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754772, 36.720814, 55.688217>,  <28.546915, 37.368011, 55.583828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754772, 36.720814, 55.688217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.460447, 36.696091, 55.418472>,  <28.283852, 36.681255, 55.256626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.460447, 36.696091, 55.418472>,  <28.754772, 36.720814, 55.688217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460447, 36.696091, 55.418472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540682, -0.653205, -0.530081,
		-0.407728, -0.754654, 0.514057,
		-0.735812, -0.061813, -0.674358,
		28.239704, 36.677547, 55.216164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907988, 36.284584, 56.309425>,  <28.754772, 36.720814, 55.688217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907988, 36.284584, 56.309425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.272621, 36.307255, 56.472301>,  <29.491402, 36.320858, 56.570026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.272621, 36.307255, 56.472301>,  <28.907988, 36.284584, 56.309425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272621, 36.307255, 56.472301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403293, 0.315600, 0.858925,
		-0.079830, -0.947198, 0.310552,
		0.911582, 0.056675, 0.407193,
		29.546097, 36.324257, 56.594460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966894, 35.915932, 56.982193>,  <28.907988, 36.284584, 56.309425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966894, 35.915932, 56.982193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237030, 36.210926, 56.984501>,  <29.399113, 36.387920, 56.985886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.237030, 36.210926, 56.984501>,  <28.966894, 35.915932, 56.982193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237030, 36.210926, 56.984501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403941, 0.363331, 0.839537,
		0.617047, -0.569306, 0.543272,
		0.675341, 0.737483, 0.005774,
		29.439632, 36.432171, 56.986233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874069, 36.092754, 57.661831>,  <28.966894, 35.915932, 56.982193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874069, 36.092754, 57.661831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088697, 36.399048, 57.519989>,  <29.217474, 36.582825, 57.434883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088697, 36.399048, 57.519989>,  <28.874069, 36.092754, 57.661831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088697, 36.399048, 57.519989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177310, 0.513139, 0.839791,
		0.825018, -0.387732, 0.411108,
		0.536570, 0.765736, -0.354600,
		29.249668, 36.628769, 57.413609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146082, 36.369186, 58.205067>,  <28.874069, 36.092754, 57.661831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146082, 36.369186, 58.205067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161364, 36.665703, 57.937027>,  <29.170532, 36.843613, 57.776203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.161364, 36.665703, 57.937027>,  <29.146082, 36.369186, 58.205067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161364, 36.665703, 57.937027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363270, 0.635008, 0.681762,
		0.930900, 0.217380, 0.293548,
		0.038204, 0.741290, -0.670096,
		29.172825, 36.888088, 57.735996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599379, 36.933815, 58.516209>,  <29.146082, 36.369186, 58.205067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599379, 36.933815, 58.516209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.326448, 37.055195, 58.250172>,  <29.162689, 37.128021, 58.090549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.326448, 37.055195, 58.250172>,  <29.599379, 36.933815, 58.516209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326448, 37.055195, 58.250172> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372080, 0.638973, 0.673253,
		0.629274, 0.706847, -0.323082,
		-0.682327, 0.303448, -0.665093,
		29.121750, 37.146229, 58.050644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629593, 37.629444, 58.516541>,  <29.599379, 36.933815, 58.516209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629593, 37.629444, 58.516541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277296, 37.565662, 58.338165>,  <29.065918, 37.527393, 58.231140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277296, 37.565662, 58.338165>,  <29.629593, 37.629444, 58.516541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277296, 37.565662, 58.338165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394793, 0.767303, 0.505356,
		0.261590, 0.621144, -0.738749,
		-0.880744, -0.159457, -0.445942,
		29.013073, 37.517826, 58.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421228, 38.260807, 58.218948>,  <29.629593, 37.629444, 58.516541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421228, 38.260807, 58.218948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.084465, 38.056488, 58.288551>,  <28.882406, 37.933899, 58.330311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.084465, 38.056488, 58.288551>,  <29.421228, 38.260807, 58.218948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084465, 38.056488, 58.288551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423827, 0.825519, 0.372679,
		-0.334005, 0.240015, -0.911501,
		-0.841909, -0.510795, 0.174003,
		28.831892, 37.903248, 58.340752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496012, 38.917847, 58.029667>,  <29.421228, 38.260807, 58.218948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496012, 38.917847, 58.029667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.734638, 39.238735, 58.020313>,  <29.877815, 39.431267, 58.014702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.734638, 39.238735, 58.020313>,  <29.496012, 38.917847, 58.029667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734638, 39.238735, 58.020313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764764, -0.577067, -0.286583,
		-0.243398, 0.153081, -0.957770,
		0.596568, 0.802222, -0.023386,
		29.913609, 39.479401, 58.013298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926527, 38.793003, 57.446880>,  <29.496012, 38.917847, 58.029667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926527, 38.793003, 57.446880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.127920, 39.086082, 57.630035>,  <30.248756, 39.261929, 57.739929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.127920, 39.086082, 57.630035>,  <29.926527, 38.793003, 57.446880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127920, 39.086082, 57.630035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832656, -0.270017, -0.483503,
		-0.230623, 0.624699, -0.746032,
		0.503485, 0.732695, 0.457887,
		30.278965, 39.305893, 57.767403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308359, 39.150963, 56.926670>,  <29.926527, 38.793003, 57.446880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308359, 39.150963, 56.926670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505833, 39.238079, 57.263443>,  <30.624317, 39.290348, 57.465508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.505833, 39.238079, 57.263443>,  <30.308359, 39.150963, 56.926670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505833, 39.238079, 57.263443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863677, -0.235991, -0.445389,
		0.101689, 0.947036, -0.304601,
		0.493682, 0.217786, 0.841930,
		30.653938, 39.303413, 57.516022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875433, 39.649807, 56.750019>,  <30.308359, 39.150963, 56.926670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875433, 39.649807, 56.750019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.972403, 39.464397, 57.090931>,  <31.030584, 39.353153, 57.295479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.972403, 39.464397, 57.090931>,  <30.875433, 39.649807, 56.750019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972403, 39.464397, 57.090931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891441, -0.240229, -0.384217,
		0.382834, 0.852900, 0.354963,
		0.242426, -0.463520, 0.852278,
		31.045130, 39.325340, 57.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520189, 40.021179, 57.066368>,  <30.875433, 39.649807, 56.750019>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520189, 40.021179, 57.066368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.518398, 39.654617, 57.226460>,  <31.517324, 39.434681, 57.322514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.518398, 39.654617, 57.226460>,  <31.520189, 40.021179, 57.066368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518398, 39.654617, 57.226460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972298, -0.097523, -0.212428,
		0.233701, 0.388188, 0.891456,
		-0.004476, -0.916406, 0.400226,
		31.517056, 39.379696, 57.346527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091133, 40.023514, 57.496601>,  <31.520189, 40.021179, 57.066368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091133, 40.023514, 57.496601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.006653, 39.641617, 57.412830>,  <31.955965, 39.412479, 57.362568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.006653, 39.641617, 57.412830>,  <32.091133, 40.023514, 57.496601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006653, 39.641617, 57.412830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916885, -0.119267, -0.380916,
		0.338699, -0.272473, 0.900579,
		-0.211199, -0.954743, -0.209431,
		31.943293, 39.355194, 57.350002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695282, 39.696602, 57.626484>,  <32.091133, 40.023514, 57.496601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695282, 39.696602, 57.626484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.491699, 39.420681, 57.420517>,  <32.369549, 39.255131, 57.296936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.491699, 39.420681, 57.420517>,  <32.695282, 39.696602, 57.626484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491699, 39.420681, 57.420517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809653, -0.180521, -0.558457,
		0.292270, -0.701135, 0.650375,
		-0.508961, -0.689798, -0.514915,
		32.339012, 39.213741, 57.266041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<26.518515, 43.634579, 55.570450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338333, 43.278713, 55.540531>,  <26.230225, 43.065193, 55.522579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.338333, 43.278713, 55.540531>,  <26.518515, 43.634579, 55.570450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338333, 43.278713, 55.540531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589974, -0.233738, -0.772850,
		0.670093, -0.392260, 0.630165,
		-0.450452, -0.889662, -0.074797,
		26.203197, 43.011814, 55.518093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031012, 43.116978, 55.652519>,  <26.518515, 43.634579, 55.570450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031012, 43.116978, 55.652519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711515, 43.014107, 55.434944>,  <26.519817, 42.952385, 55.304398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711515, 43.014107, 55.434944>,  <27.031012, 43.116978, 55.652519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711515, 43.014107, 55.434944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601167, -0.378300, -0.703908,
		-0.024742, -0.889240, 0.456772,
		-0.798740, -0.257180, -0.543942,
		26.471893, 42.936954, 55.271763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190857, 42.500553, 55.476440>,  <27.031012, 43.116978, 55.652519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190857, 42.500553, 55.476440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918991, 42.614162, 55.205917>,  <26.755873, 42.682327, 55.043602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918991, 42.614162, 55.205917>,  <27.190857, 42.500553, 55.476440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918991, 42.614162, 55.205917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552083, -0.408999, -0.726584,
		-0.482974, -0.867209, 0.121178,
		-0.679662, 0.284021, -0.676307,
		26.715092, 42.699368, 55.003025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163696, 41.918991, 54.967613>,  <27.190857, 42.500553, 55.476440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163696, 41.918991, 54.967613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011002, 42.243786, 54.790997>,  <26.919384, 42.438663, 54.685028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011002, 42.243786, 54.790997>,  <27.163696, 41.918991, 54.967613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011002, 42.243786, 54.790997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507933, -0.214817, -0.834181,
		-0.772192, -0.542712, -0.330429,
		-0.381738, 0.811984, -0.441541,
		26.896481, 42.487381, 54.658535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049627, 41.677444, 54.322865>,  <27.163696, 41.918991, 54.967613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049627, 41.677444, 54.322865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014685, 42.073196, 54.276386>,  <26.993719, 42.310646, 54.248497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014685, 42.073196, 54.276386>,  <27.049627, 41.677444, 54.322865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014685, 42.073196, 54.276386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453824, -0.064312, -0.888767,
		-0.886799, -0.130371, -0.443386,
		-0.087355, 0.989377, -0.116198,
		26.988478, 42.370010, 54.241528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.799013, 41.828259, 53.491871>,  <27.049627, 41.677444, 54.322865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.799013, 41.828259, 53.491871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015875, 42.118717, 53.661003>,  <27.145992, 42.292992, 53.762482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015875, 42.118717, 53.661003>,  <26.799013, 41.828259, 53.491871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015875, 42.118717, 53.661003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654751, -0.049681, -0.754210,
		-0.526658, 0.685746, -0.502378,
		0.542155, 0.726143, 0.422828,
		27.178522, 42.336559, 53.787853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897177, 42.095768, 52.873150>,  <26.799013, 41.828259, 53.491871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897177, 42.095768, 52.873150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166544, 42.222980, 53.140091>,  <27.328165, 42.299309, 53.300255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166544, 42.222980, 53.140091>,  <26.897177, 42.095768, 52.873150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166544, 42.222980, 53.140091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721139, -0.083945, -0.687686,
		-0.162686, 0.944356, -0.285876,
		0.673418, 0.318034, 0.667355,
		27.368568, 42.318390, 53.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.375250, 42.608143, 52.483143>,  <26.897177, 42.095768, 52.873150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.375250, 42.608143, 52.483143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595907, 42.490334, 52.795284>,  <27.728302, 42.419647, 52.982567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595907, 42.490334, 52.795284>,  <27.375250, 42.608143, 52.483143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595907, 42.490334, 52.795284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793526, -0.102864, -0.599780,
		0.256920, 0.950091, 0.176970,
		0.551642, -0.294526, 0.780350,
		27.761400, 42.401978, 53.029388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984934, 42.934162, 52.441418>,  <27.375250, 42.608143, 52.483143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984934, 42.934162, 52.441418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091354, 42.628090, 52.675930>,  <28.155207, 42.444447, 52.816635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091354, 42.628090, 52.675930>,  <27.984934, 42.934162, 52.441418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091354, 42.628090, 52.675930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833186, -0.123332, -0.539063,
		0.484785, 0.631897, 0.604722,
		0.266051, -0.765176, 0.586278,
		28.171169, 42.398537, 52.851814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653526, 43.033092, 52.724442>,  <27.984934, 42.934162, 52.441418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653526, 43.033092, 52.724442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621393, 42.635323, 52.751766>,  <28.602114, 42.396660, 52.768162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.621393, 42.635323, 52.751766>,  <28.653526, 43.033092, 52.724442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621393, 42.635323, 52.751766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819817, -0.104895, -0.562936,
		0.566963, 0.010778, 0.823673,
		-0.080332, -0.994425, 0.068308,
		28.597294, 42.336994, 52.772259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385639, 42.859795, 52.571003>,  <28.653526, 43.033092, 52.724442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385639, 42.859795, 52.571003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189425, 42.511250, 52.566875>,  <29.071695, 42.302124, 52.564400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189425, 42.511250, 52.566875>,  <29.385639, 42.859795, 52.571003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189425, 42.511250, 52.566875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680459, -0.375615, -0.629197,
		0.544379, -0.315669, 0.777177,
		-0.490538, -0.871359, -0.010323,
		29.042263, 42.249844, 52.563778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909193, 42.305836, 52.460167>,  <29.385639, 42.859795, 52.571003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909193, 42.305836, 52.460167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559666, 42.145649, 52.349842>,  <29.349949, 42.049538, 52.283649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.559666, 42.145649, 52.349842>,  <29.909193, 42.305836, 52.460167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559666, 42.145649, 52.349842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440233, -0.410663, -0.798468,
		0.206497, -0.819134, 0.535144,
		-0.873816, -0.400469, -0.275809,
		29.297522, 42.025509, 52.267097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631977, 42.407864, 52.926643>,  <29.909193, 42.305836, 52.460167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631977, 42.407864, 52.926643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892717, 42.509945, 53.212292>,  <31.049162, 42.571194, 53.383678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892717, 42.509945, 53.212292>,  <30.631977, 42.407864, 52.926643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892717, 42.509945, 53.212292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708156, -0.132044, 0.693598,
		0.271306, -0.957828, 0.094653,
		0.651849, 0.255207, 0.714116,
		31.088272, 42.586506, 53.426525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720802, 41.880589, 53.453888>,  <30.631977, 42.407864, 52.926643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720802, 41.880589, 53.453888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825750, 42.234718, 53.607437>,  <30.888720, 42.447197, 53.699566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.825750, 42.234718, 53.607437>,  <30.720802, 41.880589, 53.453888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825750, 42.234718, 53.607437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595229, -0.164633, 0.786510,
		0.759516, -0.434850, 0.483777,
		0.262369, 0.885325, 0.383877,
		30.904461, 42.500317, 53.722599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683659, 41.774715, 54.090107>,  <30.720802, 41.880589, 53.453888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683659, 41.774715, 54.090107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689974, 42.174522, 54.100857>,  <30.693764, 42.414406, 54.107307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689974, 42.174522, 54.100857>,  <30.683659, 41.774715, 54.090107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689974, 42.174522, 54.100857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436778, -0.017284, 0.899404,
		0.899431, -0.025940, 0.436292,
		0.015789, 0.999514, 0.026876,
		30.694710, 42.474377, 54.108921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891371, 41.995029, 54.714375>,  <30.683659, 41.774715, 54.090107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891371, 41.995029, 54.714375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714729, 42.330120, 54.585873>,  <30.608744, 42.531174, 54.508770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714729, 42.330120, 54.585873>,  <30.891371, 41.995029, 54.714375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714729, 42.330120, 54.585873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314559, 0.190772, 0.929870,
		0.840260, 0.511690, 0.179267,
		-0.441606, 0.837723, -0.321255,
		30.582247, 42.581436, 54.489494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069408, 42.530464, 55.251816>,  <30.891371, 41.995029, 54.714375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069408, 42.530464, 55.251816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748178, 42.634300, 55.037273>,  <30.555441, 42.696602, 54.908546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.748178, 42.634300, 55.037273>,  <31.069408, 42.530464, 55.251816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748178, 42.634300, 55.037273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525556, 0.115629, 0.842865,
		0.280821, 0.958771, 0.043572,
		-0.803076, 0.259594, -0.536358,
		30.507256, 42.712177, 54.876366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855013, 43.111874, 55.630432>,  <31.069408, 42.530464, 55.251816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855013, 43.111874, 55.630432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544899, 43.014416, 55.397339>,  <30.358831, 42.955940, 55.257484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544899, 43.014416, 55.397339>,  <30.855013, 43.111874, 55.630432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544899, 43.014416, 55.397339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602858, 0.010239, 0.797783,
		-0.188409, 0.969810, -0.154821,
		-0.775283, -0.243644, -0.582729,
		30.312313, 42.941322, 55.222519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315672, 43.577541, 55.777500>,  <30.855013, 43.111874, 55.630432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315672, 43.577541, 55.777500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158447, 43.231998, 55.651485>,  <30.064112, 43.024673, 55.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158447, 43.231998, 55.651485>,  <30.315672, 43.577541, 55.777500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158447, 43.231998, 55.651485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606553, -0.013912, 0.794921,
		-0.691083, 0.503541, -0.518508,
		-0.393062, -0.863859, -0.315038,
		30.040529, 42.972839, 55.556973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718132, 43.546024, 56.229160>,  <30.315672, 43.577541, 55.777500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718132, 43.546024, 56.229160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692219, 43.194832, 56.039440>,  <29.676670, 42.984116, 55.925610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.692219, 43.194832, 56.039440>,  <29.718132, 43.546024, 56.229160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692219, 43.194832, 56.039440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794560, -0.242166, 0.556803,
		-0.603719, 0.412931, -0.681917,
		-0.064784, -0.877977, -0.474299,
		29.672783, 42.931438, 55.897152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154442, 43.529957, 55.785160>,  <29.718132, 43.546024, 56.229160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154442, 43.529957, 55.785160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218227, 43.143326, 55.865467>,  <29.256498, 42.911346, 55.913651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218227, 43.143326, 55.865467>,  <29.154442, 43.529957, 55.785160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218227, 43.143326, 55.865467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866940, -0.039832, 0.496817,
		-0.472214, -0.253275, -0.844314,
		0.159463, -0.966574, 0.200765,
		29.266066, 42.853355, 55.925697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494848, 43.183304, 55.693565>,  <29.154442, 43.529957, 55.785160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494848, 43.183304, 55.693565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727180, 42.936340, 55.905769>,  <28.866579, 42.788162, 56.033092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727180, 42.936340, 55.905769>,  <28.494848, 43.183304, 55.693565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727180, 42.936340, 55.905769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762014, -0.183178, 0.621113,
		-0.286307, -0.765013, -0.576874,
		0.580830, -0.617415, 0.530505,
		28.901430, 42.751118, 56.064922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102987, 42.578300, 55.780300>,  <28.494848, 43.183304, 55.693565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102987, 42.578300, 55.780300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380985, 42.595978, 56.067360>,  <28.547785, 42.606583, 56.239597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380985, 42.595978, 56.067360>,  <28.102987, 42.578300, 55.780300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380985, 42.595978, 56.067360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701997, -0.174152, 0.690558,
		0.155498, -0.983727, -0.090013,
		0.694996, 0.044192, 0.717654,
		28.589485, 42.609234, 56.282658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917101, 41.998096, 56.168095>,  <28.102987, 42.578300, 55.780300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917101, 41.998096, 56.168095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107712, 42.268425, 56.393017>,  <28.222078, 42.430622, 56.527969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107712, 42.268425, 56.393017>,  <27.917101, 41.998096, 56.168095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107712, 42.268425, 56.393017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644352, -0.166652, 0.746349,
		0.598107, -0.717981, 0.356051,
		0.476528, 0.675818, 0.562309,
		28.250669, 42.471172, 56.561710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768480, 41.796703, 56.865704>,  <27.917101, 41.998096, 56.168095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768480, 41.796703, 56.865704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899677, 42.173649, 56.892159>,  <27.978395, 42.399815, 56.908031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899677, 42.173649, 56.892159>,  <27.768480, 41.796703, 56.865704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899677, 42.173649, 56.892159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653372, 0.175727, 0.736359,
		0.682295, -0.284734, 0.673350,
		0.327992, 0.942362, 0.066139,
		27.998075, 42.456356, 56.911999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565275, 41.995129, 57.537071>,  <27.768480, 41.796703, 56.865704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565275, 41.995129, 57.537071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662134, 42.343754, 57.366547>,  <27.720249, 42.552929, 57.264233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662134, 42.343754, 57.366547>,  <27.565275, 41.995129, 57.537071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662134, 42.343754, 57.366547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402066, 0.490023, 0.773447,
		0.883010, -0.015884, 0.469085,
		0.242148, 0.871565, -0.426309,
		27.734779, 42.605225, 57.238655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234745, 41.992695, 57.878223>,  <27.565275, 41.995129, 57.537071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234745, 41.992695, 57.878223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234385, 41.854698, 58.253666>,  <28.234169, 41.771900, 58.478931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234385, 41.854698, 58.253666>,  <28.234745, 41.992695, 57.878223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234385, 41.854698, 58.253666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884623, -0.437953, -0.160126,
		0.466307, 0.830167, 0.305581,
		-0.000899, -0.344992, 0.938605,
		28.234116, 41.751202, 58.535248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948050, 42.059937, 58.046894>,  <28.234745, 41.992695, 57.878223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948050, 42.059937, 58.046894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752047, 41.798016, 58.277069>,  <28.634445, 41.640862, 58.415173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752047, 41.798016, 58.277069>,  <28.948050, 42.059937, 58.046894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752047, 41.798016, 58.277069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775008, -0.629438, -0.056301,
		0.399066, 0.418377, 0.815909,
		-0.490009, -0.654804, 0.575433,
		28.605043, 41.601574, 58.449699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528109, 41.744076, 58.459957>,  <28.948050, 42.059937, 58.046894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528109, 41.744076, 58.459957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240652, 41.468513, 58.497841>,  <29.068178, 41.303177, 58.520573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.240652, 41.468513, 58.497841>,  <29.528109, 41.744076, 58.459957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240652, 41.468513, 58.497841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687064, -0.724431, -0.056064,
		0.107235, 0.024784, 0.993925,
		-0.718640, -0.688902, 0.094713,
		29.025061, 41.261845, 58.526257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714180, 41.240414, 58.947430>,  <29.528109, 41.744076, 58.459957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714180, 41.240414, 58.947430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416729, 41.050369, 58.759266>,  <29.238258, 40.936344, 58.646366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.416729, 41.050369, 58.759266>,  <29.714180, 41.240414, 58.947430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416729, 41.050369, 58.759266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595618, -0.790386, -0.143281,
		-0.303734, -0.386734, 0.870737,
		-0.743630, -0.475107, -0.470413,
		29.193640, 40.907837, 58.618141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579832, 40.616100, 59.178715>,  <29.714180, 41.240414, 58.947430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579832, 40.616100, 59.178715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439453, 40.570660, 58.806923>,  <29.355225, 40.543396, 58.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439453, 40.570660, 58.806923>,  <29.579832, 40.616100, 59.178715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439453, 40.570660, 58.806923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708459, -0.681281, -0.184231,
		-0.612307, -0.723153, 0.319578,
		-0.350950, -0.113602, -0.929478,
		29.334167, 40.536579, 58.528080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541491, 39.876289, 59.178852>,  <29.579832, 40.616100, 59.178715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541491, 39.876289, 59.178852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549091, 40.023991, 58.807198>,  <29.553652, 40.112610, 58.584206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.549091, 40.023991, 58.807198>,  <29.541491, 39.876289, 59.178852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549091, 40.023991, 58.807198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559444, -0.774134, -0.296208,
		-0.828651, -0.514171, -0.221284,
		0.019002, 0.369249, -0.929136,
		29.554792, 40.134766, 58.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486200, 39.289619, 58.749462>,  <29.541491, 39.876289, 59.178852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486200, 39.289619, 58.749462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637785, 39.553974, 58.490349>,  <29.728735, 39.712585, 58.334881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637785, 39.553974, 58.490349>,  <29.486200, 39.289619, 58.749462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637785, 39.553974, 58.490349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643920, -0.691060, -0.328334,
		-0.664647, -0.292696, -0.687439,
		0.378960, 0.660882, -0.647784,
		29.751472, 39.752239, 58.296013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.943983, 38.769268, 58.509239>,  <29.486200, 39.289619, 58.749462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.943983, 38.769268, 58.509239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719767, 38.440361, 58.548565>,  <28.585238, 38.243015, 58.572159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719767, 38.440361, 58.548565>,  <28.943983, 38.769268, 58.509239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719767, 38.440361, 58.548565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762146, 0.558669, 0.327142,
		-0.323925, 0.108446, -0.939847,
		-0.560541, -0.822270, 0.098315,
		28.551605, 38.193680, 58.578060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228157, 38.880642, 58.124168>,  <28.943983, 38.769268, 58.509239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228157, 38.880642, 58.124168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188585, 38.602299, 58.408703>,  <28.164843, 38.435291, 58.579422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188585, 38.602299, 58.408703>,  <28.228157, 38.880642, 58.124168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188585, 38.602299, 58.408703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712360, 0.548649, 0.437640,
		-0.694807, -0.463428, -0.549980,
		-0.098931, -0.695859, 0.711333,
		28.158905, 38.393539, 58.622101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505575, 38.732033, 58.154869>,  <28.228157, 38.880642, 58.124168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505575, 38.732033, 58.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647951, 38.596649, 58.503296>,  <27.733377, 38.515419, 58.712353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647951, 38.596649, 58.503296>,  <27.505575, 38.732033, 58.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647951, 38.596649, 58.503296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729059, 0.482544, 0.485412,
		-0.584619, -0.807834, -0.075002,
		0.355940, -0.338462, 0.871063,
		27.754734, 38.495110, 58.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983505, 38.386787, 58.511559>,  <27.505575, 38.732033, 58.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983505, 38.386787, 58.511559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239944, 38.515335, 58.790333>,  <27.393808, 38.592464, 58.957596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239944, 38.515335, 58.790333>,  <26.983505, 38.386787, 58.511559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239944, 38.515335, 58.790333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720423, 0.565033, 0.402156,
		-0.264549, -0.759908, 0.593763,
		0.641097, 0.321370, 0.696934,
		27.432274, 38.611748, 58.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568832, 38.564205, 59.055805>,  <26.983505, 38.386787, 58.511559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568832, 38.564205, 59.055805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908476, 38.727791, 59.189529>,  <27.112263, 38.825943, 59.269764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.908476, 38.727791, 59.189529>,  <26.568832, 38.564205, 59.055805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908476, 38.727791, 59.189529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515241, 0.780688, 0.353628,
		-0.116373, -0.472520, 0.873603,
		0.849108, 0.408963, 0.334312,
		27.163208, 38.850479, 59.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379574, 38.684425, 59.798023>,  <26.568832, 38.564205, 59.055805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379574, 38.684425, 59.798023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682234, 38.907223, 59.661064>,  <26.863831, 39.040901, 59.578888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682234, 38.907223, 59.661064>,  <26.379574, 38.684425, 59.798023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682234, 38.907223, 59.661064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383330, 0.802168, 0.457804,
		0.529656, -0.215146, 0.820473,
		0.756652, 0.556991, -0.342402,
		26.909229, 39.074322, 59.558342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495398, 39.020973, 60.257858>,  <26.379574, 38.684425, 59.798023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495398, 39.020973, 60.257858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698380, 39.235123, 59.987785>,  <26.820169, 39.363613, 59.825741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698380, 39.235123, 59.987785>,  <26.495398, 39.020973, 60.257858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698380, 39.235123, 59.987785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453401, 0.832219, 0.319122,
		0.732745, 0.144186, 0.665053,
		0.507456, 0.535371, -0.675179,
		26.850616, 39.395733, 59.785233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726942, 39.606663, 60.631084>,  <26.495398, 39.020973, 60.257858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726942, 39.606663, 60.631084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734962, 39.719128, 60.247303>,  <26.739775, 39.786606, 60.017036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734962, 39.719128, 60.247303>,  <26.726942, 39.606663, 60.631084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734962, 39.719128, 60.247303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373896, 0.892121, 0.253618,
		0.927254, 0.353649, 0.123013,
		0.020050, 0.281162, -0.959451,
		26.740978, 39.803478, 59.959469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972370, 40.220440, 60.679363>,  <26.726942, 39.606663, 60.631084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972370, 40.220440, 60.679363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810093, 40.206818, 60.314014>,  <26.712727, 40.198643, 60.094803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810093, 40.206818, 60.314014>,  <26.972370, 40.220440, 60.679363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810093, 40.206818, 60.314014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486932, 0.853744, 0.184443,
		0.773507, 0.519578, -0.362942,
		-0.405692, -0.034060, -0.913375,
		26.688385, 40.196598, 60.040001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.062298, 35.064453, 46.685009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372696, 35.183300, 46.907555>,  <36.558937, 35.254608, 47.041084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372696, 35.183300, 46.907555>,  <36.062298, 35.064453, 46.685009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372696, 35.183300, 46.907555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576761, -0.022756, 0.816596,
		0.255285, -0.954570, 0.153707,
		0.776000, 0.297117, 0.556368,
		36.605495, 35.272434, 47.074467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143547, 34.450298, 47.157242>,  <36.062298, 35.064453, 46.685009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143547, 34.450298, 47.157242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269581, 34.803558, 47.296242>,  <36.345203, 35.015514, 47.379642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269581, 34.803558, 47.296242>,  <36.143547, 34.450298, 47.157242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269581, 34.803558, 47.296242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541010, -0.133697, 0.830321,
		0.779762, -0.449626, 0.435669,
		0.315087, 0.883155, 0.347504,
		36.364105, 35.068504, 47.400494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381569, 34.336060, 47.779850>,  <36.143547, 34.450298, 47.157242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381569, 34.336060, 47.779850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314552, 34.730404, 47.778324>,  <36.274342, 34.967010, 47.777409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.314552, 34.730404, 47.778324>,  <36.381569, 34.336060, 47.779850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314552, 34.730404, 47.778324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657070, -0.108780, 0.745940,
		0.734975, 0.127488, 0.666003,
		-0.167546, 0.985857, -0.003818,
		36.264290, 35.026161, 47.777180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250660, 34.476082, 48.467453>,  <36.381569, 34.336060, 47.779850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250660, 34.476082, 48.467453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106541, 34.777302, 48.247234>,  <36.020069, 34.958035, 48.115101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.106541, 34.777302, 48.247234>,  <36.250660, 34.476082, 48.467453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106541, 34.777302, 48.247234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715624, 0.155461, 0.680966,
		0.598389, 0.639338, 0.482886,
		-0.360298, 0.753047, -0.550551,
		35.998451, 35.003216, 48.082069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969479, 34.943184, 48.943321>,  <36.250660, 34.476082, 48.467453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969479, 34.943184, 48.943321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792557, 35.055229, 48.602524>,  <35.686401, 35.122456, 48.398045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792557, 35.055229, 48.602524>,  <35.969479, 34.943184, 48.943321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792557, 35.055229, 48.602524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867282, 0.108381, 0.485876,
		0.228442, 0.953829, 0.195001,
		-0.442308, 0.280115, -0.851997,
		35.659863, 35.139263, 48.346924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497475, 35.472469, 49.150177>,  <35.969479, 34.943184, 48.943321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497475, 35.472469, 49.150177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387333, 35.359459, 48.782623>,  <35.321247, 35.291653, 48.562092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.387333, 35.359459, 48.782623>,  <35.497475, 35.472469, 49.150177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387333, 35.359459, 48.782623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957051, 0.170778, 0.234284,
		0.090733, 0.943934, -0.317420,
		-0.275357, -0.282529, -0.918888,
		35.304726, 35.274700, 48.506958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081356, 36.001057, 48.869099>,  <35.497475, 35.472469, 49.150177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081356, 36.001057, 48.869099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977463, 35.677956, 48.657413>,  <34.915127, 35.484093, 48.530403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.977463, 35.677956, 48.657413>,  <35.081356, 36.001057, 48.869099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977463, 35.677956, 48.657413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962236, 0.170235, 0.212420,
		-0.081492, 0.564403, -0.821467,
		-0.259733, -0.807756, -0.529216,
		34.899544, 35.435627, 48.498650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596394, 36.215416, 48.303226>,  <35.081356, 36.001057, 48.869099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596394, 36.215416, 48.303226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550465, 35.834576, 48.416595>,  <34.522907, 35.606071, 48.484615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550465, 35.834576, 48.416595>,  <34.596394, 36.215416, 48.303226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550465, 35.834576, 48.416595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979588, 0.155909, 0.126887,
		-0.164996, -0.263066, -0.950564,
		-0.114822, -0.952097, 0.283421,
		34.516018, 35.548946, 48.501621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973244, 36.035919, 47.974377>,  <34.596394, 36.215416, 48.303226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973244, 36.035919, 47.974377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029491, 35.738846, 48.236263>,  <34.063240, 35.560604, 48.393394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.029491, 35.738846, 48.236263>,  <33.973244, 36.035919, 47.974377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029491, 35.738846, 48.236263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983970, -0.031569, 0.175520,
		-0.109686, -0.668903, -0.735213,
		0.140616, -0.742679, 0.654717,
		34.071674, 35.516041, 48.432678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487194, 35.493999, 47.858013>,  <33.973244, 36.035919, 47.974377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487194, 35.493999, 47.858013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601906, 35.445591, 48.238144>,  <33.670731, 35.416546, 48.466221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.601906, 35.445591, 48.238144>,  <33.487194, 35.493999, 47.858013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601906, 35.445591, 48.238144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955676, 0.032872, 0.292578,
		-0.066651, -0.992104, -0.106244,
		0.286775, -0.121035, 0.950321,
		33.687939, 35.409283, 48.523239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126770, 34.957775, 48.042297>,  <33.487194, 35.493999, 47.858013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126770, 34.957775, 48.042297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212948, 35.134190, 48.390797>,  <33.264656, 35.240036, 48.599895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.212948, 35.134190, 48.390797>,  <33.126770, 34.957775, 48.042297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212948, 35.134190, 48.390797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954510, -0.093225, 0.283230,
		0.206136, -0.892636, 0.400886,
		0.215448, 0.441034, 0.871247,
		33.277584, 35.266499, 48.652172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875057, 34.591206, 48.473965>,  <33.126770, 34.957775, 48.042297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875057, 34.591206, 48.473965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949116, 34.906071, 48.709286>,  <32.993553, 35.094990, 48.850479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.949116, 34.906071, 48.709286>,  <32.875057, 34.591206, 48.473965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949116, 34.906071, 48.709286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870724, -0.146132, 0.469557,
		0.455586, -0.599188, 0.658342,
		0.185148, 0.787158, 0.588304,
		33.004662, 35.142220, 48.885777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773075, 34.422306, 49.263496>,  <32.875057, 34.591206, 48.473965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773075, 34.422306, 49.263496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.728951, 34.813152, 49.190754>,  <32.702477, 35.047661, 49.147106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.728951, 34.813152, 49.190754>,  <32.773075, 34.422306, 49.263496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728951, 34.813152, 49.190754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855153, -0.000064, 0.518376,
		0.506502, 0.212702, 0.835591,
		-0.110313, 0.977117, -0.181861,
		32.695858, 35.106289, 49.136196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380005, 34.606289, 49.845448>,  <32.773075, 34.422306, 49.263496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380005, 34.606289, 49.845448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362820, 34.860817, 49.537357>,  <32.352509, 35.013535, 49.352505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362820, 34.860817, 49.537357>,  <32.380005, 34.606289, 49.845448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362820, 34.860817, 49.537357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987317, 0.090897, 0.130166,
		0.152839, 0.766048, 0.624349,
		-0.042962, 0.636324, -0.770224,
		32.349930, 35.051716, 49.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034027, 35.150845, 50.060543>,  <32.380005, 34.606289, 49.845448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034027, 35.150845, 50.060543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962734, 35.131611, 49.667419>,  <31.919960, 35.120071, 49.431545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.962734, 35.131611, 49.667419>,  <32.034027, 35.150845, 50.060543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962734, 35.131611, 49.667419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979733, 0.101473, 0.172706,
		0.091424, 0.993675, -0.065198,
		-0.178229, -0.048087, -0.982813,
		31.909266, 35.117184, 49.372574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598837, 35.775463, 49.963959>,  <32.034027, 35.150845, 50.060543>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598837, 35.775463, 49.963959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525719, 35.509338, 49.674423>,  <31.481848, 35.349663, 49.500702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.525719, 35.509338, 49.674423>,  <31.598837, 35.775463, 49.963959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525719, 35.509338, 49.674423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967760, 0.251528, 0.013207,
		0.173280, 0.702919, -0.689840,
		-0.182797, -0.665311, -0.723842,
		31.470879, 35.309746, 49.457272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231651, 36.144108, 49.561352>,  <31.598837, 35.775463, 49.963959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231651, 36.144108, 49.561352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145369, 35.762955, 49.476044>,  <31.093599, 35.534264, 49.424858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.145369, 35.762955, 49.476044>,  <31.231651, 36.144108, 49.561352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145369, 35.762955, 49.476044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974053, 0.194656, 0.115455,
		-0.068500, 0.232643, -0.970147,
		-0.215705, -0.952883, -0.213273,
		31.080658, 35.477089, 49.412064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624651, 36.062202, 49.039158>,  <31.231651, 36.144108, 49.561352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624651, 36.062202, 49.039158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.632084, 35.723457, 49.251751>,  <30.636543, 35.520210, 49.379307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.632084, 35.723457, 49.251751>,  <30.624651, 36.062202, 49.039158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632084, 35.723457, 49.251751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959467, 0.134406, 0.247706,
		-0.281208, -0.514546, -0.810040,
		0.018582, -0.846863, 0.531486,
		30.637659, 35.469398, 49.411198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996836, 35.759422, 48.967274>,  <30.624651, 36.062202, 49.039158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996836, 35.759422, 48.967274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.101189, 35.549919, 49.291649>,  <30.163799, 35.424217, 49.486275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.101189, 35.549919, 49.291649>,  <29.996836, 35.759422, 48.967274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101189, 35.549919, 49.291649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923101, 0.110506, 0.368337,
		-0.282533, -0.844669, -0.454653,
		0.260881, -0.523758, 0.810937,
		30.179453, 35.392792, 49.534931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548113, 35.239883, 49.053818>,  <29.996836, 35.759422, 48.967274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548113, 35.239883, 49.053818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.708204, 35.286034, 49.417469>,  <29.804258, 35.313725, 49.635658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.708204, 35.286034, 49.417469>,  <29.548113, 35.239883, 49.053818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708204, 35.286034, 49.417469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894435, -0.166792, 0.414929,
		0.199506, -0.979219, 0.036436,
		0.400229, 0.115371, 0.909124,
		29.828274, 35.320644, 49.690205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238287, 34.652576, 49.450222>,  <29.548113, 35.239883, 49.053818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238287, 34.652576, 49.450222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378101, 34.910656, 49.721970>,  <29.461990, 35.065506, 49.885017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.378101, 34.910656, 49.721970>,  <29.238287, 34.652576, 49.450222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378101, 34.910656, 49.721970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828122, -0.126400, 0.546111,
		0.438224, -0.753483, 0.490125,
		0.349534, 0.645203, 0.679367,
		29.482962, 35.104218, 49.925781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171225, 34.331642, 50.102783>,  <29.238287, 34.652576, 49.450222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171225, 34.331642, 50.102783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196053, 34.721443, 50.189037>,  <29.210949, 34.955322, 50.240791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196053, 34.721443, 50.189037>,  <29.171225, 34.331642, 50.102783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196053, 34.721443, 50.189037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825610, -0.071269, 0.559723,
		0.560818, -0.212773, 0.800132,
		0.062069, 0.974499, 0.215636,
		29.214674, 35.013794, 50.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034739, 34.368668, 50.807674>,  <29.171225, 34.331642, 50.102783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034739, 34.368668, 50.807674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.972113, 34.744095, 50.684666>,  <28.934536, 34.969353, 50.610859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.972113, 34.744095, 50.684666>,  <29.034739, 34.368668, 50.807674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972113, 34.744095, 50.684666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858783, 0.024421, 0.511757,
		0.487830, 0.344219, 0.802206,
		-0.156566, 0.938572, -0.307523,
		28.925142, 35.025665, 50.592407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699629, 34.641449, 51.375530>,  <29.034739, 34.368668, 50.807674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699629, 34.641449, 51.375530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.611279, 34.907059, 51.089794>,  <28.558270, 35.066425, 50.918354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.611279, 34.907059, 51.089794>,  <28.699629, 34.641449, 51.375530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611279, 34.907059, 51.089794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865236, 0.204598, 0.457718,
		0.450090, 0.719173, 0.529349,
		-0.220875, 0.664026, -0.714341,
		28.545015, 35.106266, 50.875492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397820, 35.315945, 51.699898>,  <28.699629, 34.641449, 51.375530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397820, 35.315945, 51.699898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253929, 35.307392, 51.326771>,  <28.167595, 35.302261, 51.102894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.253929, 35.307392, 51.326771>,  <28.397820, 35.315945, 51.699898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253929, 35.307392, 51.326771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923613, 0.150056, 0.352736,
		0.132431, 0.988446, -0.073731,
		-0.359724, -0.021386, -0.932813,
		28.146011, 35.300976, 51.046928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999002, 35.895901, 51.546997>,  <28.397820, 35.315945, 51.699898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999002, 35.895901, 51.546997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855719, 35.646023, 51.269455>,  <27.769749, 35.496094, 51.102928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.855719, 35.646023, 51.269455>,  <27.999002, 35.895901, 51.546997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855719, 35.646023, 51.269455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933379, 0.221973, 0.282013,
		-0.022155, 0.748652, -0.662593,
		-0.358208, -0.624699, -0.693858,
		27.748257, 35.458614, 51.061298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405991, 36.150223, 51.295307>,  <27.999002, 35.895901, 51.546997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405991, 36.150223, 51.295307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.358257, 35.774406, 51.166916>,  <27.329618, 35.548916, 51.089882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.358257, 35.774406, 51.166916>,  <27.405991, 36.150223, 51.295307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.358257, 35.774406, 51.166916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967399, 0.037292, 0.250496,
		-0.223381, 0.340408, -0.913359,
		-0.119332, -0.939539, -0.320980,
		27.322458, 35.492546, 51.070621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793425, 36.206501, 50.911911>,  <27.405991, 36.150223, 51.295307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793425, 36.206501, 50.911911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841944, 35.818684, 50.997017>,  <26.871056, 35.585991, 51.048080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.841944, 35.818684, 50.997017>,  <26.793425, 36.206501, 50.911911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841944, 35.818684, 50.997017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937587, -0.041531, 0.345262,
		-0.325911, -0.241363, -0.914071,
		0.121296, -0.969546, 0.212764,
		26.878332, 35.527821, 51.060844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.121288, 35.970703, 50.952927>,  <26.793425, 36.206501, 50.911911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.121288, 35.970703, 50.952927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.322647, 35.649597, 51.080772>,  <26.443462, 35.456932, 51.157478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.322647, 35.649597, 51.080772>,  <26.121288, 35.970703, 50.952927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322647, 35.649597, 51.080772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828608, -0.343642, 0.441949,
		-0.244949, -0.487312, -0.838169,
		0.503397, -0.802768, 0.319615,
		26.473667, 35.408768, 51.176659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765081, 35.397820, 50.726128>,  <26.121288, 35.970703, 50.952927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765081, 35.397820, 50.726128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.979879, 35.259766, 51.034027>,  <26.108759, 35.176933, 51.218769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.979879, 35.259766, 51.034027>,  <25.765081, 35.397820, 50.726128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979879, 35.259766, 51.034027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827974, -0.390370, 0.402580,
		0.161543, -0.853517, -0.495391,
		0.536995, -0.345136, 0.769752,
		26.140978, 35.156223, 51.264954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.593433, 34.711151, 50.730339>,  <25.765081, 35.397820, 50.726128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.593433, 34.711151, 50.730339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.711081, 34.829220, 51.093960>,  <25.781668, 34.900063, 51.312130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.711081, 34.829220, 51.093960>,  <25.593433, 34.711151, 50.730339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.711081, 34.829220, 51.093960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883988, -0.277621, 0.376155,
		0.363403, -0.914219, 0.179280,
		0.294116, 0.295177, 0.909047,
		25.799314, 34.917774, 51.366673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420750, 34.189209, 51.201923>,  <25.593433, 34.711151, 50.730339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420750, 34.189209, 51.201923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429564, 34.525158, 51.418858>,  <25.434853, 34.726727, 51.549019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.429564, 34.525158, 51.418858>,  <25.420750, 34.189209, 51.201923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429564, 34.525158, 51.418858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759120, -0.338944, 0.555747,
		0.650578, -0.423942, 0.630096,
		0.022037, 0.839875, 0.542332,
		25.436174, 34.777119, 51.581558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.467113, 33.885513, 51.886013>,  <25.420750, 34.189209, 51.201923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.467113, 33.885513, 51.886013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.364473, 34.271675, 51.904549>,  <25.302889, 34.503372, 51.915672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.364473, 34.271675, 51.904549>,  <25.467113, 33.885513, 51.886013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364473, 34.271675, 51.904549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717892, -0.222478, 0.659648,
		0.647138, 0.135998, 0.750145,
		-0.256602, 0.965406, 0.046342,
		25.287493, 34.561298, 51.918449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258724, 33.969540, 52.499664>,  <25.467113, 33.885513, 51.886013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258724, 33.969540, 52.499664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.092812, 34.289474, 52.326130>,  <24.993263, 34.481438, 52.222012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.092812, 34.289474, 52.326130>,  <25.258724, 33.969540, 52.499664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.092812, 34.289474, 52.326130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829020, -0.135655, 0.542516,
		0.375075, 0.584681, 0.719352,
		-0.414782, 0.799841, -0.433831,
		24.968376, 34.529427, 52.195980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036770, 34.368328, 53.022259>,  <25.258724, 33.969540, 52.499664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036770, 34.368328, 53.022259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.817303, 34.478382, 52.706470>,  <24.685623, 34.544415, 52.516998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.817303, 34.478382, 52.706470>,  <25.036770, 34.368328, 53.022259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.817303, 34.478382, 52.706470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834798, -0.128816, 0.535274,
		0.045574, 0.952738, 0.300356,
		-0.548667, 0.275131, -0.789473,
		24.652702, 34.560921, 52.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.726051, 32.950356, 49.194607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464798, 32.683208, 49.337360>,  <36.308044, 32.522919, 49.423012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.464798, 32.683208, 49.337360>,  <36.726051, 32.950356, 49.194607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464798, 32.683208, 49.337360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403887, 0.705905, 0.581870,
		-0.640542, 0.235897, -0.730794,
		-0.653132, -0.667870, 0.356886,
		36.268860, 32.482849, 49.444427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217335, 33.330505, 49.399441>,  <36.726051, 32.950356, 49.194607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217335, 33.330505, 49.399441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076305, 33.001312, 49.577610>,  <35.991688, 32.803799, 49.684509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.076305, 33.001312, 49.577610>,  <36.217335, 33.330505, 49.399441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076305, 33.001312, 49.577610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542517, 0.567594, 0.619284,
		-0.762475, -0.023305, -0.646598,
		-0.352573, -0.822979, 0.445420,
		35.970535, 32.754417, 49.711235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587765, 33.533680, 49.683578>,  <36.217335, 33.330505, 49.399441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587765, 33.533680, 49.683578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625954, 33.192150, 49.888271>,  <35.648869, 32.987232, 50.011086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.625954, 33.192150, 49.888271>,  <35.587765, 33.533680, 49.683578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625954, 33.192150, 49.888271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590665, 0.365201, 0.719543,
		-0.801248, -0.370961, -0.469456,
		0.095477, -0.853824, 0.511731,
		35.654598, 32.936005, 50.041790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960979, 33.418270, 49.815544>,  <35.587765, 33.533680, 49.683578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960979, 33.418270, 49.815544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180809, 33.212753, 50.079052>,  <35.312706, 33.089443, 50.237156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.180809, 33.212753, 50.079052>,  <34.960979, 33.418270, 49.815544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.180809, 33.212753, 50.079052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660806, 0.215132, 0.719064,
		-0.511174, -0.830502, -0.221287,
		0.549578, -0.513794, 0.658771,
		35.345684, 33.058617, 50.276684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513023, 33.015114, 50.205418>,  <34.960979, 33.418270, 49.815544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513023, 33.015114, 50.205418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843918, 33.013103, 50.430149>,  <35.042454, 33.011898, 50.564987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843918, 33.013103, 50.430149>,  <34.513023, 33.015114, 50.205418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843918, 33.013103, 50.430149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561530, 0.026479, 0.827033,
		-0.019036, -0.999637, 0.019081,
		0.827238, -0.005029, 0.561830,
		35.092091, 33.011597, 50.598698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243896, 32.831898, 50.809952>,  <34.513023, 33.015114, 50.205418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243896, 32.831898, 50.809952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597881, 32.979603, 50.923443>,  <34.810272, 33.068226, 50.991535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.597881, 32.979603, 50.923443>,  <34.243896, 32.831898, 50.809952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597881, 32.979603, 50.923443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344298, 0.108600, 0.932558,
		0.313543, -0.922959, 0.223242,
		0.884957, 0.369259, 0.283723,
		34.863369, 33.090382, 51.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730022, 32.468826, 51.215553>,  <34.243896, 32.831898, 50.809952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730022, 32.468826, 51.215553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.763317, 32.858551, 51.299263>,  <34.783295, 33.092384, 51.349487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.763317, 32.858551, 51.299263>,  <34.730022, 32.468826, 51.215553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763317, 32.858551, 51.299263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356758, -0.166950, 0.919158,
		0.930481, -0.151168, 0.333696,
		0.083237, 0.974308, 0.209275,
		34.788288, 33.150845, 51.362045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572258, 32.614834, 51.905602>,  <34.730022, 32.468826, 51.215553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572258, 32.614834, 51.905602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680157, 32.995914, 51.849617>,  <34.744896, 33.224564, 51.816025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.680157, 32.995914, 51.849617>,  <34.572258, 32.614834, 51.905602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680157, 32.995914, 51.849617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232889, 0.205581, 0.950526,
		0.934344, -0.223809, 0.277330,
		0.269750, 0.952705, -0.139960,
		34.761082, 33.281727, 51.807629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895195, 32.837944, 52.504017>,  <34.572258, 32.614834, 51.905602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895195, 32.837944, 52.504017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778942, 33.196880, 52.371166>,  <34.709190, 33.412243, 52.291458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.778942, 33.196880, 52.371166>,  <34.895195, 32.837944, 52.504017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778942, 33.196880, 52.371166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243760, 0.266218, 0.932582,
		0.925265, 0.351995, 0.141366,
		-0.290630, 0.897345, -0.332124,
		34.691753, 33.466084, 52.271530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888889, 33.204117, 53.039257>,  <34.895195, 32.837944, 52.504017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888889, 33.204117, 53.039257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701397, 33.495770, 52.839794>,  <34.588902, 33.670761, 52.720116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.701397, 33.495770, 52.839794>,  <34.888889, 33.204117, 53.039257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701397, 33.495770, 52.839794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474192, 0.268584, 0.838454,
		0.745271, 0.629472, 0.219852,
		-0.468735, 0.729128, -0.498658,
		34.560776, 33.714508, 52.690197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941360, 33.735855, 53.462952>,  <34.888889, 33.204117, 53.039257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941360, 33.735855, 53.462952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624283, 33.812168, 53.231350>,  <34.434036, 33.857956, 53.092388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624283, 33.812168, 53.231350>,  <34.941360, 33.735855, 53.462952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624283, 33.812168, 53.231350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471357, 0.410508, 0.780581,
		0.386604, 0.891676, -0.235481,
		-0.792692, 0.190780, -0.579001,
		34.386475, 33.869404, 53.057648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693741, 34.397354, 53.618893>,  <34.941360, 33.735855, 53.462952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693741, 34.397354, 53.618893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388340, 34.188988, 53.466209>,  <34.205097, 34.063969, 53.374599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.388340, 34.188988, 53.466209>,  <34.693741, 34.397354, 53.618893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388340, 34.188988, 53.466209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616269, 0.411008, 0.671777,
		-0.193056, 0.748142, -0.634833,
		-0.763507, -0.520918, -0.381709,
		34.159286, 34.032711, 53.351696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820827, 35.131302, 53.365921>,  <34.693741, 34.397354, 53.618893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820827, 35.131302, 53.365921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128765, 35.356201, 53.486725>,  <35.313526, 35.491142, 53.559208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.128765, 35.356201, 53.486725>,  <34.820827, 35.131302, 53.365921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128765, 35.356201, 53.486725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624041, -0.563890, -0.540927,
		-0.133837, 0.604897, -0.784976,
		0.769845, 0.562253, 0.302011,
		35.359718, 35.524876, 53.577328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125332, 35.358150, 52.736610>,  <34.820827, 35.131302, 53.365921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125332, 35.358150, 52.736610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409958, 35.410324, 53.012775>,  <35.580734, 35.441628, 53.178474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.409958, 35.410324, 53.012775>,  <35.125332, 35.358150, 52.736610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409958, 35.410324, 53.012775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686594, -0.337762, -0.643821,
		0.149221, 0.932151, -0.329891,
		0.711563, 0.130430, 0.690410,
		35.623428, 35.449451, 53.219898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686920, 35.801651, 52.407288>,  <35.125332, 35.358150, 52.736610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686920, 35.801651, 52.407288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847446, 35.567055, 52.688705>,  <35.943760, 35.426296, 52.857555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.847446, 35.567055, 52.688705>,  <35.686920, 35.801651, 52.407288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847446, 35.567055, 52.688705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679960, -0.323876, -0.657844,
		0.613680, 0.742386, 0.268812,
		0.401313, -0.586487, 0.703549,
		35.967842, 35.391109, 52.899769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404453, 36.019611, 52.650364>,  <35.686920, 35.801651, 52.407288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404453, 36.019611, 52.650364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354408, 35.629990, 52.725792>,  <36.324383, 35.396217, 52.771049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354408, 35.629990, 52.725792>,  <36.404453, 36.019611, 52.650364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354408, 35.629990, 52.725792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695565, -0.221644, -0.683420,
		0.707485, 0.045655, 0.705252,
		-0.125113, -0.974058, 0.188566,
		36.316875, 35.337772, 52.782360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118423, 35.799286, 52.685326>,  <36.404453, 36.019611, 52.650364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118423, 35.799286, 52.685326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911053, 35.457386, 52.695499>,  <36.786633, 35.252247, 52.701603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911053, 35.457386, 52.695499>,  <37.118423, 35.799286, 52.685326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911053, 35.457386, 52.695499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754007, -0.470946, -0.457912,
		0.403375, -0.218218, 0.888634,
		-0.518423, -0.854746, 0.025430,
		36.755527, 35.200962, 52.703129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576199, 35.316044, 52.906040>,  <37.118423, 35.799286, 52.685326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576199, 35.316044, 52.906040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291409, 35.116756, 52.708103>,  <37.120533, 34.997185, 52.589340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291409, 35.116756, 52.708103>,  <37.576199, 35.316044, 52.906040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291409, 35.116756, 52.708103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698055, -0.425719, -0.575745,
		0.076183, -0.755343, 0.650885,
		-0.711980, -0.498216, -0.494839,
		37.077816, 34.967293, 52.559650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833652, 34.674347, 52.824585>,  <37.576199, 35.316044, 52.906040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833652, 34.674347, 52.824585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560524, 34.718235, 52.535664>,  <37.396648, 34.744568, 52.362312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.560524, 34.718235, 52.535664>,  <37.833652, 34.674347, 52.824585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560524, 34.718235, 52.535664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668095, -0.306312, -0.678102,
		-0.295648, -0.945587, 0.135855,
		-0.682819, 0.109715, -0.722302,
		37.355679, 34.751152, 52.318974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887276, 34.026405, 52.404953>,  <37.833652, 34.674347, 52.824585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887276, 34.026405, 52.404953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714981, 34.291847, 52.160297>,  <37.611603, 34.451111, 52.013504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.714981, 34.291847, 52.160297>,  <37.887276, 34.026405, 52.404953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714981, 34.291847, 52.160297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672710, -0.215694, -0.707769,
		-0.601604, -0.716315, -0.353506,
		-0.430736, 0.663603, -0.611635,
		37.585762, 34.490929, 51.976807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933537, 33.678761, 51.751301>,  <37.887276, 34.026405, 52.404953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933537, 33.678761, 51.751301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863853, 34.055187, 51.635342>,  <37.822044, 34.281044, 51.565765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863853, 34.055187, 51.635342>,  <37.933537, 33.678761, 51.751301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863853, 34.055187, 51.635342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568798, -0.144154, -0.809746,
		-0.803817, -0.305956, -0.510166,
		-0.174204, 0.941069, -0.289901,
		37.811592, 34.337509, 51.548370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783443, 33.662231, 51.039658>,  <37.933537, 33.678761, 51.751301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783443, 33.662231, 51.039658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893806, 34.040749, 51.107067>,  <37.960022, 34.267860, 51.147514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893806, 34.040749, 51.107067>,  <37.783443, 33.662231, 51.039658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893806, 34.040749, 51.107067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577717, -0.023137, -0.815909,
		-0.768192, 0.322473, -0.553075,
		0.275905, 0.946296, 0.168525,
		37.976578, 34.324638, 51.157623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042503, 33.791306, 50.304340>,  <37.783443, 33.662231, 51.039658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042503, 33.791306, 50.304340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151970, 34.111443, 50.517719>,  <38.217651, 34.303524, 50.645744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151970, 34.111443, 50.517719>,  <38.042503, 33.791306, 50.304340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151970, 34.111443, 50.517719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518820, 0.344174, -0.782541,
		-0.809896, 0.490918, -0.321042,
		0.273669, 0.800340, 0.533443,
		38.234070, 34.351543, 50.677753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741230, 34.504448, 50.036045>,  <38.042503, 33.791306, 50.304340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741230, 34.504448, 50.036045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068295, 34.598705, 50.246151>,  <38.264534, 34.655262, 50.372215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.068295, 34.598705, 50.246151>,  <37.741230, 34.504448, 50.036045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068295, 34.598705, 50.246151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329970, 0.555817, -0.763012,
		-0.471749, 0.797207, 0.376715,
		0.817663, 0.235646, 0.525260,
		38.313595, 34.669399, 50.403728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822350, 35.160221, 49.813148>,  <37.741230, 34.504448, 50.036045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822350, 35.160221, 49.813148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178547, 35.055305, 49.961861>,  <38.392265, 34.992355, 50.051086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178547, 35.055305, 49.961861>,  <37.822350, 35.160221, 49.813148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178547, 35.055305, 49.961861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452811, 0.431050, -0.780486,
		0.044458, 0.863365, 0.502617,
		0.890497, -0.262290, 0.371778,
		38.445698, 34.976620, 50.073395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261269, 35.760860, 49.639275>,  <37.822350, 35.160221, 49.813148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261269, 35.760860, 49.639275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464283, 35.419777, 49.688744>,  <38.586090, 35.215126, 49.718426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.464283, 35.419777, 49.688744>,  <38.261269, 35.760860, 49.639275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464283, 35.419777, 49.688744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561589, 0.218517, -0.798040,
		0.653472, 0.474487, 0.589777,
		0.507536, -0.852709, 0.123672,
		38.616543, 35.163963, 49.725845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850456, 36.384560, 49.387623>,  <38.261269, 35.760860, 49.639275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850456, 36.384560, 49.387623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042870, 36.324898, 49.042057>,  <38.158318, 36.289101, 48.834717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.042870, 36.324898, 49.042057>,  <37.850456, 36.384560, 49.387623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042870, 36.324898, 49.042057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643927, 0.608616, -0.463622,
		0.594947, 0.779320, 0.196722,
		0.481037, -0.149156, -0.863919,
		38.187180, 36.280151, 48.782883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017517, 36.759777, 48.754959>,  <37.850456, 36.384560, 49.387623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017517, 36.759777, 48.754959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684406, 36.911873, 48.594009>,  <37.484539, 37.003128, 48.497440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.684406, 36.911873, 48.594009>,  <38.017517, 36.759777, 48.754959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684406, 36.911873, 48.594009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197959, 0.883289, 0.424986,
		0.517007, 0.274265, -0.810853,
		-0.832776, 0.380236, -0.402374,
		37.434574, 37.025944, 48.473297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155117, 37.423504, 48.751900>,  <38.017517, 36.759777, 48.754959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155117, 37.423504, 48.751900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769676, 37.429512, 48.645138>,  <37.538410, 37.433117, 48.581081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769676, 37.429512, 48.645138>,  <38.155117, 37.423504, 48.751900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769676, 37.429512, 48.645138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073008, 0.945682, 0.316790,
		0.257166, 0.324747, -0.910167,
		-0.963605, 0.015018, -0.266906,
		37.480595, 37.434017, 48.565067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964870, 38.070206, 48.513905>,  <38.155117, 37.423504, 48.751900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964870, 38.070206, 48.513905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597012, 37.929840, 48.584454>,  <37.376297, 37.845623, 48.626781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597012, 37.929840, 48.584454>,  <37.964870, 38.070206, 48.513905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597012, 37.929840, 48.584454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272307, 0.893331, 0.357503,
		-0.283012, 0.280750, -0.917106,
		-0.919649, -0.350912, 0.176373,
		37.321117, 37.824566, 48.637367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544254, 38.608356, 48.340672>,  <37.964870, 38.070206, 48.513905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544254, 38.608356, 48.340672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301754, 38.385780, 48.567947>,  <37.156254, 38.252235, 48.704311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.301754, 38.385780, 48.567947>,  <37.544254, 38.608356, 48.340672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301754, 38.385780, 48.567947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397669, 0.830828, 0.389337,
		-0.688707, 0.010086, -0.724970,
		-0.606252, -0.556437, 0.568186,
		37.119877, 38.218849, 48.738403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051441, 38.985897, 48.325493>,  <37.544254, 38.608356, 48.340672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051441, 38.985897, 48.325493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007042, 38.749363, 48.644993>,  <36.980404, 38.607441, 48.836693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007042, 38.749363, 48.644993>,  <37.051441, 38.985897, 48.325493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007042, 38.749363, 48.644993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482547, 0.734684, 0.476852,
		-0.868808, -0.332505, -0.366896,
		-0.110997, -0.591338, 0.798749,
		36.973743, 38.571960, 48.884617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389145, 39.119816, 48.478664>,  <37.051441, 38.985897, 48.325493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389145, 39.119816, 48.478664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533188, 38.946167, 48.808964>,  <36.619614, 38.841976, 49.007141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.533188, 38.946167, 48.808964>,  <36.389145, 39.119816, 48.478664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533188, 38.946167, 48.808964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515030, 0.645508, 0.563971,
		-0.777859, -0.628376, 0.008867,
		0.360110, -0.434123, 0.825747,
		36.641220, 38.815929, 49.056686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823257, 38.894199, 48.881725>,  <36.389145, 39.119816, 48.478664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823257, 38.894199, 48.881725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124741, 38.939785, 49.140625>,  <36.305630, 38.967136, 49.295963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.124741, 38.939785, 49.140625>,  <35.823257, 38.894199, 48.881725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124741, 38.939785, 49.140625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524194, 0.698279, 0.487470,
		-0.396407, -0.706696, 0.586039,
		0.753712, 0.113962, 0.647249,
		36.350853, 38.973972, 49.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528107, 38.832005, 49.500889>,  <35.823257, 38.894199, 48.881725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528107, 38.832005, 49.500889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855595, 39.053547, 49.561474>,  <36.052086, 39.186474, 49.597824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.855595, 39.053547, 49.561474>,  <35.528107, 38.832005, 49.500889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855595, 39.053547, 49.561474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545072, 0.666736, 0.508290,
		0.180536, -0.498704, 0.847762,
		0.818720, 0.553856, 0.151460,
		36.101212, 39.219704, 49.606911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426582, 39.114189, 50.213562>,  <35.528107, 38.832005, 49.500889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426582, 39.114189, 50.213562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703667, 39.353378, 50.052277>,  <35.869915, 39.496891, 49.955505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.703667, 39.353378, 50.052277>,  <35.426582, 39.114189, 50.213562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703667, 39.353378, 50.052277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417029, 0.788233, 0.452522,
		0.588423, -0.145314, 0.795388,
		0.692708, 0.597974, -0.403215,
		35.911480, 39.532772, 49.931313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765472, 39.432076, 50.758755>,  <35.426582, 39.114189, 50.213562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765472, 39.432076, 50.758755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811089, 39.672333, 50.442219>,  <35.838459, 39.816486, 50.252296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.811089, 39.672333, 50.442219>,  <35.765472, 39.432076, 50.758755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811089, 39.672333, 50.442219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628133, 0.660716, 0.410978,
		0.769703, 0.450196, 0.452637,
		0.114043, 0.600648, -0.791338,
		35.845303, 39.852528, 50.204819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811176, 40.028820, 51.045525>,  <35.765472, 39.432076, 50.758755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811176, 40.028820, 51.045525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718426, 40.114933, 50.666077>,  <35.662777, 40.166603, 50.438408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.718426, 40.114933, 50.666077>,  <35.811176, 40.028820, 51.045525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718426, 40.114933, 50.666077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348936, 0.891892, 0.287701,
		0.908008, 0.397720, -0.131686,
		-0.231874, 0.215284, -0.948624,
		35.648865, 40.179520, 50.381489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935310, 40.755444, 50.989922>,  <35.811176, 40.028820, 51.045525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935310, 40.755444, 50.989922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677265, 40.650635, 50.702820>,  <35.522438, 40.587749, 50.530560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677265, 40.650635, 50.702820>,  <35.935310, 40.755444, 50.989922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677265, 40.650635, 50.702820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446456, 0.891590, 0.075791,
		0.620081, 0.369339, -0.692162,
		-0.645117, -0.262023, -0.717752,
		35.483730, 40.572029, 50.487495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703854, 41.429558, 50.656925>,  <35.935310, 40.755444, 50.989922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703854, 41.429558, 50.656925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418922, 41.175995, 50.536427>,  <35.247963, 41.023857, 50.464127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.418922, 41.175995, 50.536427>,  <35.703854, 41.429558, 50.656925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418922, 41.175995, 50.536427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659266, 0.751570, -0.022632,
		0.240756, 0.182481, -0.953277,
		-0.712324, -0.633912, -0.301248,
		35.205227, 40.985821, 50.446053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346279, 41.837013, 50.212933>,  <35.703854, 41.429558, 50.656925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346279, 41.837013, 50.212933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095829, 41.531193, 50.274147>,  <34.945557, 41.347698, 50.310875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095829, 41.531193, 50.274147>,  <35.346279, 41.837013, 50.212933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095829, 41.531193, 50.274147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771013, 0.636344, 0.024607,
		-0.116194, -0.102582, -0.987915,
		-0.626130, -0.764554, 0.153032,
		34.907990, 41.301826, 50.320057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853111, 41.784492, 49.703396>,  <35.346279, 41.837013, 50.212933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853111, 41.784492, 49.703396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686440, 41.607014, 50.020763>,  <34.586437, 41.500526, 50.211185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.686440, 41.607014, 50.020763>,  <34.853111, 41.784492, 49.703396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686440, 41.607014, 50.020763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664202, 0.744498, 0.067522,
		-0.620658, -0.498855, -0.604920,
		-0.416678, -0.443697, 0.793418,
		34.561436, 41.473904, 50.258789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071243, 41.859066, 49.611118>,  <34.853111, 41.784492, 49.703396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071243, 41.859066, 49.611118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084007, 41.740612, 49.992962>,  <34.091667, 41.669540, 50.222069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084007, 41.740612, 49.992962>,  <34.071243, 41.859066, 49.611118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084007, 41.740612, 49.992962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802451, 0.561809, 0.201103,
		-0.595864, -0.772448, -0.219706,
		0.031909, -0.296133, 0.954613,
		34.093578, 41.651772, 50.279346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411560, 41.642529, 49.781181>,  <34.071243, 41.859066, 49.611118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411560, 41.642529, 49.781181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587452, 41.747787, 50.124664>,  <33.692989, 41.810944, 50.330753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.587452, 41.747787, 50.124664>,  <33.411560, 41.642529, 49.781181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587452, 41.747787, 50.124664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786297, 0.574837, 0.226493,
		-0.434017, -0.774799, 0.459691,
		0.439734, 0.263151, 0.858711,
		33.719372, 41.826733, 50.382278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838463, 41.527309, 50.161453>,  <33.411560, 41.642529, 49.781181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838463, 41.527309, 50.161453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107563, 41.741215, 50.365978>,  <33.269024, 41.869556, 50.488693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.107563, 41.741215, 50.365978>,  <32.838463, 41.527309, 50.161453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107563, 41.741215, 50.365978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739693, 0.501270, 0.448979,
		-0.016208, -0.680263, 0.732788,
		0.672749, 0.534762, 0.511311,
		33.309387, 41.901642, 50.519371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385880, 41.569462, 50.756893>,  <32.838463, 41.527309, 50.161453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385880, 41.569462, 50.756893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683002, 41.833206, 50.803329>,  <32.861279, 41.991451, 50.831192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683002, 41.833206, 50.803329>,  <32.385880, 41.569462, 50.756893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683002, 41.833206, 50.803329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557615, 0.513336, 0.652343,
		0.370538, -0.549300, 0.748981,
		0.742811, 0.659360, 0.116087,
		32.905846, 42.031013, 50.838154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584534, 41.560791, 51.481308>,  <32.385880, 41.569462, 50.756893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584534, 41.560791, 51.481308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698467, 41.919262, 51.345230>,  <32.766827, 42.134346, 51.263584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698467, 41.919262, 51.345230>,  <32.584534, 41.560791, 51.481308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698467, 41.919262, 51.345230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368402, 0.429977, 0.824257,
		0.884959, -0.109446, 0.452625,
		0.284830, 0.896182, -0.340192,
		32.783916, 42.188118, 51.243172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933823, 42.018883, 52.101601>,  <32.584534, 41.560791, 51.481308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933823, 42.018883, 52.101601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804989, 42.263622, 51.812630>,  <32.727688, 42.410465, 51.639248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.804989, 42.263622, 51.812630>,  <32.933823, 42.018883, 52.101601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804989, 42.263622, 51.812630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389225, 0.610033, 0.690191,
		0.862998, 0.503487, 0.041665,
		-0.322085, 0.611850, -0.722427,
		32.708363, 42.447178, 51.595901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190834, 42.629368, 52.299240>,  <32.933823, 42.018883, 52.101601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190834, 42.629368, 52.299240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906105, 42.759132, 52.050060>,  <32.735268, 42.836990, 51.900555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906105, 42.759132, 52.050060>,  <33.190834, 42.629368, 52.299240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906105, 42.759132, 52.050060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454089, 0.464076, 0.760551,
		0.535826, 0.824252, -0.183028,
		-0.711824, 0.324412, -0.622947,
		32.692558, 42.856457, 51.863174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974148, 43.262417, 52.417263>,  <33.190834, 42.629368, 52.299240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974148, 43.262417, 52.417263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648411, 43.173454, 52.202831>,  <32.452969, 43.120075, 52.074173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.648411, 43.173454, 52.202831>,  <32.974148, 43.262417, 52.417263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648411, 43.173454, 52.202831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575712, 0.426542, 0.697580,
		0.073512, 0.876696, -0.475395,
		-0.814341, -0.222410, -0.536081,
		32.404110, 43.106731, 52.042007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494022, 43.945759, 52.294037>,  <32.974148, 43.262417, 52.417263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494022, 43.945759, 52.294037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260010, 43.624710, 52.247498>,  <32.119602, 43.432083, 52.219574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.260010, 43.624710, 52.247498>,  <32.494022, 43.945759, 52.294037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260010, 43.624710, 52.247498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552983, 0.289834, 0.781157,
		-0.593247, 0.521346, -0.613397,
		-0.585036, -0.802617, -0.116352,
		32.084499, 43.383926, 52.212593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847151, 44.105347, 52.545422>,  <32.494022, 43.945759, 52.294037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847151, 44.105347, 52.545422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759718, 43.716709, 52.509125>,  <31.707258, 43.483528, 52.487347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759718, 43.716709, 52.509125>,  <31.847151, 44.105347, 52.545422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759718, 43.716709, 52.509125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506819, 0.033573, 0.861398,
		-0.833880, 0.234274, -0.499759,
		-0.218582, -0.971591, -0.090738,
		31.694143, 43.425232, 52.481903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121170, 44.036095, 52.639778>,  <31.847151, 44.105347, 52.545422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121170, 44.036095, 52.639778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291264, 43.687576, 52.737774>,  <31.393320, 43.478466, 52.796570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.291264, 43.687576, 52.737774>,  <31.121170, 44.036095, 52.639778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291264, 43.687576, 52.737774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535138, -0.023738, 0.844431,
		-0.729935, -0.490181, -0.476359,
		0.425232, -0.871298, 0.244987,
		31.418833, 43.426186, 52.811272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567795, 43.687721, 52.845348>,  <31.121170, 44.036095, 52.639778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567795, 43.687721, 52.845348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874281, 43.499615, 53.020515>,  <31.058172, 43.386753, 53.125614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.874281, 43.499615, 53.020515>,  <30.567795, 43.687721, 52.845348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874281, 43.499615, 53.020515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552084, -0.133045, 0.823105,
		-0.328813, -0.872440, -0.361566,
		0.766215, -0.470262, 0.437913,
		31.104145, 43.358536, 53.151890>
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
