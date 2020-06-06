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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.587646, 32.092499, 22.499331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470036, 32.421513, 22.694057>,  <42.399471, 32.618919, 22.810894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470036, 32.421513, 22.694057>,  <42.587646, 32.092499, 22.499331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470036, 32.421513, 22.694057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552513, 0.269344, -0.788786,
		-0.779923, -0.500895, 0.375266,
		-0.294023, 0.822531, 0.486819,
		42.381828, 32.668270, 22.840103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815334, 32.096382, 22.592237>,  <42.587646, 32.092499, 22.499331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815334, 32.096382, 22.592237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980236, 32.460548, 22.578468>,  <42.079178, 32.679047, 22.570208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.980236, 32.460548, 22.578468>,  <41.815334, 32.096382, 22.592237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980236, 32.460548, 22.578468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505273, 0.197033, -0.840165,
		-0.758118, 0.363757, 0.541237,
		0.412257, 0.910417, -0.034422,
		42.103912, 32.733673, 22.568142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566628, 32.299007, 21.962528>,  <41.815334, 32.096382, 22.592237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566628, 32.299007, 21.962528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757080, 32.636257, 22.062481>,  <41.871353, 32.838608, 22.122454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757080, 32.636257, 22.062481>,  <41.566628, 32.299007, 21.962528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757080, 32.636257, 22.062481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224995, 0.391502, -0.892246,
		-0.850104, 0.368603, 0.376104,
		0.476131, 0.843124, 0.249884,
		41.899918, 32.889194, 22.137445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022594, 32.810299, 22.066940>,  <41.566628, 32.299007, 21.962528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022594, 32.810299, 22.066940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381081, 32.917763, 21.925732>,  <41.596172, 32.982243, 21.841005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381081, 32.917763, 21.925732>,  <41.022594, 32.810299, 22.066940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381081, 32.917763, 21.925732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396547, 0.128398, -0.908991,
		-0.198884, 0.954638, 0.221609,
		0.896212, 0.268662, -0.353022,
		41.649944, 32.998360, 21.819824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444820, 33.229034, 22.153809>,  <41.022594, 32.810299, 22.066940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444820, 33.229034, 22.153809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194675, 33.388371, 21.885406>,  <40.044590, 33.483971, 21.724365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194675, 33.388371, 21.885406>,  <40.444820, 33.229034, 22.153809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194675, 33.388371, 21.885406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776036, 0.227339, -0.588291,
		-0.081794, -0.888618, -0.451295,
		-0.625363, 0.398340, -0.671004,
		40.007065, 33.507874, 21.684105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386509, 32.869484, 21.450659>,  <40.444820, 33.229034, 22.153809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386509, 32.869484, 21.450659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309345, 33.261753, 21.437603>,  <40.263046, 33.497116, 21.429770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309345, 33.261753, 21.437603>,  <40.386509, 32.869484, 21.450659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309345, 33.261753, 21.437603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774522, 0.131764, -0.618672,
		-0.602414, -0.144627, -0.784971,
		-0.192908, 0.980674, -0.032640,
		40.251472, 33.555954, 21.427811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445805, 33.057346, 20.820724>,  <40.386509, 32.869484, 21.450659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445805, 33.057346, 20.820724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503597, 33.423225, 20.971699>,  <40.538273, 33.642754, 21.062284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503597, 33.423225, 20.971699>,  <40.445805, 33.057346, 20.820724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503597, 33.423225, 20.971699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778204, 0.130553, -0.614291,
		-0.611164, 0.382480, -0.692956,
		0.144486, 0.914694, 0.377437,
		40.546944, 33.697632, 21.084930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639801, 33.537495, 20.189674>,  <40.445805, 33.057346, 20.820724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639801, 33.537495, 20.189674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715233, 33.745575, 20.522861>,  <40.760490, 33.870422, 20.722773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715233, 33.745575, 20.522861>,  <40.639801, 33.537495, 20.189674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715233, 33.745575, 20.522861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804053, 0.405211, -0.435090,
		-0.563861, 0.751795, -0.341855,
		0.188575, 0.520200, 0.832965,
		40.771805, 33.901634, 20.772751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636677, 34.221760, 20.024748>,  <40.639801, 33.537495, 20.189674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636677, 34.221760, 20.024748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881016, 34.173347, 20.337727>,  <41.027618, 34.144299, 20.525513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881016, 34.173347, 20.337727>,  <40.636677, 34.221760, 20.024748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881016, 34.173347, 20.337727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757472, 0.376974, -0.533035,
		-0.230445, 0.918282, 0.321953,
		0.610844, -0.121035, 0.782445,
		41.064270, 34.137035, 20.572460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012962, 34.798836, 20.042366>,  <40.636677, 34.221760, 20.024748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012962, 34.798836, 20.042366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217953, 34.519970, 20.242897>,  <41.340946, 34.352650, 20.363216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217953, 34.519970, 20.242897>,  <41.012962, 34.798836, 20.042366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217953, 34.519970, 20.242897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845052, 0.305770, -0.438624,
		0.152503, 0.648433, 0.745840,
		0.512474, -0.697165, 0.501329,
		41.371696, 34.310822, 20.393295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673252, 35.064693, 20.216286>,  <41.012962, 34.798836, 20.042366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673252, 35.064693, 20.216286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734383, 34.673450, 20.272793>,  <41.771061, 34.438705, 20.306698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.734383, 34.673450, 20.272793>,  <41.673252, 35.064693, 20.216286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734383, 34.673450, 20.272793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813600, 0.043379, -0.579805,
		0.560982, 0.203546, 0.802414,
		0.152825, -0.978104, 0.141270,
		41.780231, 34.380020, 20.315174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394562, 35.033249, 20.256430>,  <41.673252, 35.064693, 20.216286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394562, 35.033249, 20.256430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291180, 34.652340, 20.191456>,  <42.229149, 34.423794, 20.152472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291180, 34.652340, 20.191456>,  <42.394562, 35.033249, 20.256430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291180, 34.652340, 20.191456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853607, -0.146404, -0.499921,
		0.452277, -0.267864, 0.850702,
		-0.258457, -0.952268, -0.162436,
		42.213642, 34.366661, 20.142725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973858, 34.528351, 20.459929>,  <42.394562, 35.033249, 20.256430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973858, 34.528351, 20.459929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753475, 34.363384, 20.169727>,  <42.621246, 34.264404, 19.995605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.753475, 34.363384, 20.169727>,  <42.973858, 34.528351, 20.459929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753475, 34.363384, 20.169727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803193, -0.026053, -0.595149,
		0.226547, -0.910623, 0.345604,
		-0.550960, -0.412416, -0.725504,
		42.588188, 34.239658, 19.952076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430382, 34.154793, 20.068665>,  <42.973858, 34.528351, 20.459929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430382, 34.154793, 20.068665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108459, 34.164371, 19.831444>,  <42.915306, 34.170120, 19.689112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108459, 34.164371, 19.831444>,  <43.430382, 34.154793, 20.068665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108459, 34.164371, 19.831444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589156, -0.088923, -0.803112,
		-0.071970, -0.995750, 0.057456,
		-0.804808, 0.023949, -0.593052,
		42.867016, 34.171555, 19.653528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.472988, 33.530380, 19.789837>,  <43.430382, 34.154793, 20.068665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.472988, 33.530380, 19.789837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274895, 33.767212, 19.535534>,  <43.156040, 33.909309, 19.382952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274895, 33.767212, 19.535534>,  <43.472988, 33.530380, 19.789837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274895, 33.767212, 19.535534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747324, -0.082832, -0.659276,
		-0.443005, -0.801611, -0.401454,
		-0.495230, 0.592079, -0.635758,
		43.126324, 33.944836, 19.344807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389469, 33.196472, 19.230452>,  <43.472988, 33.530380, 19.789837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389469, 33.196472, 19.230452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326931, 33.564571, 19.086956>,  <43.289410, 33.785431, 19.000858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.326931, 33.564571, 19.086956>,  <43.389469, 33.196472, 19.230452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326931, 33.564571, 19.086956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775876, -0.110331, -0.621162,
		-0.611206, -0.375449, -0.696753,
		-0.156341, 0.920253, -0.358737,
		43.280029, 33.840649, 18.979336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329983, 33.157139, 18.487896>,  <43.389469, 33.196472, 19.230452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329983, 33.157139, 18.487896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420715, 33.542870, 18.542488>,  <43.475155, 33.774307, 18.575243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.420715, 33.542870, 18.542488>,  <43.329983, 33.157139, 18.487896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.420715, 33.542870, 18.542488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796592, -0.103075, -0.595665,
		-0.560346, 0.243833, -0.791554,
		0.226833, 0.964324, 0.136478,
		43.488766, 33.832169, 18.583431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441090, 33.478622, 17.811543>,  <43.329983, 33.157139, 18.487896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441090, 33.478622, 17.811543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640724, 33.700188, 18.078106>,  <43.760506, 33.833126, 18.238045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.640724, 33.700188, 18.078106>,  <43.441090, 33.478622, 17.811543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.640724, 33.700188, 18.078106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781659, 0.044207, -0.622138,
		-0.374068, 0.831402, -0.410906,
		0.499082, 0.553910, 0.666409,
		43.790447, 33.866360, 18.278028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619453, 33.969917, 17.367268>,  <43.441090, 33.478622, 17.811543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619453, 33.969917, 17.367268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835068, 34.028137, 17.699112>,  <43.964436, 34.063068, 17.898218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.835068, 34.028137, 17.699112>,  <43.619453, 33.969917, 17.367268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835068, 34.028137, 17.699112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774845, 0.300473, -0.556175,
		-0.330228, 0.942619, 0.049185,
		0.539040, 0.145554, 0.829609,
		43.996780, 34.071804, 17.947994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.960644, 34.671871, 17.244274>,  <43.619453, 33.969917, 17.367268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.960644, 34.671871, 17.244274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153934, 34.480133, 17.537319>,  <44.269909, 34.365089, 17.713146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153934, 34.480133, 17.537319>,  <43.960644, 34.671871, 17.244274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153934, 34.480133, 17.537319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872776, 0.329653, -0.359987,
		-0.068948, 0.813360, 0.577660,
		0.483227, -0.479348, 0.732610,
		44.298901, 34.336330, 17.757103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.598289, 35.118496, 17.476357>,  <43.960644, 34.671871, 17.244274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.598289, 35.118496, 17.476357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682434, 34.749531, 17.605911>,  <44.732922, 34.528152, 17.683643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.682434, 34.749531, 17.605911>,  <44.598289, 35.118496, 17.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.682434, 34.749531, 17.605911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920402, 0.075181, -0.383677,
		0.329558, 0.378815, 0.864806,
		0.210360, -0.922414, 0.323886,
		44.745541, 34.472805, 17.703077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.175419, 35.159767, 17.829880>,  <44.598289, 35.118496, 17.476357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.175419, 35.159767, 17.829880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167683, 34.774261, 17.723457>,  <45.163040, 34.542957, 17.659603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.167683, 34.774261, 17.723457>,  <45.175419, 35.159767, 17.829880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.167683, 34.774261, 17.723457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977695, 0.037432, -0.206670,
		0.209140, -0.264121, 0.941542,
		-0.019342, -0.963763, -0.266058,
		45.161880, 34.485134, 17.643641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.783848, 34.940319, 18.086683>,  <45.175419, 35.159767, 17.829880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.783848, 34.940319, 18.086683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662285, 34.669125, 17.818958>,  <45.589348, 34.506409, 17.658323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.662285, 34.669125, 17.818958>,  <45.783848, 34.940319, 18.086683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662285, 34.669125, 17.818958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944484, -0.122328, -0.304935,
		0.124866, -0.724824, 0.677524,
		-0.303904, -0.677987, -0.669310,
		45.571114, 34.465729, 17.618166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272690, 34.361309, 18.156067>,  <45.783848, 34.940319, 18.086683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272690, 34.361309, 18.156067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107540, 34.355572, 17.791798>,  <46.008450, 34.352131, 17.573236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.107540, 34.355572, 17.791798>,  <46.272690, 34.361309, 18.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.107540, 34.355572, 17.791798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909351, -0.062640, -0.411287,
		-0.051146, -0.997933, 0.038904,
		-0.412874, -0.014342, -0.910675,
		45.983677, 34.351269, 17.518595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.721504, 33.903091, 17.788729>,  <46.272690, 34.361309, 18.156067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.721504, 33.903091, 17.788729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538490, 34.136395, 17.520260>,  <46.428680, 34.276375, 17.359179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.538490, 34.136395, 17.520260>,  <46.721504, 33.903091, 17.788729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.538490, 34.136395, 17.520260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835353, 0.023290, -0.549220,
		-0.304705, -0.811954, -0.497882,
		-0.457537, 0.583257, -0.671172,
		46.401230, 34.311371, 17.318909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132660, 33.904678, 17.193766>,  <46.721504, 33.903091, 17.788729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132660, 33.904678, 17.193766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893295, 34.215565, 17.115959>,  <46.749676, 34.402096, 17.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893295, 34.215565, 17.115959>,  <47.132660, 33.904678, 17.193766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893295, 34.215565, 17.115959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732468, 0.432334, -0.525906,
		-0.324650, -0.457182, -0.828002,
		-0.598409, 0.777220, -0.194514,
		46.713772, 34.448730, 17.057606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.146214, 33.929924, 16.439894>,  <47.132660, 33.904678, 17.193766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.146214, 33.929924, 16.439894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131359, 34.284618, 16.624207>,  <47.122444, 34.497437, 16.734795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.131359, 34.284618, 16.624207>,  <47.146214, 33.929924, 16.439894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.131359, 34.284618, 16.624207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885829, 0.242628, -0.395523,
		-0.462523, 0.393484, -0.794508,
		-0.037138, 0.886737, 0.460780,
		47.120216, 34.550640, 16.762440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.272758, 34.498898, 15.960725>,  <47.146214, 33.929924, 16.439894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.272758, 34.498898, 15.960725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403717, 34.564869, 16.332878>,  <47.482292, 34.604454, 16.556170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.403717, 34.564869, 16.332878>,  <47.272758, 34.498898, 15.960725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.403717, 34.564869, 16.332878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911072, 0.205963, -0.357110,
		-0.250523, 0.964561, -0.082832,
		0.327394, 0.164930, 0.930382,
		47.501934, 34.614349, 16.611992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.608265, 35.157856, 15.979398>,  <47.272758, 34.498898, 15.960725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.608265, 35.157856, 15.979398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770699, 34.952202, 16.281593>,  <47.868160, 34.828812, 16.462910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.770699, 34.952202, 16.281593>,  <47.608265, 35.157856, 15.979398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.770699, 34.952202, 16.281593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909444, 0.308324, -0.279014,
		-0.089485, 0.800377, 0.592780,
		0.406084, -0.514133, 0.755489,
		47.892525, 34.797962, 16.508240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.949127, 35.556267, 16.485403>,  <47.608265, 35.157856, 15.979398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.949127, 35.556267, 16.485403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.146900, 35.213757, 16.545158>,  <48.265564, 35.008251, 16.581013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.146900, 35.213757, 16.545158>,  <47.949127, 35.556267, 16.485403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.146900, 35.213757, 16.545158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868279, 0.494523, -0.039223,
		-0.040290, 0.149105, 0.988000,
		0.494437, -0.856280, 0.149389,
		48.295231, 34.956871, 16.589975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.250870, 35.387363, 16.659925>,  <47.949127, 35.556267, 16.485403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.250870, 35.387363, 16.659925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.901291, 35.509144, 16.508389>,  <46.691544, 35.582211, 16.417467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.901291, 35.509144, 16.508389>,  <47.250870, 35.387363, 16.659925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.901291, 35.509144, 16.508389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398450, 0.895162, -0.199807,
		0.278294, -0.325571, -0.903635,
		-0.873951, 0.304448, -0.378842,
		46.639107, 35.600479, 16.394735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414829, 35.857967, 16.010290>,  <47.250870, 35.387363, 16.659925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414829, 35.857967, 16.010290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037609, 35.923855, 16.125889>,  <46.811275, 35.963387, 16.195248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.037609, 35.923855, 16.125889>,  <47.414829, 35.857967, 16.010290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.037609, 35.923855, 16.125889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086701, 0.960472, -0.264530,
		-0.321147, -0.224409, -0.920057,
		-0.943052, 0.164723, 0.288996,
		46.754692, 35.973270, 16.212587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.072437, 36.405739, 15.621548>,  <47.414829, 35.857967, 16.010290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.072437, 36.405739, 15.621548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778152, 36.362305, 15.888961>,  <46.601582, 36.336246, 16.049408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778152, 36.362305, 15.888961>,  <47.072437, 36.405739, 15.621548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778152, 36.362305, 15.888961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420237, 0.847272, -0.324854,
		-0.531156, -0.519942, -0.668979,
		-0.735713, -0.108582, 0.668533,
		46.557438, 36.329731, 16.089521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.454475, 36.542706, 15.327579>,  <47.072437, 36.405739, 15.621548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.454475, 36.542706, 15.327579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381882, 36.596813, 15.717198>,  <46.338326, 36.629276, 15.950970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.381882, 36.596813, 15.717198>,  <46.454475, 36.542706, 15.327579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.381882, 36.596813, 15.717198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365285, 0.910354, -0.194480,
		-0.913034, -0.391099, -0.115803,
		-0.181482, 0.135266, 0.974047,
		46.327438, 36.637394, 16.009413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713127, 36.729214, 15.566343>,  <46.454475, 36.542706, 15.327579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713127, 36.729214, 15.566343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014717, 36.863178, 15.792390>,  <46.195671, 36.943558, 15.928018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014717, 36.863178, 15.792390>,  <45.713127, 36.729214, 15.566343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014717, 36.863178, 15.792390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202303, 0.936843, -0.285305,
		-0.624978, 0.100788, 0.774109,
		0.753974, 0.334913, 0.565116,
		46.240910, 36.963654, 15.961925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520134, 37.377953, 15.702543>,  <45.713127, 36.729214, 15.566343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520134, 37.377953, 15.702543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911049, 37.381981, 15.787221>,  <46.145596, 37.384396, 15.838027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911049, 37.381981, 15.787221>,  <45.520134, 37.377953, 15.702543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911049, 37.381981, 15.787221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041836, 0.970051, -0.239273,
		-0.207763, 0.242694, 0.947594,
		0.977284, 0.010068, 0.211694,
		46.204235, 37.385002, 15.850729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.705791, 37.941536, 16.240913>,  <45.520134, 37.377953, 15.702543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.705791, 37.941536, 16.240913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723713, 38.109303, 16.603588>,  <45.734467, 38.209961, 16.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.723713, 38.109303, 16.603588>,  <45.705791, 37.941536, 16.240913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.723713, 38.109303, 16.603588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669289, -0.661196, 0.338929,
		0.741651, -0.622020, 0.251089,
		0.044801, 0.419418, 0.906687,
		45.737152, 38.235126, 16.875595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.613892, 37.377682, 16.664682>,  <45.705791, 37.941536, 16.240913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.613892, 37.377682, 16.664682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521168, 37.684113, 16.904480>,  <45.465534, 37.867970, 17.048359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521168, 37.684113, 16.904480>,  <45.613892, 37.377682, 16.664682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521168, 37.684113, 16.904480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688696, -0.564483, 0.455035,
		0.686995, -0.307386, 0.658446,
		-0.231810, 0.766076, 0.599493,
		45.451626, 37.913937, 17.084328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651279, 37.208607, 17.333748>,  <45.613892, 37.377682, 16.664682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651279, 37.208607, 17.333748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405811, 37.521656, 17.375526>,  <45.258530, 37.709488, 17.400595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.405811, 37.521656, 17.375526>,  <45.651279, 37.208607, 17.333748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.405811, 37.521656, 17.375526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648300, -0.574955, 0.499133,
		0.450687, 0.238588, 0.860207,
		-0.613668, 0.782625, 0.104449,
		45.221710, 37.756443, 17.406860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.483093, 37.236469, 18.054951>,  <45.651279, 37.208607, 17.333748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.483093, 37.236469, 18.054951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193985, 37.449333, 17.878586>,  <45.020519, 37.577053, 17.772766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193985, 37.449333, 17.878586>,  <45.483093, 37.236469, 18.054951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193985, 37.449333, 17.878586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689457, -0.511425, 0.512927,
		0.047467, 0.674719, 0.736547,
		-0.722770, 0.532164, -0.440914,
		44.977154, 37.608982, 17.746311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034229, 37.514297, 18.624805>,  <45.483093, 37.236469, 18.054951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034229, 37.514297, 18.624805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828671, 37.486717, 18.282776>,  <44.705334, 37.470169, 18.077559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.828671, 37.486717, 18.282776>,  <45.034229, 37.514297, 18.624805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.828671, 37.486717, 18.282776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727377, -0.493405, 0.476942,
		-0.454785, 0.867062, 0.203406,
		-0.513900, -0.068953, -0.855074,
		44.674500, 37.466030, 18.026253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326710, 37.782154, 18.723518>,  <45.034229, 37.514297, 18.624805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326710, 37.782154, 18.723518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299149, 37.553490, 18.396481>,  <44.282612, 37.416290, 18.200258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299149, 37.553490, 18.396481>,  <44.326710, 37.782154, 18.723518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299149, 37.553490, 18.396481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928257, -0.263517, 0.262483,
		-0.365500, 0.777024, -0.512488,
		-0.068906, -0.571658, -0.817594,
		44.278477, 37.381992, 18.151203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587711, 37.895252, 18.664850>,  <44.326710, 37.782154, 18.723518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587711, 37.895252, 18.664850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679375, 37.600163, 18.410843>,  <43.734371, 37.423107, 18.258438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.679375, 37.600163, 18.410843>,  <43.587711, 37.895252, 18.664850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679375, 37.600163, 18.410843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926141, -0.366032, 0.091019,
		-0.299584, 0.567258, -0.767116,
		0.229157, -0.737725, -0.635018,
		43.748123, 37.378845, 18.220337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134590, 37.869705, 18.123770>,  <43.587711, 37.895252, 18.664850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134590, 37.869705, 18.123770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281696, 37.501392, 18.175770>,  <43.369961, 37.280403, 18.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281696, 37.501392, 18.175770>,  <43.134590, 37.869705, 18.123770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281696, 37.501392, 18.175770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923498, -0.345246, 0.167202,
		-0.109074, -0.181549, -0.977314,
		0.367769, -0.920785, 0.130003,
		43.392029, 37.225159, 18.214771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669559, 37.438129, 17.713549>,  <43.134590, 37.869705, 18.123770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669559, 37.438129, 17.713549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872791, 37.199665, 17.962208>,  <42.994728, 37.056587, 18.111403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.872791, 37.199665, 17.962208>,  <42.669559, 37.438129, 17.713549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872791, 37.199665, 17.962208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843544, -0.490256, 0.219276,
		0.174042, -0.635797, -0.751979,
		0.508077, -0.596164, 0.621648,
		43.025215, 37.020817, 18.148703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530750, 36.693111, 17.547403>,  <42.669559, 37.438129, 17.713549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530750, 36.693111, 17.547403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670235, 36.676712, 17.921936>,  <42.753925, 36.666874, 18.146656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.670235, 36.676712, 17.921936>,  <42.530750, 36.693111, 17.547403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.670235, 36.676712, 17.921936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719220, -0.652274, 0.239294,
		0.600934, -0.756874, -0.256944,
		0.348714, -0.040999, 0.936332,
		42.774849, 36.664413, 18.202835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378925, 36.052238, 17.779131>,  <42.530750, 36.693111, 17.547403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378925, 36.052238, 17.779131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416096, 36.255264, 18.121765>,  <42.438396, 36.377083, 18.327345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416096, 36.255264, 18.121765>,  <42.378925, 36.052238, 17.779131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416096, 36.255264, 18.121765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773534, -0.504875, 0.383075,
		0.626906, -0.698194, 0.345708,
		0.092921, 0.507569, 0.856586,
		42.443974, 36.407536, 18.378740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.163212, 35.493504, 18.256168>,  <42.378925, 36.052238, 17.779131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.163212, 35.493504, 18.256168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143234, 35.842495, 18.450607>,  <42.131248, 36.051888, 18.567270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143234, 35.842495, 18.450607>,  <42.163212, 35.493504, 18.256168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143234, 35.842495, 18.450607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702815, -0.376509, 0.603567,
		0.709618, -0.311492, 0.631993,
		-0.049944, 0.872476, 0.486099,
		42.128250, 36.104237, 18.596437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983002, 35.300442, 18.884890>,  <42.163212, 35.493504, 18.256168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983002, 35.300442, 18.884890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904739, 35.692299, 18.902870>,  <41.857780, 35.927414, 18.913658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.904739, 35.692299, 18.902870>,  <41.983002, 35.300442, 18.884890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.904739, 35.692299, 18.902870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751250, -0.179190, 0.635227,
		0.630350, 0.090518, 0.771016,
		-0.195658, 0.979641, 0.044951,
		41.846043, 35.986191, 18.916355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815105, 35.415939, 19.540636>,  <41.983002, 35.300442, 18.884890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815105, 35.415939, 19.540636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658283, 35.732918, 19.353733>,  <41.564190, 35.923103, 19.241590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658283, 35.732918, 19.353733>,  <41.815105, 35.415939, 19.540636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658283, 35.732918, 19.353733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783775, -0.021797, 0.620663,
		0.481655, 0.609557, 0.629642,
		-0.392054, 0.792442, -0.467257,
		41.540668, 35.970650, 19.213556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668163, 35.930477, 20.056219>,  <41.815105, 35.415939, 19.540636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668163, 35.930477, 20.056219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432838, 35.951057, 19.733421>,  <41.291645, 35.963406, 19.539742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432838, 35.951057, 19.733421>,  <41.668163, 35.930477, 20.056219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432838, 35.951057, 19.733421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801141, -0.172642, 0.573034,
		-0.109837, 0.983640, 0.142788,
		-0.588310, 0.051453, -0.806997,
		41.256344, 35.966492, 19.491322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032986, 36.225979, 20.386372>,  <41.668163, 35.930477, 20.056219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032986, 36.225979, 20.386372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900639, 36.123344, 20.023121>,  <40.821232, 36.061764, 19.805170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900639, 36.123344, 20.023121>,  <41.032986, 36.225979, 20.386372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900639, 36.123344, 20.023121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910660, -0.165518, 0.378553,
		-0.247443, 0.952243, -0.178900,
		-0.330863, -0.256587, -0.908126,
		40.801380, 36.046368, 19.750683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438000, 36.580410, 20.226391>,  <41.032986, 36.225979, 20.386372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438000, 36.580410, 20.226391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427498, 36.269878, 19.974480>,  <40.421196, 36.083561, 19.823332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427498, 36.269878, 19.974480>,  <40.438000, 36.580410, 20.226391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427498, 36.269878, 19.974480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971360, -0.129016, 0.199538,
		-0.236159, 0.616981, -0.750708,
		-0.026258, -0.776330, -0.629779,
		40.419621, 36.036980, 19.785545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876194, 36.731384, 19.916653>,  <40.438000, 36.580410, 20.226391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876194, 36.731384, 19.916653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954269, 36.343925, 19.855167>,  <40.001114, 36.111450, 19.818275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954269, 36.343925, 19.855167>,  <39.876194, 36.731384, 19.916653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954269, 36.343925, 19.855167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953447, -0.224139, 0.201745,
		-0.229873, 0.107186, -0.967300,
		0.195186, -0.968645, -0.153719,
		40.012825, 36.053333, 19.809053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276123, 36.495689, 19.587461>,  <39.876194, 36.731384, 19.916653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276123, 36.495689, 19.587461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455067, 36.162533, 19.717785>,  <39.562435, 35.962639, 19.795979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455067, 36.162533, 19.717785>,  <39.276123, 36.495689, 19.587461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455067, 36.162533, 19.717785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875755, -0.334053, 0.348515,
		-0.181439, -0.441241, -0.878855,
		0.447363, -0.832896, 0.325808,
		39.589275, 35.912663, 19.815527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760799, 36.092678, 19.600800>,  <39.276123, 36.495689, 19.587461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760799, 36.092678, 19.600800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021759, 35.882378, 19.819145>,  <39.178333, 35.756199, 19.950151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021759, 35.882378, 19.819145>,  <38.760799, 36.092678, 19.600800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021759, 35.882378, 19.819145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756190, -0.499587, 0.422598,
		0.050526, -0.688478, -0.723495,
		0.652399, -0.525748, 0.545862,
		39.217480, 35.724651, 19.982904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639374, 35.270626, 19.468056>,  <38.760799, 36.092678, 19.600800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639374, 35.270626, 19.468056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807663, 35.350796, 19.821964>,  <38.908638, 35.398899, 20.034309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807663, 35.350796, 19.821964>,  <38.639374, 35.270626, 19.468056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807663, 35.350796, 19.821964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764410, -0.446892, 0.464721,
		0.488540, -0.871847, -0.034810,
		0.420722, 0.200426, 0.884772,
		38.933880, 35.410923, 20.087397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749237, 34.600613, 19.888084>,  <38.639374, 35.270626, 19.468056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749237, 34.600613, 19.888084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708965, 34.912102, 20.135780>,  <38.684803, 35.098995, 20.284399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708965, 34.912102, 20.135780>,  <38.749237, 34.600613, 19.888084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708965, 34.912102, 20.135780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662560, -0.516790, 0.542165,
		0.742212, -0.355702, 0.567976,
		-0.100676, 0.778719, 0.619242,
		38.678764, 35.145718, 20.321552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817631, 34.506966, 20.592539>,  <38.749237, 34.600613, 19.888084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817631, 34.506966, 20.592539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557476, 34.810604, 20.581432>,  <38.401382, 34.992786, 20.574768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557476, 34.810604, 20.581432>,  <38.817631, 34.506966, 20.592539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557476, 34.810604, 20.581432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715075, -0.599519, 0.359506,
		0.256252, 0.253675, 0.932729,
		-0.650387, 0.759096, -0.027768,
		38.362362, 35.038334, 20.573101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438179, 34.552479, 21.249441>,  <38.817631, 34.506966, 20.592539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438179, 34.552479, 21.249441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192207, 34.728378, 20.987606>,  <38.044624, 34.833920, 20.830505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192207, 34.728378, 20.987606>,  <38.438179, 34.552479, 21.249441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192207, 34.728378, 20.987606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756711, -0.562660, 0.332869,
		-0.221932, 0.700024, 0.678758,
		-0.614926, 0.439750, -0.654588,
		38.007729, 34.860302, 20.791229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827217, 34.684402, 21.538282>,  <38.438179, 34.552479, 21.249441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827217, 34.684402, 21.538282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747643, 34.690956, 21.146332>,  <37.699898, 34.694889, 20.911161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747643, 34.690956, 21.146332>,  <37.827217, 34.684402, 21.538282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747643, 34.690956, 21.146332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861593, -0.479374, 0.166904,
		-0.466992, 0.877458, 0.109482,
		-0.198934, 0.016386, -0.979876,
		37.687962, 34.695873, 20.852369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319012, 35.218990, 21.272917>,  <37.827217, 34.684402, 21.538282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319012, 35.218990, 21.272917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320724, 34.852470, 21.112728>,  <37.321751, 34.632557, 21.016615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320724, 34.852470, 21.112728>,  <37.319012, 35.218990, 21.272917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320724, 34.852470, 21.112728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926606, -0.154219, 0.342955,
		-0.376010, 0.369612, -0.849708,
		0.004280, -0.916299, -0.400473,
		37.322010, 34.577579, 20.992586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827366, 35.201500, 20.731977>,  <37.319012, 35.218990, 21.272917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827366, 35.201500, 20.731977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893761, 34.875641, 20.954254>,  <36.933598, 34.680126, 21.087620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893761, 34.875641, 20.954254>,  <36.827366, 35.201500, 20.731977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893761, 34.875641, 20.954254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949975, 0.019091, 0.311743,
		-0.264571, -0.579635, -0.770730,
		0.165983, -0.814652, 0.555690,
		36.943554, 34.631245, 21.120962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458355, 34.458115, 20.496841>,  <36.827366, 35.201500, 20.731977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458355, 34.458115, 20.496841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510040, 34.517647, 20.888996>,  <36.541054, 34.553364, 21.124289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510040, 34.517647, 20.888996>,  <36.458355, 34.458115, 20.496841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510040, 34.517647, 20.888996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991458, 0.037076, 0.125047,
		-0.017742, -0.988172, 0.152322,
		0.129216, 0.148802, 0.980388,
		36.548805, 34.562294, 21.183111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860630, 34.850197, 20.534513>,  <36.458355, 34.458115, 20.496841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860630, 34.850197, 20.534513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682392, 34.998280, 20.860554>,  <35.575451, 35.087132, 21.056177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682392, 34.998280, 20.860554>,  <35.860630, 34.850197, 20.534513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682392, 34.998280, 20.860554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428642, -0.887566, 0.168796,
		0.785946, -0.274172, 0.554182,
		-0.445594, 0.370210, 0.815101,
		35.548714, 35.109344, 21.105083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959221, 34.332218, 21.114470>,  <35.860630, 34.850197, 20.534513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959221, 34.332218, 21.114470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638889, 34.553913, 21.205238>,  <35.446690, 34.686932, 21.259699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638889, 34.553913, 21.205238>,  <35.959221, 34.332218, 21.114470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638889, 34.553913, 21.205238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502969, -0.828097, 0.247544,
		0.325112, 0.084105, 0.941928,
		-0.800828, 0.554240, 0.226922,
		35.398640, 34.720184, 21.273315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728069, 34.070534, 21.728249>,  <35.959221, 34.332218, 21.114470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728069, 34.070534, 21.728249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407143, 34.264256, 21.588684>,  <35.214588, 34.380489, 21.504946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407143, 34.264256, 21.588684>,  <35.728069, 34.070534, 21.728249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407143, 34.264256, 21.588684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591065, -0.726133, 0.351244,
		-0.083247, 0.488038, 0.868843,
		-0.802317, 0.484303, -0.348910,
		35.166447, 34.409546, 21.484011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283829, 34.164669, 22.350052>,  <35.728069, 34.070534, 21.728249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283829, 34.164669, 22.350052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059204, 34.190403, 22.020081>,  <34.924427, 34.205841, 21.822098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059204, 34.190403, 22.020081>,  <35.283829, 34.164669, 22.350052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059204, 34.190403, 22.020081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479479, -0.837821, 0.261065,
		-0.674347, 0.542141, 0.501337,
		-0.561565, 0.064332, -0.824928,
		34.890736, 34.209702, 21.772602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621235, 34.185635, 22.575497>,  <35.283829, 34.164669, 22.350052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621235, 34.185635, 22.575497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593918, 34.084961, 22.189339>,  <34.577526, 34.024555, 21.957644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593918, 34.084961, 22.189339>,  <34.621235, 34.185635, 22.575497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593918, 34.084961, 22.189339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626938, -0.741900, 0.237768,
		-0.776070, 0.621483, -0.107122,
		-0.068295, -0.251683, -0.965397,
		34.573429, 34.009457, 21.899719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004570, 34.058506, 22.532948>,  <34.621235, 34.185635, 22.575497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004570, 34.058506, 22.532948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118053, 33.862217, 22.203415>,  <34.186142, 33.744442, 22.005695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118053, 33.862217, 22.203415>,  <34.004570, 34.058506, 22.532948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118053, 33.862217, 22.203415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518486, -0.801218, 0.298702,
		-0.806651, 0.342405, -0.481739,
		0.283701, -0.490723, -0.823835,
		34.203163, 33.715000, 21.956264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428528, 33.695763, 22.380465>,  <34.004570, 34.058506, 22.532948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428528, 33.695763, 22.380465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725792, 33.509781, 22.187992>,  <33.904148, 33.398193, 22.072508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725792, 33.509781, 22.187992>,  <33.428528, 33.695763, 22.380465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725792, 33.509781, 22.187992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357473, -0.883787, 0.301885,
		-0.565625, -0.052338, -0.823000,
		0.743156, -0.464954, -0.481182,
		33.948738, 33.370296, 22.043638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081688, 33.125816, 22.083786>,  <33.428528, 33.695763, 22.380465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081688, 33.125816, 22.083786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469078, 33.037834, 22.130562>,  <33.701511, 32.985046, 22.158627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469078, 33.037834, 22.130562>,  <33.081688, 33.125816, 22.083786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469078, 33.037834, 22.130562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246642, -0.912529, 0.326281,
		0.034946, -0.344838, -0.938011,
		0.968476, -0.219951, 0.116940,
		33.759621, 32.971848, 22.165644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152267, 32.419228, 21.785767>,  <33.081688, 33.125816, 22.083786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152267, 32.419228, 21.785767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456661, 32.491947, 22.034878>,  <33.639297, 32.535580, 22.184345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456661, 32.491947, 22.034878>,  <33.152267, 32.419228, 21.785767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456661, 32.491947, 22.034878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235720, -0.816853, 0.526485,
		0.604436, -0.547447, -0.578756,
		0.760982, 0.181803, 0.622780,
		33.684956, 32.546490, 22.221712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386295, 31.757540, 21.894060>,  <33.152267, 32.419228, 21.785767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386295, 31.757540, 21.894060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551853, 31.971138, 22.188961>,  <33.651188, 32.099297, 22.365902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551853, 31.971138, 22.188961>,  <33.386295, 31.757540, 21.894060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551853, 31.971138, 22.188961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159963, -0.754615, 0.636371,
		0.896161, -0.381322, -0.226910,
		0.413892, 0.533994, 0.737254,
		33.676022, 32.131336, 22.410137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740597, 31.286005, 22.316101>,  <33.386295, 31.757540, 21.894060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740597, 31.286005, 22.316101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716850, 31.591106, 22.573685>,  <33.702602, 31.774168, 22.728235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716850, 31.591106, 22.573685>,  <33.740597, 31.286005, 22.316101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716850, 31.591106, 22.573685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188094, -0.642089, 0.743197,
		0.980355, -0.077001, 0.181591,
		-0.059371, 0.762753, 0.643959,
		33.699039, 31.819933, 22.766872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102219, 31.048759, 22.978592>,  <33.740597, 31.286005, 22.316101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102219, 31.048759, 22.978592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837868, 31.320404, 23.106377>,  <33.679256, 31.483391, 23.183046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837868, 31.320404, 23.106377>,  <34.102219, 31.048759, 22.978592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837868, 31.320404, 23.106377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128116, -0.521502, 0.843577,
		0.739481, 0.516570, 0.431652,
		-0.660874, 0.679110, 0.319460,
		33.639606, 31.524137, 23.202215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392651, 31.224339, 23.604599>,  <34.102219, 31.048759, 22.978592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392651, 31.224339, 23.604599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003735, 31.309872, 23.566811>,  <33.770386, 31.361191, 23.544138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003735, 31.309872, 23.566811>,  <34.392651, 31.224339, 23.604599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003735, 31.309872, 23.566811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184369, -0.452964, 0.872256,
		0.143726, 0.865505, 0.479838,
		-0.972292, 0.213833, -0.094470,
		33.712048, 31.374022, 23.538469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157032, 31.596012, 24.224684>,  <34.392651, 31.224339, 23.604599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157032, 31.596012, 24.224684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798176, 31.477612, 24.093517>,  <33.582863, 31.406570, 24.014818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798176, 31.477612, 24.093517>,  <34.157032, 31.596012, 24.224684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798176, 31.477612, 24.093517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250470, -0.270611, 0.929535,
		-0.363882, 0.916052, 0.168635,
		-0.897137, -0.296003, -0.327914,
		33.529034, 31.388811, 23.995144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699707, 31.804585, 24.777605>,  <34.157032, 31.596012, 24.224684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699707, 31.804585, 24.777605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499432, 31.535347, 24.559887>,  <33.379265, 31.373804, 24.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499432, 31.535347, 24.559887>,  <33.699707, 31.804585, 24.777605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499432, 31.535347, 24.559887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366829, -0.404551, 0.837720,
		-0.784058, 0.619101, -0.044355,
		-0.500689, -0.673092, -0.544296,
		33.349224, 31.333420, 24.396599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241314, 31.603821, 25.254070>,  <33.699707, 31.804585, 24.777605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241314, 31.603821, 25.254070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195518, 31.323223, 24.972702>,  <33.168041, 31.154865, 24.803881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195518, 31.323223, 24.972702>,  <33.241314, 31.603821, 25.254070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195518, 31.323223, 24.972702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227300, -0.670795, 0.705952,
		-0.967071, 0.240713, -0.082648,
		-0.114492, -0.701492, -0.703420,
		33.161171, 31.112776, 24.761677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577225, 31.317169, 25.366940>,  <33.241314, 31.603821, 25.254070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577225, 31.317169, 25.366940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829205, 31.071350, 25.176994>,  <32.980392, 30.923859, 25.063028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829205, 31.071350, 25.176994>,  <32.577225, 31.317169, 25.366940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829205, 31.071350, 25.176994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172019, -0.706658, 0.686327,
		-0.757345, -0.350667, -0.550873,
		0.629951, -0.614547, -0.474863,
		33.018188, 30.886986, 25.034536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252827, 30.565311, 25.281137>,  <32.577225, 31.317169, 25.366940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252827, 30.565311, 25.281137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650017, 30.526424, 25.254150>,  <32.888329, 30.503092, 25.237957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650017, 30.526424, 25.254150>,  <32.252827, 30.565311, 25.281137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650017, 30.526424, 25.254150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029468, -0.755331, 0.654680,
		-0.114608, -0.648092, -0.752889,
		0.992974, -0.097218, -0.067469,
		32.947910, 30.497259, 25.233910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315697, 29.857456, 25.305534>,  <32.252827, 30.565311, 25.281137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315697, 29.857456, 25.305534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679337, 30.011917, 25.368057>,  <32.897518, 30.104593, 25.405571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679337, 30.011917, 25.368057>,  <32.315697, 29.857456, 25.305534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679337, 30.011917, 25.368057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147315, -0.648958, 0.746426,
		0.389671, -0.655546, -0.646851,
		0.909096, 0.386151, 0.156308,
		32.952065, 30.127762, 25.414949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777706, 29.343082, 25.376947>,  <32.315697, 29.857456, 25.305534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777706, 29.343082, 25.376947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974247, 29.644268, 25.552044>,  <33.092171, 29.824980, 25.657101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974247, 29.644268, 25.552044>,  <32.777706, 29.343082, 25.376947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974247, 29.644268, 25.552044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286331, -0.614307, 0.735284,
		0.822550, -0.235943, -0.517438,
		0.491351, 0.752966, 0.437740,
		33.121651, 29.870157, 25.683367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523888, 29.106335, 25.487871>,  <32.777706, 29.343082, 25.376947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523888, 29.106335, 25.487871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458393, 29.393127, 25.758907>,  <33.419098, 29.565203, 25.921528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458393, 29.393127, 25.758907>,  <33.523888, 29.106335, 25.487871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458393, 29.393127, 25.758907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332338, -0.606619, 0.722195,
		0.928839, 0.343439, -0.138954,
		-0.163738, 0.716982, 0.677589,
		33.409271, 29.608223, 25.962185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070892, 29.158024, 25.805525>,  <33.523888, 29.106335, 25.487871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070892, 29.158024, 25.805525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824799, 29.315678, 26.078625>,  <33.677143, 29.410269, 26.242485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824799, 29.315678, 26.078625>,  <34.070892, 29.158024, 25.805525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824799, 29.315678, 26.078625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528263, -0.436746, 0.728142,
		0.585173, 0.808649, 0.060495,
		-0.615232, 0.394132, 0.682751,
		33.640228, 29.433918, 26.283449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493965, 29.347351, 26.365601>,  <34.070892, 29.158024, 25.805525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493965, 29.347351, 26.365601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112465, 29.316402, 26.481785>,  <33.883564, 29.297834, 26.551497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112465, 29.316402, 26.481785>,  <34.493965, 29.347351, 26.365601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112465, 29.316402, 26.481785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297902, -0.372231, 0.879033,
		0.040109, 0.924910, 0.378065,
		-0.953754, -0.077369, 0.290462,
		33.826340, 29.293192, 26.568924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452896, 29.584305, 27.038692>,  <34.493965, 29.347351, 26.365601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452896, 29.584305, 27.038692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106018, 29.385193, 27.033226>,  <33.897892, 29.265726, 27.029947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106018, 29.385193, 27.033226>,  <34.452896, 29.584305, 27.038692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106018, 29.385193, 27.033226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143401, -0.275913, 0.950426,
		-0.476872, 0.822246, 0.310652,
		-0.867197, -0.497779, -0.013664,
		33.845860, 29.235859, 27.029127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136806, 29.626680, 27.815125>,  <34.452896, 29.584305, 27.038692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136806, 29.626680, 27.815125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928444, 29.325474, 27.654316>,  <33.803425, 29.144751, 27.557831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928444, 29.325474, 27.654316>,  <34.136806, 29.626680, 27.815125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928444, 29.325474, 27.654316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166060, -0.551361, 0.817572,
		-0.837306, 0.359119, 0.412254,
		-0.520906, -0.753017, -0.402023,
		33.772171, 29.099569, 27.533709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756245, 29.500288, 28.322680>,  <34.136806, 29.626680, 27.815125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756245, 29.500288, 28.322680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742226, 29.170528, 28.096710>,  <33.733814, 28.972673, 27.961128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742226, 29.170528, 28.096710>,  <33.756245, 29.500288, 28.322680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742226, 29.170528, 28.096710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310265, -0.546318, 0.777992,
		-0.950004, -0.148007, 0.274931,
		-0.035051, -0.824397, -0.564925,
		33.731709, 28.923210, 27.927233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423409, 28.981979, 28.666954>,  <33.756245, 29.500288, 28.322680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423409, 28.981979, 28.666954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623447, 28.772106, 28.391384>,  <33.743469, 28.646183, 28.226042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623447, 28.772106, 28.391384>,  <33.423409, 28.981979, 28.666954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623447, 28.772106, 28.391384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249651, -0.674421, 0.694860,
		-0.829205, -0.519485, -0.206286,
		0.500093, -0.524682, -0.688924,
		33.773476, 28.614702, 28.184708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200863, 28.267216, 28.656183>,  <33.423409, 28.981979, 28.666954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200863, 28.267216, 28.656183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557438, 28.220615, 28.481018>,  <33.771381, 28.192656, 28.375919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.557438, 28.220615, 28.481018>,  <33.200863, 28.267216, 28.656183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.557438, 28.220615, 28.481018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234753, -0.707867, 0.666195,
		-0.387595, -0.696672, -0.603670,
		0.891438, -0.116500, -0.437912,
		33.824867, 28.185665, 28.349644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310310, 27.537508, 28.545164>,  <33.200863, 28.267216, 28.656183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310310, 27.537508, 28.545164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676907, 27.695835, 28.521938>,  <33.896866, 27.790831, 28.508003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676907, 27.695835, 28.521938>,  <33.310310, 27.537508, 28.545164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676907, 27.695835, 28.521938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313028, -0.619143, 0.720191,
		0.249114, -0.678225, -0.691341,
		0.916491, 0.395819, -0.058066,
		33.951855, 27.814581, 28.504519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823143, 26.919455, 28.543121>,  <33.310310, 27.537508, 28.545164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823143, 26.919455, 28.543121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042713, 27.232380, 28.660877>,  <34.174454, 27.420135, 28.731531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042713, 27.232380, 28.660877>,  <33.823143, 26.919455, 28.543121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042713, 27.232380, 28.660877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467930, -0.579440, 0.667301,
		0.692620, -0.228544, -0.684138,
		0.548925, 0.782315, 0.294389,
		34.207390, 27.467075, 28.749193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418732, 26.633577, 28.643381>,  <33.823143, 26.919455, 28.543121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418732, 26.633577, 28.643381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460857, 26.981388, 28.836391>,  <34.486134, 27.190075, 28.952198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460857, 26.981388, 28.836391>,  <34.418732, 26.633577, 28.643381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460857, 26.981388, 28.836391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563483, -0.451986, 0.691517,
		0.819388, 0.199069, -0.537564,
		0.105311, 0.869529, 0.482524,
		34.492451, 27.242247, 28.981148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249401, 26.660059, 28.850904>,  <34.418732, 26.633577, 28.643381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249401, 26.660059, 28.850904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018902, 26.882000, 29.090931>,  <34.880600, 27.015163, 29.234947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018902, 26.882000, 29.090931>,  <35.249401, 26.660059, 28.850904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018902, 26.882000, 29.090931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376858, -0.471112, 0.797516,
		0.725200, 0.685707, 0.062379,
		-0.576250, 0.554850, 0.600064,
		34.846027, 27.048454, 29.270950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674160, 26.802853, 29.430576>,  <35.249401, 26.660059, 28.850904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674160, 26.802853, 29.430576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300716, 26.870586, 29.556881>,  <35.076653, 26.911226, 29.632664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300716, 26.870586, 29.556881>,  <35.674160, 26.802853, 29.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300716, 26.870586, 29.556881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172172, -0.560839, 0.809825,
		0.314224, 0.810423, 0.494448,
		-0.933606, 0.169336, 0.315761,
		35.020634, 26.921387, 29.651609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752392, 26.702955, 30.073732>,  <35.674160, 26.802853, 29.430576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752392, 26.702955, 30.073732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353020, 26.724960, 30.069370>,  <35.113396, 26.738163, 30.066753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.353020, 26.724960, 30.069370>,  <35.752392, 26.702955, 30.073732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353020, 26.724960, 30.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035289, -0.465068, 0.884571,
		0.043591, 0.883564, 0.466278,
		-0.998426, 0.055014, -0.010907,
		35.053493, 26.741465, 30.066097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462872, 27.040283, 30.661911>,  <35.752392, 26.702955, 30.073732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462872, 27.040283, 30.661911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186646, 26.786167, 30.523621>,  <35.020908, 26.633698, 30.440647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186646, 26.786167, 30.523621>,  <35.462872, 27.040283, 30.661911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186646, 26.786167, 30.523621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005898, -0.482935, 0.875637,
		-0.723245, 0.602646, 0.337246,
		-0.690566, -0.635289, -0.345725,
		34.979477, 26.595581, 30.419903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882866, 27.161121, 31.118061>,  <35.462872, 27.040283, 30.661911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882866, 27.161121, 31.118061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818005, 26.812374, 30.933216>,  <34.779087, 26.603125, 30.822309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818005, 26.812374, 30.933216>,  <34.882866, 27.161121, 31.118061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818005, 26.812374, 30.933216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265512, -0.412486, 0.871412,
		-0.950373, 0.264003, -0.164604,
		-0.162158, -0.871870, -0.462112,
		34.769356, 26.550814, 30.794582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273106, 27.045206, 31.402500>,  <34.882866, 27.161121, 31.118061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273106, 27.045206, 31.402500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424221, 26.700848, 31.266186>,  <34.514889, 26.494232, 31.184397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424221, 26.700848, 31.266186>,  <34.273106, 27.045206, 31.402500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424221, 26.700848, 31.266186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065745, -0.392075, 0.917581,
		-0.923556, -0.324245, -0.204720,
		0.377786, -0.860896, -0.340785,
		34.537556, 26.442579, 31.163950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849937, 26.582287, 31.782871>,  <34.273106, 27.045206, 31.402500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849937, 26.582287, 31.782871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162838, 26.380173, 31.637119>,  <34.350578, 26.258905, 31.549667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162838, 26.380173, 31.637119>,  <33.849937, 26.582287, 31.782871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162838, 26.380173, 31.637119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044184, -0.538442, 0.841503,
		-0.621398, -0.674364, -0.398870,
		0.782248, -0.505285, -0.364383,
		34.397514, 26.228588, 31.527805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752850, 25.922966, 31.871138>,  <33.849937, 26.582287, 31.782871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752850, 25.922966, 31.871138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152424, 25.935612, 31.857697>,  <34.392170, 25.943199, 31.849632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152424, 25.935612, 31.857697>,  <33.752850, 25.922966, 31.871138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152424, 25.935612, 31.857697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044835, -0.493583, 0.868542,
		0.010873, -0.869124, -0.494475,
		0.998935, 0.031613, -0.033600,
		34.452103, 25.945095, 31.847616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946705, 25.239296, 31.983603>,  <33.752850, 25.922966, 31.871138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946705, 25.239296, 31.983603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287991, 25.439201, 32.043285>,  <34.492764, 25.559145, 32.079094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287991, 25.439201, 32.043285>,  <33.946705, 25.239296, 31.983603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287991, 25.439201, 32.043285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192802, -0.568033, 0.800104,
		0.484616, -0.653893, -0.581009,
		0.853214, 0.499763, 0.149206,
		34.543953, 25.589130, 32.088047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451660, 24.757637, 32.037193>,  <33.946705, 25.239296, 31.983603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451660, 24.757637, 32.037193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597332, 25.074581, 32.232964>,  <34.684734, 25.264748, 32.350426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597332, 25.074581, 32.232964>,  <34.451660, 24.757637, 32.037193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597332, 25.074581, 32.232964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104488, -0.556956, 0.823943,
		0.925450, -0.248921, -0.285623,
		0.364176, 0.792363, 0.489425,
		34.706585, 25.312290, 32.379791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081211, 24.588627, 32.404522>,  <34.451660, 24.757637, 32.037193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081211, 24.588627, 32.404522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976254, 24.918987, 32.604137>,  <34.913280, 25.117203, 32.723907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976254, 24.918987, 32.604137>,  <35.081211, 24.588627, 32.404522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976254, 24.918987, 32.604137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096572, -0.492086, 0.865174,
		0.960116, 0.275209, 0.049362,
		-0.262394, 0.825900, 0.499037,
		34.897537, 25.166758, 32.753849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707161, 24.804197, 32.872032>,  <35.081211, 24.588627, 32.404522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707161, 24.804197, 32.872032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357597, 24.921173, 33.027348>,  <35.147861, 24.991358, 33.120537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357597, 24.921173, 33.027348>,  <35.707161, 24.804197, 32.872032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357597, 24.921173, 33.027348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218021, -0.478133, 0.850797,
		0.434459, 0.828172, 0.354086,
		-0.873906, 0.292438, 0.388288,
		35.095425, 25.008905, 33.143833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845757, 25.148989, 33.463379>,  <35.707161, 24.804197, 32.872032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845757, 25.148989, 33.463379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484287, 24.977711, 33.465248>,  <35.267406, 24.874943, 33.466370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484287, 24.977711, 33.465248>,  <35.845757, 25.148989, 33.463379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484287, 24.977711, 33.465248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244508, -0.506988, 0.826546,
		-0.351554, 0.748071, 0.562849,
		-0.903674, -0.428197, 0.004676,
		35.213184, 24.849251, 33.466652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295807, 25.309299, 34.137108>,  <35.845757, 25.148989, 33.463379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295807, 25.309299, 34.137108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312840, 24.953571, 33.954987>,  <35.323059, 24.740135, 33.845715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312840, 24.953571, 33.954987>,  <35.295807, 25.309299, 34.137108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312840, 24.953571, 33.954987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098522, -0.457231, 0.883874,
		-0.994224, 0.007222, -0.107086,
		0.042580, -0.889319, -0.455302,
		35.325615, 24.686775, 33.818398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353977, 24.838717, 34.663246>,  <35.295807, 25.309299, 34.137108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353977, 24.838717, 34.663246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312813, 24.591766, 34.351284>,  <35.288116, 24.443596, 34.164104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312813, 24.591766, 34.351284>,  <35.353977, 24.838717, 34.663246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312813, 24.591766, 34.351284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029475, -0.785619, 0.618008,
		-0.994254, 0.040611, 0.099044,
		-0.102908, -0.617376, -0.779908,
		35.281940, 24.406553, 34.117313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961552, 25.249361, 35.009132>,  <35.353977, 24.838717, 34.663246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961552, 25.249361, 35.009132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610600, 25.298969, 35.194527>,  <35.400028, 25.328733, 35.305763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610600, 25.298969, 35.194527>,  <35.961552, 25.249361, 35.009132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610600, 25.298969, 35.194527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462146, -0.041119, 0.885850,
		0.128920, 0.991428, -0.021238,
		-0.877383, 0.124019, 0.463486,
		35.347385, 25.336176, 35.333572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553135, 24.884089, 35.409653>,  <35.961552, 25.249361, 35.009132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553135, 24.884089, 35.409653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351471, 24.748543, 35.727394>,  <35.230473, 24.667215, 35.918037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351471, 24.748543, 35.727394>,  <35.553135, 24.884089, 35.409653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351471, 24.748543, 35.727394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524236, 0.851033, 0.030322,
		-0.686294, -0.401140, -0.606702,
		-0.504160, -0.338865, 0.794351,
		35.200222, 24.646883, 35.965698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842651, 24.831120, 35.188580>,  <35.553135, 24.884089, 35.409653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842651, 24.831120, 35.188580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916252, 24.891319, 35.577114>,  <34.960411, 24.927439, 35.810234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916252, 24.891319, 35.577114>,  <34.842651, 24.831120, 35.188580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916252, 24.891319, 35.577114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435328, 0.898482, -0.056745,
		-0.881268, -0.412409, 0.230836,
		0.184000, 0.150497, 0.971337,
		34.971451, 24.936468, 35.868515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191483, 25.023336, 35.466232>,  <34.842651, 24.831120, 35.188580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191483, 25.023336, 35.466232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507824, 25.203598, 35.631863>,  <34.697628, 25.311754, 35.731239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507824, 25.203598, 35.631863>,  <34.191483, 25.023336, 35.466232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507824, 25.203598, 35.631863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442028, 0.888555, -0.122803,
		-0.423271, -0.085914, 0.901920,
		0.790856, 0.450653, 0.414076,
		34.745079, 25.338795, 35.756084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979103, 25.562828, 35.999302>,  <34.191483, 25.023336, 35.466232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979103, 25.562828, 35.999302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327011, 25.663296, 35.829399>,  <34.535755, 25.723577, 35.727455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327011, 25.663296, 35.829399>,  <33.979103, 25.562828, 35.999302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327011, 25.663296, 35.829399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395253, 0.869937, -0.294931,
		0.295435, 0.424409, 0.855918,
		0.869766, 0.251172, -0.424758,
		34.587940, 25.738647, 35.701973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988701, 26.263580, 35.935951>,  <33.979103, 25.562828, 35.999302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988701, 26.263580, 35.935951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281811, 26.163624, 35.682781>,  <34.457676, 26.103649, 35.530880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281811, 26.163624, 35.682781>,  <33.988701, 26.263580, 35.935951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281811, 26.163624, 35.682781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091100, 0.885727, -0.455179,
		0.674344, 0.391204, 0.626275,
		0.732777, -0.249893, -0.632923,
		34.501644, 26.088655, 35.492905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562984, 26.776146, 35.891468>,  <33.988701, 26.263580, 35.935951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562984, 26.776146, 35.891468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560143, 26.576862, 35.544655>,  <34.558437, 26.457293, 35.336567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560143, 26.576862, 35.544655>,  <34.562984, 26.776146, 35.891468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560143, 26.576862, 35.544655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018938, 0.866828, -0.498248,
		0.999795, -0.019961, 0.003274,
		-0.007108, -0.498208, -0.867029,
		34.558010, 26.427401, 35.284546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021763, 27.242592, 35.385944>,  <34.562984, 26.776146, 35.891468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021763, 27.242592, 35.385944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808876, 26.994579, 35.155361>,  <34.681145, 26.845772, 35.017010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808876, 26.994579, 35.155361>,  <35.021763, 27.242592, 35.385944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808876, 26.994579, 35.155361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102139, 0.722958, -0.683300,
		0.840423, -0.304787, -0.448101,
		-0.532219, -0.620030, -0.576460,
		34.649208, 26.808571, 34.982422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271152, 27.286806, 34.692673>,  <35.021763, 27.242592, 35.385944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271152, 27.286806, 34.692673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913937, 27.123158, 34.617741>,  <34.699608, 27.024969, 34.572781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913937, 27.123158, 34.617741>,  <35.271152, 27.286806, 34.692673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913937, 27.123158, 34.617741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162990, 0.682166, -0.712799,
		0.419413, -0.606028, -0.675887,
		-0.893044, -0.409120, -0.187333,
		34.646023, 27.000422, 34.561543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209328, 27.148634, 33.992313>,  <35.271152, 27.286806, 34.692673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209328, 27.148634, 33.992313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832954, 27.187305, 34.122112>,  <34.607132, 27.210508, 34.199989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832954, 27.187305, 34.122112>,  <35.209328, 27.148634, 33.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832954, 27.187305, 34.122112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165255, 0.705339, -0.689339,
		-0.295523, -0.702246, -0.647701,
		-0.940934, 0.096680, 0.324494,
		34.550674, 27.216309, 34.219460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775078, 27.206882, 33.356293>,  <35.209328, 27.148634, 33.992313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775078, 27.206882, 33.356293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545708, 27.346466, 33.652782>,  <34.408085, 27.430216, 33.830677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545708, 27.346466, 33.652782>,  <34.775078, 27.206882, 33.356293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545708, 27.346466, 33.652782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228103, 0.800965, -0.553555,
		-0.786860, -0.486499, -0.379697,
		-0.573428, 0.348961, 0.741220,
		34.373680, 27.451155, 33.875149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199421, 27.481094, 33.049156>,  <34.775078, 27.206882, 33.356293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199421, 27.481094, 33.049156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188274, 27.672840, 33.400024>,  <34.181587, 27.787888, 33.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188274, 27.672840, 33.400024>,  <34.199421, 27.481094, 33.049156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188274, 27.672840, 33.400024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360387, 0.813683, -0.456115,
		-0.932387, -0.328832, 0.150084,
		-0.027864, 0.479364, 0.877174,
		34.179916, 27.816648, 33.663177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547272, 27.968994, 33.118614>,  <34.199421, 27.481094, 33.049156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547272, 27.968994, 33.118614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819359, 28.111931, 33.374619>,  <33.982609, 28.197693, 33.528221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819359, 28.111931, 33.374619>,  <33.547272, 27.968994, 33.118614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819359, 28.111931, 33.374619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232458, 0.933217, -0.273987,
		-0.695179, 0.037593, 0.717853,
		0.680213, 0.357340, 0.640014,
		34.023422, 28.219133, 33.566624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182606, 28.554125, 33.488213>,  <33.547272, 27.968994, 33.118614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182606, 28.554125, 33.488213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581963, 28.576797, 33.488323>,  <33.821575, 28.590401, 33.488388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581963, 28.576797, 33.488323>,  <33.182606, 28.554125, 33.488213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581963, 28.576797, 33.488323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054573, 0.962526, -0.265641,
		-0.015325, 0.265199, 0.964072,
		0.998392, 0.056683, 0.000278,
		33.881481, 28.593801, 33.488407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347755, 29.199327, 33.657307>,  <33.182606, 28.554125, 33.488213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347755, 29.199327, 33.657307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695175, 29.102631, 33.484249>,  <33.903625, 29.044613, 33.380413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.695175, 29.102631, 33.484249>,  <33.347755, 29.199327, 33.657307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695175, 29.102631, 33.484249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054264, 0.914107, -0.401824,
		0.492623, 0.325527, 0.807065,
		0.868549, -0.241743, -0.432646,
		33.955742, 29.030107, 33.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729435, 29.766994, 33.841423>,  <33.347755, 29.199327, 33.657307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729435, 29.766994, 33.841423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884872, 29.594868, 33.515522>,  <33.978134, 29.491592, 33.319981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884872, 29.594868, 33.515522>,  <33.729435, 29.766994, 33.841423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884872, 29.594868, 33.515522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152841, 0.902101, -0.403551,
		0.908644, 0.032289, 0.416321,
		0.388594, -0.430315, -0.814754,
		34.001450, 29.465773, 33.271095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314857, 30.259541, 33.564194>,  <33.729435, 29.766994, 33.841423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314857, 30.259541, 33.564194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261662, 30.010212, 33.255962>,  <34.229744, 29.860615, 33.071026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261662, 30.010212, 33.255962>,  <34.314857, 30.259541, 33.564194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261662, 30.010212, 33.255962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020745, 0.779061, -0.626605,
		0.990900, -0.067349, -0.116541,
		-0.132993, -0.623320, -0.770575,
		34.221764, 29.823215, 33.024792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754971, 30.460176, 33.059719>,  <34.314857, 30.259541, 33.564194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754971, 30.460176, 33.059719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481792, 30.239826, 32.867832>,  <34.317886, 30.107616, 32.752701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481792, 30.239826, 32.867832>,  <34.754971, 30.460176, 33.059719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481792, 30.239826, 32.867832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048412, 0.689411, -0.722751,
		0.728867, -0.470372, -0.497496,
		-0.682941, -0.550874, -0.479717,
		34.276909, 30.074564, 32.723919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952168, 30.376001, 32.379234>,  <34.754971, 30.460176, 33.059719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952168, 30.376001, 32.379234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571907, 30.273945, 32.308624>,  <34.343750, 30.212711, 32.266258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571907, 30.273945, 32.308624>,  <34.952168, 30.376001, 32.379234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571907, 30.273945, 32.308624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031109, 0.487722, -0.872445,
		0.308694, -0.834883, -0.455717,
		-0.950653, -0.255141, -0.176529,
		34.286713, 30.197403, 32.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901699, 30.200670, 31.697224>,  <34.952168, 30.376001, 32.379234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901699, 30.200670, 31.697224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514652, 30.253906, 31.783020>,  <34.282425, 30.285847, 31.834497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514652, 30.253906, 31.783020>,  <34.901699, 30.200670, 31.697224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514652, 30.253906, 31.783020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126545, 0.479485, -0.868378,
		-0.218418, -0.867399, -0.447115,
		-0.967615, 0.133089, 0.214493,
		34.224369, 30.293833, 31.847368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455982, 30.026785, 31.066202>,  <34.901699, 30.200670, 31.697224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455982, 30.026785, 31.066202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219616, 30.272072, 31.275883>,  <34.077797, 30.419243, 31.401691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219616, 30.272072, 31.275883>,  <34.455982, 30.026785, 31.066202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219616, 30.272072, 31.275883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311386, 0.426058, -0.849419,
		-0.744218, -0.665162, -0.060816,
		-0.590913, 0.613216, 0.524203,
		34.042343, 30.456036, 31.433144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793575, 30.071287, 30.660297>,  <34.455982, 30.026785, 31.066202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793575, 30.071287, 30.660297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829765, 30.394749, 30.892811>,  <33.851479, 30.588825, 31.032320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829765, 30.394749, 30.892811>,  <33.793575, 30.071287, 30.660297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829765, 30.394749, 30.892811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102406, 0.588139, -0.802251,
		-0.990620, 0.013055, 0.136021,
		0.090472, 0.808655, 0.581285,
		33.856907, 30.637344, 31.067196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314419, 30.586349, 30.388954>,  <33.793575, 30.071287, 30.660297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314419, 30.586349, 30.388954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596783, 30.778084, 30.597542>,  <33.766201, 30.893126, 30.722694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596783, 30.778084, 30.597542>,  <33.314419, 30.586349, 30.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596783, 30.778084, 30.597542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188391, 0.582646, -0.790590,
		-0.682792, 0.656323, 0.320991,
		0.705906, 0.479337, 0.521471,
		33.808556, 30.921885, 30.753983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332973, 31.351410, 30.207758>,  <33.314419, 30.586349, 30.388954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332973, 31.351410, 30.207758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700050, 31.334785, 30.365799>,  <33.920296, 31.324810, 30.460623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700050, 31.334785, 30.365799>,  <33.332973, 31.351410, 30.207758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700050, 31.334785, 30.365799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291747, 0.745540, -0.599211,
		-0.269661, 0.665163, 0.696305,
		0.917696, -0.041561, 0.395103,
		33.975361, 31.322317, 30.484329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514111, 32.041603, 30.364447>,  <33.332973, 31.351410, 30.207758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514111, 32.041603, 30.364447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848488, 31.822926, 30.345146>,  <34.049114, 31.691719, 30.333567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848488, 31.822926, 30.345146>,  <33.514111, 32.041603, 30.364447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848488, 31.822926, 30.345146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476004, 0.765991, -0.432063,
		0.273164, 0.338212, 0.900552,
		0.835944, -0.546690, -0.048251,
		34.099270, 31.658918, 30.330671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034809, 32.544907, 30.401760>,  <33.514111, 32.041603, 30.364447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034809, 32.544907, 30.401760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248962, 32.232796, 30.272438>,  <34.377453, 32.045528, 30.194845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248962, 32.232796, 30.272438>,  <34.034809, 32.544907, 30.401760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248962, 32.232796, 30.272438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613396, 0.622347, -0.486240,
		0.580612, 0.062010, 0.811815,
		0.535382, -0.780282, -0.323305,
		34.409576, 31.998711, 30.175446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728565, 32.888531, 30.362068>,  <34.034809, 32.544907, 30.401760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728565, 32.888531, 30.362068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747276, 32.552769, 30.145473>,  <34.758503, 32.351311, 30.015516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747276, 32.552769, 30.145473>,  <34.728565, 32.888531, 30.362068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747276, 32.552769, 30.145473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622615, 0.448396, -0.641320,
		0.781129, -0.307139, 0.543601,
		0.046774, -0.839408, -0.541485,
		34.761307, 32.300945, 29.983028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331257, 32.979053, 29.997805>,  <34.728565, 32.888531, 30.362068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331257, 32.979053, 29.997805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175537, 32.667618, 29.800930>,  <35.082104, 32.480755, 29.682806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175537, 32.667618, 29.800930>,  <35.331257, 32.979053, 29.997805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175537, 32.667618, 29.800930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396836, 0.340438, -0.852422,
		0.831245, -0.527163, 0.176440,
		-0.389299, -0.778589, -0.492185,
		35.058746, 32.434040, 29.653275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901363, 32.698238, 29.603493>,  <35.331257, 32.979053, 29.997805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901363, 32.698238, 29.603493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537621, 32.626213, 29.453480>,  <35.319374, 32.583000, 29.363472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.537621, 32.626213, 29.453480>,  <35.901363, 32.698238, 29.603493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537621, 32.626213, 29.453480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303447, 0.329601, -0.894026,
		0.284580, -0.926793, -0.245090,
		-0.909359, -0.180050, -0.375031,
		35.264812, 32.572197, 29.340969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933357, 32.377533, 28.977518>,  <35.901363, 32.698238, 29.603493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933357, 32.377533, 28.977518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573196, 32.548752, 28.946381>,  <35.357101, 32.651482, 28.927698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573196, 32.548752, 28.946381>,  <35.933357, 32.377533, 28.977518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573196, 32.548752, 28.946381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237175, 0.332936, -0.912634,
		-0.364731, -0.840197, -0.401297,
		-0.900399, 0.428044, -0.077842,
		35.303078, 32.677166, 28.923029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723862, 32.203045, 28.280577>,  <35.933357, 32.377533, 28.977518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723862, 32.203045, 28.280577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492722, 32.520298, 28.357544>,  <35.354038, 32.710651, 28.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492722, 32.520298, 28.357544>,  <35.723862, 32.203045, 28.280577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492722, 32.520298, 28.357544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322698, 0.438591, -0.838751,
		-0.749639, -0.422577, -0.509382,
		-0.577848, 0.793137, 0.192420,
		35.319366, 32.758240, 28.415270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610798, 32.403164, 27.658024>,  <35.723862, 32.203045, 28.280577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610798, 32.403164, 27.658024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484707, 32.727005, 27.856087>,  <35.409054, 32.921310, 27.974924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484707, 32.727005, 27.856087>,  <35.610798, 32.403164, 27.658024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484707, 32.727005, 27.856087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289893, 0.578963, -0.762079,
		-0.903656, -0.096684, -0.417202,
		-0.315225, 0.809601, 0.495155,
		35.390141, 32.969887, 28.004633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046501, 32.729839, 27.126472>,  <35.610798, 32.403164, 27.658024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046501, 32.729839, 27.126472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222408, 32.982735, 27.381618>,  <35.327953, 33.134472, 27.534706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222408, 32.982735, 27.381618>,  <35.046501, 32.729839, 27.126472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222408, 32.982735, 27.381618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225611, 0.609686, -0.759857,
		-0.869312, 0.478070, 0.125480,
		0.439768, 0.632243, 0.637866,
		35.354340, 33.172409, 27.572979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780994, 33.429012, 26.972778>,  <35.046501, 32.729839, 27.126472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780994, 33.429012, 26.972778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109245, 33.494499, 27.191784>,  <35.306194, 33.533791, 27.323187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109245, 33.494499, 27.191784>,  <34.780994, 33.429012, 26.972778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109245, 33.494499, 27.191784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351253, 0.611233, -0.709236,
		-0.450769, 0.774333, 0.444089,
		0.820627, 0.163714, 0.547512,
		35.355434, 33.543613, 27.356037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005360, 34.116055, 26.866463>,  <34.780994, 33.429012, 26.972778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005360, 34.116055, 26.866463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350739, 33.993958, 27.027100>,  <35.557968, 33.920700, 27.123482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350739, 33.993958, 27.027100>,  <35.005360, 34.116055, 26.866463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350739, 33.993958, 27.027100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504429, 0.520154, -0.689196,
		0.001482, 0.797663, 0.603101,
		0.863452, -0.305243, 0.401594,
		35.609776, 33.902386, 27.147577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424511, 34.712044, 26.911448>,  <35.005360, 34.116055, 26.866463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424511, 34.712044, 26.911448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688572, 34.411640, 26.906082>,  <35.847008, 34.231396, 26.902863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688572, 34.411640, 26.906082>,  <35.424511, 34.712044, 26.911448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688572, 34.411640, 26.906082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545203, 0.491373, -0.679196,
		0.516674, 0.441060, 0.733835,
		0.660153, -0.751012, -0.013412,
		35.886620, 34.186337, 26.902058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045765, 34.986340, 27.109379>,  <35.424511, 34.712044, 26.911448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045765, 34.986340, 27.109379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146793, 34.662258, 26.897804>,  <36.207409, 34.467808, 26.770859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146793, 34.662258, 26.897804>,  <36.045765, 34.986340, 27.109379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146793, 34.662258, 26.897804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381434, 0.585763, -0.715115,
		0.889223, -0.021138, 0.456986,
		0.252569, -0.810207, -0.528937,
		36.222565, 34.419197, 26.739122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622078, 35.227863, 26.677921>,  <36.045765, 34.986340, 27.109379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622078, 35.227863, 26.677921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 34.909683, 26.489609>,  <36.377850, 34.718777, 26.376621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 34.909683, 26.489609>,  <36.622078, 35.227863, 26.677921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469437, 34.909683, 26.489609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066132, 0.484525, -0.872274,
		0.921957, -0.363997, -0.132292,
		-0.381604, -0.795450, -0.470783,
		36.354954, 34.671047, 26.348373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959709, 35.194717, 26.040514>,  <36.622078, 35.227863, 26.677921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959709, 35.194717, 26.040514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639259, 34.970280, 25.957203>,  <36.446991, 34.835617, 25.907217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639259, 34.970280, 25.957203>,  <36.959709, 35.194717, 26.040514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639259, 34.970280, 25.957203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024213, 0.317330, -0.948006,
		0.598012, -0.764510, -0.240635,
		-0.801121, -0.561093, -0.208278,
		36.398922, 34.801952, 25.894720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079826, 34.831402, 25.298513>,  <36.959709, 35.194717, 26.040514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079826, 34.831402, 25.298513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690285, 34.842579, 25.388699>,  <36.456562, 34.849285, 25.442810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690285, 34.842579, 25.388699>,  <37.079826, 34.831402, 25.298513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690285, 34.842579, 25.388699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207230, 0.297497, -0.931961,
		-0.093119, -0.954314, -0.283927,
		-0.973851, 0.027945, 0.225465,
		36.398129, 34.850964, 25.456339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728672, 34.463303, 24.772585>,  <37.079826, 34.831402, 25.298513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728672, 34.463303, 24.772585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473042, 34.730083, 24.925823>,  <36.319664, 34.890152, 25.017767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473042, 34.730083, 24.925823>,  <36.728672, 34.463303, 24.772585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473042, 34.730083, 24.925823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272009, 0.269914, -0.923665,
		-0.719440, -0.694498, 0.008921,
		-0.639076, 0.666948, 0.383096,
		36.281319, 34.930168, 25.040752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.200703, 34.451763, 24.242533>,  <36.728672, 34.463303, 24.772585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.200703, 34.451763, 24.242533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111305, 34.775272, 24.460133>,  <36.057667, 34.969379, 24.590693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111305, 34.775272, 24.460133>,  <36.200703, 34.451763, 24.242533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111305, 34.775272, 24.460133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420983, 0.423280, -0.802252,
		-0.879104, -0.408314, 0.245878,
		-0.223496, 0.808773, 0.544000,
		36.044258, 35.017902, 24.623333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493725, 34.656506, 23.991472>,  <36.200703, 34.451763, 24.242533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493725, 34.656506, 23.991472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626518, 34.988232, 24.171257>,  <35.706196, 35.187267, 24.279129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626518, 34.988232, 24.171257>,  <35.493725, 34.656506, 23.991472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626518, 34.988232, 24.171257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491927, 0.558778, -0.667664,
		-0.804855, 0.000554, 0.593471,
		0.331988, 0.829317, 0.449463,
		35.726116, 35.237026, 24.306095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957901, 35.108829, 24.020395>,  <35.493725, 34.656506, 23.991472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957901, 35.108829, 24.020395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269753, 35.352581, 24.078140>,  <35.456863, 35.498833, 24.112787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269753, 35.352581, 24.078140>,  <34.957901, 35.108829, 24.020395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269753, 35.352581, 24.078140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344976, 0.610295, -0.713114,
		-0.522660, 0.506162, 0.686023,
		0.779627, 0.609377, 0.144363,
		35.503639, 35.535393, 24.121449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677528, 35.814598, 24.015753>,  <34.957901, 35.108829, 24.020395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677528, 35.814598, 24.015753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 35.849319, 23.954628>,  <35.307568, 35.870152, 23.917953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071304, 35.849319, 23.954628>,  <34.677528, 35.814598, 24.015753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071304, 35.849319, 23.954628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170826, 0.676935, -0.715945,
		0.041293, 0.730906, 0.681228,
		0.984436, 0.086808, -0.152810,
		35.366634, 35.875362, 23.908785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756912, 36.585854, 24.026594>,  <34.677528, 35.814598, 24.015753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756912, 36.585854, 24.026594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073586, 36.451351, 23.822567>,  <35.263588, 36.370647, 23.700151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073586, 36.451351, 23.822567>,  <34.756912, 36.585854, 24.026594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073586, 36.451351, 23.822567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195224, 0.651881, -0.732761,
		0.578900, 0.679692, 0.450437,
		0.791683, -0.336259, -0.510066,
		35.311089, 36.350471, 23.669548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621250, 36.496658, 24.814604>,  <34.756912, 36.585854, 24.026594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621250, 36.496658, 24.814604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373825, 36.775822, 24.670208>,  <34.225372, 36.943317, 24.583570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373825, 36.775822, 24.670208>,  <34.621250, 36.496658, 24.814604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373825, 36.775822, 24.670208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501804, 0.002654, 0.864977,
		0.604631, 0.716184, 0.348570,
		-0.618558, 0.697906, -0.360989,
		34.188259, 36.985195, 24.561911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616657, 37.079601, 25.339798>,  <34.621250, 36.496658, 24.814604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616657, 37.079601, 25.339798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282330, 37.072899, 25.120300>,  <34.081734, 37.068878, 24.988602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282330, 37.072899, 25.120300>,  <34.616657, 37.079601, 25.339798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282330, 37.072899, 25.120300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548567, -0.014144, 0.835987,
		-0.021767, 0.999759, 0.002632,
		-0.835823, -0.016753, -0.548743,
		34.031582, 37.067871, 24.955677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140228, 37.389534, 25.755249>,  <34.616657, 37.079601, 25.339798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140228, 37.389534, 25.755249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918179, 37.196125, 25.484535>,  <33.784946, 37.080078, 25.322107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918179, 37.196125, 25.484535>,  <34.140228, 37.389534, 25.755249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918179, 37.196125, 25.484535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756409, -0.044950, 0.652553,
		-0.345946, 0.874177, -0.340788,
		-0.555128, -0.483523, -0.676785,
		33.751640, 37.051067, 25.281500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335487, 37.681519, 25.728714>,  <34.140228, 37.389534, 25.755249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335487, 37.681519, 25.728714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332748, 37.312000, 25.575588>,  <33.331104, 37.090290, 25.483713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.332748, 37.312000, 25.575588>,  <33.335487, 37.681519, 25.728714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332748, 37.312000, 25.575588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774214, -0.237392, 0.586718,
		-0.632887, 0.300399, -0.713593,
		-0.006848, -0.923800, -0.382816,
		33.330692, 37.034859, 25.460743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607059, 37.479755, 25.732912>,  <33.335487, 37.681519, 25.728714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607059, 37.479755, 25.732912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785828, 37.126404, 25.676479>,  <32.893089, 36.914394, 25.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785828, 37.126404, 25.676479>,  <32.607059, 37.479755, 25.732912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785828, 37.126404, 25.676479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657332, -0.431260, 0.618005,
		-0.606776, -0.183460, -0.773412,
		0.446921, -0.883378, -0.141084,
		32.919903, 36.861389, 25.634153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094540, 36.881847, 25.504456>,  <32.607059, 37.479755, 25.732912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094540, 36.881847, 25.504456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414333, 36.718563, 25.680721>,  <32.606209, 36.620594, 25.786482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414333, 36.718563, 25.680721>,  <32.094540, 36.881847, 25.504456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414333, 36.718563, 25.680721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600519, -0.525863, 0.602366,
		-0.014162, -0.746212, -0.665558,
		0.799485, -0.408211, 0.440667,
		32.654179, 36.596100, 25.812922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926722, 36.184330, 25.525017>,  <32.094540, 36.881847, 25.504456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926722, 36.184330, 25.525017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231789, 36.193539, 25.783569>,  <32.414829, 36.199062, 25.938702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231789, 36.193539, 25.783569>,  <31.926722, 36.184330, 25.525017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231789, 36.193539, 25.783569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473020, -0.661741, 0.581679,
		0.441127, -0.749379, -0.493800,
		0.762666, 0.023017, 0.646383,
		32.460587, 36.200443, 25.977484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077297, 35.488407, 25.686651>,  <31.926722, 36.184330, 25.525017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077297, 35.488407, 25.686651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224617, 35.689854, 25.999249>,  <32.313007, 35.810722, 26.186806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224617, 35.689854, 25.999249>,  <32.077297, 35.488407, 25.686651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224617, 35.689854, 25.999249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305532, -0.728328, 0.613343,
		0.878070, -0.464663, -0.114371,
		0.368297, 0.503614, 0.781492,
		32.335106, 35.840939, 26.233696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228760, 34.951721, 26.205160>,  <32.077297, 35.488407, 25.686651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228760, 34.951721, 26.205160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265209, 35.277039, 26.435032>,  <32.287079, 35.472229, 26.572954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265209, 35.277039, 26.435032>,  <32.228760, 34.951721, 26.205160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265209, 35.277039, 26.435032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163883, -0.556964, 0.814207,
		0.982263, -0.168370, 0.082534,
		0.091120, 0.813291, 0.574678,
		32.292545, 35.521027, 26.607435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706211, 34.783165, 26.775406>,  <32.228760, 34.951721, 26.205160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706211, 34.783165, 26.775406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459633, 35.084393, 26.867390>,  <32.311687, 35.265129, 26.922579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459633, 35.084393, 26.867390>,  <32.706211, 34.783165, 26.775406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459633, 35.084393, 26.867390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227400, -0.449871, 0.863658,
		0.753846, 0.480106, 0.448569,
		-0.616445, 0.753070, 0.229958,
		32.274700, 35.310314, 26.936377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744755, 34.755733, 27.467596>,  <32.706211, 34.783165, 26.775406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744755, 34.755733, 27.467596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417934, 34.947647, 27.339699>,  <32.221844, 35.062794, 27.262960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417934, 34.947647, 27.339699>,  <32.744755, 34.755733, 27.467596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417934, 34.947647, 27.339699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522325, -0.381118, 0.762841,
		0.244137, 0.790290, 0.561995,
		-0.817052, 0.479782, -0.319743,
		32.172817, 35.091583, 27.243776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559013, 35.281628, 28.008186>,  <32.744755, 34.755733, 27.467596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559013, 35.281628, 28.008186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270267, 35.143627, 27.768223>,  <32.097019, 35.060825, 27.624245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270267, 35.143627, 27.768223>,  <32.559013, 35.281628, 28.008186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270267, 35.143627, 27.768223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477350, -0.379404, 0.792584,
		-0.501053, 0.858501, 0.109189,
		-0.721861, -0.345005, -0.599907,
		32.053711, 35.040127, 27.588251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808271, 35.466343, 28.354916>,  <32.559013, 35.281628, 28.008186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808271, 35.466343, 28.354916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777861, 35.136429, 28.130791>,  <31.759615, 34.938480, 27.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777861, 35.136429, 28.130791>,  <31.808271, 35.466343, 28.354916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777861, 35.136429, 28.130791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439903, -0.476550, 0.761174,
		-0.894821, 0.304354, -0.326594,
		-0.076028, -0.824784, -0.560313,
		31.755053, 34.888992, 27.962696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216179, 35.273396, 28.553991>,  <31.808271, 35.466343, 28.354916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216179, 35.273396, 28.553991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379461, 34.945568, 28.393154>,  <31.477430, 34.748871, 28.296652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379461, 34.945568, 28.393154>,  <31.216179, 35.273396, 28.553991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379461, 34.945568, 28.393154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264586, -0.527773, 0.807124,
		-0.873706, -0.223084, -0.432286,
		0.408206, -0.819567, -0.402093,
		31.501923, 34.699699, 28.272526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793564, 34.709415, 28.792065>,  <31.216179, 35.273396, 28.553991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793564, 34.709415, 28.792065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121124, 34.515774, 28.668743>,  <31.317659, 34.399590, 28.594749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121124, 34.515774, 28.668743>,  <30.793564, 34.709415, 28.792065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121124, 34.515774, 28.668743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051659, -0.472824, 0.879641,
		-0.571609, -0.736263, -0.362187,
		0.818898, -0.484101, -0.308306,
		31.366795, 34.370544, 28.576252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739571, 34.031281, 29.105110>,  <30.793564, 34.709415, 28.792065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739571, 34.031281, 29.105110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126945, 34.067886, 29.012367>,  <31.359369, 34.089851, 28.956722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126945, 34.067886, 29.012367>,  <30.739571, 34.031281, 29.105110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126945, 34.067886, 29.012367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244329, -0.532650, 0.810300,
		-0.049344, -0.841373, -0.538198,
		0.968436, 0.091514, -0.231855,
		31.417477, 34.095341, 28.942810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940735, 33.304169, 29.180567>,  <30.739571, 34.031281, 29.105110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940735, 33.304169, 29.180567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272909, 33.526806, 29.190235>,  <31.472214, 33.660389, 29.196035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272909, 33.526806, 29.190235>,  <30.940735, 33.304169, 29.180567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272909, 33.526806, 29.190235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379212, -0.596502, 0.707378,
		0.408137, -0.578266, -0.706422,
		0.830435, 0.556591, 0.024170,
		31.522039, 33.693783, 29.197487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495367, 32.807384, 29.179012>,  <30.940735, 33.304169, 29.180567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495367, 32.807384, 29.179012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651957, 33.134071, 29.348583>,  <31.745911, 33.330086, 29.450327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651957, 33.134071, 29.348583>,  <31.495367, 32.807384, 29.179012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651957, 33.134071, 29.348583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322665, -0.553281, 0.767963,
		0.861764, -0.163848, -0.480122,
		0.391472, 0.816721, 0.423930,
		31.769398, 33.379089, 29.475761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133835, 32.596676, 29.379177>,  <31.495367, 32.807384, 29.179012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133835, 32.596676, 29.379177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 32.911812, 29.609386>,  <31.993490, 33.100891, 29.747513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046120, 32.911812, 29.609386>,  <32.133835, 32.596676, 29.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046120, 32.911812, 29.609386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274541, -0.516219, 0.811262,
		0.936236, 0.335907, -0.103091,
		-0.219291, 0.787835, 0.575523,
		31.980331, 33.148163, 29.782043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712559, 32.687366, 29.826078>,  <32.133835, 32.596676, 29.379177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712559, 32.687366, 29.826078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397469, 32.871292, 29.990059>,  <32.208416, 32.981647, 30.088448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.397469, 32.871292, 29.990059>,  <32.712559, 32.687366, 29.826078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397469, 32.871292, 29.990059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123127, -0.534533, 0.836131,
		0.603595, 0.709119, 0.364451,
		-0.787727, 0.459810, 0.409953,
		32.161152, 33.009235, 30.113045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886105, 32.688515, 30.511045>,  <32.712559, 32.687366, 29.826078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886105, 32.688515, 30.511045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494110, 32.764133, 30.536011>,  <32.258915, 32.809505, 30.550989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494110, 32.764133, 30.536011>,  <32.886105, 32.688515, 30.511045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494110, 32.764133, 30.536011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045776, -0.519075, 0.853502,
		0.193747, 0.833561, 0.517338,
		-0.979983, 0.189045, 0.062412,
		32.200115, 32.820847, 30.554735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722454, 32.688740, 31.267447>,  <32.886105, 32.688515, 30.511045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722454, 32.688740, 31.267447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376534, 32.625389, 31.076855>,  <32.168980, 32.587379, 30.962500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.376534, 32.625389, 31.076855>,  <32.722454, 32.688740, 31.267447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376534, 32.625389, 31.076855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363848, -0.456289, 0.812043,
		-0.346022, 0.875624, 0.336975,
		-0.864802, -0.158377, -0.476480,
		32.117092, 32.577877, 30.933910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190296, 32.814953, 31.754131>,  <32.722454, 32.688740, 31.267447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190296, 32.814953, 31.754131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032337, 32.578598, 31.472733>,  <31.937561, 32.436787, 31.303894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.032337, 32.578598, 31.472733>,  <32.190296, 32.814953, 31.754131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032337, 32.578598, 31.472733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364225, -0.602295, 0.710339,
		-0.843442, 0.536743, 0.022629,
		-0.394899, -0.590888, -0.703496,
		31.913868, 32.401333, 31.261684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626606, 32.490425, 32.066391>,  <32.190296, 32.814953, 31.754131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626606, 32.490425, 32.066391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633560, 32.262638, 31.737659>,  <31.637732, 32.125965, 31.540421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633560, 32.262638, 31.737659>,  <31.626606, 32.490425, 32.066391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633560, 32.262638, 31.737659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321283, -0.781546, 0.534756,
		-0.946824, 0.254745, -0.196546,
		0.017384, -0.569466, -0.821831,
		31.638775, 32.091797, 31.491110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932758, 32.168385, 32.027691>,  <31.626606, 32.490425, 32.066391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932758, 32.168385, 32.027691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211405, 31.945663, 31.846718>,  <31.378592, 31.812031, 31.738132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211405, 31.945663, 31.846718>,  <30.932758, 32.168385, 32.027691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211405, 31.945663, 31.846718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202413, -0.757532, 0.620624,
		-0.688299, -0.340758, -0.640413,
		0.696616, -0.556803, -0.452435,
		31.420389, 31.778622, 31.710987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685324, 31.428711, 32.251427>,  <30.932758, 32.168385, 32.027691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685324, 31.428711, 32.251427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045898, 31.378208, 32.085793>,  <31.262243, 31.347906, 31.986412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045898, 31.378208, 32.085793>,  <30.685324, 31.428711, 32.251427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045898, 31.378208, 32.085793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055451, -0.914972, 0.399689,
		-0.429341, -0.383257, -0.817790,
		0.901438, -0.126256, -0.414087,
		31.316330, 31.340332, 31.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592754, 30.858809, 31.819847>,  <30.685324, 31.428711, 32.251427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592754, 30.858809, 31.819847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978283, 30.901062, 31.917740>,  <31.209600, 30.926414, 31.976475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978283, 30.901062, 31.917740>,  <30.592754, 30.858809, 31.819847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978283, 30.901062, 31.917740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011953, -0.900076, 0.435570,
		0.266288, -0.422736, -0.866248,
		0.963819, 0.105633, 0.244733,
		31.267429, 30.932753, 31.991159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050440, 30.467852, 31.388195>,  <30.592754, 30.858809, 31.819847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050440, 30.467852, 31.388195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251225, 30.517536, 31.730564>,  <31.371695, 30.547346, 31.935986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251225, 30.517536, 31.730564>,  <31.050440, 30.467852, 31.388195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251225, 30.517536, 31.730564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022381, -0.991168, 0.130712,
		0.864600, -0.046456, -0.500308,
		0.501962, 0.124211, 0.855924,
		31.401814, 30.554800, 31.987341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500313, 29.829964, 31.471081>,  <31.050440, 30.467852, 31.388195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500313, 29.829964, 31.471081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514177, 29.996990, 31.834274>,  <31.522495, 30.097206, 32.052193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.514177, 29.996990, 31.834274>,  <31.500313, 29.829964, 31.471081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514177, 29.996990, 31.834274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163877, -0.898609, 0.406997,
		0.985872, 0.134692, -0.099574,
		0.034659, 0.417565, 0.907986,
		31.524574, 30.122259, 32.106670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118629, 29.695721, 31.725344>,  <31.500313, 29.829964, 31.471081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118629, 29.695721, 31.725344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855356, 29.729939, 32.024536>,  <31.697392, 29.750469, 32.204052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855356, 29.729939, 32.024536>,  <32.118629, 29.695721, 31.725344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855356, 29.729939, 32.024536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187153, -0.943744, 0.272619,
		0.729224, 0.319421, 0.605147,
		-0.658184, 0.085546, 0.747981,
		31.657902, 29.755602, 32.248932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439613, 29.374027, 32.339329>,  <32.118629, 29.695721, 31.725344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439613, 29.374027, 32.339329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065411, 29.393387, 32.479321>,  <31.840889, 29.405003, 32.563316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065411, 29.393387, 32.479321>,  <32.439613, 29.374027, 32.339329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065411, 29.393387, 32.479321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165059, -0.815953, 0.554054,
		0.312379, 0.576089, 0.755342,
		-0.935508, 0.048399, 0.349975,
		31.784758, 29.407907, 32.584312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515297, 29.175455, 33.022175>,  <32.439613, 29.374027, 32.339329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515297, 29.175455, 33.022175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119499, 29.155296, 32.967987>,  <31.882019, 29.143202, 32.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119499, 29.155296, 32.967987>,  <32.515297, 29.175455, 33.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119499, 29.155296, 32.967987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051405, -0.753285, 0.655682,
		-0.135093, 0.655761, 0.742784,
		-0.989499, -0.050395, -0.135473,
		31.822649, 29.140177, 32.927345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186756, 29.269972, 33.714123>,  <32.515297, 29.175455, 33.022175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186756, 29.269972, 33.714123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956434, 29.043365, 33.478325>,  <31.818241, 28.907402, 33.336845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956434, 29.043365, 33.478325>,  <32.186756, 29.269972, 33.714123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956434, 29.043365, 33.478325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048617, -0.743471, 0.666998,
		-0.816141, 0.355401, 0.455636,
		-0.575804, -0.566516, -0.589499,
		31.783693, 28.873411, 33.301476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617010, 28.894440, 34.214264>,  <32.186756, 29.269972, 33.714123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617010, 28.894440, 34.214264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566139, 28.691830, 33.873146>,  <31.535618, 28.570263, 33.668476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566139, 28.691830, 33.873146>,  <31.617010, 28.894440, 34.214264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566139, 28.691830, 33.873146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192290, -0.830873, 0.522182,
		-0.973063, 0.230393, 0.008267,
		-0.127176, -0.506526, -0.852794,
		31.527987, 28.539871, 33.617310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044268, 28.480415, 34.304642>,  <31.617010, 28.894440, 34.214264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044268, 28.480415, 34.304642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247421, 28.312622, 34.003685>,  <31.369314, 28.211946, 33.823112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247421, 28.312622, 34.003685>,  <31.044268, 28.480415, 34.304642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247421, 28.312622, 34.003685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264822, -0.907157, 0.327009,
		-0.819709, 0.033166, -0.571819,
		0.507884, -0.419483, -0.752388,
		31.399786, 28.186777, 33.777969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615807, 27.833307, 34.169632>,  <31.044268, 28.480415, 34.304642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615807, 27.833307, 34.169632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956644, 27.770115, 33.970043>,  <31.161146, 27.732199, 33.850288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956644, 27.770115, 33.970043>,  <30.615807, 27.833307, 34.169632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956644, 27.770115, 33.970043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137449, -0.987439, 0.077918,
		-0.505018, 0.002190, -0.863106,
		0.852094, -0.157983, -0.498976,
		31.212273, 27.722719, 33.820351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573521, 27.405550, 33.641129>,  <30.615807, 27.833307, 34.169632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573521, 27.405550, 33.641129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956556, 27.367123, 33.749790>,  <31.186378, 27.344067, 33.814987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956556, 27.367123, 33.749790>,  <30.573521, 27.405550, 33.641129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956556, 27.367123, 33.749790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175584, -0.942068, 0.285794,
		0.228460, -0.321371, -0.918982,
		0.957589, -0.096066, 0.271652,
		31.243834, 27.338303, 33.831287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795414, 26.740341, 33.515072>,  <30.573521, 27.405550, 33.641129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795414, 26.740341, 33.515072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077671, 26.865532, 33.769352>,  <31.247025, 26.940645, 33.921921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077671, 26.865532, 33.769352>,  <30.795414, 26.740341, 33.515072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077671, 26.865532, 33.769352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005678, -0.894636, 0.446759,
		0.708546, -0.318861, -0.629516,
		0.705642, 0.312975, 0.635701,
		31.289364, 26.959425, 33.960064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307642, 26.165268, 33.496605>,  <30.795414, 26.740341, 33.515072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307642, 26.165268, 33.496605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133713, 25.947979, 33.209316>,  <30.029356, 25.817606, 33.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133713, 25.947979, 33.209316>,  <30.307642, 26.165268, 33.496605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133713, 25.947979, 33.209316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463745, 0.548596, -0.695689,
		0.771926, -0.635572, 0.013375,
		-0.434822, -0.543223, -0.718219,
		30.003265, 25.785011, 32.993851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857824, 26.062128, 33.064072>,  <30.307642, 26.165268, 33.496605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857824, 26.062128, 33.064072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512922, 26.006630, 32.869232>,  <30.305981, 25.973331, 32.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512922, 26.006630, 32.869232>,  <30.857824, 26.062128, 33.064072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512922, 26.006630, 32.869232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312435, 0.611239, -0.727167,
		0.398627, -0.779190, -0.483694,
		-0.862253, -0.138745, -0.487102,
		30.254246, 25.965006, 32.723103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013000, 25.827938, 32.341171>,  <30.857824, 26.062128, 33.064072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013000, 25.827938, 32.341171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658184, 26.012463, 32.348675>,  <30.445295, 26.123178, 32.353176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658184, 26.012463, 32.348675>,  <31.013000, 25.827938, 32.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658184, 26.012463, 32.348675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287128, 0.583007, -0.760040,
		-0.361552, -0.668800, -0.649606,
		-0.887039, 0.461314, 0.018756,
		30.392073, 26.150856, 32.354301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872728, 25.864586, 31.686274>,  <31.013000, 25.827938, 32.341171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872728, 25.864586, 31.686274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632845, 26.138851, 31.851303>,  <30.488914, 26.303410, 31.950321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632845, 26.138851, 31.851303>,  <30.872728, 25.864586, 31.686274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632845, 26.138851, 31.851303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114221, 0.583644, -0.803936,
		-0.792026, -0.435001, -0.428332,
		-0.599706, 0.685664, 0.412575,
		30.452932, 26.344551, 31.975075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540152, 25.985416, 31.145742>,  <30.872728, 25.864586, 31.686274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540152, 25.985416, 31.145742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456499, 26.284729, 31.397564>,  <30.406307, 26.464317, 31.548656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.456499, 26.284729, 31.397564>,  <30.540152, 25.985416, 31.145742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.456499, 26.284729, 31.397564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067246, 0.631260, -0.772651,
		-0.975573, -0.203920, -0.081697,
		-0.209131, 0.748283, 0.629552,
		30.393759, 26.509214, 31.586430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952959, 26.267717, 30.842533>,  <30.540152, 25.985416, 31.145742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952959, 26.267717, 30.842533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090714, 26.552338, 31.087513>,  <30.173367, 26.723110, 31.234501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090714, 26.552338, 31.087513>,  <29.952959, 26.267717, 30.842533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090714, 26.552338, 31.087513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021642, 0.658197, -0.752535,
		-0.938579, 0.245908, 0.242074,
		0.344386, 0.711552, 0.612448,
		30.194029, 26.765802, 31.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.488609, 26.883472, 30.755602>,  <29.952959, 26.267717, 30.842533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.488609, 26.883472, 30.755602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840456, 27.007603, 30.899807>,  <30.051565, 27.082081, 30.986330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840456, 27.007603, 30.899807>,  <29.488609, 26.883472, 30.755602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840456, 27.007603, 30.899807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005990, 0.765058, -0.643934,
		-0.475643, 0.564256, 0.674817,
		0.879618, 0.310325, 0.360515,
		30.104342, 27.100700, 31.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439619, 27.598463, 30.746244>,  <29.488609, 26.883472, 30.755602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439619, 27.598463, 30.746244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834305, 27.534214, 30.756004>,  <30.071115, 27.495665, 30.761860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.834305, 27.534214, 30.756004>,  <29.439619, 27.598463, 30.746244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834305, 27.534214, 30.756004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133364, 0.715005, -0.686282,
		0.092787, 0.680418, 0.726927,
		0.986714, -0.160624, 0.024400,
		30.130320, 27.486027, 30.763325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764162, 28.243465, 30.769348>,  <29.439619, 27.598463, 30.746244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764162, 28.243465, 30.769348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062492, 28.013039, 30.635548>,  <30.241491, 27.874783, 30.555267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062492, 28.013039, 30.635548>,  <29.764162, 28.243465, 30.769348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062492, 28.013039, 30.635548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293991, 0.735251, -0.610717,
		0.597757, 0.357148, 0.717727,
		0.745826, -0.576066, -0.334503,
		30.286240, 27.840219, 30.535196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483892, 28.637808, 30.937223>,  <29.764162, 28.243465, 30.769348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483892, 28.637808, 30.937223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515890, 28.366524, 30.645023>,  <30.535089, 28.203754, 30.469704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515890, 28.366524, 30.645023>,  <30.483892, 28.637808, 30.937223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515890, 28.366524, 30.645023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269337, 0.720297, -0.639241,
		0.959718, -0.145614, 0.240288,
		0.079996, -0.678209, -0.730502,
		30.539888, 28.163061, 30.425873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123760, 28.804884, 30.536751>,  <30.483892, 28.637808, 30.937223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123760, 28.804884, 30.536751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931675, 28.543667, 30.302509>,  <30.816423, 28.386936, 30.161964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931675, 28.543667, 30.302509>,  <31.123760, 28.804884, 30.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931675, 28.543667, 30.302509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223541, 0.554462, -0.801624,
		0.848190, -0.515855, -0.120277,
		-0.480211, -0.653043, -0.585604,
		30.787611, 28.347754, 30.126827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541206, 28.633688, 29.939026>,  <31.123760, 28.804884, 30.536751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541206, 28.633688, 29.939026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155968, 28.572445, 29.850483>,  <30.924824, 28.535698, 29.797358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155968, 28.572445, 29.850483>,  <31.541206, 28.633688, 29.939026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155968, 28.572445, 29.850483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169967, 0.291714, -0.941283,
		0.208690, -0.944172, -0.254927,
		-0.963099, -0.153107, -0.221356,
		30.867039, 28.526512, 29.784077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571236, 28.412960, 29.223743>,  <31.541206, 28.633688, 29.939026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571236, 28.412960, 29.223743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191771, 28.528858, 29.274471>,  <30.964090, 28.598396, 29.304909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191771, 28.528858, 29.274471>,  <31.571236, 28.412960, 29.223743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191771, 28.528858, 29.274471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045094, 0.520782, -0.852498,
		-0.313053, -0.803016, -0.507113,
		-0.948664, 0.289745, 0.126821,
		30.907171, 28.615782, 29.312517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385284, 28.499178, 28.523476>,  <31.571236, 28.412960, 29.223743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385284, 28.499178, 28.523476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090614, 28.694527, 28.710579>,  <30.913813, 28.811737, 28.822842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.090614, 28.694527, 28.710579>,  <31.385284, 28.499178, 28.523476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090614, 28.694527, 28.710579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055432, 0.645765, -0.761522,
		-0.673970, -0.586924, -0.448648,
		-0.736676, 0.488374, 0.467761,
		30.869612, 28.841040, 28.850906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734756, 28.668537, 28.058193>,  <31.385284, 28.499178, 28.523476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734756, 28.668537, 28.058193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754446, 28.937595, 28.353523>,  <30.766260, 29.099030, 28.530722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754446, 28.937595, 28.353523>,  <30.734756, 28.668537, 28.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754446, 28.937595, 28.353523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116093, 0.738066, -0.664666,
		-0.992018, -0.052998, 0.114419,
		0.049223, 0.672644, 0.738327,
		30.769213, 29.139389, 28.575022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347794, 29.120409, 27.792992>,  <30.734756, 28.668537, 28.058193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347794, 29.120409, 27.792992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471786, 29.332005, 28.108986>,  <30.546183, 29.458961, 28.298582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.471786, 29.332005, 28.108986>,  <30.347794, 29.120409, 27.792992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471786, 29.332005, 28.108986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191545, 0.848626, -0.493096,
		-0.931247, 0.001533, 0.364385,
		0.309982, 0.528991, 0.789987,
		30.564781, 29.490702, 28.345982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810453, 29.723013, 27.938145>,  <30.347794, 29.120409, 27.792992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810453, 29.723013, 27.938145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164913, 29.823318, 28.094021>,  <30.377588, 29.883501, 28.187548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164913, 29.823318, 28.094021>,  <29.810453, 29.723013, 27.938145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164913, 29.823318, 28.094021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101453, 0.925517, -0.364863,
		-0.452161, 0.283787, 0.845586,
		0.886148, 0.250764, 0.389691,
		30.430758, 29.898548, 28.210928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777428, 30.385874, 28.192045>,  <29.810453, 29.723013, 27.938145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777428, 30.385874, 28.192045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173227, 30.385033, 28.134235>,  <30.410707, 30.384527, 28.099550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173227, 30.385033, 28.134235>,  <29.777428, 30.385874, 28.192045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173227, 30.385033, 28.134235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075586, 0.844737, -0.529817,
		0.123199, 0.535177, 0.835708,
		0.989499, -0.002105, -0.144522,
		30.470078, 30.384401, 28.090879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921547, 31.106466, 28.302721>,  <29.777428, 30.385874, 28.192045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921547, 31.106466, 28.302721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246696, 30.969238, 28.114449>,  <30.441786, 30.886902, 28.001484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246696, 30.969238, 28.114449>,  <29.921547, 31.106466, 28.302721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246696, 30.969238, 28.114449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000118, 0.808022, -0.589153,
		0.582442, 0.478961, 0.656778,
		0.812872, -0.343070, -0.470682,
		30.490559, 30.866318, 27.973244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499798, 31.766924, 28.365755>,  <29.921547, 31.106466, 28.302721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499798, 31.766924, 28.365755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652235, 31.527245, 28.084122>,  <30.743696, 31.383436, 27.915142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652235, 31.527245, 28.084122>,  <30.499798, 31.766924, 28.365755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652235, 31.527245, 28.084122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150419, 0.791587, -0.592253,
		0.912219, 0.119795, 0.391798,
		0.381091, -0.599198, -0.704082,
		30.766562, 31.347485, 27.872898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106691, 32.099922, 28.173605>,  <30.499798, 31.766924, 28.365755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106691, 32.099922, 28.173605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019638, 31.846157, 27.876915>,  <30.967405, 31.693897, 27.698900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.019638, 31.846157, 27.876915>,  <31.106691, 32.099922, 28.173605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019638, 31.846157, 27.876915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134963, 0.733079, -0.666618,
		0.966654, -0.245185, -0.073921,
		-0.217634, -0.634412, -0.741725,
		30.954348, 31.655834, 27.654398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721554, 32.160007, 27.808807>,  <31.106691, 32.099922, 28.173605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721554, 32.160007, 27.808807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422045, 32.031277, 27.577026>,  <31.242338, 31.954039, 27.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422045, 32.031277, 27.577026>,  <31.721554, 32.160007, 27.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422045, 32.031277, 27.577026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301815, 0.612779, -0.730349,
		0.590117, -0.721756, -0.361705,
		-0.748779, -0.321824, -0.579448,
		31.197412, 31.934729, 27.403191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078602, 32.218822, 27.181650>,  <31.721554, 32.160007, 27.808807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078602, 32.218822, 27.181650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682379, 32.198704, 27.130650>,  <31.444643, 32.186630, 27.100050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682379, 32.198704, 27.130650>,  <32.078602, 32.218822, 27.181650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682379, 32.198704, 27.130650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049654, 0.735349, -0.675867,
		0.127755, -0.675819, -0.725911,
		-0.990562, -0.050302, -0.127502,
		31.385210, 32.183613, 27.092400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978882, 32.355049, 26.460781>,  <32.078602, 32.218822, 27.181650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978882, 32.355049, 26.460781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605009, 32.406403, 26.593376>,  <31.380686, 32.437214, 26.672934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605009, 32.406403, 26.593376>,  <31.978882, 32.355049, 26.460781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605009, 32.406403, 26.593376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153251, 0.695870, -0.701626,
		-0.320754, -0.706599, -0.630742,
		-0.934682, 0.128388, 0.331490,
		31.324604, 32.444920, 26.692823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518309, 32.361164, 25.858110>,  <31.978882, 32.355049, 26.460781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518309, 32.361164, 25.858110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319004, 32.553764, 26.146526>,  <31.199421, 32.669323, 26.319576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319004, 32.553764, 26.146526>,  <31.518309, 32.361164, 25.858110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319004, 32.553764, 26.146526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146898, 0.772717, -0.617519,
		-0.854491, -0.413605, -0.314285,
		-0.498262, 0.481497, 0.721038,
		31.169525, 32.698212, 26.362837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912745, 32.556084, 25.533585>,  <31.518309, 32.361164, 25.858110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912745, 32.556084, 25.533585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963545, 32.798111, 25.847977>,  <30.994026, 32.943325, 26.036612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963545, 32.798111, 25.847977>,  <30.912745, 32.556084, 25.533585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963545, 32.798111, 25.847977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281295, 0.781836, -0.556422,
		-0.951180, -0.150425, 0.269497,
		0.127002, 0.605066, 0.785981,
		31.001646, 32.979630, 26.083771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314997, 33.031258, 25.747337>,  <30.912745, 32.556084, 25.533585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314997, 33.031258, 25.747337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455648, 33.397980, 25.823040>,  <30.540039, 33.618015, 25.868462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455648, 33.397980, 25.823040>,  <30.314997, 33.031258, 25.747337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455648, 33.397980, 25.823040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852578, 0.397121, -0.339714,
		-0.386611, -0.041903, 0.921290,
		0.351628, 0.916809, 0.189257,
		30.561136, 33.673023, 25.879818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801708, 33.310940, 26.088135>,  <30.314997, 33.031258, 25.747337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801708, 33.310940, 26.088135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000555, 33.618584, 25.927464>,  <30.119864, 33.803169, 25.831060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000555, 33.618584, 25.927464>,  <29.801708, 33.310940, 26.088135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000555, 33.618584, 25.927464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865041, 0.403200, -0.298553,
		-0.067664, 0.495882, 0.865750,
		0.497117, 0.769111, -0.401676,
		30.149691, 33.849316, 25.806961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287067, 33.787727, 25.991093>,  <29.801708, 33.310940, 26.088135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287067, 33.787727, 25.991093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600424, 33.952663, 25.805069>,  <29.788437, 34.051624, 25.693455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600424, 33.952663, 25.805069>,  <29.287067, 33.787727, 25.991093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600424, 33.952663, 25.805069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620409, 0.473837, -0.624956,
		-0.037332, 0.778110, 0.627018,
		0.783389, 0.412338, -0.465057,
		29.835440, 34.076366, 25.665552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113400, 34.474834, 25.949289>,  <29.287067, 33.787727, 25.991093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113400, 34.474834, 25.949289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363348, 34.392090, 25.648159>,  <29.513317, 34.342445, 25.467482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363348, 34.392090, 25.648159>,  <29.113400, 34.474834, 25.949289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363348, 34.392090, 25.648159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706613, 0.260220, -0.658015,
		0.332016, 0.943130, 0.016436,
		0.624871, -0.206858, -0.752825,
		29.550810, 34.330032, 25.422312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030277, 34.978127, 25.344904>,  <29.113400, 34.474834, 25.949289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030277, 34.978127, 25.344904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158720, 34.629143, 25.197548>,  <29.235786, 34.419754, 25.109135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.158720, 34.629143, 25.197548>,  <29.030277, 34.978127, 25.344904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158720, 34.629143, 25.197548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678814, 0.059210, -0.731919,
		0.660380, 0.485092, -0.573222,
		0.321108, -0.872456, -0.368389,
		29.255053, 34.367405, 25.087030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052729, 35.090889, 24.744020>,  <29.030277, 34.978127, 25.344904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052729, 35.090889, 24.744020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073246, 34.693092, 24.707447>,  <29.085556, 34.454414, 24.685503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073246, 34.693092, 24.707447>,  <29.052729, 35.090889, 24.744020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073246, 34.693092, 24.707447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642676, 0.037210, -0.765233,
		0.764419, 0.098014, -0.637226,
		0.051292, -0.994489, -0.091435,
		29.088633, 34.394745, 24.680016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175671, 34.978619, 24.046162>,  <29.052729, 35.090889, 24.744020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175671, 34.978619, 24.046162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998051, 34.657749, 24.205830>,  <28.891478, 34.465229, 24.301630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998051, 34.657749, 24.205830>,  <29.175671, 34.978619, 24.046162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998051, 34.657749, 24.205830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701079, 0.033648, -0.712289,
		0.557949, -0.596142, -0.577329,
		-0.444051, -0.802174, 0.399169,
		28.864836, 34.417095, 24.325581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701698, 34.814682, 23.540014>,  <29.175671, 34.978619, 24.046162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.701698, 34.814682, 23.540014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564476, 34.507633, 23.756557>,  <28.482141, 34.323402, 23.886482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564476, 34.507633, 23.756557>,  <28.701698, 34.814682, 23.540014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564476, 34.507633, 23.756557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589862, -0.272470, -0.760147,
		0.731009, -0.580100, -0.359319,
		-0.343057, -0.767623, 0.541357,
		28.461559, 34.277348, 23.918964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699503, 34.248672, 23.069201>,  <28.701698, 34.814682, 23.540014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699503, 34.248672, 23.069201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478802, 34.137966, 23.383900>,  <28.346380, 34.071545, 23.572720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478802, 34.137966, 23.383900>,  <28.699503, 34.248672, 23.069201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478802, 34.137966, 23.383900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694126, -0.370556, -0.617153,
		0.462337, -0.886618, 0.012348,
		-0.551754, -0.276761, 0.786747,
		28.313276, 34.054939, 23.619925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653189, 33.559242, 23.132988>,  <28.699503, 34.248672, 23.069201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653189, 33.559242, 23.132988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319019, 33.684010, 23.313995>,  <28.118517, 33.758869, 23.422600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.319019, 33.684010, 23.313995>,  <28.653189, 33.559242, 23.132988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319019, 33.684010, 23.313995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549606, -0.474193, -0.687804,
		0.000040, -0.823314, 0.567586,
		-0.835424, 0.311921, 0.452517,
		28.068392, 33.777588, 23.449751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313589, 33.028362, 23.214357>,  <28.653189, 33.559242, 23.132988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313589, 33.028362, 23.214357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025581, 33.304359, 23.243958>,  <27.852777, 33.469959, 23.261717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025581, 33.304359, 23.243958>,  <28.313589, 33.028362, 23.214357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025581, 33.304359, 23.243958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589618, -0.552044, -0.589574,
		-0.365954, -0.468136, 0.804317,
		-0.720020, 0.689997, 0.073999,
		27.809576, 33.511360, 23.266157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673599, 32.746246, 23.365587>,  <28.313589, 33.028362, 23.214357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673599, 32.746246, 23.365587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565702, 33.100452, 23.214272>,  <27.500965, 33.312977, 23.123482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565702, 33.100452, 23.214272>,  <27.673599, 32.746246, 23.365587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565702, 33.100452, 23.214272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594218, -0.462204, -0.658234,
		-0.757723, 0.047235, 0.650864,
		-0.269740, 0.885515, -0.378290,
		27.484779, 33.366108, 23.100784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053904, 32.659931, 23.301926>,  <27.673599, 32.746246, 23.365587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053904, 32.659931, 23.301926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125420, 32.961731, 23.049335>,  <27.168329, 33.142811, 22.897781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125420, 32.961731, 23.049335>,  <27.053904, 32.659931, 23.301926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125420, 32.961731, 23.049335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542477, -0.459849, -0.703035,
		-0.820824, 0.468257, 0.327083,
		0.178793, 0.754503, -0.631474,
		27.179058, 33.188084, 22.859894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.393686, 32.862446, 23.050140>,  <27.053904, 32.659931, 23.301926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.393686, 32.862446, 23.050140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632719, 32.997627, 22.759296>,  <26.776138, 33.078735, 22.584791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632719, 32.997627, 22.759296>,  <26.393686, 32.862446, 23.050140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632719, 32.997627, 22.759296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637375, -0.349971, -0.686494,
		-0.486469, 0.873676, 0.006267,
		0.597580, 0.337952, -0.727109,
		26.811993, 33.099014, 22.541164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.970081, 33.080975, 22.559151>,  <26.393686, 32.862446, 23.050140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.970081, 33.080975, 22.559151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313059, 33.003590, 22.368420>,  <26.518845, 32.957161, 22.253981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313059, 33.003590, 22.368420>,  <25.970081, 33.080975, 22.559151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313059, 33.003590, 22.368420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507810, -0.467906, -0.723321,
		-0.083178, 0.862344, -0.499444,
		0.857444, -0.193459, -0.476826,
		26.570292, 32.945553, 22.225372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051283, 33.528915, 21.908566>,  <25.970081, 33.080975, 22.559151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051283, 33.528915, 21.908566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224253, 33.168358, 21.899612>,  <26.328035, 32.952023, 21.894239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.224253, 33.168358, 21.899612>,  <26.051283, 33.528915, 21.908566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224253, 33.168358, 21.899612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541830, -0.239930, -0.805515,
		0.720714, 0.360454, -0.592153,
		0.432427, -0.901392, -0.022384,
		26.353981, 32.897942, 21.892897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508272, 33.926895, 22.283991>,  <26.051283, 33.528915, 21.908566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508272, 33.926895, 22.283991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114304, 33.941597, 22.216373>,  <24.877922, 33.950417, 22.175802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.114304, 33.941597, 22.216373>,  <25.508272, 33.926895, 22.283991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114304, 33.941597, 22.216373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129357, 0.492357, 0.860727,
		0.114864, 0.869617, -0.480180,
		-0.984923, 0.036752, -0.169045,
		24.818827, 33.952621, 22.165659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392076, 34.604908, 22.606447>,  <25.508272, 33.926895, 22.283991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392076, 34.604908, 22.606447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076807, 34.358826, 22.599373>,  <24.887646, 34.211178, 22.595129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076807, 34.358826, 22.599373>,  <25.392076, 34.604908, 22.606447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076807, 34.358826, 22.599373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225846, 0.262375, 0.938165,
		-0.572520, 0.743429, -0.345737,
		-0.788171, -0.615202, -0.017685,
		24.840355, 34.174267, 22.594067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.072416, 35.024689, 23.059427>,  <25.392076, 34.604908, 22.606447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.072416, 35.024689, 23.059427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902695, 34.663040, 23.039330>,  <24.800861, 34.446049, 23.027271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.902695, 34.663040, 23.039330>,  <25.072416, 35.024689, 23.059427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.902695, 34.663040, 23.039330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189494, -0.142912, 0.971426,
		-0.885470, 0.402660, 0.231964,
		-0.424305, -0.904124, -0.050243,
		24.775404, 34.391804, 23.024256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487549, 34.879211, 23.585485>,  <25.072416, 35.024689, 23.059427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487549, 34.879211, 23.585485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675339, 34.533112, 23.515133>,  <24.788013, 34.325451, 23.472921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.675339, 34.533112, 23.515133>,  <24.487549, 34.879211, 23.585485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.675339, 34.533112, 23.515133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202348, -0.088461, 0.975310,
		-0.859447, -0.493472, 0.133551,
		0.469474, -0.865252, -0.175880,
		24.816181, 34.273537, 23.462368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142761, 34.306362, 23.888590>,  <24.487549, 34.879211, 23.585485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142761, 34.306362, 23.888590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541872, 34.280426, 23.882435>,  <24.781338, 34.264866, 23.878742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541872, 34.280426, 23.882435>,  <24.142761, 34.306362, 23.888590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541872, 34.280426, 23.882435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017433, 0.031095, 0.999364,
		-0.064323, -0.997411, 0.032157,
		0.997777, -0.064843, -0.015388,
		24.841206, 34.260975, 23.877819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.536007, 33.748814, 23.688375>,  <24.142761, 34.306362, 23.888590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.536007, 33.748814, 23.688375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193939, 33.945202, 23.621880>,  <22.988699, 34.063034, 23.581982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.193939, 33.945202, 23.621880>,  <23.536007, 33.748814, 23.688375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.193939, 33.945202, 23.621880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064559, -0.419093, -0.905645,
		-0.514316, -0.763746, 0.390091,
		-0.855168, 0.490972, -0.166240,
		22.937389, 34.092495, 23.572008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.340771, 33.337395, 23.219526>,  <23.536007, 33.748814, 23.688375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.340771, 33.337395, 23.219526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099438, 33.654175, 23.182011>,  <22.954638, 33.844242, 23.159502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099438, 33.654175, 23.182011>,  <23.340771, 33.337395, 23.219526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099438, 33.654175, 23.182011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213877, -0.273981, -0.937652,
		-0.768274, -0.545658, 0.334683,
		-0.603334, 0.791954, -0.093789,
		22.918438, 33.891762, 23.153873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.747484, 33.065353, 22.816271>,  <23.340771, 33.337395, 23.219526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.747484, 33.065353, 22.816271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.749712, 33.461864, 22.763599>,  <22.751049, 33.699772, 22.731997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.749712, 33.461864, 22.763599>,  <22.747484, 33.065353, 22.816271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.749712, 33.461864, 22.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358660, -0.120938, -0.925601,
		-0.933452, 0.052382, 0.354858,
		0.005569, 0.991277, -0.131677,
		22.751383, 33.759247, 22.724096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118444, 33.295155, 22.587973>,  <22.747484, 33.065353, 22.816271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.118444, 33.295155, 22.587973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335337, 33.612370, 22.476925>,  <22.465471, 33.802700, 22.410297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.335337, 33.612370, 22.476925>,  <22.118444, 33.295155, 22.587973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.335337, 33.612370, 22.476925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521889, 0.058935, -0.850975,
		-0.658498, 0.606309, 0.445836,
		0.542230, 0.793042, -0.277617,
		22.498005, 33.850281, 22.393641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.664413, 33.701832, 22.231091>,  <22.118444, 33.295155, 22.587973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.664413, 33.701832, 22.231091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006811, 33.866081, 22.105450>,  <22.212250, 33.964630, 22.030066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006811, 33.866081, 22.105450>,  <21.664413, 33.701832, 22.231091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006811, 33.866081, 22.105450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384462, 0.099416, -0.917772,
		-0.345634, 0.906368, 0.242970,
		0.855994, 0.410626, -0.314102,
		22.263609, 33.989269, 22.011219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590790, 34.312363, 21.690731>,  <21.664413, 33.701832, 22.231091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590790, 34.312363, 21.690731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947184, 34.149254, 21.610867>,  <22.161020, 34.051388, 21.562948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.947184, 34.149254, 21.610867>,  <21.590790, 34.312363, 21.690731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.947184, 34.149254, 21.610867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230522, -0.027426, -0.972681,
		0.391157, 0.912671, -0.118436,
		0.890986, -0.407773, -0.199663,
		22.214479, 34.026920, 21.550968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.800377, 34.672680, 20.923653>,  <21.590790, 34.312363, 21.690731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.800377, 34.672680, 20.923653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.041895, 34.355453, 20.955853>,  <22.186806, 34.165119, 20.975172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.041895, 34.355453, 20.955853>,  <21.800377, 34.672680, 20.923653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.041895, 34.355453, 20.955853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185628, -0.238094, -0.953338,
		0.775225, 0.560679, -0.290974,
		0.603796, -0.793064, 0.080499,
		22.223034, 34.117535, 20.980001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.104593, 34.700710, 20.332975>,  <21.800377, 34.672680, 20.923653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.104593, 34.700710, 20.332975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.181139, 34.327435, 20.454651>,  <22.227066, 34.103470, 20.527657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.181139, 34.327435, 20.454651>,  <22.104593, 34.700710, 20.332975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.181139, 34.327435, 20.454651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047653, -0.300716, -0.952523,
		0.980362, 0.196774, -0.013076,
		0.191364, -0.933193, 0.304187,
		22.238548, 34.047478, 20.545906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.579708, 34.284664, 19.785620>,  <22.104593, 34.700710, 20.332975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.579708, 34.284664, 19.785620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482693, 33.956192, 19.992249>,  <22.424484, 33.759109, 20.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.482693, 33.956192, 19.992249>,  <22.579708, 34.284664, 19.785620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.482693, 33.956192, 19.992249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061660, -0.544440, -0.836530,
		0.968181, -0.171039, 0.182681,
		-0.242538, -0.821176, 0.516570,
		22.409931, 33.709839, 20.147219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.133270, 33.869545, 19.737810>,  <22.579708, 34.284664, 19.785620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.133270, 33.869545, 19.737810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792604, 33.671272, 19.805893>,  <22.588205, 33.552311, 19.846743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.792604, 33.671272, 19.805893>,  <23.133270, 33.869545, 19.737810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.792604, 33.671272, 19.805893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193384, -0.599071, -0.776992,
		0.487105, -0.628821, 0.606063,
		-0.851664, -0.495679, 0.170207,
		22.537106, 33.522568, 19.856955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227606, 33.180733, 19.386013>,  <23.133270, 33.869545, 19.737810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227606, 33.180733, 19.386013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834198, 33.176640, 19.458218>,  <22.598154, 33.174183, 19.501541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.834198, 33.176640, 19.458218>,  <23.227606, 33.180733, 19.386013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834198, 33.176640, 19.458218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154771, -0.468437, -0.869835,
		0.093463, -0.883437, 0.459133,
		-0.983520, -0.010237, 0.180512,
		22.539143, 33.173569, 19.512371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018084, 32.568092, 19.257692>,  <23.227606, 33.180733, 19.386013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018084, 32.568092, 19.257692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672447, 32.766006, 19.220741>,  <22.465065, 32.884754, 19.198570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.672447, 32.766006, 19.220741>,  <23.018084, 32.568092, 19.257692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.672447, 32.766006, 19.220741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117641, -0.376971, -0.918724,
		-0.489398, -0.782992, 0.383944,
		-0.864089, 0.494789, -0.092377,
		22.413219, 32.914444, 19.193027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437937, 32.085388, 19.065134>,  <23.018084, 32.568092, 19.257692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437937, 32.085388, 19.065134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.314655, 32.445465, 18.942062>,  <22.240686, 32.661510, 18.868219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.314655, 32.445465, 18.942062>,  <22.437937, 32.085388, 19.065134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.314655, 32.445465, 18.942062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324299, -0.403469, -0.855595,
		-0.894338, -0.163918, 0.416282,
		-0.308204, 0.900191, -0.307679,
		22.222195, 32.715523, 18.849758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.799229, 31.980326, 18.631079>,  <22.437937, 32.085388, 19.065134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.799229, 31.980326, 18.631079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.919170, 32.347813, 18.528282>,  <21.991135, 32.568306, 18.466604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.919170, 32.347813, 18.528282>,  <21.799229, 31.980326, 18.631079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919170, 32.347813, 18.528282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340554, -0.148553, -0.928415,
		-0.891128, 0.365909, 0.268329,
		0.299855, 0.918718, -0.256992,
		22.009127, 32.623428, 18.451185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357634, 32.094707, 18.110399>,  <21.799229, 31.980326, 18.631079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357634, 32.094707, 18.110399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.621649, 32.392483, 18.070068>,  <21.780058, 32.571148, 18.045870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.621649, 32.392483, 18.070068>,  <21.357634, 32.094707, 18.110399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621649, 32.392483, 18.070068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054315, -0.086575, -0.994764,
		-0.749267, 0.662058, -0.016709,
		0.660038, 0.744436, -0.100827,
		21.819660, 32.615814, 18.039820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104773, 32.528320, 17.529469>,  <21.357634, 32.094707, 18.110399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104773, 32.528320, 17.529469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498447, 32.586235, 17.570293>,  <21.734652, 32.620983, 17.594790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.498447, 32.586235, 17.570293>,  <21.104773, 32.528320, 17.529469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.498447, 32.586235, 17.570293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092625, 0.070525, -0.993200,
		-0.150997, 0.986947, 0.055999,
		0.984185, 0.144784, 0.102065,
		21.793703, 32.629669, 17.600912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234529, 33.105785, 17.218086>,  <21.104773, 32.528320, 17.529469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234529, 33.105785, 17.218086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575449, 32.896763, 17.208908>,  <21.780001, 32.771351, 17.203402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575449, 32.896763, 17.208908>,  <21.234529, 33.105785, 17.218086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575449, 32.896763, 17.208908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041073, 0.110591, -0.993017,
		0.521440, 0.845405, 0.115719,
		0.852299, -0.522552, -0.022943,
		21.831139, 32.739998, 17.202024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694826, 33.488159, 16.841341>,  <21.234529, 33.105785, 17.218086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694826, 33.488159, 16.841341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885572, 33.137070, 16.822578>,  <22.000021, 32.926414, 16.811321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885572, 33.137070, 16.822578>,  <21.694826, 33.488159, 16.841341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885572, 33.137070, 16.822578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048927, 0.026773, -0.998443,
		0.877613, 0.478420, -0.030177,
		0.476867, -0.877723, -0.046904,
		22.028633, 32.873753, 16.808508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139383, 33.567230, 16.225328>,  <21.694826, 33.488159, 16.841341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139383, 33.567230, 16.225328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144852, 33.173794, 16.297279>,  <22.148132, 32.937733, 16.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.144852, 33.173794, 16.297279>,  <22.139383, 33.567230, 16.225328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.144852, 33.173794, 16.297279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018800, -0.179611, -0.983558,
		0.999730, 0.016829, 0.016036,
		0.013673, -0.983594, 0.179878,
		22.148952, 32.878716, 16.351242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.641733, 33.324070, 15.766980>,  <22.139383, 33.567230, 16.225328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.641733, 33.324070, 15.766980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420500, 33.012867, 15.886174>,  <22.287760, 32.826145, 15.957690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.420500, 33.012867, 15.886174>,  <22.641733, 33.324070, 15.766980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.420500, 33.012867, 15.886174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151781, -0.257589, -0.954259,
		0.819182, -0.573015, 0.024381,
		-0.553085, -0.778011, 0.297984,
		22.254574, 32.779465, 15.975570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.953176, 32.696514, 15.377954>,  <22.641733, 33.324070, 15.766980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.953176, 32.696514, 15.377954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575171, 32.636845, 15.494361>,  <22.348366, 32.601044, 15.564205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.575171, 32.636845, 15.494361>,  <22.953176, 32.696514, 15.377954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.575171, 32.636845, 15.494361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265420, -0.169992, -0.949028,
		0.191040, -0.974089, 0.121051,
		-0.945017, -0.149173, 0.291018,
		22.291666, 32.592094, 15.581666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.686268, 32.148113, 15.038366>,  <22.953176, 32.696514, 15.377954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.686268, 32.148113, 15.038366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352434, 32.335838, 15.153756>,  <22.152134, 32.448475, 15.222990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.352434, 32.335838, 15.153756>,  <22.686268, 32.148113, 15.038366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.352434, 32.335838, 15.153756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487302, -0.384715, -0.783920,
		-0.256921, -0.794822, 0.549773,
		-0.834583, 0.469311, 0.288477,
		22.102060, 32.476631, 15.240299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.112207, 31.755939, 14.920778>,  <22.686268, 32.148113, 15.038366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.112207, 31.755939, 14.920778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968418, 32.129108, 14.912478>,  <21.882145, 32.353012, 14.907498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.968418, 32.129108, 14.912478>,  <22.112207, 31.755939, 14.920778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.968418, 32.129108, 14.912478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387075, -0.169307, -0.906371,
		-0.849088, -0.317786, 0.421973,
		-0.359475, 0.932924, -0.020749,
		21.860575, 32.408985, 14.906254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434589, 31.704792, 14.701191>,  <22.112207, 31.755939, 14.920778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434589, 31.704792, 14.701191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541197, 32.084354, 14.633615>,  <21.605162, 32.312092, 14.593069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.541197, 32.084354, 14.633615>,  <21.434589, 31.704792, 14.701191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541197, 32.084354, 14.633615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525498, -0.003876, -0.850786,
		-0.807973, 0.315528, 0.497617,
		0.266518, 0.948908, -0.168941,
		21.621153, 32.369026, 14.582932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939686, 32.099979, 14.585580>,  <21.434589, 31.704792, 14.701191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939686, 32.099979, 14.585580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204985, 32.322994, 14.385879>,  <21.364164, 32.456802, 14.266058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204985, 32.322994, 14.385879>,  <20.939686, 32.099979, 14.585580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204985, 32.322994, 14.385879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646113, 0.089921, -0.757927,
		-0.377681, 0.825266, 0.419873,
		0.663246, 0.557540, -0.499253,
		21.403959, 32.490257, 14.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.524332, 32.633926, 14.257360>,  <20.939686, 32.099979, 14.585580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.524332, 32.633926, 14.257360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864786, 32.638592, 14.047433>,  <21.069059, 32.641392, 13.921476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.864786, 32.638592, 14.047433>,  <20.524332, 32.633926, 14.257360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.864786, 32.638592, 14.047433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514924, 0.212979, -0.830357,
		0.102092, 0.976987, 0.187279,
		0.851135, 0.011662, -0.524818,
		21.120127, 32.642090, 13.889988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663885, 33.424980, 14.337079>,  <20.524332, 32.633926, 14.257360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663885, 33.424980, 14.337079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.472866, 33.738689, 14.178658>,  <20.358253, 33.926914, 14.083607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.472866, 33.738689, 14.178658>,  <20.663885, 33.424980, 14.337079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472866, 33.738689, 14.178658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093734, 0.402722, 0.910510,
		0.873591, 0.471936, -0.118806,
		-0.477549, 0.784277, -0.396051,
		20.329601, 33.973972, 14.059843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.933382, 34.088257, 14.659610>,  <20.663885, 33.424980, 14.337079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.933382, 34.088257, 14.659610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565800, 34.157249, 14.517753>,  <20.345251, 34.198643, 14.432638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.565800, 34.157249, 14.517753>,  <20.933382, 34.088257, 14.659610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.565800, 34.157249, 14.517753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285518, 0.329339, 0.900009,
		0.272030, 0.928325, -0.253402,
		-0.918955, 0.172479, -0.354644,
		20.290113, 34.208992, 14.411360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.905283, 34.795887, 14.883042>,  <20.933382, 34.088257, 14.659610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.905283, 34.795887, 14.883042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574324, 34.575111, 14.841529>,  <20.375748, 34.442646, 14.816621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.574324, 34.575111, 14.841529>,  <20.905283, 34.795887, 14.883042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.574324, 34.575111, 14.841529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285507, 0.254248, 0.924036,
		-0.483626, 0.794179, -0.367948,
		-0.827400, -0.551940, -0.103782,
		20.326103, 34.409531, 14.810394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.384773, 35.243515, 14.932617>,  <20.905283, 34.795887, 14.883042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.384773, 35.243515, 14.932617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242245, 34.890804, 15.056230>,  <20.156729, 34.679176, 15.130397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242245, 34.890804, 15.056230>,  <20.384773, 35.243515, 14.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242245, 34.890804, 15.056230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354230, 0.433534, 0.828595,
		-0.864614, 0.185776, -0.466830,
		-0.356319, -0.881780, 0.309032,
		20.135349, 34.626270, 15.148939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601936, 35.287251, 15.148790>,  <20.384773, 35.243515, 14.932617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601936, 35.287251, 15.148790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816359, 35.038395, 15.377032>,  <19.945011, 34.889080, 15.513978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.816359, 35.038395, 15.377032>,  <19.601936, 35.287251, 15.148790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.816359, 35.038395, 15.377032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339291, 0.460150, 0.820453,
		-0.773000, -0.633408, 0.035579,
		0.536054, -0.622138, 0.570605,
		19.977175, 34.851753, 15.548214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.151768, 35.256939, 15.777441>,  <19.601936, 35.287251, 15.148790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.151768, 35.256939, 15.777441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.506721, 35.115501, 15.895778>,  <19.719694, 35.030640, 15.966780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.506721, 35.115501, 15.895778>,  <19.151768, 35.256939, 15.777441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.506721, 35.115501, 15.895778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159441, 0.366729, 0.916564,
		-0.432587, -0.860511, 0.269051,
		0.887382, -0.353596, 0.295843,
		19.772936, 35.009422, 15.984530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041162, 34.908424, 16.415594>,  <19.151768, 35.256939, 15.777441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041162, 34.908424, 16.415594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432470, 34.989971, 16.430683>,  <19.667255, 35.038898, 16.439737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432470, 34.989971, 16.430683>,  <19.041162, 34.908424, 16.415594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432470, 34.989971, 16.430683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082959, 0.218146, 0.972384,
		0.190005, -0.954386, 0.230318,
		0.978272, 0.203865, 0.037726,
		19.725952, 35.051132, 16.442001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288363, 34.573296, 17.071007>,  <19.041162, 34.908424, 16.415594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288363, 34.573296, 17.071007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557978, 34.852142, 16.973270>,  <19.719748, 35.019451, 16.914629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557978, 34.852142, 16.973270>,  <19.288363, 34.573296, 17.071007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557978, 34.852142, 16.973270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096886, 0.244484, 0.964801,
		0.732314, -0.673987, 0.097251,
		0.674039, 0.697115, -0.244339,
		19.760189, 35.061275, 16.899969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.853060, 34.489166, 17.557474>,  <19.288363, 34.573296, 17.071007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.853060, 34.489166, 17.557474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888079, 34.868538, 17.435616>,  <19.909090, 35.096161, 17.362501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888079, 34.868538, 17.435616>,  <19.853060, 34.489166, 17.557474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888079, 34.868538, 17.435616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032261, 0.302961, 0.952457,
		0.995638, -0.093213, -0.004074,
		0.087547, 0.948433, -0.304646,
		19.914343, 35.153069, 17.344221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402803, 34.789761, 17.974564>,  <19.853060, 34.489166, 17.557474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402803, 34.789761, 17.974564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229948, 35.117722, 17.824356>,  <20.126234, 35.314499, 17.734232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.229948, 35.117722, 17.824356>,  <20.402803, 34.789761, 17.974564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229948, 35.117722, 17.824356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124970, 0.466835, 0.875470,
		0.893105, 0.331397, -0.304202,
		-0.432140, 0.819903, -0.375518,
		20.100306, 35.363693, 17.711700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.966841, 35.340286, 18.157467>,  <20.402803, 34.789761, 17.974564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.966841, 35.340286, 18.157467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.623756, 35.532681, 18.084827>,  <20.417906, 35.648117, 18.041243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.623756, 35.532681, 18.084827>,  <20.966841, 35.340286, 18.157467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623756, 35.532681, 18.084827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215148, 0.656597, 0.722905,
		0.466947, 0.580973, -0.666656,
		-0.857713, 0.480988, -0.181601,
		20.366442, 35.676975, 18.030348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.161341, 36.095715, 18.120720>,  <20.966841, 35.340286, 18.157467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.161341, 36.095715, 18.120720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782236, 36.026825, 18.228119>,  <20.554773, 35.985489, 18.292557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782236, 36.026825, 18.228119>,  <21.161341, 36.095715, 18.120720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782236, 36.026825, 18.228119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185487, 0.387221, 0.903136,
		-0.259512, 0.905758, -0.335047,
		-0.947759, -0.172227, 0.268495,
		20.497908, 35.975155, 18.308668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.110746, 36.521500, 18.693207>,  <21.161341, 36.095715, 18.120720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.110746, 36.521500, 18.693207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767988, 36.315338, 18.696972>,  <20.562334, 36.191639, 18.699232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767988, 36.315338, 18.696972>,  <21.110746, 36.521500, 18.693207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767988, 36.315338, 18.696972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094352, 0.174766, 0.980079,
		-0.506785, 0.838935, -0.198386,
		-0.856894, -0.515407, 0.009414,
		20.510920, 36.160717, 18.699797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612555, 36.940914, 19.126562>,  <21.110746, 36.521500, 18.693207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612555, 36.940914, 19.126562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488747, 36.560585, 19.131172>,  <20.414461, 36.332386, 19.133938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.488747, 36.560585, 19.131172>,  <20.612555, 36.940914, 19.126562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.488747, 36.560585, 19.131172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253245, 0.094108, 0.962814,
		-0.916549, 0.295094, -0.269920,
		-0.309522, -0.950822, 0.011523,
		20.395889, 36.275337, 19.134628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130577, 36.950386, 19.676672>,  <20.612555, 36.940914, 19.126562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130577, 36.950386, 19.676672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188683, 36.557945, 19.625557>,  <20.223545, 36.322479, 19.594887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.188683, 36.557945, 19.625557>,  <20.130577, 36.950386, 19.676672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188683, 36.557945, 19.625557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225371, -0.158576, 0.961281,
		-0.963383, -0.110839, -0.244148,
		0.145264, -0.981106, -0.127790,
		20.232262, 36.263615, 19.587219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495930, 36.587311, 19.921661>,  <20.130577, 36.950386, 19.676672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495930, 36.587311, 19.921661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812435, 36.343033, 19.934017>,  <20.002338, 36.196468, 19.941431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812435, 36.343033, 19.934017>,  <19.495930, 36.587311, 19.921661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812435, 36.343033, 19.934017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111630, -0.094599, 0.989237,
		-0.601197, -0.786197, -0.143024,
		0.791266, -0.610692, 0.030891,
		20.049814, 36.159824, 19.943285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372692, 36.076847, 20.548420>,  <19.495930, 36.587311, 19.921661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372692, 36.076847, 20.548420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765146, 36.033413, 20.484444>,  <20.000620, 36.007351, 20.446058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.765146, 36.033413, 20.484444>,  <19.372692, 36.076847, 20.548420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.765146, 36.033413, 20.484444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132192, -0.226842, 0.964919,
		-0.141056, -0.967859, -0.208209,
		0.981136, -0.108584, -0.159941,
		20.059486, 36.000839, 20.436460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594746, 35.418087, 20.964071>,  <19.372692, 36.076847, 20.548420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594746, 35.418087, 20.964071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910786, 35.650429, 20.885746>,  <20.100410, 35.789833, 20.838751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910786, 35.650429, 20.885746>,  <19.594746, 35.418087, 20.964071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910786, 35.650429, 20.885746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217394, 0.033149, 0.975521,
		0.573132, -0.813329, -0.100084,
		0.790101, 0.580860, -0.195812,
		20.147816, 35.824688, 20.827002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118639, 35.145042, 21.339054>,  <19.594746, 35.418087, 20.964071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118639, 35.145042, 21.339054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.214659, 35.525455, 21.261177>,  <20.272270, 35.753704, 21.214451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.214659, 35.525455, 21.261177>,  <20.118639, 35.145042, 21.339054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214659, 35.525455, 21.261177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307729, 0.115662, 0.944418,
		0.920694, -0.286621, -0.264897,
		0.240051, 0.951037, -0.194691,
		20.286674, 35.810768, 21.202770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672888, 35.200806, 21.653181>,  <20.118639, 35.145042, 21.339054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672888, 35.200806, 21.653181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566467, 35.584747, 21.617638>,  <20.502615, 35.815113, 21.596312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.566467, 35.584747, 21.617638>,  <20.672888, 35.200806, 21.653181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.566467, 35.584747, 21.617638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166384, 0.136522, 0.976564,
		0.949491, 0.245030, -0.196026,
		-0.266050, 0.959855, -0.088857,
		20.486652, 35.872704, 21.590981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230362, 35.545731, 21.866774>,  <20.672888, 35.200806, 21.653181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230362, 35.545731, 21.866774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937147, 35.814243, 21.910664>,  <20.761219, 35.975349, 21.936998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.937147, 35.814243, 21.910664>,  <21.230362, 35.545731, 21.866774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.937147, 35.814243, 21.910664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241989, 0.106612, 0.964404,
		0.635688, 0.733495, -0.240593,
		-0.733036, 0.671281, 0.109726,
		20.717236, 36.015629, 21.943581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.523035, 36.069271, 22.183582>,  <21.230362, 35.545731, 21.866774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.523035, 36.069271, 22.183582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139456, 36.149330, 22.263939>,  <20.909307, 36.197365, 22.312153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.139456, 36.149330, 22.263939>,  <21.523035, 36.069271, 22.183582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139456, 36.149330, 22.263939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243396, 0.217412, 0.945246,
		0.145511, 0.955340, -0.257202,
		-0.958950, 0.200145, 0.200890,
		20.851770, 36.209373, 22.324205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423794, 36.672321, 22.586864>,  <21.523035, 36.069271, 22.183582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423794, 36.672321, 22.586864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119293, 36.422066, 22.655071>,  <20.936594, 36.271912, 22.695995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119293, 36.422066, 22.655071>,  <21.423794, 36.672321, 22.586864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119293, 36.422066, 22.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264555, -0.059564, 0.962529,
		-0.592038, 0.777836, 0.210858,
		-0.761250, -0.625638, 0.170516,
		20.890919, 36.234375, 22.706226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293236, 36.848087, 23.315149>,  <21.423794, 36.672321, 22.586864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293236, 36.848087, 23.315149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.080139, 36.514816, 23.255814>,  <20.952282, 36.314854, 23.220211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.080139, 36.514816, 23.255814>,  <21.293236, 36.848087, 23.315149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.080139, 36.514816, 23.255814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065794, -0.215531, 0.974278,
		-0.843718, 0.509277, 0.169640,
		-0.532740, -0.833177, -0.148340,
		20.920317, 36.264862, 23.211311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.756685, 36.865021, 23.808231>,  <21.293236, 36.848087, 23.315149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.756685, 36.865021, 23.808231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801628, 36.482048, 23.701874>,  <20.828594, 36.252266, 23.638060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801628, 36.482048, 23.701874>,  <20.756685, 36.865021, 23.808231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801628, 36.482048, 23.701874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044703, -0.262449, 0.963910,
		-0.992662, -0.120190, 0.013312,
		0.112359, -0.957431, -0.265896,
		20.835337, 36.194820, 23.622105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297554, 36.521660, 24.298323>,  <20.756685, 36.865021, 23.808231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297554, 36.521660, 24.298323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548872, 36.243534, 24.158737>,  <20.699663, 36.076656, 24.074986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.548872, 36.243534, 24.158737>,  <20.297554, 36.521660, 24.298323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.548872, 36.243534, 24.158737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269871, -0.225911, 0.936020,
		-0.729667, -0.682273, 0.045707,
		0.628296, -0.695318, -0.348966,
		20.737360, 36.034939, 24.054047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051060, 36.653053, 23.586153>,  <20.297554, 36.521660, 24.298323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051060, 36.653053, 23.586153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069818, 36.791355, 23.211292>,  <20.081074, 36.874336, 22.986376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069818, 36.791355, 23.211292>,  <20.051060, 36.653053, 23.586153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069818, 36.791355, 23.211292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969355, 0.242241, 0.040866,
		0.241146, 0.906514, 0.346526,
		0.046897, 0.345761, -0.937150,
		20.083887, 36.895081, 22.930147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.410572, 37.231400, 23.776350>,  <20.051060, 36.653053, 23.586153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.410572, 37.231400, 23.776350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.438839, 37.090134, 23.403194>,  <19.455799, 37.005375, 23.179302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.438839, 37.090134, 23.403194>,  <19.410572, 37.231400, 23.776350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.438839, 37.090134, 23.403194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984242, 0.127285, -0.122745,
		0.162092, 0.926862, -0.338605,
		0.070668, -0.353165, -0.932888,
		19.460039, 36.984184, 23.123327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004206, 37.686409, 23.237362>,  <19.410572, 37.231400, 23.776350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004206, 37.686409, 23.237362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051363, 37.302544, 23.135269>,  <19.079657, 37.072224, 23.074015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.051363, 37.302544, 23.135269>,  <19.004206, 37.686409, 23.237362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051363, 37.302544, 23.135269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986300, -0.083295, -0.142386,
		0.115384, 0.268519, -0.956339,
		0.117892, -0.959666, -0.255230,
		19.086731, 37.014645, 23.058701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618673, 37.513519, 22.609251>,  <19.004206, 37.686409, 23.237362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618673, 37.513519, 22.609251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681890, 37.219444, 22.872925>,  <18.719822, 37.042999, 23.031128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.681890, 37.219444, 22.872925>,  <18.618673, 37.513519, 22.609251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.681890, 37.219444, 22.872925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983190, -0.055354, 0.173992,
		-0.091429, -0.675599, -0.731579,
		0.158044, -0.735189, 0.659181,
		18.729303, 36.998890, 23.070679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.154230, 36.913742, 22.536667>,  <18.618673, 37.513519, 22.609251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.154230, 36.913742, 22.536667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274534, 36.912228, 22.918144>,  <18.346716, 36.911320, 23.147030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.274534, 36.912228, 22.918144>,  <18.154230, 36.913742, 22.536667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.274534, 36.912228, 22.918144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951227, -0.073153, 0.299693,
		0.068631, -0.997314, -0.025601,
		0.300761, -0.003784, 0.953692,
		18.364763, 36.911091, 23.204252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.599108, 27.115448, 26.122562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998970, 27.125580, 26.119854>,  <31.238888, 27.131659, 26.118229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998970, 27.125580, 26.119854>,  <30.599108, 27.115448, 26.122562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998970, 27.125580, 26.119854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021517, 0.645123, -0.763776,
		-0.014978, 0.763659, 0.645446,
		0.999656, 0.025328, -0.006769,
		31.298866, 27.133179, 26.117823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747864, 27.859177, 26.086185>,  <30.599108, 27.115448, 26.122562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747864, 27.859177, 26.086185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078398, 27.673210, 25.959049>,  <31.276718, 27.561630, 25.882767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.078398, 27.673210, 25.959049>,  <30.747864, 27.859177, 26.086185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078398, 27.673210, 25.959049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201148, 0.770789, -0.604504,
		0.526032, 0.435590, 0.730447,
		0.826336, -0.464916, -0.317841,
		31.326298, 27.533735, 25.863697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255308, 28.448345, 26.119724>,  <30.747864, 27.859177, 26.086185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255308, 28.448345, 26.119724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379173, 28.170166, 25.860352>,  <31.453493, 28.003258, 25.704729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379173, 28.170166, 25.860352>,  <31.255308, 28.448345, 26.119724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379173, 28.170166, 25.860352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056139, 0.694133, -0.717654,
		0.949188, 0.185828, 0.253989,
		0.309663, -0.695448, -0.648430,
		31.472073, 27.961533, 25.665823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621775, 28.770195, 25.618916>,  <31.255308, 28.448345, 26.119724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621775, 28.770195, 25.618916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640289, 28.431118, 25.407532>,  <31.651398, 28.227671, 25.280701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.640289, 28.431118, 25.407532>,  <31.621775, 28.770195, 25.618916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640289, 28.431118, 25.407532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190514, 0.526809, -0.828358,
		0.980593, -0.062335, 0.185883,
		0.046289, -0.847695, -0.528461,
		31.654177, 28.176809, 25.248993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247749, 28.766451, 25.249947>,  <31.621775, 28.770195, 25.618916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247749, 28.766451, 25.249947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972330, 28.553097, 25.053417>,  <31.807077, 28.425085, 24.935499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972330, 28.553097, 25.053417>,  <32.247749, 28.766451, 25.249947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972330, 28.553097, 25.053417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061848, 0.631851, -0.772618,
		0.722548, -0.562373, -0.402071,
		-0.688549, -0.533386, -0.491324,
		31.765766, 28.393082, 24.906019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552872, 28.633186, 24.569746>,  <32.247749, 28.766451, 25.249947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552872, 28.633186, 24.569746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.157726, 28.592438, 24.522846>,  <31.920639, 28.567987, 24.494705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.157726, 28.592438, 24.522846>,  <32.552872, 28.633186, 24.569746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157726, 28.592438, 24.522846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046418, 0.526754, -0.848749,
		0.148226, -0.843891, -0.515633,
		-0.987864, -0.101872, -0.117250,
		31.861366, 28.561876, 24.487671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433952, 28.613895, 23.806152>,  <32.552872, 28.633186, 24.569746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433952, 28.613895, 23.806152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072235, 28.725456, 23.935432>,  <31.855204, 28.792393, 24.013000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.072235, 28.725456, 23.935432>,  <32.433952, 28.613895, 23.806152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072235, 28.725456, 23.935432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074068, 0.643098, -0.762194,
		-0.420428, -0.713189, -0.560894,
		-0.904298, 0.278903, 0.323201,
		31.800945, 28.809128, 24.032393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084541, 28.723040, 23.220804>,  <32.433952, 28.613895, 23.806152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084541, 28.723040, 23.220804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867250, 28.925732, 23.488575>,  <31.736876, 29.047348, 23.649237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867250, 28.925732, 23.488575>,  <32.084541, 28.723040, 23.220804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867250, 28.925732, 23.488575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220091, 0.683496, -0.695983,
		-0.810226, -0.525410, -0.259765,
		-0.543225, 0.506732, 0.669425,
		31.704283, 29.077751, 23.689402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561686, 28.884634, 22.825235>,  <32.084541, 28.723040, 23.220804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561686, 28.884634, 22.825235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532537, 29.158134, 23.115662>,  <31.515049, 29.322235, 23.289917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.532537, 29.158134, 23.115662>,  <31.561686, 28.884634, 22.825235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532537, 29.158134, 23.115662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311669, 0.675930, -0.667818,
		-0.947392, -0.274956, 0.163851,
		-0.072869, 0.683753, 0.726066,
		31.510677, 29.363260, 23.333481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871515, 29.188675, 22.861969>,  <31.561686, 28.884634, 22.825235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871515, 29.188675, 22.861969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105200, 29.457207, 23.044403>,  <31.245411, 29.618326, 23.153864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105200, 29.457207, 23.044403>,  <30.871515, 29.188675, 22.861969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105200, 29.457207, 23.044403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491443, 0.739834, -0.459488,
		-0.645897, 0.044296, 0.762138,
		0.584209, 0.671330, 0.456087,
		31.280462, 29.658606, 23.181229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389452, 29.752039, 22.915365>,  <30.871515, 29.188675, 22.861969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389452, 29.752039, 22.915365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.762051, 29.890118, 22.961246>,  <30.985609, 29.972965, 22.988775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.762051, 29.890118, 22.961246>,  <30.389452, 29.752039, 22.915365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762051, 29.890118, 22.961246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252434, 0.840488, -0.479434,
		-0.261905, 0.417635, 0.870050,
		0.931495, 0.345196, 0.114702,
		31.041500, 29.993677, 22.995657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306356, 30.508894, 22.877493>,  <30.389452, 29.752039, 22.915365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306356, 30.508894, 22.877493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.694572, 30.437099, 22.813198>,  <30.927502, 30.394022, 22.774620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.694572, 30.437099, 22.813198>,  <30.306356, 30.508894, 22.877493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694572, 30.437099, 22.813198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063102, 0.833190, -0.549374,
		0.232532, 0.523046, 0.819970,
		0.970540, -0.179489, -0.160738,
		30.985735, 30.383253, 22.764977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626978, 31.114664, 23.088581>,  <30.306356, 30.508894, 22.877493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626978, 31.114664, 23.088581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.884996, 30.931969, 22.843533>,  <31.039808, 30.822351, 22.696505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.884996, 30.931969, 22.843533>,  <30.626978, 31.114664, 23.088581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.884996, 30.931969, 22.843533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020464, 0.811746, -0.583652,
		0.763869, 0.363946, 0.532961,
		0.645047, -0.456740, -0.612620,
		31.078510, 30.794947, 22.659746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210888, 31.598825, 22.929886>,  <30.626978, 31.114664, 23.088581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210888, 31.598825, 22.929886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.206877, 31.345161, 22.620632>,  <31.204470, 31.192963, 22.435080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.206877, 31.345161, 22.620632>,  <31.210888, 31.598825, 22.929886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206877, 31.345161, 22.620632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100381, 0.769908, -0.630211,
		0.994899, 0.071290, -0.071377,
		-0.010026, -0.634161, -0.773136,
		31.203869, 31.154913, 22.388691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524509, 31.986294, 22.465086>,  <31.210888, 31.598825, 22.929886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524509, 31.986294, 22.465086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350937, 31.703819, 22.241299>,  <31.246794, 31.534334, 22.107027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350937, 31.703819, 22.241299>,  <31.524509, 31.986294, 22.465086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350937, 31.703819, 22.241299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007428, 0.623761, -0.781580,
		0.900915, -0.334996, -0.275915,
		-0.433931, -0.706187, -0.559468,
		31.220757, 31.491962, 22.073458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891777, 32.008255, 21.837307>,  <31.524509, 31.986294, 22.465086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891777, 32.008255, 21.837307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553862, 31.811825, 21.752289>,  <31.351112, 31.693966, 21.701279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.553862, 31.811825, 21.752289>,  <31.891777, 32.008255, 21.837307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553862, 31.811825, 21.752289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103932, 0.540226, -0.835077,
		0.524909, -0.683374, -0.507416,
		-0.844789, -0.491076, -0.212545,
		31.300425, 31.664501, 21.688524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948683, 31.808895, 21.110256>,  <31.891777, 32.008255, 21.837307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948683, 31.808895, 21.110256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564026, 31.807644, 21.219975>,  <31.333233, 31.806892, 21.285807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.564026, 31.807644, 21.219975>,  <31.948683, 31.808895, 21.110256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564026, 31.807644, 21.219975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229544, 0.556669, -0.798391,
		-0.150194, -0.830728, -0.536034,
		-0.961640, -0.003129, 0.274297,
		31.275534, 31.806705, 21.302263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567263, 31.890694, 20.439838>,  <31.948683, 31.808895, 21.110256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567263, 31.890694, 20.439838> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302620, 31.969078, 20.729355>,  <31.143833, 32.016109, 20.903065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.302620, 31.969078, 20.729355>,  <31.567263, 31.890694, 20.439838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302620, 31.969078, 20.729355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444080, 0.675374, -0.588781,
		-0.604208, -0.710963, -0.359810,
		-0.661608, 0.195962, 0.723791,
		31.104137, 32.027866, 20.946493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987267, 31.924627, 20.077835>,  <31.567263, 31.890694, 20.439838>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987267, 31.924627, 20.077835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852350, 32.097462, 20.412388>,  <30.771400, 32.201160, 20.613119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.852350, 32.097462, 20.412388>,  <30.987267, 31.924627, 20.077835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852350, 32.097462, 20.412388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469501, 0.692862, -0.547276,
		-0.815968, -0.577274, -0.030831,
		-0.337290, 0.432085, 0.836384,
		30.751163, 32.227089, 20.663303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231911, 32.020504, 20.039509>,  <30.987267, 31.924627, 20.077835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231911, 32.020504, 20.039509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.353779, 32.291187, 20.307610>,  <30.426899, 32.453598, 20.468470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.353779, 32.291187, 20.307610>,  <30.231911, 32.020504, 20.039509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353779, 32.291187, 20.307610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460173, 0.720708, -0.518479,
		-0.833917, -0.150467, 0.530982,
		0.304669, 0.676712, 0.670252,
		30.445179, 32.494202, 20.508684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611637, 32.317226, 20.304552>,  <30.231911, 32.020504, 20.039509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611637, 32.317226, 20.304552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.920351, 32.565823, 20.358356>,  <30.105579, 32.714981, 20.390638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.920351, 32.565823, 20.358356>,  <29.611637, 32.317226, 20.304552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920351, 32.565823, 20.358356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462721, 0.694002, -0.551589,
		-0.436159, 0.363468, 0.823199,
		0.771787, 0.621492, 0.134511,
		30.151888, 32.752270, 20.398710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304817, 32.936852, 20.657640>,  <29.611637, 32.317226, 20.304552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304817, 32.936852, 20.657640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.630999, 33.028042, 20.444824>,  <29.826708, 33.082756, 20.317135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.630999, 33.028042, 20.444824>,  <29.304817, 32.936852, 20.657640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630999, 33.028042, 20.444824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476673, 0.785928, -0.393827,
		0.328361, 0.574756, 0.749557,
		0.815452, 0.227976, -0.532039,
		29.875633, 33.096436, 20.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638912, 32.994923, 20.630245>,  <29.304817, 32.936852, 20.657640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638912, 32.994923, 20.630245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.258154, 32.893940, 20.560776>,  <28.029699, 32.833351, 20.519094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.258154, 32.893940, 20.560776>,  <28.638912, 32.994923, 20.630245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258154, 32.893940, 20.560776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064309, -0.718738, 0.692301,
		-0.299601, 0.647829, 0.700398,
		-0.951895, -0.252456, -0.173674,
		27.972586, 32.818203, 20.508673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.184031, 33.045628, 21.354734>,  <28.638912, 32.994923, 20.630245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.184031, 33.045628, 21.354734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.018263, 32.795609, 21.090137>,  <27.918802, 32.645596, 20.931379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.018263, 32.795609, 21.090137>,  <28.184031, 33.045628, 21.354734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018263, 32.795609, 21.090137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026479, -0.718255, 0.695276,
		-0.909701, 0.305651, 0.281107,
		-0.414419, -0.625050, -0.661490,
		27.893938, 32.608093, 20.891691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699581, 32.691803, 21.742126>,  <28.184031, 33.045628, 21.354734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699581, 32.691803, 21.742126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728685, 32.450188, 21.424675>,  <27.746149, 32.305218, 21.234203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.728685, 32.450188, 21.424675>,  <27.699581, 32.691803, 21.742126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728685, 32.450188, 21.424675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088365, -0.796514, 0.598128,
		-0.993427, 0.026608, -0.111332,
		0.072762, -0.604034, -0.793630,
		27.750515, 32.268978, 21.186586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130453, 32.228947, 21.829182>,  <27.699581, 32.691803, 21.742126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130453, 32.228947, 21.829182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.377459, 32.052845, 21.568459>,  <27.525661, 31.947184, 21.412024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.377459, 32.052845, 21.568459>,  <27.130453, 32.228947, 21.829182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377459, 32.052845, 21.568459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045640, -0.847342, 0.529083,
		-0.785235, -0.296968, -0.543338,
		0.617514, -0.440252, -0.651809,
		27.562712, 31.920769, 21.372915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817261, 31.642023, 21.726994>,  <27.130453, 32.228947, 21.829182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817261, 31.642023, 21.726994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.193802, 31.586750, 21.603859>,  <27.419725, 31.553587, 21.529978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.193802, 31.586750, 21.603859>,  <26.817261, 31.642023, 21.726994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193802, 31.586750, 21.603859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068002, -0.815893, 0.574189,
		-0.330505, -0.561447, -0.758646,
		0.941351, -0.138183, -0.307836,
		27.476208, 31.545296, 21.511507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813393, 30.890375, 21.540567>,  <26.817261, 31.642023, 21.726994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813393, 30.890375, 21.540567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178190, 31.028549, 21.629059>,  <27.397068, 31.111454, 21.682154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.178190, 31.028549, 21.629059>,  <26.813393, 30.890375, 21.540567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178190, 31.028549, 21.629059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130678, -0.755873, 0.641544,
		0.388835, -0.556174, -0.734492,
		0.911993, 0.345436, 0.221230,
		27.451788, 31.132179, 21.695427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216900, 30.299438, 21.574518>,  <26.813393, 30.890375, 21.540567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216900, 30.299438, 21.574518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.435015, 30.566105, 21.777779>,  <27.565884, 30.726105, 21.899734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.435015, 30.566105, 21.777779>,  <27.216900, 30.299438, 21.574518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435015, 30.566105, 21.777779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369375, -0.735274, 0.568273,
		0.752479, -0.122174, -0.647186,
		0.545287, 0.666668, 0.508150,
		27.598600, 30.766106, 21.930223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828815, 29.893291, 21.623983>,  <27.216900, 30.299438, 21.574518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828815, 29.893291, 21.623983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829294, 30.191647, 21.890411>,  <27.829582, 30.370659, 22.050268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.829294, 30.191647, 21.890411>,  <27.828815, 29.893291, 21.623983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829294, 30.191647, 21.890411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293435, -0.637012, 0.712819,
		0.955978, 0.194594, -0.219633,
		0.001198, 0.745888, 0.666071,
		27.829653, 30.415413, 22.090233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516941, 29.790077, 21.953922>,  <27.828815, 29.893291, 21.623983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516941, 29.790077, 21.953922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.275677, 29.995304, 22.198204>,  <28.130919, 30.118441, 22.344774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.275677, 29.995304, 22.198204>,  <28.516941, 29.790077, 21.953922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275677, 29.995304, 22.198204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203345, -0.641449, 0.739726,
		0.771265, 0.570356, 0.282566,
		-0.603159, 0.513067, 0.610706,
		28.094728, 30.149223, 22.381416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911396, 29.774645, 22.575806>,  <28.516941, 29.790077, 21.953922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911396, 29.774645, 22.575806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542583, 29.891590, 22.677299>,  <28.321295, 29.961758, 22.738195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542583, 29.891590, 22.677299>,  <28.911396, 29.774645, 22.575806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542583, 29.891590, 22.677299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091422, -0.472455, 0.876600,
		0.376162, 0.831451, 0.408891,
		-0.922033, 0.292362, 0.253733,
		28.265974, 29.979300, 22.753420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051029, 29.901205, 23.183750>,  <28.911396, 29.774645, 22.575806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051029, 29.901205, 23.183750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666309, 29.812172, 23.120007>,  <28.435476, 29.758753, 23.081760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.666309, 29.812172, 23.120007>,  <29.051029, 29.901205, 23.183750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666309, 29.812172, 23.120007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035043, -0.477246, 0.878071,
		-0.271496, 0.850114, 0.451216,
		-0.961801, -0.222581, -0.159361,
		28.377769, 29.745398, 23.072199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729540, 30.266062, 23.704824>,  <29.051029, 29.901205, 23.183750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729540, 30.266062, 23.704824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.494881, 29.959583, 23.599915>,  <28.354086, 29.775696, 23.536968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.494881, 29.959583, 23.599915>,  <28.729540, 30.266062, 23.704824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.494881, 29.959583, 23.599915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016701, -0.335238, 0.941985,
		-0.809669, 0.548234, 0.209464,
		-0.586649, -0.766195, -0.262276,
		28.318886, 29.729725, 23.521233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243744, 30.102121, 24.279749>,  <28.729540, 30.266062, 23.704824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243744, 30.102121, 24.279749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.248775, 29.766411, 24.062325>,  <28.251795, 29.564985, 23.931870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.248775, 29.766411, 24.062325>,  <28.243744, 30.102121, 24.279749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248775, 29.766411, 24.062325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084050, -0.542569, 0.835796,
		-0.996382, 0.035172, -0.077367,
		0.012581, -0.839275, -0.543562,
		28.252550, 29.514629, 23.899256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763721, 29.670248, 24.624758>,  <28.243744, 30.102121, 24.279749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763721, 29.670248, 24.624758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.986544, 29.419567, 24.406792>,  <28.120237, 29.269159, 24.276012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.986544, 29.419567, 24.406792>,  <27.763721, 29.670248, 24.624758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986544, 29.419567, 24.406792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090155, -0.606638, 0.789850,
		-0.825568, -0.489116, -0.281430,
		0.557054, -0.626702, -0.544917,
		28.153660, 29.231556, 24.243317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572224, 29.020523, 24.846230>,  <27.763721, 29.670248, 24.624758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572224, 29.020523, 24.846230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895285, 28.910034, 24.637844>,  <28.089121, 28.843740, 24.512814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.895285, 28.910034, 24.637844>,  <27.572224, 29.020523, 24.846230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895285, 28.910034, 24.637844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115071, -0.792677, 0.598684,
		-0.578323, -0.543476, -0.608422,
		0.807652, -0.276221, -0.520961,
		28.137581, 28.827168, 24.481556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480000, 28.249323, 24.689707>,  <27.572224, 29.020523, 24.846230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480000, 28.249323, 24.689707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.869110, 28.339882, 24.669903>,  <28.102577, 28.394217, 24.658020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.869110, 28.339882, 24.669903>,  <27.480000, 28.249323, 24.689707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.869110, 28.339882, 24.669903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207552, -0.756053, 0.620730,
		0.103098, -0.614108, -0.782459,
		0.972776, 0.226397, -0.049512,
		28.160942, 28.407801, 24.655048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809240, 27.581818, 24.566174>,  <27.480000, 28.249323, 24.689707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809240, 27.581818, 24.566174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101084, 27.819984, 24.700726>,  <28.276190, 27.962885, 24.781456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.101084, 27.819984, 24.700726>,  <27.809240, 27.581818, 24.566174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101084, 27.819984, 24.700726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, -0.745843, 0.569014,
		0.589685, -0.298661, -0.750382,
		0.729609, 0.595416, 0.336378,
		28.319967, 27.998610, 24.801640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446430, 27.220200, 24.506668>,  <27.809240, 27.581818, 24.566174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446430, 27.220200, 24.506668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.551561, 27.507893, 24.763924>,  <28.614641, 27.680508, 24.918278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.551561, 27.507893, 24.763924>,  <28.446430, 27.220200, 24.506668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551561, 27.507893, 24.763924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599947, -0.643868, 0.474866,
		0.755635, 0.261040, -0.600727,
		0.262830, 0.719230, 0.643139,
		28.630411, 27.723661, 24.956865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.009573, 26.951965, 24.840570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.907335, 27.235909, 25.103104>,  <28.845993, 27.406275, 25.260624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.907335, 27.235909, 25.103104>,  <29.009573, 26.951965, 24.840570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.907335, 27.235909, 25.103104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556655, -0.447000, 0.700233,
		0.790447, 0.544327, -0.280894,
		-0.255596, 0.709858, 0.656332,
		28.830656, 27.448866, 25.300003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605862, 27.114279, 25.262636>,  <29.009573, 26.951965, 24.840570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605862, 27.114279, 25.262636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277304, 27.225090, 25.462063>,  <29.080170, 27.291576, 25.581718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277304, 27.225090, 25.462063>,  <29.605862, 27.114279, 25.262636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277304, 27.225090, 25.462063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371219, -0.403982, 0.836059,
		0.433025, 0.871810, 0.228990,
		-0.821393, 0.277029, 0.498566,
		29.030886, 27.308199, 25.611633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899225, 27.387377, 25.912680>,  <29.605862, 27.114279, 25.262636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899225, 27.387377, 25.912680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513588, 27.311558, 25.987080>,  <29.282206, 27.266068, 26.031719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.513588, 27.311558, 25.987080>,  <29.899225, 27.387377, 25.912680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513588, 27.311558, 25.987080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261051, -0.547861, 0.794796,
		-0.048749, 0.814813, 0.577671,
		-0.964093, -0.189547, 0.186000,
		29.224360, 27.254694, 26.042879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699760, 27.637259, 26.640711>,  <29.899225, 27.387377, 25.912680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699760, 27.637259, 26.640711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.441149, 27.359367, 26.514629>,  <29.285982, 27.192633, 26.438980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.441149, 27.359367, 26.514629>,  <29.699760, 27.637259, 26.640711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441149, 27.359367, 26.514629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291953, -0.607033, 0.739104,
		-0.704816, 0.385827, 0.595292,
		-0.646528, -0.694729, -0.315203,
		29.247190, 27.150949, 26.420069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351774, 27.467674, 27.234707>,  <29.699760, 27.637259, 26.640711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351774, 27.467674, 27.234707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257711, 27.168449, 26.986481>,  <29.201273, 26.988914, 26.837545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.257711, 27.168449, 26.986481>,  <29.351774, 27.467674, 27.234707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257711, 27.168449, 26.986481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196626, -0.661883, 0.723359,
		-0.951861, 0.048084, 0.302736,
		-0.235159, -0.748063, -0.620566,
		29.187164, 26.944031, 26.800310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893866, 27.112022, 27.607059>,  <29.351774, 27.467674, 27.234707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893866, 27.112022, 27.607059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052382, 26.873623, 27.327705>,  <29.147491, 26.730583, 27.160093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.052382, 26.873623, 27.327705>,  <28.893866, 27.112022, 27.607059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052382, 26.873623, 27.327705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270465, -0.651126, 0.709143,
		-0.877384, -0.469915, -0.096837,
		0.396290, -0.595999, -0.698383,
		29.171268, 26.694822, 27.118191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528526, 26.499968, 27.699028>,  <28.893866, 27.112022, 27.607059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528526, 26.499968, 27.699028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.883759, 26.428200, 27.529736>,  <29.096897, 26.385139, 27.428160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.883759, 26.428200, 27.529736>,  <28.528526, 26.499968, 27.699028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883759, 26.428200, 27.529736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221722, -0.639325, 0.736276,
		-0.402685, -0.747711, -0.527990,
		0.888079, -0.179420, -0.423230,
		29.150183, 26.374374, 27.402767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513252, 25.860218, 27.685635>,  <28.528526, 26.499968, 27.699028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513252, 25.860218, 27.685635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902933, 25.938271, 27.640282>,  <29.136742, 25.985102, 27.613070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902933, 25.938271, 27.640282>,  <28.513252, 25.860218, 27.685635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902933, 25.938271, 27.640282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222106, -0.739923, 0.634967,
		0.040010, -0.643768, -0.764174,
		0.974201, 0.195132, -0.113380,
		29.195194, 25.996811, 27.606268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756847, 25.095896, 27.632053>,  <28.513252, 25.860218, 27.685635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756847, 25.095896, 27.632053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055109, 25.344704, 27.727631>,  <29.234066, 25.493988, 27.784977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.055109, 25.344704, 27.727631>,  <28.756847, 25.095896, 27.632053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055109, 25.344704, 27.727631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410636, -0.711365, 0.570384,
		0.524764, -0.327191, -0.785855,
		0.745654, 0.622018, 0.238942,
		29.278805, 25.531309, 27.799313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296131, 24.637186, 27.552328>,  <28.756847, 25.095896, 27.632053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296131, 24.637186, 27.552328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433605, 24.935970, 27.779987>,  <29.516090, 25.115240, 27.916584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.433605, 24.935970, 27.779987>,  <29.296131, 24.637186, 27.552328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433605, 24.935970, 27.779987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375723, -0.664822, 0.645635,
		0.860646, -0.008053, -0.509140,
		0.343687, 0.746959, 0.569150,
		29.536711, 25.160057, 27.950733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902472, 24.408100, 27.915571>,  <29.296131, 24.637186, 27.552328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902472, 24.408100, 27.915571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788874, 24.724674, 28.132080>,  <29.720715, 24.914619, 28.261986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.788874, 24.724674, 28.132080>,  <29.902472, 24.408100, 27.915571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788874, 24.724674, 28.132080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206329, -0.500845, 0.840585,
		0.936363, 0.350401, -0.021059,
		-0.283994, 0.791438, 0.541271,
		29.703676, 24.962105, 28.294462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485283, 24.602825, 28.415955>,  <29.902472, 24.408100, 27.915571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485283, 24.602825, 28.415955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 24.747032, 28.576992>,  <29.946789, 24.833555, 28.673615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.148724, 24.747032, 28.576992>,  <30.485283, 24.602825, 28.415955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148724, 24.747032, 28.576992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277283, -0.351431, 0.894209,
		0.463859, 0.864017, 0.195729,
		-0.841397, 0.360515, 0.402592,
		29.896305, 24.855186, 28.697769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759369, 24.921524, 29.005129>,  <30.485283, 24.602825, 28.415955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759369, 24.921524, 29.005129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369123, 24.914249, 29.092621>,  <30.134975, 24.909885, 29.145117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.369123, 24.914249, 29.092621>,  <30.759369, 24.921524, 29.005129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369123, 24.914249, 29.092621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204774, -0.434126, 0.877270,
		0.079001, 0.900669, 0.427264,
		-0.975616, -0.018187, 0.218730,
		30.076439, 24.908792, 29.158239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622749, 25.382208, 29.593121>,  <30.759369, 24.921524, 29.005129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622749, 25.382208, 29.593121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329227, 25.110950, 29.576862>,  <30.153114, 24.948196, 29.567108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.329227, 25.110950, 29.576862>,  <30.622749, 25.382208, 29.593121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329227, 25.110950, 29.576862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360921, -0.439831, 0.822365,
		-0.575558, 0.588786, 0.567507,
		-0.733804, -0.678144, -0.040643,
		30.109087, 24.907507, 29.564669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441502, 25.339224, 30.251585>,  <30.622749, 25.382208, 29.593121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441502, 25.339224, 30.251585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264786, 25.004227, 30.122944>,  <30.158756, 24.803228, 30.045759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.264786, 25.004227, 30.122944>,  <30.441502, 25.339224, 30.251585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264786, 25.004227, 30.122944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298341, -0.475232, 0.827736,
		-0.846060, 0.269736, 0.459810,
		-0.441787, -0.837494, -0.321602,
		30.132250, 24.752979, 30.026463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998604, 25.082541, 30.815657>,  <30.441502, 25.339224, 30.251585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998604, 25.082541, 30.815657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086069, 24.775757, 30.574341>,  <30.138548, 24.591686, 30.429552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086069, 24.775757, 30.574341>,  <29.998604, 25.082541, 30.815657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086069, 24.775757, 30.574341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276860, -0.544081, 0.792038,
		-0.935700, -0.340217, 0.093369,
		0.218664, -0.766960, -0.603289,
		30.151669, 24.545670, 30.393354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728182, 24.499054, 31.139563>,  <29.998604, 25.082541, 30.815657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728182, 24.499054, 31.139563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002081, 24.332298, 30.900455>,  <30.166420, 24.232244, 30.756990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.002081, 24.332298, 30.900455>,  <29.728182, 24.499054, 31.139563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002081, 24.332298, 30.900455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331964, -0.551775, 0.765078,
		-0.648787, -0.722321, -0.239434,
		0.684745, -0.416889, -0.597769,
		30.207504, 24.207232, 30.721125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699837, 23.823227, 31.244110>,  <29.728182, 24.499054, 31.139563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699837, 23.823227, 31.244110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063499, 23.856659, 31.080917>,  <30.281696, 23.876719, 30.983002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.063499, 23.856659, 31.080917>,  <29.699837, 23.823227, 31.244110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063499, 23.856659, 31.080917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371132, -0.607038, 0.702684,
		-0.188930, -0.790265, -0.582912,
		0.909157, 0.083580, -0.407981,
		30.336246, 23.881733, 30.958523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940538, 23.194832, 31.114325>,  <29.699837, 23.823227, 31.244110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940538, 23.194832, 31.114325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267620, 23.419250, 31.165840>,  <30.463869, 23.553902, 31.196749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.267620, 23.419250, 31.165840>,  <29.940538, 23.194832, 31.114325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267620, 23.419250, 31.165840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332404, -0.642873, 0.690088,
		0.469967, -0.521477, -0.712174,
		0.817703, 0.561049, 0.128788,
		30.512932, 23.587564, 31.204477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518061, 22.722841, 31.133406>,  <29.940538, 23.194832, 31.114325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518061, 22.722841, 31.133406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666927, 23.058575, 31.291904>,  <30.756247, 23.260015, 31.387005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666927, 23.058575, 31.291904>,  <30.518061, 22.722841, 31.133406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666927, 23.058575, 31.291904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440365, -0.535480, 0.720652,
		0.817050, -0.093708, -0.568900,
		0.372166, 0.839333, 0.396249,
		30.778578, 23.310375, 31.410780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135893, 22.488689, 31.332148>,  <30.518061, 22.722841, 31.133406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135893, 22.488689, 31.332148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055813, 22.826283, 31.531189>,  <31.007765, 23.028839, 31.650614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.055813, 22.826283, 31.531189>,  <31.135893, 22.488689, 31.332148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055813, 22.826283, 31.531189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234302, -0.451907, 0.860746,
		0.951326, 0.288912, -0.107275,
		-0.200202, 0.843985, 0.497603,
		30.995752, 23.079477, 31.680470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653114, 22.514126, 31.798029>,  <31.135893, 22.488689, 31.332148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653114, 22.514126, 31.798029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378786, 22.755520, 31.960735>,  <31.214190, 22.900356, 32.058357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378786, 22.755520, 31.960735>,  <31.653114, 22.514126, 31.798029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378786, 22.755520, 31.960735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114342, -0.462626, 0.879149,
		0.718733, 0.649448, 0.248275,
		-0.685820, 0.603485, 0.406764,
		31.173040, 22.936565, 32.082764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936361, 22.933285, 32.367126>,  <31.653114, 22.514126, 31.798029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936361, 22.933285, 32.367126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547829, 22.848839, 32.410839>,  <31.314709, 22.798172, 32.437069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.547829, 22.848839, 32.410839>,  <31.936361, 22.933285, 32.367126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547829, 22.848839, 32.410839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207781, -0.530617, 0.821750,
		-0.115494, 0.820900, 0.559271,
		-0.971333, -0.211113, 0.109284,
		31.256428, 22.785505, 32.443623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375137, 22.377024, 32.662685>,  <31.936361, 22.933285, 32.367126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375137, 22.377024, 32.662685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757771, 22.444370, 32.757854>,  <32.987350, 22.484779, 32.814957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757771, 22.444370, 32.757854>,  <32.375137, 22.377024, 32.662685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757771, 22.444370, 32.757854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291309, -0.525332, -0.799478,
		-0.009619, 0.834073, -0.551570,
		0.956580, 0.168368, 0.237920,
		33.044746, 22.494881, 32.829231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997292, 22.215363, 32.170979>,  <32.375137, 22.377024, 32.662685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997292, 22.215363, 32.170979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377773, 22.218193, 32.047581>,  <33.606060, 22.219893, 31.973541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377773, 22.218193, 32.047581>,  <32.997292, 22.215363, 32.170979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377773, 22.218193, 32.047581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211003, 0.744400, -0.633519,
		0.225159, 0.667696, 0.709567,
		0.951200, 0.007078, -0.308494,
		33.663132, 22.220316, 31.955032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165516, 22.920631, 32.159866>,  <32.997292, 22.215363, 32.170979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165516, 22.920631, 32.159866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414715, 22.750561, 31.897232>,  <33.564232, 22.648518, 31.739651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.414715, 22.750561, 31.897232>,  <33.165516, 22.920631, 32.159866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414715, 22.750561, 31.897232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149964, 0.758890, -0.633717,
		0.767717, 0.493266, 0.409022,
		0.622994, -0.425177, -0.656585,
		33.601612, 22.623007, 31.700256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644066, 23.423197, 32.027931>,  <33.165516, 22.920631, 32.159866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644066, 23.423197, 32.027931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657459, 23.180969, 31.709896>,  <33.665497, 23.035633, 31.519075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.657459, 23.180969, 31.709896>,  <33.644066, 23.423197, 32.027931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657459, 23.180969, 31.709896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098271, 0.789684, -0.605592,
		0.994596, 0.098412, -0.033067,
		0.033485, -0.605570, -0.795088,
		33.667503, 22.999298, 31.471371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128399, 23.735672, 31.524382>,  <33.644066, 23.423197, 32.027931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128399, 23.735672, 31.524382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924496, 23.458168, 31.320873>,  <33.802155, 23.291666, 31.198769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924496, 23.458168, 31.320873>,  <34.128399, 23.735672, 31.524382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924496, 23.458168, 31.320873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063776, 0.620219, -0.781832,
		0.857953, -0.366096, -0.360404,
		-0.509755, -0.693760, -0.508770,
		33.771568, 23.250040, 31.168242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456097, 23.556946, 30.888844>,  <34.128399, 23.735672, 31.524382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456097, 23.556946, 30.888844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072727, 23.459854, 30.828827>,  <33.842705, 23.401598, 30.792816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.072727, 23.459854, 30.828827>,  <34.456097, 23.556946, 30.888844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072727, 23.459854, 30.828827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002052, 0.519919, -0.854213,
		0.285353, -0.819003, -0.497802,
		-0.958420, -0.242731, -0.150041,
		33.785202, 23.387035, 30.783815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354343, 23.616182, 30.129257>,  <34.456097, 23.556946, 30.888844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354343, 23.616182, 30.129257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976810, 23.587471, 30.258274>,  <33.750290, 23.570244, 30.335684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976810, 23.587471, 30.258274>,  <34.354343, 23.616182, 30.129257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976810, 23.587471, 30.258274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293284, 0.631639, -0.717646,
		-0.152219, -0.771932, -0.617211,
		-0.943829, -0.071779, 0.322543,
		33.693661, 23.565937, 30.355038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921249, 23.468643, 29.464945>,  <34.354343, 23.616182, 30.129257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921249, 23.468643, 29.464945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717121, 23.621807, 29.772957>,  <33.594643, 23.713705, 29.957764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.717121, 23.621807, 29.772957>,  <33.921249, 23.468643, 29.464945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717121, 23.621807, 29.772957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490126, 0.606251, -0.626288,
		-0.706643, -0.697023, -0.121712,
		-0.510325, 0.382908, 0.770032,
		33.564022, 23.736679, 30.003967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315147, 23.491838, 29.181749>,  <33.921249, 23.468643, 29.464945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315147, 23.491838, 29.181749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291695, 23.761402, 29.476341>,  <33.277622, 23.923141, 29.653097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.291695, 23.761402, 29.476341>,  <33.315147, 23.491838, 29.181749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291695, 23.761402, 29.476341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571334, 0.582326, -0.578338,
		-0.818621, -0.454687, 0.350884,
		-0.058634, 0.673911, 0.736482,
		33.274105, 23.963575, 29.697287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762657, 23.800062, 29.012543>,  <33.315147, 23.491838, 29.181749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762657, 23.800062, 29.012543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901833, 24.059692, 29.283138>,  <32.985336, 24.215471, 29.445496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.901833, 24.059692, 29.283138>,  <32.762657, 23.800062, 29.012543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901833, 24.059692, 29.283138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610777, 0.704368, -0.361685,
		-0.711259, -0.287339, 0.641519,
		0.347939, 0.649077, 0.676489,
		33.006214, 24.254416, 29.486086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202892, 24.026438, 29.390762>,  <32.762657, 23.800062, 29.012543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202892, 24.026438, 29.390762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467823, 24.324978, 29.416946>,  <32.626781, 24.504101, 29.432657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467823, 24.324978, 29.416946>,  <32.202892, 24.026438, 29.390762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467823, 24.324978, 29.416946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677935, 0.634221, -0.371709,
		-0.318942, 0.201814, 0.926038,
		0.662329, 0.746348, 0.065463,
		32.666523, 24.548882, 29.436584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790916, 24.604763, 29.541273>,  <32.202892, 24.026438, 29.390762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790916, 24.604763, 29.541273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148277, 24.749695, 29.435032>,  <32.362694, 24.836655, 29.371286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148277, 24.749695, 29.435032>,  <31.790916, 24.604763, 29.541273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148277, 24.749695, 29.435032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447313, 0.662536, -0.600797,
		-0.041714, 0.655563, 0.753987,
		0.893404, 0.362330, -0.265605,
		32.416298, 24.858395, 29.355350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884632, 25.414391, 29.631235>,  <31.790916, 24.604763, 29.541273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884632, 25.414391, 29.631235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135765, 25.292740, 29.344646>,  <32.286446, 25.219749, 29.172693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.135765, 25.292740, 29.344646>,  <31.884632, 25.414391, 29.631235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135765, 25.292740, 29.344646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354128, 0.708100, -0.610891,
		0.693122, 0.637260, 0.336869,
		0.627833, -0.304127, -0.716472,
		32.324116, 25.201502, 29.129705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100323, 25.965761, 29.339149>,  <31.884632, 25.414391, 29.631235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100323, 25.965761, 29.339149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188297, 25.703732, 29.050011>,  <32.241081, 25.546515, 28.876528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188297, 25.703732, 29.050011>,  <32.100323, 25.965761, 29.339149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188297, 25.703732, 29.050011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266293, 0.672530, -0.690501,
		0.938464, 0.344356, -0.026527,
		0.219938, -0.655074, -0.722845,
		32.254280, 25.507210, 28.833157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396427, 26.422121, 28.844011>,  <32.100323, 25.965761, 29.339149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396427, 26.422121, 28.844011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275272, 26.082508, 28.670849>,  <32.202579, 25.878740, 28.566952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275272, 26.082508, 28.670849>,  <32.396427, 26.422121, 28.844011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275272, 26.082508, 28.670849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406601, 0.525949, -0.747029,
		0.861937, -0.050245, -0.504519,
		-0.302886, -0.849030, -0.432905,
		32.184406, 25.827799, 28.540977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735260, 26.357870, 28.186089>,  <32.396427, 26.422121, 28.844011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735260, 26.357870, 28.186089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432804, 26.100449, 28.138603>,  <32.251331, 25.945995, 28.110111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.432804, 26.100449, 28.138603>,  <32.735260, 26.357870, 28.186089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432804, 26.100449, 28.138603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351238, 0.552166, -0.756138,
		0.552166, -0.530047, -0.643554,
		0.756138, 0.643554, 0.118715,
		32.205963, 25.907383, 28.102989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799934, 26.172287, 27.535572>,  <32.735260, 26.357870, 28.186089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799934, 26.172287, 27.535572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420788, 26.112309, 27.648041>,  <32.193298, 26.076321, 27.715523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420788, 26.112309, 27.648041>,  <32.799934, 26.172287, 27.535572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420788, 26.112309, 27.648041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314999, 0.574246, -0.755657,
		-0.048154, -0.804833, -0.591544,
		-0.947870, -0.149948, 0.281174,
		32.136425, 26.067324, 27.732393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595596, 25.782726, 27.032681>,  <32.799934, 26.172287, 27.535572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595596, 25.782726, 27.032681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274414, 25.948124, 27.204395>,  <32.081707, 26.047361, 27.307425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274414, 25.948124, 27.204395>,  <32.595596, 25.782726, 27.032681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274414, 25.948124, 27.204395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267458, 0.393697, -0.879471,
		-0.532665, -0.820991, -0.205529,
		-0.802954, 0.413493, 0.429289,
		32.033527, 26.072172, 27.333181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073090, 25.602509, 26.581545>,  <32.595596, 25.782726, 27.032681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073090, 25.602509, 26.581545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944532, 25.923531, 26.782585>,  <31.867397, 26.116144, 26.903210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.944532, 25.923531, 26.782585>,  <32.073090, 25.602509, 26.581545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944532, 25.923531, 26.782585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526772, 0.289528, -0.799178,
		-0.786902, -0.521609, 0.329711,
		-0.321398, 0.802557, 0.502599,
		31.848114, 26.164297, 26.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381931, 25.889484, 26.251722>,  <32.073090, 25.602509, 26.581545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381931, 25.889484, 26.251722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488937, 26.210991, 26.464287>,  <31.553141, 26.403894, 26.591825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488937, 26.210991, 26.464287>,  <31.381931, 25.889484, 26.251722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488937, 26.210991, 26.464287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279496, 0.592527, -0.755509,
		-0.922127, 0.053583, 0.383160,
		0.267515, 0.803766, 0.531409,
		31.569191, 26.452122, 26.623709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840475, 26.354340, 26.146944>,  <31.381931, 25.889484, 26.251722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840475, 26.354340, 26.146944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131170, 26.592522, 26.283932>,  <31.305588, 26.735432, 26.366125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.131170, 26.592522, 26.283932>,  <30.840475, 26.354340, 26.146944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131170, 26.592522, 26.283932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263070, 0.701815, -0.662004,
		-0.634543, 0.391011, 0.666683,
		0.726739, 0.595455, 0.342469,
		31.349192, 26.771158, 26.386673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.032127, 32.194206, 15.880681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.415459, 32.286434, 15.813224>,  <21.645458, 32.341770, 15.772750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.415459, 32.286434, 15.813224>,  <21.032127, 32.194206, 15.880681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415459, 32.286434, 15.813224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152783, 0.085121, 0.984587,
		0.241372, -0.969325, 0.046347,
		0.958330, 0.230570, -0.168643,
		21.702957, 32.355606, 15.762631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429773, 31.833765, 16.378487>,  <21.032127, 32.194206, 15.880681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429773, 31.833765, 16.378487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.685637, 32.111671, 16.246948>,  <21.839153, 32.278416, 16.168024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.685637, 32.111671, 16.246948>,  <21.429773, 31.833765, 16.378487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685637, 32.111671, 16.246948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266899, 0.200447, 0.942648,
		0.720836, -0.690741, -0.057215,
		0.639657, 0.694765, -0.328847,
		21.877533, 32.320103, 16.148294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.063835, 31.595116, 16.604527>,  <21.429773, 31.833765, 16.378487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.063835, 31.595116, 16.604527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.101660, 31.985916, 16.528080>,  <22.124353, 32.220398, 16.482212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.101660, 31.985916, 16.528080>,  <22.063835, 31.595116, 16.604527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101660, 31.985916, 16.528080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246626, 0.163004, 0.955303,
		0.964486, -0.137468, -0.225541,
		0.094559, 0.977002, -0.191118,
		22.130028, 32.279018, 16.470745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.665518, 31.826284, 16.886946>,  <22.063835, 31.595116, 16.604527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.665518, 31.826284, 16.886946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.408676, 32.130825, 16.851059>,  <22.254572, 32.313549, 16.829527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.408676, 32.130825, 16.851059>,  <22.665518, 31.826284, 16.886946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.408676, 32.130825, 16.851059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024965, 0.137732, 0.990155,
		0.766210, 0.633543, -0.107446,
		-0.642105, 0.761349, -0.089716,
		22.216045, 32.359230, 16.824144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.037735, 32.162197, 17.342815>,  <22.665518, 31.826284, 16.886946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.037735, 32.162197, 17.342815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.675003, 32.323811, 17.294785>,  <22.457365, 32.420780, 17.265966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.675003, 32.323811, 17.294785>,  <23.037735, 32.162197, 17.342815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.675003, 32.323811, 17.294785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024455, 0.334834, 0.941960,
		0.420791, 0.851259, -0.313517,
		-0.906828, 0.404036, -0.120078,
		22.402954, 32.445023, 17.258760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060755, 32.836800, 17.687624>,  <23.037735, 32.162197, 17.342815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060755, 32.836800, 17.687624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.665829, 32.784798, 17.651161>,  <22.428873, 32.753597, 17.629284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.665829, 32.784798, 17.651161>,  <23.060755, 32.836800, 17.687624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.665829, 32.784798, 17.651161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136155, 0.397814, 0.907307,
		-0.081693, 0.908208, -0.410468,
		-0.987314, -0.130008, -0.091158,
		22.369635, 32.745796, 17.623814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833231, 33.480247, 17.846806>,  <23.060755, 32.836800, 17.687624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833231, 33.480247, 17.846806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.510292, 33.251205, 17.903820>,  <22.316528, 33.113781, 17.938028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.510292, 33.251205, 17.903820>,  <22.833231, 33.480247, 17.846806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.510292, 33.251205, 17.903820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205852, 0.499688, 0.841390,
		-0.553007, 0.649952, -0.521293,
		-0.807347, -0.572603, 0.142537,
		22.268087, 33.079426, 17.946581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314552, 33.862865, 18.154236>,  <22.833231, 33.480247, 17.846806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314552, 33.862865, 18.154236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180075, 33.496864, 18.243443>,  <22.099388, 33.277264, 18.296967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.180075, 33.496864, 18.243443>,  <22.314552, 33.862865, 18.154236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.180075, 33.496864, 18.243443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146379, 0.284689, 0.947378,
		-0.930348, 0.285857, -0.229648,
		-0.336193, -0.915007, 0.223017,
		22.079216, 33.222363, 18.310347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731102, 33.912579, 18.616285>,  <22.314552, 33.862865, 18.154236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731102, 33.912579, 18.616285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.867050, 33.540031, 18.668491>,  <21.948620, 33.316502, 18.699814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.867050, 33.540031, 18.668491>,  <21.731102, 33.912579, 18.616285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.867050, 33.540031, 18.668491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054621, 0.158089, 0.985913,
		-0.938884, -0.327955, 0.104603,
		0.339872, -0.931372, 0.130514,
		21.969011, 33.260620, 18.707645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.322798, 33.592182, 19.006798>,  <21.731102, 33.912579, 18.616285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.322798, 33.592182, 19.006798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.662506, 33.388054, 19.060936>,  <21.866331, 33.265579, 19.093418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.662506, 33.388054, 19.060936>,  <21.322798, 33.592182, 19.006798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.662506, 33.388054, 19.060936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023773, 0.219132, 0.975406,
		-0.527426, -0.831599, 0.173970,
		0.849268, -0.510318, 0.135345,
		21.917286, 33.234959, 19.101540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.215757, 33.330753, 19.560734>,  <21.322798, 33.592182, 19.006798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.215757, 33.330753, 19.560734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.614895, 33.315773, 19.539188>,  <21.854378, 33.306786, 19.526262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.614895, 33.315773, 19.539188>,  <21.215757, 33.330753, 19.560734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614895, 33.315773, 19.539188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060657, 0.213936, 0.974963,
		-0.024994, -0.976129, 0.215747,
		0.997846, -0.037455, -0.053862,
		21.914249, 33.304535, 19.523029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374609, 32.952908, 20.059139>,  <21.215757, 33.330753, 19.560734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374609, 32.952908, 20.059139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.732344, 33.119949, 19.994934>,  <21.946985, 33.220173, 19.956411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.732344, 33.119949, 19.994934>,  <21.374609, 32.952908, 20.059139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732344, 33.119949, 19.994934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027390, 0.306996, 0.951316,
		0.446553, -0.855195, 0.263120,
		0.894338, 0.417606, -0.160514,
		22.000645, 33.245232, 19.946779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.738335, 32.817638, 20.766495>,  <21.374609, 32.952908, 20.059139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.738335, 32.817638, 20.766495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957701, 33.082813, 20.562630>,  <22.089319, 33.241920, 20.440311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957701, 33.082813, 20.562630>,  <21.738335, 32.817638, 20.766495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957701, 33.082813, 20.562630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250736, 0.451079, 0.856539,
		0.797731, -0.597528, 0.081155,
		0.548413, 0.662939, -0.509661,
		22.122225, 33.281696, 20.409731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.529222, 32.832657, 20.879871>,  <21.738335, 32.817638, 20.766495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.529222, 32.832657, 20.879871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406698, 33.200726, 20.782341>,  <22.333183, 33.421566, 20.723824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.406698, 33.200726, 20.782341>,  <22.529222, 32.832657, 20.879871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.406698, 33.200726, 20.782341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349458, 0.346951, 0.870347,
		0.885468, 0.181390, -0.427837,
		-0.306311, 0.920175, -0.243826,
		22.314804, 33.476780, 20.709192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.090231, 33.138687, 21.054291>,  <22.529222, 32.832657, 20.879871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.090231, 33.138687, 21.054291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.821766, 33.435188, 21.050442>,  <22.660686, 33.613087, 21.048132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.821766, 33.435188, 21.050442>,  <23.090231, 33.138687, 21.054291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821766, 33.435188, 21.050442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333321, 0.313348, 0.889219,
		0.662148, 0.593602, -0.457381,
		-0.671162, 0.741249, -0.009623,
		22.620417, 33.657562, 21.047554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.433691, 33.700054, 21.235826>,  <23.090231, 33.138687, 21.054291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.433691, 33.700054, 21.235826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.058519, 33.797176, 21.334888>,  <22.833416, 33.855450, 21.394325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.058519, 33.797176, 21.334888>,  <23.433691, 33.700054, 21.235826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058519, 33.797176, 21.334888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321381, 0.340002, 0.883806,
		0.130387, 0.908540, -0.396930,
		-0.937930, 0.242803, 0.247656,
		22.777140, 33.870018, 21.409185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.427588, 34.362480, 21.540964>,  <23.433691, 33.700054, 21.235826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.427588, 34.362480, 21.540964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075106, 34.242989, 21.687519>,  <22.863617, 34.171295, 21.775452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.075106, 34.242989, 21.687519>,  <23.427588, 34.362480, 21.540964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075106, 34.242989, 21.687519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293301, 0.262345, 0.919320,
		-0.370746, 0.917571, -0.143563,
		-0.881205, -0.298727, 0.366388,
		22.810743, 34.153370, 21.797436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.320642, 34.766262, 22.015814>,  <23.427588, 34.362480, 21.540964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.320642, 34.766262, 22.015814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.073244, 34.476479, 22.137550>,  <22.924805, 34.302608, 22.210592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.073244, 34.476479, 22.137550>,  <23.320642, 34.766262, 22.015814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.073244, 34.476479, 22.137550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103974, 0.308454, 0.945540,
		-0.778877, 0.616458, -0.115454,
		-0.618498, -0.724455, 0.304343,
		22.887695, 34.259144, 22.228853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922537, 35.024502, 22.621687>,  <23.320642, 34.766262, 22.015814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922537, 35.024502, 22.621687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.841600, 34.633335, 22.642639>,  <22.793039, 34.398636, 22.655210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.841600, 34.633335, 22.642639>,  <22.922537, 35.024502, 22.621687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841600, 34.633335, 22.642639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173835, 0.088505, 0.980790,
		-0.963763, 0.189348, -0.187904,
		-0.202341, -0.977914, 0.052382,
		22.780899, 34.339962, 22.658354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206598, 34.989105, 22.867170>,  <22.922537, 35.024502, 22.621687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206598, 34.989105, 22.867170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402039, 34.653519, 22.963005>,  <22.519302, 34.452168, 23.020506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.402039, 34.653519, 22.963005>,  <22.206598, 34.989105, 22.867170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.402039, 34.653519, 22.963005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245920, 0.131043, 0.960391,
		-0.837133, -0.528169, -0.142291,
		0.488602, -0.838967, 0.239588,
		22.548620, 34.401829, 23.034882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811153, 34.610142, 23.224974>,  <22.206598, 34.989105, 22.867170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811153, 34.610142, 23.224974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169296, 34.481800, 23.348518>,  <22.384182, 34.404797, 23.422646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.169296, 34.481800, 23.348518>,  <21.811153, 34.610142, 23.224974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.169296, 34.481800, 23.348518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266647, 0.169264, 0.948815,
		-0.356706, -0.931883, 0.065997,
		0.895355, -0.320849, 0.308861,
		22.437902, 34.385544, 23.441177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.597544, 35.169411, 23.552418>,  <21.811153, 34.610142, 23.224974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.597544, 35.169411, 23.552418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332420, 35.415955, 23.722496>,  <21.173347, 35.563881, 23.824543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.332420, 35.415955, 23.722496>,  <21.597544, 35.169411, 23.552418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332420, 35.415955, 23.722496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496982, 0.062634, -0.865498,
		-0.560087, -0.784972, 0.264804,
		-0.662806, 0.616357, 0.425197,
		21.133579, 35.600861, 23.850056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940948, 34.986744, 23.164568>,  <21.597544, 35.169411, 23.552418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940948, 34.986744, 23.164568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.891638, 35.360020, 23.299599>,  <20.862051, 35.583984, 23.380617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.891638, 35.360020, 23.299599>,  <20.940948, 34.986744, 23.164568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891638, 35.360020, 23.299599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525579, 0.227147, -0.819860,
		-0.841765, -0.278492, 0.462464,
		-0.123277, 0.933191, 0.337575,
		20.854654, 35.639977, 23.400871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211031, 35.189320, 22.983961>,  <20.940948, 34.986744, 23.164568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211031, 35.189320, 22.983961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437895, 35.511395, 23.053238>,  <20.574013, 35.704639, 23.094805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437895, 35.511395, 23.053238>,  <20.211031, 35.189320, 22.983961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437895, 35.511395, 23.053238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357769, 0.430270, -0.828776,
		-0.741842, 0.408087, 0.532104,
		0.567161, 0.805191, 0.173192,
		20.608044, 35.752953, 23.105196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699230, 35.749805, 22.868465>,  <20.211031, 35.189320, 22.983961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699230, 35.749805, 22.868465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.076580, 35.872051, 22.816868>,  <20.302990, 35.945400, 22.785910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.076580, 35.872051, 22.816868>,  <19.699230, 35.749805, 22.868465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076580, 35.872051, 22.816868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259154, 0.436253, -0.861698,
		-0.207074, 0.846335, 0.490752,
		0.943377, 0.305616, -0.128994,
		20.359592, 35.963737, 22.778170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572924, 36.430073, 22.547918>,  <19.699230, 35.749805, 22.868465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572924, 36.430073, 22.547918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.962929, 36.366158, 22.486183>,  <20.196932, 36.327808, 22.449142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.962929, 36.366158, 22.486183>,  <19.572924, 36.430073, 22.547918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962929, 36.366158, 22.486183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140534, 0.094420, -0.985563,
		0.172058, 0.982625, 0.069604,
		0.975011, -0.159793, -0.154338,
		20.255432, 36.318218, 22.439882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.858812, 36.919708, 22.134405>,  <19.572924, 36.430073, 22.547918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.858812, 36.919708, 22.134405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.133204, 36.634434, 22.076714>,  <20.297838, 36.463268, 22.042099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.133204, 36.634434, 22.076714>,  <19.858812, 36.919708, 22.134405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.133204, 36.634434, 22.076714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071944, 0.130766, -0.988800,
		0.724059, 0.688669, 0.038393,
		0.685976, -0.713187, -0.144228,
		20.338997, 36.420479, 22.033445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213387, 37.161942, 21.531672>,  <19.858812, 36.919708, 22.134405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213387, 37.161942, 21.531672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292955, 36.769943, 21.534016>,  <20.340696, 36.534744, 21.535423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292955, 36.769943, 21.534016>,  <20.213387, 37.161942, 21.531672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292955, 36.769943, 21.534016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039631, 0.002067, -0.999212,
		0.979214, 0.198998, 0.039250,
		0.198922, -0.979998, 0.005862,
		20.352633, 36.475945, 21.535774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736935, 37.026970, 21.038170>,  <20.213387, 37.161942, 21.531672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736935, 37.026970, 21.038170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.617144, 36.647434, 21.078194>,  <20.545269, 36.419712, 21.102207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.617144, 36.647434, 21.078194>,  <20.736935, 37.026970, 21.038170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617144, 36.647434, 21.078194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196725, -0.164028, -0.966641,
		0.933602, -0.269804, 0.235783,
		-0.299478, -0.948842, 0.100060,
		20.527300, 36.362782, 21.108212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084055, 36.656044, 20.516125>,  <20.736935, 37.026970, 21.038170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084055, 36.656044, 20.516125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819969, 36.374561, 20.621128>,  <20.661518, 36.205673, 20.684130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.819969, 36.374561, 20.621128>,  <21.084055, 36.656044, 20.516125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.819969, 36.374561, 20.621128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037507, -0.318184, -0.947287,
		0.750138, -0.635260, 0.183676,
		-0.660217, -0.703707, 0.262509,
		20.621904, 36.163448, 20.699881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.299423, 36.022316, 20.257635>,  <21.084055, 36.656044, 20.516125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.299423, 36.022316, 20.257635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.902647, 36.002052, 20.304089>,  <20.664581, 35.989895, 20.331961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.902647, 36.002052, 20.304089>,  <21.299423, 36.022316, 20.257635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.902647, 36.002052, 20.304089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098515, -0.268021, -0.958363,
		0.079678, -0.962080, 0.260870,
		-0.991941, -0.050660, 0.116134,
		20.605064, 35.986855, 20.338928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118847, 35.367134, 20.071754>,  <21.299423, 36.022316, 20.257635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118847, 35.367134, 20.071754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795942, 35.596603, 20.016281>,  <20.602200, 35.734283, 19.982996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.795942, 35.596603, 20.016281>,  <21.118847, 35.367134, 20.071754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795942, 35.596603, 20.016281> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058671, -0.155815, -0.986042,
		-0.587271, -0.804131, 0.092125,
		-0.807261, 0.573669, -0.138684,
		20.553764, 35.768703, 19.974676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.646963, 35.063400, 19.711739>,  <21.118847, 35.367134, 20.071754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.646963, 35.063400, 19.711739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523525, 35.438522, 19.648129>,  <20.449463, 35.663597, 19.609962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523525, 35.438522, 19.648129>,  <20.646963, 35.063400, 19.711739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523525, 35.438522, 19.648129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226889, -0.234931, -0.945161,
		-0.923738, -0.255590, 0.285276,
		-0.308594, 0.937806, -0.159025,
		20.430946, 35.719864, 19.600422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.089823, 35.025455, 19.085546>,  <20.646963, 35.063400, 19.711739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.089823, 35.025455, 19.085546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.161243, 35.418274, 19.109867>,  <20.204096, 35.653965, 19.124460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.161243, 35.418274, 19.109867>,  <20.089823, 35.025455, 19.085546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.161243, 35.418274, 19.109867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227905, 0.101393, -0.968390,
		-0.957172, 0.159049, 0.241918,
		0.178551, 0.982050, 0.060803,
		20.214809, 35.712891, 19.128107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515829, 35.335098, 18.786631>,  <20.089823, 35.025455, 19.085546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515829, 35.335098, 18.786631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822714, 35.590050, 18.757965>,  <20.006845, 35.743019, 18.740765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.822714, 35.590050, 18.757965>,  <19.515829, 35.335098, 18.786631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.822714, 35.590050, 18.757965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119213, 0.031918, -0.992356,
		-0.630216, 0.769891, 0.100472,
		0.767213, 0.637376, -0.071665,
		20.052877, 35.781261, 18.736465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208422, 35.875858, 18.447666>,  <19.515829, 35.335098, 18.786631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208422, 35.875858, 18.447666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.605438, 35.909351, 18.412228>,  <19.843649, 35.929447, 18.390965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.605438, 35.909351, 18.412228>,  <19.208422, 35.875858, 18.447666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605438, 35.909351, 18.412228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081716, -0.082300, -0.993252,
		-0.090464, 0.993084, -0.074844,
		0.992542, 0.083737, -0.088596,
		19.903200, 35.934471, 18.385649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244373, 36.319214, 17.850847>,  <19.208422, 35.875858, 18.447666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244373, 36.319214, 17.850847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.580959, 36.109035, 17.901192>,  <19.782911, 35.982929, 17.931398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.580959, 36.109035, 17.901192>,  <19.244373, 36.319214, 17.850847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580959, 36.109035, 17.901192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075569, -0.345099, -0.935519,
		0.535003, 0.777694, -0.330096,
		0.841464, -0.525450, 0.125860,
		19.833399, 35.951401, 17.938950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.487888, 36.368534, 17.226452>,  <19.244373, 36.319214, 17.850847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.487888, 36.368534, 17.226452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.704432, 36.074425, 17.389576>,  <19.834358, 35.897961, 17.487450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.704432, 36.074425, 17.389576>,  <19.487888, 36.368534, 17.226452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704432, 36.074425, 17.389576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173292, -0.377043, -0.909840,
		0.822739, 0.563221, -0.076699,
		0.541360, -0.735269, 0.407810,
		19.866840, 35.853844, 17.511919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.189644, 36.344044, 16.924902>,  <19.487888, 36.368534, 17.226452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.189644, 36.344044, 16.924902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.106169, 35.972961, 17.048717>,  <20.056084, 35.750313, 17.123007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.106169, 35.972961, 17.048717>,  <20.189644, 36.344044, 16.924902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106169, 35.972961, 17.048717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163995, -0.345222, -0.924082,
		0.964134, -0.142084, 0.224183,
		-0.208690, -0.927703, 0.309539,
		20.043562, 35.694649, 17.141579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808332, 35.830521, 16.769604>,  <20.189644, 36.344044, 16.924902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808332, 35.830521, 16.769604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.479944, 35.603081, 16.790382>,  <20.282911, 35.466618, 16.802849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.479944, 35.603081, 16.790382>,  <20.808332, 35.830521, 16.769604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.479944, 35.603081, 16.790382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316135, -0.528429, -0.787922,
		0.475466, -0.630438, 0.613580,
		-0.820969, -0.568604, 0.051946,
		20.233654, 35.432499, 16.805965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036329, 35.297379, 16.308369>,  <20.808332, 35.830521, 16.769604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036329, 35.297379, 16.308369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.644804, 35.228649, 16.352913>,  <20.409889, 35.187412, 16.379639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.644804, 35.228649, 16.352913>,  <21.036329, 35.297379, 16.308369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644804, 35.228649, 16.352913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008020, -0.575640, -0.817664,
		0.204595, -0.799447, 0.564823,
		-0.978814, -0.171820, 0.111361,
		20.351160, 35.177105, 16.386322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892956, 34.591396, 16.396233>,  <21.036329, 35.297379, 16.308369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892956, 34.591396, 16.396233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.549463, 34.736866, 16.251831>,  <20.343369, 34.824150, 16.165190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.549463, 34.736866, 16.251831>,  <20.892956, 34.591396, 16.396233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549463, 34.736866, 16.251831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043842, -0.649766, -0.758869,
		-0.510550, -0.667490, 0.542029,
		-0.858729, 0.363677, -0.361002,
		20.291845, 34.845970, 16.143530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.549505, 28.775572, 23.040789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781368, 29.060932, 23.198296>,  <27.920486, 29.232149, 23.292801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781368, 29.060932, 23.198296>,  <27.549505, 28.775572, 23.040789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781368, 29.060932, 23.198296> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103432, 0.543742, -0.832854,
		-0.808270, 0.442042, 0.388973,
		0.579657, 0.713403, 0.393769,
		27.955265, 29.274954, 23.316425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120054, 29.409950, 23.159971>,  <27.549505, 28.775572, 23.040789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120054, 29.409950, 23.159971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506163, 29.500519, 23.107841>,  <27.737827, 29.554859, 23.076565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506163, 29.500519, 23.107841>,  <27.120054, 29.409950, 23.159971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506163, 29.500519, 23.107841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260481, 0.872340, -0.413731,
		0.020007, 0.433309, 0.901023,
		0.965272, 0.226422, -0.130322,
		27.795744, 29.568445, 23.068745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989080, 30.169565, 23.054222>,  <27.120054, 29.409950, 23.159971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989080, 30.169565, 23.054222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385164, 30.150368, 23.001797>,  <27.622814, 30.138849, 22.970341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385164, 30.150368, 23.001797>,  <26.989080, 30.169565, 23.054222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385164, 30.150368, 23.001797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046044, 0.774127, -0.631354,
		0.131762, 0.631209, 0.764339,
		0.990212, -0.047995, -0.131064,
		27.682228, 30.135969, 22.962477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.241064, 30.800755, 23.128286>,  <26.989080, 30.169565, 23.054222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.241064, 30.800755, 23.128286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538031, 30.628937, 22.922642>,  <27.716209, 30.525846, 22.799255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538031, 30.628937, 22.922642>,  <27.241064, 30.800755, 23.128286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538031, 30.628937, 22.922642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068720, 0.714523, -0.696228,
		0.666407, 0.552220, 0.500955,
		0.742415, -0.429546, -0.514111,
		27.760756, 30.500072, 22.768408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864937, 31.264593, 23.102427>,  <27.241064, 30.800755, 23.128286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864937, 31.264593, 23.102427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840481, 31.024811, 22.783199>,  <27.825808, 30.880941, 22.591663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840481, 31.024811, 22.783199>,  <27.864937, 31.264593, 23.102427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840481, 31.024811, 22.783199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099537, 0.791917, -0.602462,
		0.993154, -0.116273, 0.011249,
		-0.061142, -0.599456, -0.798069,
		27.822138, 30.844975, 22.543779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232103, 31.689312, 22.602591>,  <27.864937, 31.264593, 23.102427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232103, 31.689312, 22.602591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039755, 31.400131, 22.404156>,  <27.924345, 31.226624, 22.285095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039755, 31.400131, 22.404156>,  <28.232103, 31.689312, 22.602591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.039755, 31.400131, 22.404156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031061, 0.579491, -0.814386,
		0.876241, -0.376206, -0.301116,
		-0.480871, -0.722952, -0.496089,
		27.895493, 31.183247, 22.255329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627951, 31.716261, 21.968941>,  <28.232103, 31.689312, 22.602591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627951, 31.716261, 21.968941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285387, 31.525669, 21.889412>,  <28.079849, 31.411314, 21.841694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285387, 31.525669, 21.889412>,  <28.627951, 31.716261, 21.968941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285387, 31.525669, 21.889412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006217, 0.394582, -0.918840,
		0.516262, -0.785666, -0.340886,
		-0.856408, -0.476482, -0.198823,
		28.028465, 31.382725, 21.829765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722370, 31.456692, 21.283859>,  <28.627951, 31.716261, 21.968941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722370, 31.456692, 21.283859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323799, 31.434395, 21.309238>,  <28.084656, 31.421017, 21.324467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323799, 31.434395, 21.309238>,  <28.722370, 31.456692, 21.283859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.323799, 31.434395, 21.309238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083161, 0.516469, -0.852258,
		0.014740, -0.854489, -0.519260,
		-0.996427, -0.055744, 0.063447,
		28.024872, 31.417671, 21.328272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356310, 31.223721, 20.545971>,  <28.722370, 31.456692, 21.283859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356310, 31.223721, 20.545971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116777, 31.445610, 20.777031>,  <27.973057, 31.578743, 20.915667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116777, 31.445610, 20.777031>,  <28.356310, 31.223721, 20.545971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116777, 31.445610, 20.777031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008544, 0.716811, -0.697215,
		-0.800829, -0.422450, -0.424510,
		-0.598832, 0.554723, 0.577652,
		27.937128, 31.612026, 20.950327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925083, 31.598734, 20.098549>,  <28.356310, 31.223721, 20.545971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925083, 31.598734, 20.098549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856070, 31.794804, 20.440300>,  <27.814661, 31.912445, 20.645351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856070, 31.794804, 20.440300>,  <27.925083, 31.598734, 20.098549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856070, 31.794804, 20.440300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409287, 0.753284, -0.514828,
		-0.895944, -0.438511, 0.070655,
		-0.172535, 0.490175, 0.854377,
		27.804310, 31.941856, 20.696613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187204, 31.891943, 20.057985>,  <27.925083, 31.598734, 20.098549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187204, 31.891943, 20.057985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417198, 32.097099, 20.312962>,  <27.555195, 32.220192, 20.465948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417198, 32.097099, 20.312962>,  <27.187204, 31.891943, 20.057985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417198, 32.097099, 20.312962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184363, 0.840298, -0.509813,
		-0.797122, 0.175614, 0.577717,
		0.574985, 0.512893, 0.637443,
		27.589693, 32.250969, 20.504194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784369, 32.469181, 20.226423>,  <27.187204, 31.891943, 20.057985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784369, 32.469181, 20.226423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161856, 32.573956, 20.307205>,  <27.388348, 32.636822, 20.355675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.161856, 32.573956, 20.307205>,  <26.784369, 32.469181, 20.226423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161856, 32.573956, 20.307205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200954, 0.939056, -0.278913,
		-0.262702, 0.222632, 0.938841,
		0.943719, 0.261935, 0.201953,
		27.444971, 32.652534, 20.367790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742981, 32.985607, 20.703360>,  <26.784369, 32.469181, 20.226423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742981, 32.985607, 20.703360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065636, 33.004200, 20.467674>,  <27.259230, 33.015354, 20.326263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065636, 33.004200, 20.467674>,  <26.742981, 32.985607, 20.703360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065636, 33.004200, 20.467674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270800, 0.915173, -0.298538,
		0.525358, 0.400372, 0.750801,
		0.806639, 0.046477, -0.589215,
		27.307627, 33.018143, 20.290911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175133, 33.504436, 20.944796>,  <26.742981, 32.985607, 20.703360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175133, 33.504436, 20.944796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190750, 33.488400, 20.545422>,  <27.200121, 33.478779, 20.305798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190750, 33.488400, 20.545422>,  <27.175133, 33.504436, 20.944796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.190750, 33.488400, 20.545422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052607, 0.997727, -0.042119,
		0.997852, 0.054170, 0.036844,
		0.039042, -0.040090, -0.998433,
		27.202463, 33.476372, 20.245892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601883, 33.547218, 21.576231>,  <27.175133, 33.504436, 20.944796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601883, 33.547218, 21.576231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362015, 33.421543, 21.870628>,  <27.218094, 33.346138, 22.047266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362015, 33.421543, 21.870628>,  <27.601883, 33.547218, 21.576231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362015, 33.421543, 21.870628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437126, 0.641769, 0.630122,
		-0.670313, 0.699585, -0.247510,
		-0.599668, -0.314185, 0.735993,
		27.182114, 33.327286, 22.091427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394382, 34.093311, 21.971146>,  <27.601883, 33.547218, 21.576231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394382, 34.093311, 21.971146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308868, 33.828247, 22.258247>,  <27.257559, 33.669209, 22.430508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.308868, 33.828247, 22.258247>,  <27.394382, 34.093311, 21.971146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308868, 33.828247, 22.258247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585144, 0.501481, 0.637278,
		-0.782242, 0.556231, 0.280544,
		-0.213786, -0.662664, 0.717755,
		27.244732, 33.629448, 22.473574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.209797, 34.526115, 22.560894>,  <27.394382, 34.093311, 21.971146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.209797, 34.526115, 22.560894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297972, 34.168835, 22.717659>,  <27.350876, 33.954468, 22.811718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297972, 34.168835, 22.717659>,  <27.209797, 34.526115, 22.560894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.297972, 34.168835, 22.717659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552997, 0.445426, 0.704123,
		-0.803493, 0.061511, 0.592128,
		0.220438, -0.893203, 0.391912,
		27.364103, 33.900875, 22.835232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985401, 34.534473, 23.328064>,  <27.209797, 34.526115, 22.560894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985401, 34.534473, 23.328064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233969, 34.222267, 23.300827>,  <27.383110, 34.034943, 23.284485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233969, 34.222267, 23.300827>,  <26.985401, 34.534473, 23.328064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233969, 34.222267, 23.300827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363763, 0.210457, 0.907405,
		-0.693911, -0.588649, 0.414704,
		0.621421, -0.780513, -0.068090,
		27.420395, 33.988113, 23.280399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022472, 34.311241, 24.038237>,  <26.985401, 34.534473, 23.328064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022472, 34.311241, 24.038237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347008, 34.163628, 23.856892>,  <27.541729, 34.075058, 23.748085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347008, 34.163628, 23.856892>,  <27.022472, 34.311241, 24.038237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347008, 34.163628, 23.856892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536602, 0.162485, 0.828044,
		-0.231916, -0.915100, 0.329858,
		0.811340, -0.369039, -0.453361,
		27.590410, 34.052917, 23.720882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380419, 33.851025, 24.501129>,  <27.022472, 34.311241, 24.038237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380419, 33.851025, 24.501129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676048, 33.939056, 24.246464>,  <27.853426, 33.991875, 24.093666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676048, 33.939056, 24.246464>,  <27.380419, 33.851025, 24.501129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.676048, 33.939056, 24.246464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658703, -0.038279, 0.751429,
		0.141000, -0.974732, -0.173254,
		0.739074, 0.220074, -0.636661,
		27.897770, 34.005077, 24.055466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886570, 33.696327, 24.826498>,  <27.380419, 33.851025, 24.501129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886570, 33.696327, 24.826498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105846, 33.839787, 24.524277>,  <28.237411, 33.925861, 24.342945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105846, 33.839787, 24.524277>,  <27.886570, 33.696327, 24.826498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105846, 33.839787, 24.524277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816561, -0.034141, 0.576249,
		0.180877, -0.932847, -0.311576,
		0.548189, 0.358651, -0.755551,
		28.270304, 33.947380, 24.297611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503080, 33.342297, 24.890434>,  <27.886570, 33.696327, 24.826498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503080, 33.342297, 24.890434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605467, 33.660709, 24.671047>,  <28.666899, 33.851757, 24.539415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605467, 33.660709, 24.671047>,  <28.503080, 33.342297, 24.890434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605467, 33.660709, 24.671047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897406, 0.015245, 0.440942,
		0.359365, -0.605066, -0.710459,
		0.255968, 0.796029, -0.548469,
		28.682257, 33.899517, 24.506506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121828, 33.065800, 24.521294>,  <28.503080, 33.342297, 24.890434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121828, 33.065800, 24.521294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097849, 33.459908, 24.585346>,  <29.083462, 33.696373, 24.623777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097849, 33.459908, 24.585346>,  <29.121828, 33.065800, 24.521294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097849, 33.459908, 24.585346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873054, -0.026018, 0.486930,
		0.483925, 0.168992, -0.858637,
		-0.059947, 0.985274, 0.160130,
		29.079865, 33.755489, 24.633385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754833, 33.296104, 24.563713>,  <29.121828, 33.065800, 24.521294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754833, 33.296104, 24.563713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612368, 33.646667, 24.693359>,  <29.526888, 33.857006, 24.771147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612368, 33.646667, 24.693359>,  <29.754833, 33.296104, 24.563713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612368, 33.646667, 24.693359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754722, 0.065297, 0.652787,
		0.550947, 0.477116, -0.684703,
		-0.356164, 0.876411, 0.324114,
		29.505518, 33.909592, 24.790594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273146, 33.770283, 24.447573>,  <29.754833, 33.296104, 24.563713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273146, 33.770283, 24.447573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056505, 33.944565, 24.735134>,  <29.926521, 34.049133, 24.907671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056505, 33.944565, 24.735134>,  <30.273146, 33.770283, 24.447573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056505, 33.944565, 24.735134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810753, 0.044752, 0.583675,
		0.222139, 0.898975, -0.377490,
		-0.541602, 0.435708, 0.718905,
		29.894024, 34.075279, 24.950806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599314, 34.252136, 24.683167>,  <30.273146, 33.770283, 24.447573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599314, 34.252136, 24.683167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355135, 34.207752, 24.996864>,  <30.208628, 34.181122, 25.185083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355135, 34.207752, 24.996864>,  <30.599314, 34.252136, 24.683167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355135, 34.207752, 24.996864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791467, -0.123626, 0.598579,
		0.030533, 0.986106, 0.163290,
		-0.610449, -0.110962, 0.784244,
		30.172001, 34.174465, 25.232138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687975, 34.865089, 25.254225>,  <30.599314, 34.252136, 24.683167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687975, 34.865089, 25.254225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554649, 34.520630, 25.407761>,  <30.474653, 34.313953, 25.499882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554649, 34.520630, 25.407761>,  <30.687975, 34.865089, 25.254225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554649, 34.520630, 25.407761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753936, 0.001004, 0.656947,
		-0.566112, 0.508359, 0.648913,
		-0.333314, -0.861144, 0.383839,
		30.454655, 34.262287, 25.522913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789772, 34.970348, 25.987598>,  <30.687975, 34.865089, 25.254225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789772, 34.970348, 25.987598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751369, 34.576733, 25.927654>,  <30.728329, 34.340565, 25.891687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751369, 34.576733, 25.927654>,  <30.789772, 34.970348, 25.987598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751369, 34.576733, 25.927654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866986, -0.156632, 0.473077,
		-0.488997, -0.084506, 0.868182,
		-0.096007, -0.984035, -0.149858,
		30.722567, 34.281521, 25.882696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041660, 34.887054, 26.783123>,  <30.789772, 34.970348, 25.987598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041660, 34.887054, 26.783123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320501, 34.937897, 27.065369>,  <31.487806, 34.968403, 27.234716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320501, 34.937897, 27.065369>,  <31.041660, 34.887054, 26.783123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320501, 34.937897, 27.065369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336033, 0.811453, -0.478148,
		-0.633348, 0.570428, 0.522955,
		0.697103, 0.127104, 0.705615,
		31.529633, 34.976028, 27.277054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018301, 35.561718, 26.999706>,  <31.041660, 34.887054, 26.783123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018301, 35.561718, 26.999706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389839, 35.423141, 27.052204>,  <31.612762, 35.339996, 27.083704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389839, 35.423141, 27.052204>,  <31.018301, 35.561718, 26.999706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389839, 35.423141, 27.052204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368407, 0.826470, -0.425705,
		0.039009, 0.443766, 0.895293,
		0.928846, -0.346438, 0.131247,
		31.668493, 35.319210, 27.091578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392891, 36.189930, 27.218256>,  <31.018301, 35.561718, 26.999706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392891, 36.189930, 27.218256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669941, 35.916378, 27.126530>,  <31.836170, 35.752247, 27.071493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669941, 35.916378, 27.126530>,  <31.392891, 36.189930, 27.218256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669941, 35.916378, 27.126530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388232, 0.621396, -0.680546,
		0.607905, 0.382335, 0.695896,
		0.692624, -0.683876, -0.229315,
		31.877728, 35.711216, 27.057735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081696, 36.555542, 27.322271>,  <31.392891, 36.189930, 27.218256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081696, 36.555542, 27.322271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132420, 36.237698, 27.084782>,  <32.162853, 36.046989, 26.942287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132420, 36.237698, 27.084782>,  <32.081696, 36.555542, 27.322271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132420, 36.237698, 27.084782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532146, 0.559632, -0.635321,
		0.837102, -0.235381, 0.493818,
		0.126814, -0.794612, -0.593726,
		32.170464, 35.999313, 26.906664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772438, 36.628109, 27.150105>,  <32.081696, 36.555542, 27.322271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772438, 36.628109, 27.150105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690147, 36.342579, 26.882336>,  <32.640774, 36.171261, 26.721674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690147, 36.342579, 26.882336>,  <32.772438, 36.628109, 27.150105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690147, 36.342579, 26.882336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726435, 0.346961, -0.593220,
		0.655720, -0.608333, 0.447170,
		-0.205725, -0.713827, -0.669424,
		32.628429, 36.128429, 26.681509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418858, 36.382290, 26.846508>,  <32.772438, 36.628109, 27.150105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418858, 36.382290, 26.846508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130760, 36.316860, 26.576843>,  <32.957901, 36.277603, 26.415045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130760, 36.316860, 26.576843>,  <33.418858, 36.382290, 26.846508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130760, 36.316860, 26.576843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577475, 0.397135, -0.713306,
		0.384399, -0.903068, -0.191586,
		-0.720249, -0.163558, -0.674158,
		32.914688, 36.267788, 26.374596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607147, 35.889095, 26.281101>,  <33.418858, 36.382290, 26.846508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607147, 35.889095, 26.281101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316467, 36.128117, 26.145550>,  <33.142059, 36.271530, 26.064219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316467, 36.128117, 26.145550>,  <33.607147, 35.889095, 26.281101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316467, 36.128117, 26.145550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616432, 0.349512, -0.705587,
		-0.303186, -0.721644, -0.622342,
		-0.726698, 0.597555, -0.338877,
		33.098457, 36.307384, 26.043886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591572, 35.749603, 25.601774>,  <33.607147, 35.889095, 26.281101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591572, 35.749603, 25.601774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396172, 36.097565, 25.629013>,  <33.278931, 36.306343, 25.645357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396172, 36.097565, 25.629013>,  <33.591572, 35.749603, 25.601774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396172, 36.097565, 25.629013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487761, 0.336947, -0.805330,
		-0.723504, -0.360188, -0.588903,
		-0.488499, 0.869903, 0.068097,
		33.249622, 36.358536, 25.649443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343502, 35.854073, 24.997961>,  <33.591572, 35.749603, 25.601774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343502, 35.854073, 24.997961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318996, 36.228546, 25.136414>,  <33.304295, 36.453232, 25.219486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318996, 36.228546, 25.136414>,  <33.343502, 35.854073, 24.997961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318996, 36.228546, 25.136414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537537, 0.323144, -0.778866,
		-0.841012, 0.138344, -0.523030,
		-0.061262, 0.936183, 0.346133,
		33.300617, 36.509399, 25.240253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202618, 36.299374, 24.471521>,  <33.343502, 35.854073, 24.997961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202618, 36.299374, 24.471521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327785, 36.565044, 24.743095>,  <33.402885, 36.724445, 24.906040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327785, 36.565044, 24.743095>,  <33.202618, 36.299374, 24.471521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327785, 36.565044, 24.743095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540233, 0.463470, -0.702385,
		-0.781173, 0.586571, -0.213782,
		0.312917, 0.664176, 0.678935,
		33.421661, 36.764297, 24.946775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999531, 37.016422, 24.239189>,  <33.202618, 36.299374, 24.471521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999531, 37.016422, 24.239189> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324959, 37.026402, 24.471561>,  <33.520214, 37.032391, 24.610985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324959, 37.026402, 24.471561>,  <32.999531, 37.016422, 24.239189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324959, 37.026402, 24.471561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466919, 0.567394, -0.678270,
		-0.346538, 0.823069, 0.449966,
		0.813571, 0.024949, 0.580930,
		33.569031, 37.033886, 24.645840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149647, 37.658829, 24.192936>,  <32.999531, 37.016422, 24.239189>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149647, 37.658829, 24.192936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473049, 37.449219, 24.300064>,  <33.667091, 37.323452, 24.364340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473049, 37.449219, 24.300064>,  <33.149647, 37.658829, 24.192936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473049, 37.449219, 24.300064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569223, 0.580846, -0.581897,
		0.149364, 0.622913, 0.767899,
		0.808502, -0.524020, 0.267819,
		33.715599, 37.292011, 24.380409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.896950, 33.096127, 30.439501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284327, 33.029736, 30.513870>,  <31.516752, 32.989902, 30.558491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284327, 33.029736, 30.513870>,  <30.896950, 33.096127, 30.439501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284327, 33.029736, 30.513870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245053, 0.770146, -0.588917,
		-0.045439, 0.615894, 0.786517,
		0.968444, -0.165979, 0.185922,
		31.574860, 32.979942, 30.569647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261501, 33.702957, 30.794773>,  <30.896950, 33.096127, 30.439501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261501, 33.702957, 30.794773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.526012, 33.486301, 30.587181>,  <31.684719, 33.356308, 30.462626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.526012, 33.486301, 30.587181>,  <31.261501, 33.702957, 30.794773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526012, 33.486301, 30.587181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120984, 0.759792, -0.638810,
		0.740319, 0.359644, 0.567964,
		0.661279, -0.541638, -0.518978,
		31.724396, 33.323811, 30.431488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664068, 34.164742, 30.495663>,  <31.261501, 33.702957, 30.794773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664068, 34.164742, 30.495663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.775110, 33.854321, 30.269150>,  <31.841736, 33.668068, 30.133242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.775110, 33.854321, 30.269150>,  <31.664068, 34.164742, 30.495663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775110, 33.854321, 30.269150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107146, 0.610784, -0.784514,
		0.954702, 0.157110, 0.252707,
		0.277605, -0.776053, -0.566283,
		31.858391, 33.621506, 30.099264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170597, 34.438110, 30.065420>,  <31.664068, 34.164742, 30.495663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170597, 34.438110, 30.065420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.030048, 34.108997, 29.886730>,  <31.945721, 33.911530, 29.779516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.030048, 34.108997, 29.886730>,  <32.170597, 34.438110, 30.065420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030048, 34.108997, 29.886730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039154, 0.489646, -0.871042,
		0.935418, -0.288566, -0.204262,
		-0.351369, -0.822786, -0.446725,
		31.924637, 33.862160, 29.752712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644894, 34.232803, 29.420830>,  <32.170597, 34.438110, 30.065420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644894, 34.232803, 29.420830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.278885, 34.089806, 29.346069>,  <32.059280, 34.004005, 29.301212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.278885, 34.089806, 29.346069>,  <32.644894, 34.232803, 29.420830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278885, 34.089806, 29.346069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065302, 0.325934, -0.943135,
		0.398088, -0.875192, -0.274891,
		-0.915020, -0.357500, -0.186902,
		32.004379, 33.982555, 29.289999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673763, 34.219643, 28.724134>,  <32.644894, 34.232803, 29.420830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673763, 34.219643, 28.724134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.283833, 34.143879, 28.771202>,  <32.049873, 34.098423, 28.799442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.283833, 34.143879, 28.771202>,  <32.673763, 34.219643, 28.724134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283833, 34.143879, 28.771202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166835, 0.269420, -0.948461,
		0.147939, -0.944214, -0.294236,
		-0.974823, -0.189404, 0.117670,
		31.991386, 34.087059, 28.806503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461891, 33.740799, 28.195351>,  <32.673763, 34.219643, 28.724134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461891, 33.740799, 28.195351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.134972, 33.938778, 28.313370>,  <31.938820, 34.057564, 28.384182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.134972, 33.938778, 28.313370>,  <32.461891, 33.740799, 28.195351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134972, 33.938778, 28.313370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160737, 0.295888, -0.941602,
		-0.553341, -0.816995, -0.162273,
		-0.817298, 0.494944, 0.295048,
		31.889782, 34.087261, 28.401884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947550, 33.600964, 27.676483>,  <32.461891, 33.740799, 28.195351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947550, 33.600964, 27.676483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.850077, 33.943180, 27.859207>,  <31.791594, 34.148510, 27.968842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.850077, 33.943180, 27.859207>,  <31.947550, 33.600964, 27.676483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850077, 33.943180, 27.859207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091667, 0.448582, -0.889028,
		-0.965514, -0.258514, -0.030887,
		-0.243682, 0.855538, 0.456809,
		31.776972, 34.199841, 27.996250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745783, 33.866440, 27.227648>,  <31.947550, 33.600964, 27.676483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745783, 33.866440, 27.227648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724291, 34.201176, 27.445572>,  <31.711395, 34.402016, 27.576326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.724291, 34.201176, 27.445572>,  <31.745783, 33.866440, 27.227648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724291, 34.201176, 27.445572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171702, 0.529729, -0.830605,
		-0.983682, -0.138175, 0.115223,
		-0.053732, 0.836836, 0.544810,
		31.708172, 34.452225, 27.609015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033558, 33.848141, 27.122278>,  <31.745783, 33.866440, 27.227648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033558, 33.848141, 27.122278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.005590, 33.595039, 26.813801>,  <30.988810, 33.443180, 26.628716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.005590, 33.595039, 26.813801>,  <31.033558, 33.848141, 27.122278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005590, 33.595039, 26.813801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033609, -0.774139, 0.632122,
		-0.996987, 0.018278, 0.075392,
		-0.069917, -0.632751, -0.771192,
		30.984615, 33.405212, 26.582443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500692, 33.297226, 27.291483>,  <31.033558, 33.848141, 27.122278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500692, 33.297226, 27.291483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.712389, 33.116451, 27.004246>,  <30.839407, 33.007988, 26.831903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.712389, 33.116451, 27.004246>,  <30.500692, 33.297226, 27.291483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712389, 33.116451, 27.004246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032958, -0.856651, 0.514843,
		-0.847824, -0.248814, -0.468279,
		0.529252, -0.451930, -0.718089,
		30.871162, 32.980873, 26.788818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189619, 32.690361, 27.287962>,  <30.500692, 33.297226, 27.291483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189619, 32.690361, 27.287962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.537912, 32.619640, 27.104412>,  <30.746889, 32.577209, 26.994282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.537912, 32.619640, 27.104412>,  <30.189619, 32.690361, 27.287962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537912, 32.619640, 27.104412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073165, -0.876173, 0.476411,
		-0.486281, -0.448401, -0.749978,
		0.870734, -0.176798, -0.458874,
		30.799133, 32.566601, 26.966749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025368, 32.082012, 26.911015>,  <30.189619, 32.690361, 27.287962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025368, 32.082012, 26.911015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423243, 32.118969, 26.929192>,  <30.661966, 32.141144, 26.940098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423243, 32.118969, 26.929192>,  <30.025368, 32.082012, 26.911015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423243, 32.118969, 26.929192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085274, -0.986570, 0.139313,
		0.057705, -0.134698, -0.989205,
		0.994685, 0.092393, 0.045444,
		30.721647, 32.146687, 26.942825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220455, 31.444931, 26.646801>,  <30.025368, 32.082012, 26.911015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220455, 31.444931, 26.646801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.533773, 31.588688, 26.849693>,  <30.721766, 31.674942, 26.971428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.533773, 31.588688, 26.849693>,  <30.220455, 31.444931, 26.646801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.533773, 31.588688, 26.849693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074282, -0.864212, 0.497615,
		0.617193, -0.352102, -0.703631,
		0.783297, 0.359392, 0.507231,
		30.768763, 31.696505, 27.001862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670160, 30.891315, 26.675116>,  <30.220455, 31.444931, 26.646801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670160, 30.891315, 26.675116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.775524, 31.124493, 26.982567>,  <30.838743, 31.264399, 27.167038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.775524, 31.124493, 26.982567>,  <30.670160, 30.891315, 26.675116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775524, 31.124493, 26.982567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047740, -0.803670, 0.593158,
		0.963502, -0.119549, -0.239524,
		0.263409, 0.582944, 0.768630,
		30.854548, 31.299376, 27.213156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303789, 30.671997, 26.923012>,  <30.670160, 30.891315, 26.675116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303789, 30.671997, 26.923012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.100344, 30.862041, 27.210228>,  <30.978277, 30.976068, 27.382557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.100344, 30.862041, 27.210228>,  <31.303789, 30.671997, 26.923012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100344, 30.862041, 27.210228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006750, -0.831740, 0.555124,
		0.860968, 0.287190, 0.419828,
		-0.508614, 0.475110, 0.718041,
		30.947760, 31.004574, 27.425640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630198, 30.429163, 27.420422>,  <31.303789, 30.671997, 26.923012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630198, 30.429163, 27.420422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284317, 30.563992, 27.569378>,  <31.076788, 30.644888, 27.658752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.284317, 30.563992, 27.569378>,  <31.630198, 30.429163, 27.420422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284317, 30.563992, 27.569378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128408, -0.568410, 0.812663,
		0.485597, 0.750528, 0.448222,
		-0.864701, 0.337071, 0.372392,
		31.024906, 30.665113, 27.681095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766794, 30.541864, 28.101973>,  <31.630198, 30.429163, 27.420422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766794, 30.541864, 28.101973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.374447, 30.471970, 28.067642>,  <31.139038, 30.430033, 28.047045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.374447, 30.471970, 28.067642>,  <31.766794, 30.541864, 28.101973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374447, 30.471970, 28.067642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049010, -0.648300, 0.759805,
		-0.188406, 0.741062, 0.644461,
		-0.980867, -0.174737, -0.085824,
		31.080187, 30.419548, 28.041895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565613, 30.363916, 28.690130>,  <31.766794, 30.541864, 28.101973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565613, 30.363916, 28.690130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.214132, 30.222790, 28.561504>,  <31.003244, 30.138115, 28.484329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.214132, 30.222790, 28.561504>,  <31.565613, 30.363916, 28.690130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214132, 30.222790, 28.561504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047854, -0.735327, 0.676021,
		-0.474966, 0.578633, 0.663017,
		-0.878702, -0.352815, -0.321565,
		30.950521, 30.116945, 28.465034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281311, 30.012112, 29.219933>,  <31.565613, 30.363916, 28.690130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281311, 30.012112, 29.219933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017694, 29.864471, 28.957809>,  <30.859524, 29.775887, 28.800535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.017694, 29.864471, 28.957809>,  <31.281311, 30.012112, 29.219933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017694, 29.864471, 28.957809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175931, -0.771469, 0.611461,
		-0.731241, 0.518267, 0.443493,
		-0.659041, -0.369101, -0.655309,
		30.819983, 29.753740, 28.761217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566408, 30.002775, 29.537224>,  <31.281311, 30.012112, 29.219933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566408, 30.002775, 29.537224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.640818, 29.725975, 29.258217>,  <30.685463, 29.559895, 29.090813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.640818, 29.725975, 29.258217>,  <30.566408, 30.002775, 29.537224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640818, 29.725975, 29.258217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538404, -0.665629, 0.516778,
		-0.821898, 0.279412, -0.496400,
		0.186024, -0.692002, -0.697515,
		30.696625, 29.518373, 29.048962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038834, 29.547983, 29.544781>,  <30.566408, 30.002775, 29.537224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038834, 29.547983, 29.544781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.302227, 29.314991, 29.354153>,  <30.460262, 29.175196, 29.239777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.302227, 29.314991, 29.354153>,  <30.038834, 29.547983, 29.544781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302227, 29.314991, 29.354153> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223969, -0.756211, 0.614803,
		-0.718493, -0.298104, -0.628412,
		0.658487, -0.582476, -0.476567,
		30.499771, 29.140247, 29.211182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684195, 29.004509, 29.368586>,  <30.038834, 29.547983, 29.544781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684195, 29.004509, 29.368586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.067652, 28.890724, 29.364937>,  <30.297726, 28.822453, 29.362747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.067652, 28.890724, 29.364937>,  <29.684195, 29.004509, 29.368586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067652, 28.890724, 29.364937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182863, -0.640174, 0.746149,
		-0.218090, -0.713624, -0.665716,
		0.958644, -0.284463, -0.009120,
		30.355246, 28.805386, 29.362202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.924274, 28.077869, 27.709223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586987, 28.110485, 27.921764>,  <34.384613, 28.130054, 28.049290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.586987, 28.110485, 27.921764>,  <34.924274, 28.077869, 27.709223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586987, 28.110485, 27.921764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415000, 0.529549, -0.739833,
		-0.341705, -0.844351, -0.412685,
		-0.843216, 0.081540, 0.531355,
		34.334023, 28.134947, 28.081171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456039, 28.026360, 27.307095>,  <34.924274, 28.077869, 27.709223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456039, 28.026360, 27.307095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199181, 28.196419, 27.562248>,  <34.045067, 28.298454, 27.715340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.199181, 28.196419, 27.562248>,  <34.456039, 28.026360, 27.307095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199181, 28.196419, 27.562248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477089, 0.429676, -0.766658,
		-0.600026, -0.796635, -0.073083,
		-0.642148, 0.425148, 0.637883,
		34.006535, 28.323963, 27.753613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696568, 27.981089, 27.101139>,  <34.456039, 28.026360, 27.307095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696568, 27.981089, 27.101139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711555, 28.281483, 27.364841>,  <33.720547, 28.461720, 27.523064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.711555, 28.281483, 27.364841>,  <33.696568, 27.981089, 27.101139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711555, 28.281483, 27.364841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386041, 0.619380, -0.683623,
		-0.921720, -0.228887, 0.313117,
		0.037466, 0.750985, 0.659255,
		33.722794, 28.506779, 27.562618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087547, 28.157230, 26.956940>,  <33.696568, 27.981089, 27.101139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087547, 28.157230, 26.956940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309467, 28.441261, 27.130371>,  <33.442619, 28.611679, 27.234430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.309467, 28.441261, 27.130371>,  <33.087547, 28.157230, 26.956940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309467, 28.441261, 27.130371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304835, 0.658387, -0.688188,
		-0.774126, 0.249638, 0.581729,
		0.554801, 0.710076, 0.433576,
		33.475906, 28.654284, 27.260445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677696, 28.709974, 26.912600>,  <33.087547, 28.157230, 26.956940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677696, 28.709974, 26.912600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051590, 28.843269, 26.961960>,  <33.275925, 28.923246, 26.991575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.051590, 28.843269, 26.961960>,  <32.677696, 28.709974, 26.912600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051590, 28.843269, 26.961960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194938, 0.771207, -0.606002,
		-0.297111, 0.542394, 0.785833,
		0.934732, 0.333239, 0.123401,
		33.332008, 28.943241, 26.998980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549980, 29.357470, 26.970890>,  <32.677696, 28.709974, 26.912600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549980, 29.357470, 26.970890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936554, 29.329369, 26.872044>,  <33.168499, 29.312508, 26.812737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936554, 29.329369, 26.872044>,  <32.549980, 29.357470, 26.970890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936554, 29.329369, 26.872044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085890, 0.818180, -0.568511,
		0.242124, 0.570655, 0.784684,
		0.966436, -0.070253, -0.247115,
		33.226486, 29.308292, 26.797909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817024, 30.057251, 27.040941>,  <32.549980, 29.357470, 26.970890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817024, 30.057251, 27.040941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084232, 29.857414, 26.820343>,  <33.244556, 29.737513, 26.687984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084232, 29.857414, 26.820343>,  <32.817024, 30.057251, 27.040941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084232, 29.857414, 26.820343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088059, 0.682840, -0.725241,
		0.738910, 0.533044, 0.412161,
		0.668025, -0.499594, -0.551497,
		33.284641, 29.707537, 26.654894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241722, 30.529240, 26.823891>,  <32.817024, 30.057251, 27.040941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241722, 30.529240, 26.823891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298103, 30.233196, 26.560871>,  <33.331932, 30.055571, 26.403059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.298103, 30.233196, 26.560871>,  <33.241722, 30.529240, 26.823891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298103, 30.233196, 26.560871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047113, 0.668442, -0.742270,
		0.988894, 0.073649, 0.129090,
		0.140956, -0.740108, -0.657549,
		33.340389, 30.011164, 26.363605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730320, 30.791218, 26.353092>,  <33.241722, 30.529240, 26.823891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730320, 30.791218, 26.353092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550632, 30.495716, 26.152115>,  <33.442822, 30.318415, 26.031528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.550632, 30.495716, 26.152115>,  <33.730320, 30.791218, 26.353092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550632, 30.495716, 26.152115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081534, 0.593930, -0.800375,
		0.889694, -0.318577, -0.327037,
		-0.449217, -0.738754, -0.502441,
		33.415867, 30.274090, 26.001383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148788, 30.491577, 25.777609>,  <33.730320, 30.791218, 26.353092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148788, 30.491577, 25.777609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770008, 30.414204, 25.674950>,  <33.542740, 30.367781, 25.613354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770008, 30.414204, 25.674950>,  <34.148788, 30.491577, 25.777609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770008, 30.414204, 25.674950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189527, 0.308821, -0.932046,
		0.259542, -0.931244, -0.255779,
		-0.946952, -0.193428, -0.256648,
		33.485924, 30.356174, 25.597956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245159, 30.375294, 25.099081>,  <34.148788, 30.491577, 25.777609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245159, 30.375294, 25.099081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846924, 30.400867, 25.126553>,  <33.607983, 30.416212, 25.143036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.846924, 30.400867, 25.126553>,  <34.245159, 30.375294, 25.099081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846924, 30.400867, 25.126553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039797, 0.375111, -0.926125,
		-0.084973, -0.924772, -0.370912,
		-0.995588, 0.063934, 0.068677,
		33.548248, 30.420048, 25.147156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939865, 30.195162, 24.418003>,  <34.245159, 30.375294, 25.099081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939865, 30.195162, 24.418003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642727, 30.392994, 24.598476>,  <33.464443, 30.511694, 24.706760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.642727, 30.392994, 24.598476>,  <33.939865, 30.195162, 24.418003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642727, 30.392994, 24.598476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150719, 0.533094, -0.832523,
		-0.652273, -0.686440, -0.321465,
		-0.742848, 0.494582, 0.451182,
		33.419872, 30.541368, 24.733831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332550, 30.139505, 24.026823>,  <33.939865, 30.195162, 24.418003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332550, 30.139505, 24.026823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263962, 30.471596, 24.238983>,  <33.222809, 30.670851, 24.366280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263962, 30.471596, 24.238983>,  <33.332550, 30.139505, 24.026823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263962, 30.471596, 24.238983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246272, 0.485162, -0.839028,
		-0.953913, -0.274488, 0.121272,
		-0.171466, 0.830225, 0.530401,
		33.212521, 30.720663, 24.398104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613819, 30.335592, 23.875006>,  <33.332550, 30.139505, 24.026823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613819, 30.335592, 23.875006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836014, 30.635914, 24.017963>,  <32.969330, 30.816107, 24.103737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.836014, 30.635914, 24.017963>,  <32.613819, 30.335592, 23.875006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836014, 30.635914, 24.017963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040628, 0.453795, -0.890179,
		-0.830535, 0.479959, 0.282579,
		0.555483, 0.750805, 0.357393,
		33.002659, 30.861156, 24.125181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894417, 30.570999, 23.850666>,  <32.613819, 30.335592, 23.875006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894417, 30.570999, 23.850666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695700, 30.292446, 23.643494>,  <31.576469, 30.125315, 23.519190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695700, 30.292446, 23.643494>,  <31.894417, 30.570999, 23.850666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695700, 30.292446, 23.643494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018279, -0.605045, 0.795982,
		-0.867677, 0.385970, 0.313311,
		-0.496792, -0.696382, -0.517929,
		31.546661, 30.083532, 23.488115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417166, 30.230818, 24.313814>,  <31.894417, 30.570999, 23.850666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417166, 30.230818, 24.313814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449760, 29.962322, 24.019115>,  <31.469316, 29.801224, 23.842297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.449760, 29.962322, 24.019115>,  <31.417166, 30.230818, 24.313814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449760, 29.962322, 24.019115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030342, -0.737191, 0.675002,
		-0.996212, -0.077358, -0.039705,
		0.081487, -0.671241, -0.736746,
		31.474207, 29.760950, 23.798092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903353, 29.699896, 24.488731>,  <31.417166, 30.230818, 24.313814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903353, 29.699896, 24.488731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157597, 29.506279, 24.248165>,  <31.310143, 29.390108, 24.103825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.157597, 29.506279, 24.248165>,  <30.903353, 29.699896, 24.488731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157597, 29.506279, 24.248165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135339, -0.697099, 0.704085,
		-0.760055, -0.528919, -0.377573,
		0.635610, -0.484043, -0.601417,
		31.348280, 29.361067, 24.067739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629007, 29.017687, 24.548773>,  <30.903353, 29.699896, 24.488731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629007, 29.017687, 24.548773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984365, 28.985607, 24.367966>,  <31.197580, 28.966358, 24.259481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.984365, 28.985607, 24.367966>,  <30.629007, 29.017687, 24.548773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984365, 28.985607, 24.367966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255159, -0.732265, 0.631413,
		-0.381636, -0.676281, -0.630078,
		0.888396, -0.080200, -0.452018,
		31.250885, 28.961548, 24.232361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533400, 28.397924, 24.325161>,  <30.629007, 29.017687, 24.548773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533400, 28.397924, 24.325161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928761, 28.447956, 24.359604>,  <31.165977, 28.477976, 24.380270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.928761, 28.447956, 24.359604>,  <30.533400, 28.397924, 24.325161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928761, 28.447956, 24.359604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055268, -0.824459, 0.563216,
		0.141438, -0.551926, -0.821811,
		0.988403, 0.125080, 0.086106,
		31.225281, 28.485479, 24.385435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964081, 27.738731, 24.130194>,  <30.533400, 28.397924, 24.325161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964081, 27.738731, 24.130194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199348, 27.938461, 24.384666>,  <31.340509, 28.058300, 24.537350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199348, 27.938461, 24.384666>,  <30.964081, 27.738731, 24.130194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199348, 27.938461, 24.384666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090046, -0.822179, 0.562061,
		0.803709, -0.273302, -0.528543,
		0.588170, 0.499327, 0.636183,
		31.375799, 28.088259, 24.575521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386482, 27.176529, 24.415503>,  <30.964081, 27.738731, 24.130194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386482, 27.176529, 24.415503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.474974, 27.480122, 24.660454>,  <31.528069, 27.662277, 24.807425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.474974, 27.480122, 24.660454>,  <31.386482, 27.176529, 24.415503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474974, 27.480122, 24.660454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192135, -0.649551, 0.735641,
		0.956108, -0.045086, -0.289526,
		0.221229, 0.758980, 0.612378,
		31.541342, 27.707815, 24.844168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906940, 26.996273, 24.849369>,  <31.386482, 27.176529, 24.415503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906940, 26.996273, 24.849369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785723, 27.293530, 25.088001>,  <31.712992, 27.471884, 25.231180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.785723, 27.293530, 25.088001>,  <31.906940, 26.996273, 24.849369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785723, 27.293530, 25.088001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147667, -0.581837, 0.799788,
		0.941466, 0.330467, 0.066586,
		-0.303046, 0.743140, 0.596579,
		31.694809, 27.516472, 25.266975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362820, 26.894491, 25.405085>,  <31.906940, 26.996273, 24.849369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362820, 26.894491, 25.405085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.038788, 27.090511, 25.533848>,  <31.844368, 27.208124, 25.611105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.038788, 27.090511, 25.533848>,  <32.362820, 26.894491, 25.405085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038788, 27.090511, 25.533848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013405, -0.533404, 0.845755,
		0.586168, 0.689443, 0.425530,
		-0.810079, 0.490050, 0.321906,
		31.795765, 27.237526, 25.630419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576176, 27.217186, 26.153593>,  <32.362820, 26.894491, 25.405085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576176, 27.217186, 26.153593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177414, 27.189598, 26.138515>,  <31.938156, 27.173046, 26.129469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177414, 27.189598, 26.138515>,  <32.576176, 27.217186, 26.153593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177414, 27.189598, 26.138515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003339, -0.441995, 0.897011,
		-0.078526, 0.894362, 0.440397,
		-0.996906, -0.068968, -0.037695,
		31.878342, 27.168907, 26.127207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283783, 27.601435, 26.816463>,  <32.576176, 27.217186, 26.153593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283783, 27.601435, 26.816463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006935, 27.336998, 26.700581>,  <31.840826, 27.178337, 26.631050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.006935, 27.336998, 26.700581>,  <32.283783, 27.601435, 26.816463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006935, 27.336998, 26.700581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057400, -0.349692, 0.935104,
		-0.719497, 0.663833, 0.204082,
		-0.692119, -0.661091, -0.289707,
		31.799299, 27.138670, 26.613668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819092, 27.460136, 27.447500>,  <32.283783, 27.601435, 26.816463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819092, 27.460136, 27.447500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755629, 27.164394, 27.185757>,  <31.717550, 26.986950, 27.028711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.755629, 27.164394, 27.185757>,  <31.819092, 27.460136, 27.447500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755629, 27.164394, 27.185757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240991, -0.613708, 0.751856,
		-0.957471, 0.276982, -0.080807,
		-0.158659, -0.739354, -0.654358,
		31.708031, 26.942589, 26.989449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439724, 27.035797, 27.821005>,  <31.819092, 27.460136, 27.447500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439724, 27.035797, 27.821005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517071, 26.754784, 27.547054>,  <31.563478, 26.586176, 27.382685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517071, 26.754784, 27.547054>,  <31.439724, 27.035797, 27.821005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517071, 26.754784, 27.547054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021243, -0.700885, 0.712958,
		-0.980896, -0.123314, -0.150452,
		0.193368, -0.702534, -0.684876,
		31.575081, 26.544024, 27.341591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925755, 26.519449, 27.850760>,  <31.439724, 27.035797, 27.821005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925755, 26.519449, 27.850760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269945, 26.379353, 27.702755>,  <31.476460, 26.295294, 27.613953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.269945, 26.379353, 27.702755>,  <30.925755, 26.519449, 27.850760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269945, 26.379353, 27.702755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059070, -0.652760, 0.755258,
		-0.506049, -0.671740, -0.540998,
		0.860479, -0.350241, -0.370009,
		31.528090, 26.274281, 27.591753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449148, 26.208067, 27.407980>,  <30.925755, 26.519449, 27.850760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449148, 26.208067, 27.407980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062729, 26.113384, 27.449398>,  <29.830877, 26.056574, 27.474249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.062729, 26.113384, 27.449398>,  <30.449148, 26.208067, 27.407980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062729, 26.113384, 27.449398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218212, 0.532932, -0.817537,
		0.138334, -0.812375, -0.566490,
		-0.966047, -0.236708, 0.103548,
		29.772915, 26.042372, 27.480463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163277, 25.996759, 26.689808>,  <30.449148, 26.208067, 27.407980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163277, 25.996759, 26.689808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842552, 26.093376, 26.908443>,  <29.650118, 26.151346, 27.039625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842552, 26.093376, 26.908443>,  <30.163277, 25.996759, 26.689808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842552, 26.093376, 26.908443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392590, 0.476669, -0.786549,
		-0.450526, -0.845248, -0.287372,
		-0.801810, 0.241541, 0.546588,
		29.602009, 26.165838, 27.072420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576590, 25.870499, 26.227240>,  <30.163277, 25.996759, 26.689808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576590, 25.870499, 26.227240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455950, 26.118752, 26.516750>,  <29.383566, 26.267704, 26.690456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.455950, 26.118752, 26.516750>,  <29.576590, 25.870499, 26.227240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455950, 26.118752, 26.516750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541053, 0.513644, -0.665906,
		-0.785047, -0.592439, 0.180880,
		-0.301601, 0.620633, 0.723775,
		29.365469, 26.304941, 26.733883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.913155, 25.923262, 25.935669>,  <29.576590, 25.870499, 26.227240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.913155, 25.923262, 25.935669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994633, 26.218807, 26.192600>,  <29.043520, 26.396135, 26.346760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.994633, 26.218807, 26.192600>,  <28.913155, 25.923262, 25.935669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.994633, 26.218807, 26.192600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486806, 0.645668, -0.588330,
		-0.849429, -0.192851, 0.491202,
		0.203694, 0.738865, 0.642330,
		29.055740, 26.440466, 26.385300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306433, 26.275604, 26.057411>,  <28.913155, 25.923262, 25.935669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306433, 26.275604, 26.057411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580645, 26.537224, 26.185329>,  <28.745173, 26.694197, 26.262079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580645, 26.537224, 26.185329>,  <28.306433, 26.275604, 26.057411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580645, 26.537224, 26.185329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434279, 0.719906, -0.541422,
		-0.584339, 0.232281, 0.777556,
		0.685529, 0.654050, 0.319794,
		28.786303, 26.733438, 26.281267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965544, 26.895351, 26.120676>,  <28.306433, 26.275604, 26.057411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965544, 26.895351, 26.120676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.342955, 27.022610, 26.083721>,  <28.569401, 27.098965, 26.061548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.342955, 27.022610, 26.083721>,  <27.965544, 26.895351, 26.120676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.342955, 27.022610, 26.083721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298537, 0.695619, -0.653444,
		-0.143624, 0.644125, 0.751316,
		0.943529, 0.318146, -0.092387,
		28.626013, 27.118053, 26.056005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916910, 27.662657, 26.169527>,  <27.965544, 26.895351, 26.120676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916910, 27.662657, 26.169527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.269768, 27.552746, 26.016521>,  <28.481482, 27.486799, 25.924717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.269768, 27.552746, 26.016521>,  <27.916910, 27.662657, 26.169527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269768, 27.552746, 26.016521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075160, 0.719631, -0.690277,
		0.464944, 0.637673, 0.614166,
		0.882144, -0.274779, -0.382515,
		28.534410, 27.470312, 25.901768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216579, 28.309032, 26.134930>,  <27.916910, 27.662657, 26.169527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216579, 28.309032, 26.134930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402889, 28.057388, 25.886005>,  <28.514675, 27.906401, 25.736650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.402889, 28.057388, 25.886005>,  <28.216579, 28.309032, 26.134930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402889, 28.057388, 25.886005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072747, 0.673651, -0.735460,
		0.881907, 0.387831, 0.268005,
		0.465776, -0.629111, -0.622311,
		28.542622, 27.868654, 25.699312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825502, 28.638014, 25.880167>,  <28.216579, 28.309032, 26.134930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825502, 28.638014, 25.880167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.769943, 28.353012, 25.605053>,  <28.736609, 28.182011, 25.439985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.769943, 28.353012, 25.605053>,  <28.825502, 28.638014, 25.880167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.769943, 28.353012, 25.605053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018942, 0.696300, -0.717501,
		0.990126, -0.086631, -0.110210,
		-0.138898, -0.712503, -0.687784,
		28.728273, 28.139261, 25.398718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315460, 28.763063, 25.303587>,  <28.825502, 28.638014, 25.880167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315460, 28.763063, 25.303587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011396, 28.548679, 25.156670>,  <28.828959, 28.420050, 25.068520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011396, 28.548679, 25.156670>,  <29.315460, 28.763063, 25.303587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011396, 28.548679, 25.156670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244526, 0.759723, -0.602518,
		0.601967, -0.368197, -0.708567,
		-0.760160, -0.535958, -0.367294,
		28.783348, 28.387892, 25.046482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401228, 28.736378, 24.615625>,  <29.315460, 28.763063, 25.303587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401228, 28.736378, 24.615625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.014318, 28.637211, 24.637238>,  <28.782173, 28.577711, 24.650204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.014318, 28.637211, 24.637238>,  <29.401228, 28.736378, 24.615625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014318, 28.637211, 24.637238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164325, 0.449811, -0.877876,
		0.193339, -0.858025, -0.475830,
		-0.967273, -0.247918, 0.054029,
		28.724136, 28.562836, 24.653446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266247, 28.499630, 23.976223>,  <29.401228, 28.736378, 24.615625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266247, 28.499630, 23.976223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.902365, 28.585003, 24.118706>,  <28.684036, 28.636227, 24.204195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.902365, 28.585003, 24.118706>,  <29.266247, 28.499630, 23.976223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902365, 28.585003, 24.118706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282818, 0.309644, -0.907819,
		-0.304056, -0.926588, -0.221322,
		-0.909705, 0.213434, 0.356205,
		28.629454, 28.649033, 24.225567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728252, 28.286451, 23.543789>,  <29.266247, 28.499630, 23.976223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728252, 28.286451, 23.543789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.576288, 28.588806, 23.757069>,  <28.485109, 28.770220, 23.885036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.576288, 28.588806, 23.757069>,  <28.728252, 28.286451, 23.543789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576288, 28.588806, 23.757069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351163, 0.415414, -0.839116,
		-0.855775, -0.506031, 0.107619,
		-0.379912, 0.755886, 0.533200,
		28.462315, 28.815573, 23.917028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209797, 28.408966, 23.187929>,  <28.728252, 28.286451, 23.543789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209797, 28.408966, 23.187929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.214905, 28.747356, 23.401157>,  <28.217970, 28.950390, 23.529095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.214905, 28.747356, 23.401157>,  <28.209797, 28.408966, 23.187929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.214905, 28.747356, 23.401157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206974, 0.523804, -0.826312,
		-0.978263, -0.099780, 0.181784,
		0.012770, 0.845975, 0.533069,
		28.218737, 29.001148, 23.561079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.006233, 35.443508, 16.592548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.213089, 35.126827, 16.722637>,  <46.337200, 34.936817, 16.800692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.213089, 35.126827, 16.722637>,  <46.006233, 35.443508, 16.592548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213089, 35.126827, 16.722637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842898, -0.405094, 0.354150,
		-0.148637, -0.457275, -0.876816,
		0.517137, -0.791706, 0.325224,
		46.368229, 34.889317, 16.820204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640480, 34.914600, 16.467201>,  <46.006233, 35.443508, 16.592548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640480, 34.914600, 16.467201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.876820, 34.727669, 16.730259>,  <46.018623, 34.615509, 16.888094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.876820, 34.727669, 16.730259>,  <45.640480, 34.914600, 16.467201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876820, 34.727669, 16.730259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790140, -0.499908, 0.354641,
		0.163027, -0.729172, -0.664628,
		0.590848, -0.467333, 0.657646,
		46.054073, 34.587467, 16.927553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.500134, 34.211529, 16.361959>,  <45.640480, 34.914600, 16.467201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.500134, 34.211529, 16.361959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.645866, 34.232121, 16.733898>,  <45.733307, 34.244476, 16.957062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.645866, 34.232121, 16.733898>,  <45.500134, 34.211529, 16.361959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.645866, 34.232121, 16.733898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814127, -0.467198, 0.344853,
		0.452174, -0.882653, -0.128306,
		0.364329, 0.051476, 0.929846,
		45.755165, 34.247562, 17.012852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254307, 33.615517, 16.708336>,  <45.500134, 34.211529, 16.361959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254307, 33.615517, 16.708336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.364594, 33.879597, 16.987797>,  <45.430767, 34.038044, 17.155474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.364594, 33.879597, 16.987797>,  <45.254307, 33.615517, 16.708336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.364594, 33.879597, 16.987797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788497, -0.260364, 0.557211,
		0.549775, -0.704517, 0.448780,
		0.275718, 0.660202, 0.698651,
		45.447308, 34.077656, 17.197392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248154, 33.233929, 17.361029>,  <45.254307, 33.615517, 16.708336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248154, 33.233929, 17.361029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.222885, 33.621803, 17.455452>,  <45.207726, 33.854527, 17.512106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.222885, 33.621803, 17.455452>,  <45.248154, 33.233929, 17.361029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222885, 33.621803, 17.455452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819705, -0.185333, 0.541973,
		0.569292, -0.159262, 0.806562,
		-0.063167, 0.969684, 0.236057,
		45.203934, 33.912708, 17.526270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.196301, 33.307869, 18.079407>,  <45.248154, 33.233929, 17.361029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.196301, 33.307869, 18.079407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.043209, 33.659073, 17.964432>,  <44.951355, 33.869797, 17.895447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.043209, 33.659073, 17.964432>,  <45.196301, 33.307869, 18.079407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043209, 33.659073, 17.964432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773108, -0.134045, 0.619948,
		0.505790, 0.459492, 0.730098,
		-0.382728, 0.878009, -0.287438,
		44.928391, 33.922474, 17.878201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048950, 33.730652, 18.670082>,  <45.196301, 33.307869, 18.079407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048950, 33.730652, 18.670082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809196, 33.888870, 18.391720>,  <44.665344, 33.983803, 18.224703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.809196, 33.888870, 18.391720>,  <45.048950, 33.730652, 18.670082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809196, 33.888870, 18.391720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770021, -0.047445, 0.636252,
		0.218649, 0.917220, 0.333016,
		-0.599383, 0.395545, -0.695905,
		44.629383, 34.007534, 18.182949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725296, 34.147926, 19.001493>,  <45.048950, 33.730652, 18.670082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725296, 34.147926, 19.001493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.507893, 34.104565, 18.668545>,  <44.377449, 34.078548, 18.468775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.507893, 34.104565, 18.668545>,  <44.725296, 34.147926, 19.001493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507893, 34.104565, 18.668545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837863, 0.130097, 0.530151,
		0.050819, 0.985557, -0.161536,
		-0.543510, -0.108403, -0.832373,
		44.344841, 34.072044, 18.418833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309380, 34.755550, 19.058628>,  <44.725296, 34.147926, 19.001493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309380, 34.755550, 19.058628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.148365, 34.492664, 18.803745>,  <44.051758, 34.334934, 18.650816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.148365, 34.492664, 18.803745>,  <44.309380, 34.755550, 19.058628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148365, 34.492664, 18.803745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915374, 0.283309, 0.286052,
		-0.007471, 0.698431, -0.715639,
		-0.402534, -0.657214, -0.637209,
		44.027603, 34.295502, 18.612583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743233, 35.098667, 18.708281>,  <44.309380, 34.755550, 19.058628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743233, 35.098667, 18.708281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.676075, 34.705601, 18.676846>,  <43.635780, 34.469761, 18.657986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.676075, 34.705601, 18.676846>,  <43.743233, 35.098667, 18.708281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.676075, 34.705601, 18.676846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930292, 0.131562, 0.342414,
		-0.326141, 0.130597, -0.936257,
		-0.167895, -0.982668, -0.078585,
		43.625706, 34.410801, 18.653271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.042439, 35.076057, 18.514290>,  <43.743233, 35.098667, 18.708281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.042439, 35.076057, 18.514290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.134193, 34.716908, 18.664600>,  <43.189247, 34.501419, 18.754786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.134193, 34.716908, 18.664600>,  <43.042439, 35.076057, 18.514290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134193, 34.716908, 18.664600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799225, 0.046601, 0.599223,
		-0.555537, -0.437782, -0.706913,
		0.229386, -0.897873, 0.375775,
		43.203011, 34.447544, 18.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440060, 34.758549, 18.591219>,  <43.042439, 35.076057, 18.514290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440060, 34.758549, 18.591219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650745, 34.499283, 18.811203>,  <42.777157, 34.343723, 18.943193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650745, 34.499283, 18.811203>,  <42.440060, 34.758549, 18.591219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650745, 34.499283, 18.811203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766169, -0.081774, 0.637415,
		-0.368176, -0.757100, -0.539673,
		0.526718, -0.648161, 0.549959,
		42.808762, 34.304836, 18.976191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969612, 34.225517, 18.734413>,  <42.440060, 34.758549, 18.591219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969612, 34.225517, 18.734413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259819, 34.195831, 19.008091>,  <42.433941, 34.178020, 19.172298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.259819, 34.195831, 19.008091>,  <41.969612, 34.225517, 18.734413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259819, 34.195831, 19.008091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678222, -0.245854, 0.692511,
		0.116816, -0.966461, -0.228707,
		0.725514, -0.074218, 0.684195,
		42.477474, 34.173565, 19.213348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888554, 33.633183, 19.066477>,  <41.969612, 34.225517, 18.734413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888554, 33.633183, 19.066477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117676, 33.817707, 19.337502>,  <42.255150, 33.928421, 19.500116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117676, 33.817707, 19.337502>,  <41.888554, 33.633183, 19.066477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117676, 33.817707, 19.337502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663843, -0.223822, 0.713594,
		0.480843, -0.858542, 0.178034,
		0.572802, 0.461313, 0.677560,
		42.289516, 33.956100, 19.540770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826694, 33.167454, 19.663744>,  <41.888554, 33.633183, 19.066477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826694, 33.167454, 19.663744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930405, 33.521721, 19.817814>,  <41.992630, 33.734283, 19.910255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930405, 33.521721, 19.817814>,  <41.826694, 33.167454, 19.663744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930405, 33.521721, 19.817814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826982, -0.002409, 0.562223,
		0.498874, -0.464304, 0.731810,
		0.259279, 0.885672, 0.385173,
		42.008190, 33.787422, 19.933367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947525, 33.110184, 20.446362>,  <41.826694, 33.167454, 19.663744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947525, 33.110184, 20.446362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910603, 33.507065, 20.412880>,  <41.888451, 33.745193, 20.392792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910603, 33.507065, 20.412880>,  <41.947525, 33.110184, 20.446362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910603, 33.507065, 20.412880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746039, -0.013239, 0.665771,
		0.659474, 0.123901, 0.741446,
		-0.092305, 0.992206, -0.083705,
		41.882912, 33.804726, 20.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896568, 33.363224, 21.096373>,  <41.947525, 33.110184, 20.446362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896568, 33.363224, 21.096373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.751606, 33.669613, 20.883980>,  <41.664627, 33.853447, 20.756544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.751606, 33.669613, 20.883980>,  <41.896568, 33.363224, 21.096373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751606, 33.669613, 20.883980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786634, 0.054167, 0.615039,
		0.499865, 0.640585, 0.582911,
		-0.362410, 0.765974, -0.530982,
		41.642883, 33.899406, 20.724686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681805, 33.887707, 21.621731>,  <41.896568, 33.363224, 21.096373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681805, 33.887707, 21.621731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.497295, 33.956814, 21.273621>,  <41.386589, 33.998276, 21.064754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.497295, 33.956814, 21.273621>,  <41.681805, 33.887707, 21.621731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497295, 33.956814, 21.273621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871742, 0.094384, 0.480789,
		0.165204, 0.980430, 0.107070,
		-0.461275, 0.172766, -0.870274,
		41.358913, 34.008644, 21.012539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190399, 34.480160, 21.824564>,  <41.681805, 33.887707, 21.621731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190399, 34.480160, 21.824564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076931, 34.296463, 21.487843>,  <41.008850, 34.186245, 21.285810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076931, 34.296463, 21.487843>,  <41.190399, 34.480160, 21.824564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076931, 34.296463, 21.487843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958885, 0.143513, 0.244834,
		0.008373, 0.876644, -0.481067,
		-0.283672, -0.459238, -0.841803,
		40.991829, 34.158691, 21.235302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633495, 34.872948, 21.670853>,  <41.190399, 34.480160, 21.824564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633495, 34.872948, 21.670853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627625, 34.511009, 21.500660>,  <40.624104, 34.293846, 21.398544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.627625, 34.511009, 21.500660>,  <40.633495, 34.872948, 21.670853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627625, 34.511009, 21.500660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880322, -0.190094, 0.434624,
		-0.474150, 0.380941, -0.793767,
		-0.014676, -0.904847, -0.425483,
		40.623222, 34.239555, 21.373014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876839, 34.838406, 21.506519>,  <40.633495, 34.872948, 21.670853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876839, 34.838406, 21.506519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.011425, 34.461731, 21.504700>,  <40.092178, 34.235725, 21.503609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.011425, 34.461731, 21.504700>,  <39.876839, 34.838406, 21.506519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011425, 34.461731, 21.504700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807078, -0.290854, 0.513838,
		-0.485196, -0.169218, -0.857875,
		0.336467, -0.941684, -0.004549,
		40.112366, 34.179226, 21.503336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523129, 35.512810, 21.176577>,  <39.876839, 34.838406, 21.506519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523129, 35.512810, 21.176577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337399, 35.468834, 20.825050>,  <39.225960, 35.442448, 20.614134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.337399, 35.468834, 20.825050>,  <39.523129, 35.512810, 21.176577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337399, 35.468834, 20.825050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840871, 0.256851, -0.476406,
		0.278098, -0.960178, -0.026821,
		-0.464324, -0.109935, -0.878816,
		39.198101, 35.435852, 20.561405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960793, 35.033863, 20.796751>,  <39.523129, 35.512810, 21.176577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960793, 35.033863, 20.796751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742424, 35.241875, 20.533985>,  <39.611404, 35.366684, 20.376326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.742424, 35.241875, 20.533985>,  <39.960793, 35.033863, 20.796751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742424, 35.241875, 20.533985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817349, 0.158230, -0.553989,
		-0.184150, -0.839362, -0.511430,
		-0.545921, 0.520034, -0.656914,
		39.578648, 35.397884, 20.336910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205994, 34.755619, 20.223843>,  <39.960793, 35.033863, 20.796751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205994, 34.755619, 20.223843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.037388, 35.109463, 20.144054>,  <39.936226, 35.321770, 20.096182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.037388, 35.109463, 20.144054>,  <40.205994, 34.755619, 20.223843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037388, 35.109463, 20.144054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686488, 0.167559, -0.707573,
		-0.592504, -0.435185, -0.677903,
		-0.421514, 0.884612, -0.199470,
		39.910934, 35.374847, 20.084213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177734, 34.731827, 19.548925>,  <40.205994, 34.755619, 20.223843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177734, 34.731827, 19.548925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.133793, 35.122711, 19.621578>,  <40.107430, 35.357243, 19.665171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.133793, 35.122711, 19.621578>,  <40.177734, 34.731827, 19.548925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133793, 35.122711, 19.621578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651999, 0.208774, -0.728911,
		-0.750220, 0.038354, -0.660075,
		-0.109850, 0.977212, 0.181633,
		40.100838, 35.415874, 19.676067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378853, 35.072895, 18.959438>,  <40.177734, 34.731827, 19.548925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378853, 35.072895, 18.959438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362316, 35.404560, 19.182426>,  <40.352394, 35.603561, 19.316219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362316, 35.404560, 19.182426>,  <40.378853, 35.072895, 18.959438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362316, 35.404560, 19.182426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780451, 0.375173, -0.500142,
		-0.623849, 0.414401, -0.662634,
		-0.041343, 0.829166, 0.557471,
		40.349915, 35.653309, 19.349669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460045, 35.704346, 18.520254>,  <40.378853, 35.072895, 18.959438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460045, 35.704346, 18.520254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569134, 35.825481, 18.885529>,  <40.634586, 35.898163, 19.104694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.569134, 35.825481, 18.885529>,  <40.460045, 35.704346, 18.520254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569134, 35.825481, 18.885529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769867, 0.500555, -0.395917,
		-0.577001, 0.811006, -0.096637,
		0.272719, 0.302842, 0.913187,
		40.650948, 35.916332, 19.159485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572037, 36.390617, 18.444717>,  <40.460045, 35.704346, 18.520254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572037, 36.390617, 18.444717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762150, 36.274239, 18.776852>,  <40.876217, 36.204411, 18.976133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.762150, 36.274239, 18.776852>,  <40.572037, 36.390617, 18.444717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762150, 36.274239, 18.776852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862119, 0.342429, -0.373489,
		-0.175667, 0.893361, 0.413578,
		0.475281, -0.290944, 0.830337,
		40.904736, 36.186954, 19.025953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027786, 36.879135, 18.496382>,  <40.572037, 36.390617, 18.444717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027786, 36.879135, 18.496382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182640, 36.601921, 18.739635>,  <41.275551, 36.435593, 18.885588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182640, 36.601921, 18.739635>,  <41.027786, 36.879135, 18.496382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182640, 36.601921, 18.739635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921311, 0.264815, -0.284707,
		0.036269, 0.670501, 0.741022,
		0.387131, -0.693038, 0.608135,
		41.298779, 36.394009, 18.922075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436676, 37.221432, 18.908985>,  <41.027786, 36.879135, 18.496382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436676, 37.221432, 18.908985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576565, 36.846725, 18.903862>,  <41.660496, 36.621902, 18.900787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.576565, 36.846725, 18.903862>,  <41.436676, 37.221432, 18.908985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576565, 36.846725, 18.903862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889938, 0.336447, -0.307918,
		0.292756, 0.096287, 0.951327,
		0.349719, -0.936767, -0.012807,
		41.681480, 36.565697, 18.900021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069073, 37.241375, 19.252146>,  <41.436676, 37.221432, 18.908985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069073, 37.241375, 19.252146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094769, 36.893238, 19.056850>,  <42.110188, 36.684357, 18.939672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.094769, 36.893238, 19.056850>,  <42.069073, 37.241375, 19.252146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094769, 36.893238, 19.056850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924323, 0.236314, -0.299639,
		0.376167, -0.432043, 0.819657,
		0.064239, -0.870342, -0.488240,
		42.114040, 36.632137, 18.910378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619659, 36.903931, 19.551037>,  <42.069073, 37.241375, 19.252146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619659, 36.903931, 19.551037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556885, 36.771416, 19.178883>,  <42.519218, 36.691906, 18.955589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.556885, 36.771416, 19.178883>,  <42.619659, 36.903931, 19.551037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556885, 36.771416, 19.178883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966863, 0.140537, -0.213134,
		0.201362, -0.933006, 0.298250,
		-0.156940, -0.331284, -0.930387,
		42.509804, 36.672031, 18.899767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222988, 36.507481, 19.420795>,  <42.619659, 36.903931, 19.551037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222988, 36.507481, 19.420795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.074497, 36.571049, 19.054859>,  <42.985405, 36.609188, 18.835297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.074497, 36.571049, 19.054859>,  <43.222988, 36.507481, 19.420795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074497, 36.571049, 19.054859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917841, 0.211960, -0.335620,
		0.140573, -0.964270, -0.224549,
		-0.371224, 0.158921, -0.914843,
		42.963131, 36.618725, 18.780407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725788, 36.242535, 18.931988>,  <43.222988, 36.507481, 19.420795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.725788, 36.242535, 18.931988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502621, 36.467567, 18.687946>,  <43.368721, 36.602589, 18.541521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.502621, 36.467567, 18.687946>,  <43.725788, 36.242535, 18.931988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502621, 36.467567, 18.687946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821482, 0.269938, -0.502295,
		-0.117894, -0.781428, -0.612757,
		-0.557914, 0.562586, -0.610106,
		43.335247, 36.636345, 18.504915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969761, 36.062248, 18.218634>,  <43.725788, 36.242535, 18.931988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969761, 36.062248, 18.218634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.806396, 36.426929, 18.236481>,  <43.708378, 36.645741, 18.247189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.806396, 36.426929, 18.236481>,  <43.969761, 36.062248, 18.218634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806396, 36.426929, 18.236481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752700, 0.364028, -0.548567,
		-0.516373, -0.190460, -0.834916,
		-0.408413, 0.911706, 0.044616,
		43.683872, 36.700439, 18.249865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.159744, 36.335094, 17.552788>,  <43.969761, 36.062248, 18.218634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.159744, 36.335094, 17.552788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.022331, 36.645729, 17.764034>,  <43.939884, 36.832108, 17.890781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.022331, 36.645729, 17.764034>,  <44.159744, 36.335094, 17.552788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022331, 36.645729, 17.764034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606343, 0.612832, -0.506739,
		-0.717171, 0.146139, -0.681403,
		-0.343532, 0.776582, 0.528116,
		43.919273, 36.878704, 17.922468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.836891, 36.841698, 17.049265>,  <44.159744, 36.335094, 17.552788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.836891, 36.841698, 17.049265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.003906, 37.003796, 17.374580>,  <44.104115, 37.101055, 17.569771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.003906, 37.003796, 17.374580>,  <43.836891, 36.841698, 17.049265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003906, 37.003796, 17.374580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509423, 0.636757, -0.578816,
		-0.752428, 0.655987, 0.059432,
		0.417540, 0.405241, 0.813289,
		44.129169, 37.125366, 17.618567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.921715, 37.516186, 16.987282>,  <43.836891, 36.841698, 17.049265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.921715, 37.516186, 16.987282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.168484, 37.489990, 17.300999>,  <44.316547, 37.474274, 17.489229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.168484, 37.489990, 17.300999>,  <43.921715, 37.516186, 16.987282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168484, 37.489990, 17.300999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632403, 0.634440, -0.444469,
		-0.468477, 0.770193, 0.432819,
		0.616924, -0.065492, 0.784293,
		44.353561, 37.470341, 17.536287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010880, 38.209713, 17.152670>,  <43.921715, 37.516186, 16.987282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010880, 38.209713, 17.152670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317123, 38.029442, 17.336292>,  <44.500870, 37.921280, 17.446466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317123, 38.029442, 17.336292>,  <44.010880, 38.209713, 17.152670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317123, 38.029442, 17.336292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641882, 0.582593, -0.498570,
		-0.042751, 0.676371, 0.735319,
		0.765610, -0.450674, 0.459057,
		44.546806, 37.894241, 17.474009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448826, 38.780987, 17.397493>,  <44.010880, 38.209713, 17.152670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448826, 38.780987, 17.397493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.681877, 38.456390, 17.379528>,  <44.821709, 38.261631, 17.368748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.681877, 38.456390, 17.379528>,  <44.448826, 38.780987, 17.397493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.681877, 38.456390, 17.379528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795702, 0.580804, -0.171829,
		0.165525, 0.064374, 0.984103,
		0.582632, -0.811494, -0.044915,
		44.856667, 38.212944, 17.366053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.085304, 38.983078, 17.650661>,  <44.448826, 38.780987, 17.397493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.085304, 38.983078, 17.650661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.216129, 38.636692, 17.499332>,  <45.294624, 38.428860, 17.408535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.216129, 38.636692, 17.499332>,  <45.085304, 38.983078, 17.650661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216129, 38.636692, 17.499332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884677, 0.421324, -0.199582,
		0.332229, -0.269418, 0.903902,
		0.327064, -0.865968, -0.378323,
		45.314247, 38.376904, 17.385836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767986, 38.826000, 17.961750>,  <45.085304, 38.983078, 17.650661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767986, 38.826000, 17.961750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.724781, 38.634415, 17.613285>,  <45.698860, 38.519463, 17.404205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.724781, 38.634415, 17.613285>,  <45.767986, 38.826000, 17.961750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.724781, 38.634415, 17.613285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948770, 0.212067, -0.234229,
		0.296933, -0.851832, 0.431525,
		-0.108011, -0.478968, -0.871162,
		45.692379, 38.490723, 17.351936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.680922, 28.250774, 29.458933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065231, 28.335346, 29.530720>,  <30.295816, 28.386089, 29.573792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.065231, 28.335346, 29.530720>,  <29.680922, 28.250774, 29.458933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065231, 28.335346, 29.530720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023377, -0.583081, 0.812077,
		0.276343, -0.784419, -0.555267,
		0.960775, 0.211432, 0.179468,
		30.353464, 28.398775, 29.584560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091869, 27.587116, 29.376005>,  <29.680922, 28.250774, 29.458933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091869, 27.587116, 29.376005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307514, 27.831532, 29.607864>,  <30.436901, 27.978180, 29.746979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.307514, 27.831532, 29.607864>,  <30.091869, 27.587116, 29.376005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307514, 27.831532, 29.607864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088883, -0.725659, 0.682290,
		0.837530, -0.316311, -0.445523,
		0.539114, 0.611038, 0.579647,
		30.469248, 28.014843, 29.781757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769245, 27.239811, 29.527567>,  <30.091869, 27.587116, 29.376005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769245, 27.239811, 29.527567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.695913, 27.519165, 29.804306>,  <30.651915, 27.686777, 29.970348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.695913, 27.519165, 29.804306>,  <30.769245, 27.239811, 29.527567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.695913, 27.519165, 29.804306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129083, -0.680578, 0.721215,
		0.974540, 0.221524, 0.034619,
		-0.183327, 0.698384, 0.691846,
		30.640915, 27.728680, 30.011860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115526, 26.981148, 30.043636>,  <30.769245, 27.239811, 29.527567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115526, 26.981148, 30.043636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855906, 27.237007, 30.208359>,  <30.700134, 27.390524, 30.307192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.855906, 27.237007, 30.208359>,  <31.115526, 26.981148, 30.043636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855906, 27.237007, 30.208359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110730, -0.614985, 0.780726,
		0.752644, 0.461131, 0.469984,
		-0.649050, 0.639650, 0.411804,
		30.661190, 27.428902, 30.331900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348778, 27.159163, 30.740078>,  <31.115526, 26.981148, 30.043636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348778, 27.159163, 30.740078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964270, 27.268085, 30.757084>,  <30.733564, 27.333439, 30.767288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.964270, 27.268085, 30.757084>,  <31.348778, 27.159163, 30.740078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964270, 27.268085, 30.757084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049690, -0.322973, 0.945103,
		0.271088, 0.906388, 0.323995,
		-0.961271, 0.272305, 0.042516,
		30.675888, 27.349777, 30.769838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282604, 27.357492, 31.427681>,  <31.348778, 27.159163, 30.740078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282604, 27.357492, 31.427681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907360, 27.300156, 31.301567>,  <30.682215, 27.265755, 31.225899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.907360, 27.300156, 31.301567>,  <31.282604, 27.357492, 31.427681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907360, 27.300156, 31.301567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227705, -0.430661, 0.873316,
		-0.260963, 0.891058, 0.371368,
		-0.938109, -0.143340, -0.315285,
		30.625927, 27.257153, 31.206982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812593, 27.614307, 32.008839>,  <31.282604, 27.357492, 31.427681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812593, 27.614307, 32.008839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614277, 27.358192, 31.774155>,  <30.495287, 27.204523, 31.633345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614277, 27.358192, 31.774155>,  <30.812593, 27.614307, 32.008839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614277, 27.358192, 31.774155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304863, -0.504269, 0.807943,
		-0.813173, 0.579435, 0.054811,
		-0.495790, -0.640288, -0.586706,
		30.465540, 27.166105, 31.598143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128895, 27.520943, 32.381222>,  <30.812593, 27.614307, 32.008839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128895, 27.520943, 32.381222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.211456, 27.210800, 32.142487>,  <30.260994, 27.024715, 31.999245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.211456, 27.210800, 32.142487>,  <30.128895, 27.520943, 32.381222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211456, 27.210800, 32.142487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368016, -0.626705, 0.686881,
		-0.906621, 0.077872, -0.414698,
		0.206404, -0.775356, -0.596841,
		30.273378, 26.978193, 31.963434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571745, 27.247425, 32.254902>,  <30.128895, 27.520943, 32.381222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571745, 27.247425, 32.254902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837387, 26.952595, 32.204811>,  <29.996773, 26.775696, 32.174755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.837387, 26.952595, 32.204811>,  <29.571745, 27.247425, 32.254902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837387, 26.952595, 32.204811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526230, -0.579810, 0.622015,
		-0.531082, -0.347184, -0.772926,
		0.664105, -0.737078, -0.125228,
		30.036619, 26.731472, 32.167244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158297, 26.623951, 32.226185>,  <29.571745, 27.247425, 32.254902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158297, 26.623951, 32.226185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531454, 26.484840, 32.263618>,  <29.755348, 26.401375, 32.286079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.531454, 26.484840, 32.263618>,  <29.158297, 26.623951, 32.226185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531454, 26.484840, 32.263618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348591, -0.806639, 0.477303,
		-0.090503, -0.477897, -0.873741,
		0.932895, -0.347776, 0.093587,
		29.811323, 26.380508, 32.291695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157286, 25.963076, 32.014729>,  <29.158297, 26.623951, 32.226185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157286, 25.963076, 32.014729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495687, 25.971107, 32.227848>,  <29.698729, 25.975927, 32.355721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.495687, 25.971107, 32.227848>,  <29.157286, 25.963076, 32.014729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495687, 25.971107, 32.227848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306959, -0.798721, 0.517514,
		0.435947, -0.601367, -0.669558,
		0.846006, 0.020082, 0.532795,
		29.749489, 25.977133, 32.387688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440575, 25.285591, 31.889862>,  <29.157286, 25.963076, 32.014729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440575, 25.285591, 31.889862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559034, 25.449116, 32.235153>,  <29.630110, 25.547232, 32.442329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.559034, 25.449116, 32.235153>,  <29.440575, 25.285591, 31.889862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559034, 25.449116, 32.235153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310146, -0.813640, 0.491731,
		0.903385, -0.413354, -0.114168,
		0.296150, 0.408814, 0.863230,
		29.647879, 25.571760, 32.494122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018993, 24.782007, 32.209949>,  <29.440575, 25.285591, 31.889862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018993, 24.782007, 32.209949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874146, 25.006302, 32.507793>,  <29.787237, 25.140879, 32.686501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.874146, 25.006302, 32.507793>,  <30.018993, 24.782007, 32.209949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.874146, 25.006302, 32.507793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222553, -0.827734, 0.515099,
		0.905174, 0.020812, 0.424532,
		-0.362120, 0.560735, 0.744611,
		29.765511, 25.174522, 32.731178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371294, 24.552084, 32.954456>,  <30.018993, 24.782007, 32.209949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371294, 24.552084, 32.954456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015530, 24.731571, 32.989319>,  <29.802071, 24.839264, 33.010235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.015530, 24.731571, 32.989319>,  <30.371294, 24.552084, 32.954456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015530, 24.731571, 32.989319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284319, -0.692366, 0.663168,
		0.357920, 0.565050, 0.743379,
		-0.889413, 0.448718, 0.087157,
		29.748705, 24.866186, 33.015465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400539, 23.839149, 32.595379>,  <30.371294, 24.552084, 32.954456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400539, 23.839149, 32.595379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650444, 23.573284, 32.431477>,  <30.800386, 23.413765, 32.333134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650444, 23.573284, 32.431477>,  <30.400539, 23.839149, 32.595379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650444, 23.573284, 32.431477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127682, 0.430748, -0.893394,
		0.770307, 0.610475, 0.184248,
		0.624759, -0.664662, -0.409755,
		30.837872, 23.373886, 32.308552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946047, 24.272503, 32.221874>,  <30.400539, 23.839149, 32.595379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946047, 24.272503, 32.221874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906391, 23.905876, 32.066917>,  <30.882597, 23.685900, 31.973944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.906391, 23.905876, 32.066917>,  <30.946047, 24.272503, 32.221874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906391, 23.905876, 32.066917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000971, 0.389400, -0.921068,
		0.995073, -0.090939, -0.039495,
		-0.099140, -0.916568, -0.387394,
		30.876650, 23.630905, 31.950699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495316, 24.311152, 31.683918>,  <30.946047, 24.272503, 32.221874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495316, 24.311152, 31.683918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227484, 24.017872, 31.636456>,  <31.066784, 23.841904, 31.607979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.227484, 24.017872, 31.636456>,  <31.495316, 24.311152, 31.683918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227484, 24.017872, 31.636456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126618, 0.270096, -0.954472,
		0.731867, -0.624072, -0.273687,
		-0.669581, -0.733200, -0.118656,
		31.026609, 23.797913, 31.600859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578575, 24.298655, 30.998669>,  <31.495316, 24.311152, 31.683918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578575, 24.298655, 30.998669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253019, 24.086296, 31.093102>,  <31.057686, 23.958881, 31.149761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.253019, 24.086296, 31.093102>,  <31.578575, 24.298655, 30.998669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253019, 24.086296, 31.093102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407998, 0.232925, -0.882771,
		0.413672, -0.814797, -0.406180,
		-0.813888, -0.530898, 0.236081,
		31.008852, 23.927027, 31.163925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527822, 23.904699, 30.492924>,  <31.578575, 24.298655, 30.998669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.527822, 23.904699, 30.492924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.153093, 23.899422, 30.632744>,  <30.928255, 23.896255, 30.716637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.153093, 23.899422, 30.632744>,  <31.527822, 23.904699, 30.492924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153093, 23.899422, 30.632744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322586, 0.419036, -0.848733,
		-0.135276, -0.907874, -0.396819,
		-0.936824, -0.013195, 0.349553,
		30.872046, 23.895464, 30.737610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063717, 23.578203, 29.945553>,  <31.527822, 23.904699, 30.492924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063717, 23.578203, 29.945553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823870, 23.801800, 30.174633>,  <30.679962, 23.935957, 30.312080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.823870, 23.801800, 30.174633>,  <31.063717, 23.578203, 29.945553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823870, 23.801800, 30.174633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440928, 0.366447, -0.819328,
		-0.667863, -0.743804, 0.026746,
		-0.599619, 0.558992, 0.572700,
		30.643984, 23.969498, 30.346443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421732, 23.453861, 29.670427>,  <31.063717, 23.578203, 29.945553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421732, 23.453861, 29.670427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349689, 23.793964, 29.868267>,  <30.306465, 23.998026, 29.986971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.349689, 23.793964, 29.868267>,  <30.421732, 23.453861, 29.670427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349689, 23.793964, 29.868267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446461, 0.377383, -0.811329,
		-0.876490, -0.366943, 0.311638,
		-0.180104, 0.850256, 0.494598,
		30.295658, 24.049042, 30.016647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744045, 23.688629, 29.427334>,  <30.421732, 23.453861, 29.670427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744045, 23.688629, 29.427334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838940, 24.012207, 29.642490>,  <29.895876, 24.206354, 29.771584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.838940, 24.012207, 29.642490>,  <29.744045, 23.688629, 29.427334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838940, 24.012207, 29.642490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464437, 0.580766, -0.668587,
		-0.853240, -0.091205, 0.513481,
		0.237234, 0.808945, 0.537892,
		29.910110, 24.254890, 29.803858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089960, 24.129425, 29.600925>,  <29.744045, 23.688629, 29.427334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089960, 24.129425, 29.600925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.408138, 24.371834, 29.601662>,  <29.599045, 24.517279, 29.602104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.408138, 24.371834, 29.601662>,  <29.089960, 24.129425, 29.600925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408138, 24.371834, 29.601662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363514, 0.479566, -0.798670,
		-0.484895, 0.634630, 0.601766,
		0.795447, 0.606021, 0.001842,
		29.646772, 24.553640, 29.602215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807224, 24.718491, 29.474224>,  <29.089960, 24.129425, 29.600925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807224, 24.718491, 29.474224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.189501, 24.784798, 29.376919>,  <29.418867, 24.824583, 29.318537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.189501, 24.784798, 29.376919>,  <28.807224, 24.718491, 29.474224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189501, 24.784798, 29.376919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292057, 0.637398, -0.713041,
		0.036853, 0.752492, 0.657569,
		0.955691, 0.165770, -0.243261,
		29.476208, 24.834528, 29.303940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850767, 25.416977, 29.243557>,  <28.807224, 24.718491, 29.474224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850767, 25.416977, 29.243557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.193933, 25.261425, 29.109241>,  <29.399834, 25.168095, 29.028652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.193933, 25.261425, 29.109241>,  <28.850767, 25.416977, 29.243557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193933, 25.261425, 29.109241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037817, 0.699573, -0.713560,
		0.512396, 0.599476, 0.614881,
		0.857916, -0.388879, -0.335788,
		29.451309, 25.144762, 29.008505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373550, 25.987528, 29.134182>,  <28.850767, 25.416977, 29.243557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373550, 25.987528, 29.134182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454124, 25.687790, 28.881863>,  <29.502470, 25.507948, 28.730471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454124, 25.687790, 28.881863>,  <29.373550, 25.987528, 29.134182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454124, 25.687790, 28.881863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107221, 0.657000, -0.746227,
		0.973615, 0.082682, 0.212689,
		0.201436, -0.749343, -0.630800,
		29.514555, 25.462988, 28.692623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955210, 26.235271, 28.736923>,  <29.373550, 25.987528, 29.134182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955210, 26.235271, 28.736923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841516, 25.920757, 28.517483>,  <29.773300, 25.732048, 28.385818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.841516, 25.920757, 28.517483>,  <29.955210, 26.235271, 28.736923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841516, 25.920757, 28.517483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120576, 0.538344, -0.834054,
		0.951144, -0.303212, -0.058206,
		-0.284231, -0.786287, -0.548603,
		29.756247, 25.684872, 28.352901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374157, 26.089991, 28.178907>,  <29.955210, 26.235271, 28.736923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374157, 26.089991, 28.178907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023239, 25.946396, 28.051483>,  <29.812689, 25.860239, 27.975029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.023239, 25.946396, 28.051483>,  <30.374157, 26.089991, 28.178907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023239, 25.946396, 28.051483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034825, 0.614375, -0.788245,
		0.478685, -0.702618, -0.526487,
		-0.877296, -0.358986, -0.318560,
		29.760050, 25.838699, 27.955915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939142, 25.697580, 27.921249>,  <30.374157, 26.089991, 28.178907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939142, 25.697580, 27.921249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321497, 25.796719, 27.858192>,  <31.550911, 25.856201, 27.820358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.321497, 25.796719, 27.858192>,  <30.939142, 25.697580, 27.921249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321497, 25.796719, 27.858192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281601, -0.620610, 0.731808,
		0.083544, -0.743918, -0.663028,
		0.955887, 0.247847, -0.157640,
		31.608263, 25.871073, 27.810900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179548, 25.082735, 27.988340>,  <30.939142, 25.697580, 27.921249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179548, 25.082735, 27.988340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497196, 25.325497, 28.001266>,  <31.687784, 25.471153, 28.009022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.497196, 25.325497, 28.001266>,  <31.179548, 25.082735, 27.988340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497196, 25.325497, 28.001266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428823, -0.597199, 0.677838,
		0.430682, -0.524425, -0.734501,
		0.794118, 0.606903, 0.032317,
		31.735432, 25.507568, 28.010962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866190, 24.688690, 27.950281>,  <31.179548, 25.082735, 27.988340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866190, 24.688690, 27.950281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948729, 25.037857, 28.127113>,  <31.998251, 25.247356, 28.233213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.948729, 25.037857, 28.127113>,  <31.866190, 24.688690, 27.950281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948729, 25.037857, 28.127113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755384, -0.429292, 0.495080,
		0.621946, 0.231784, -0.747970,
		0.206346, 0.872917, 0.442082,
		32.010632, 25.299732, 28.259737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578396, 24.706860, 27.917732>,  <31.866190, 24.688690, 27.950281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578396, 24.706860, 27.917732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474991, 24.952019, 28.216404>,  <32.412949, 25.099113, 28.395607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474991, 24.952019, 28.216404>,  <32.578396, 24.706860, 27.917732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474991, 24.952019, 28.216404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676298, -0.437100, 0.592929,
		0.689777, 0.658257, -0.301505,
		-0.258512, 0.612896, 0.746679,
		32.397438, 25.135887, 28.440407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246582, 24.858562, 28.292536>,  <32.578396, 24.706860, 27.917732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246582, 24.858562, 28.292536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967506, 24.955341, 28.562260>,  <32.800060, 25.013409, 28.724094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.967506, 24.955341, 28.562260>,  <33.246582, 24.858562, 28.292536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967506, 24.955341, 28.562260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584402, -0.352219, 0.731038,
		0.414377, 0.904104, 0.104344,
		-0.697686, 0.241947, 0.674312,
		32.758202, 25.027925, 28.764553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542858, 25.286512, 28.773876>,  <33.246582, 24.858562, 28.292536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542858, 25.286512, 28.773876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215069, 25.151134, 28.958881>,  <33.018394, 25.069908, 29.069883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.215069, 25.151134, 28.958881>,  <33.542858, 25.286512, 28.773876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215069, 25.151134, 28.958881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568986, -0.383743, 0.727321,
		-0.068672, 0.859184, 0.507038,
		-0.819475, -0.338444, 0.462511,
		32.969227, 25.049601, 29.097635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586948, 25.440189, 29.508934>,  <33.542858, 25.286512, 28.773876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586948, 25.440189, 29.508934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307262, 25.155582, 29.481121>,  <33.139450, 24.984818, 29.464434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.307262, 25.155582, 29.481121>,  <33.586948, 25.440189, 29.508934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307262, 25.155582, 29.481121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546270, -0.594493, 0.590057,
		-0.461173, 0.374595, 0.804362,
		-0.699219, -0.711517, -0.069534,
		33.097496, 24.942127, 29.460260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029236, 25.862463, 29.977846>,  <33.586948, 25.440189, 29.508934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029236, 25.862463, 29.977846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335442, 26.083893, 30.109024>,  <34.519165, 26.216751, 30.187731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335442, 26.083893, 30.109024>,  <34.029236, 25.862463, 29.977846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335442, 26.083893, 30.109024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208866, 0.695884, -0.687110,
		-0.608578, 0.457494, 0.648330,
		0.765512, 0.553574, 0.327944,
		34.565094, 26.249966, 30.207407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795498, 26.520777, 30.094387>,  <34.029236, 25.862463, 29.977846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795498, 26.520777, 30.094387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188057, 26.586334, 30.054398>,  <34.423592, 26.625668, 30.030403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.188057, 26.586334, 30.054398>,  <33.795498, 26.520777, 30.094387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188057, 26.586334, 30.054398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191212, 0.788024, -0.585197,
		-0.017126, 0.593428, 0.804705,
		0.981399, 0.163892, -0.099975,
		34.482475, 26.635502, 30.024405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827076, 27.247829, 30.047199>,  <33.795498, 26.520777, 30.094387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827076, 27.247829, 30.047199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178020, 27.116459, 29.907272>,  <34.388588, 27.037636, 29.823317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178020, 27.116459, 29.907272>,  <33.827076, 27.247829, 30.047199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178020, 27.116459, 29.907272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011075, 0.742712, -0.669519,
		0.479704, 0.583536, 0.655264,
		0.877360, -0.328428, -0.349819,
		34.441227, 27.017931, 29.802326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261875, 27.911446, 30.057823>,  <33.827076, 27.247829, 30.047199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261875, 27.911446, 30.057823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405750, 27.640678, 29.800949>,  <34.492077, 27.478218, 29.646824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.405750, 27.640678, 29.800949>,  <34.261875, 27.911446, 30.057823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405750, 27.640678, 29.800949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083788, 0.708903, -0.700311,
		0.929302, 0.198089, 0.311704,
		0.359692, -0.676917, -0.642188,
		34.513657, 27.437603, 29.608294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704170, 28.275137, 29.738159>,  <34.261875, 27.911446, 30.057823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704170, 28.275137, 29.738159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643467, 27.961380, 29.497593>,  <34.607044, 27.773127, 29.353252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.643467, 27.961380, 29.497593>,  <34.704170, 28.275137, 29.738159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643467, 27.961380, 29.497593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026586, 0.611482, -0.790811,
		0.988060, -0.104026, -0.113654,
		-0.151762, -0.784390, -0.601415,
		34.597939, 27.726063, 29.317169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055958, 28.403646, 29.102657>,  <34.704170, 28.275137, 29.738159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055958, 28.403646, 29.102657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774185, 28.142952, 28.990219>,  <34.605122, 27.986536, 28.922756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.774185, 28.142952, 28.990219>,  <35.055958, 28.403646, 29.102657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774185, 28.142952, 28.990219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164916, 0.535492, -0.828282,
		0.690348, -0.537110, -0.484699,
		-0.704431, -0.651737, -0.281098,
		34.562855, 27.947432, 28.905890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131195, 28.413874, 28.406946>,  <35.055958, 28.403646, 29.102657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131195, 28.413874, 28.406946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778416, 28.233540, 28.461956>,  <34.566750, 28.125340, 28.494963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.778416, 28.233540, 28.461956>,  <35.131195, 28.413874, 28.406946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778416, 28.233540, 28.461956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337039, 0.399237, -0.852652,
		0.329499, -0.798347, -0.504056,
		-0.881949, -0.450835, 0.137526,
		34.513832, 28.098289, 28.503214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.413940, 27.193470, 34.571712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051193, 27.132103, 34.414719>,  <31.833544, 27.095282, 34.320522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051193, 27.132103, 34.414719>,  <32.413940, 27.193470, 34.571712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051193, 27.132103, 34.414719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146157, 0.759051, -0.634412,
		0.395248, -0.632695, -0.665939,
		-0.906872, -0.153419, -0.392487,
		31.779131, 27.086077, 34.296974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536263, 27.081007, 33.801971>,  <32.413940, 27.193470, 34.571712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536263, 27.081007, 33.801971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149727, 27.175621, 33.842442>,  <31.917805, 27.232389, 33.866722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149727, 27.175621, 33.842442>,  <32.536263, 27.081007, 33.801971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149727, 27.175621, 33.842442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116057, 0.751789, -0.649110,
		-0.229599, -0.615520, -0.753936,
		-0.966341, 0.236534, 0.101174,
		31.859825, 27.246582, 33.872795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421574, 27.497501, 33.309788>,  <32.536263, 27.081007, 33.801971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421574, 27.497501, 33.309788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058842, 27.556938, 33.467560>,  <31.841202, 27.592600, 33.562222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.058842, 27.556938, 33.467560>,  <32.421574, 27.497501, 33.309788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058842, 27.556938, 33.467560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204298, 0.663562, -0.719686,
		-0.368666, -0.733217, -0.571383,
		-0.906834, 0.148591, 0.394427,
		31.786791, 27.601515, 33.585888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007706, 27.604261, 32.799610>,  <32.421574, 27.497501, 33.309788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007706, 27.604261, 32.799610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.805784, 27.782764, 33.095184>,  <31.684631, 27.889866, 33.272530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.805784, 27.782764, 33.095184>,  <32.007706, 27.604261, 32.799610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805784, 27.782764, 33.095184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228725, 0.756269, -0.612978,
		-0.832381, -0.478446, -0.279696,
		-0.504803, 0.446259, 0.738937,
		31.654343, 27.916641, 33.316864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419338, 27.877596, 32.474525>,  <32.007706, 27.604261, 32.799610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419338, 27.877596, 32.474525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469492, 28.073372, 32.819717>,  <31.499584, 28.190838, 33.026833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.469492, 28.073372, 32.819717>,  <31.419338, 27.877596, 32.474525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469492, 28.073372, 32.819717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146779, 0.869419, -0.471770,
		-0.981191, -0.067514, 0.180850,
		0.125384, 0.489441, 0.862975,
		31.507107, 28.220203, 33.078609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892559, 28.320938, 32.498871>,  <31.419338, 27.877596, 32.474525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892559, 28.320938, 32.498871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.163893, 28.484402, 32.743122>,  <31.326693, 28.582479, 32.889671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.163893, 28.484402, 32.743122>,  <30.892559, 28.320938, 32.498871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163893, 28.484402, 32.743122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114455, 0.879684, -0.461580,
		-0.725786, 0.243215, 0.643491,
		0.678332, 0.408659, 0.610625,
		31.367392, 28.607000, 32.926311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628782, 28.915524, 32.585575>,  <30.892559, 28.320938, 32.498871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628782, 28.915524, 32.585575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.999386, 28.988865, 32.717003>,  <31.221748, 29.032869, 32.795860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.999386, 28.988865, 32.717003>,  <30.628782, 28.915524, 32.585575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999386, 28.988865, 32.717003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037513, 0.913898, -0.404206,
		-0.374393, 0.362175, 0.853615,
		0.926511, 0.183353, 0.328571,
		31.277340, 29.043871, 32.815575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557575, 29.551945, 33.054760>,  <30.628782, 28.915524, 32.585575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557575, 29.551945, 33.054760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925764, 29.494324, 32.909447>,  <31.146677, 29.459751, 32.822258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.925764, 29.494324, 32.909447>,  <30.557575, 29.551945, 33.054760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925764, 29.494324, 32.909447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000110, 0.929492, -0.368843,
		0.390806, 0.339550, 0.855556,
		0.920473, -0.144052, -0.363288,
		31.201906, 29.451109, 32.800461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995844, 29.978287, 33.347645>,  <30.557575, 29.551945, 33.054760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995844, 29.978287, 33.347645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.203711, 29.897762, 33.015518>,  <31.328430, 29.849447, 32.816242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.203711, 29.897762, 33.015518>,  <30.995844, 29.978287, 33.347645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203711, 29.897762, 33.015518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026535, 0.975178, -0.219828,
		0.853957, 0.092205, 0.512109,
		0.519667, -0.201312, -0.830313,
		31.359612, 29.837368, 32.766426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472229, 30.642664, 33.280277>,  <30.995844, 29.978287, 33.347645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472229, 30.642664, 33.280277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.495464, 30.479042, 32.916016>,  <31.509405, 30.380869, 32.697456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.495464, 30.479042, 32.916016>,  <31.472229, 30.642664, 33.280277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495464, 30.479042, 32.916016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037483, 0.912449, -0.407470,
		0.997607, -0.010465, 0.068337,
		0.058090, -0.409056, -0.910658,
		31.512892, 30.356325, 32.642818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009960, 31.018421, 33.055790>,  <31.472229, 30.642664, 33.280277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009960, 31.018421, 33.055790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836397, 30.865635, 32.729397>,  <31.732260, 30.773962, 32.533562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836397, 30.865635, 32.729397>,  <32.009960, 31.018421, 33.055790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836397, 30.865635, 32.729397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096767, 0.880686, -0.463712,
		0.895747, -0.280167, -0.345172,
		-0.433905, -0.381967, -0.815983,
		31.706226, 30.751045, 32.484604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442291, 31.135332, 32.415138>,  <32.009960, 31.018421, 33.055790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442291, 31.135332, 32.415138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080505, 31.063557, 32.260353>,  <31.863434, 31.020491, 32.167484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.080505, 31.063557, 32.260353>,  <32.442291, 31.135332, 32.415138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080505, 31.063557, 32.260353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130003, 0.748074, -0.650757,
		0.406245, -0.638895, -0.653282,
		-0.904469, -0.179438, -0.386960,
		31.809164, 31.009726, 32.144264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086895, 30.658474, 32.331486>,  <32.442291, 31.135332, 32.415138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086895, 30.658474, 32.331486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419712, 30.548885, 32.138554>,  <33.619404, 30.483133, 32.022793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.419712, 30.548885, 32.138554>,  <33.086895, 30.658474, 32.331486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419712, 30.548885, 32.138554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147448, -0.729006, 0.668438,
		-0.534755, -0.627288, -0.566168,
		0.832043, -0.273970, -0.482332,
		33.669327, 30.466694, 31.993855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043945, 29.900345, 32.274002>,  <33.086895, 30.658474, 32.331486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043945, 29.900345, 32.274002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429783, 30.005783, 32.270386>,  <33.661285, 30.069046, 32.268215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429783, 30.005783, 32.270386>,  <33.043945, 29.900345, 32.274002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429783, 30.005783, 32.270386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210124, -0.747283, 0.630409,
		0.159415, -0.609987, -0.776210,
		0.964590, 0.263597, -0.009044,
		33.719158, 30.084862, 32.267673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417915, 29.298332, 32.097679>,  <33.043945, 29.900345, 32.274002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417915, 29.298332, 32.097679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690765, 29.536217, 32.267868>,  <33.854473, 29.678947, 32.369980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.690765, 29.536217, 32.267868>,  <33.417915, 29.298332, 32.097679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690765, 29.536217, 32.267868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251077, -0.736960, 0.627575,
		0.686782, -0.321258, -0.652016,
		0.682123, 0.594713, 0.425471,
		33.895401, 29.714630, 32.395508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139778, 29.053558, 31.929630>,  <33.417915, 29.298332, 32.097679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139778, 29.053558, 31.929630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131676, 29.263103, 32.270256>,  <34.126816, 29.388830, 32.474632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.131676, 29.263103, 32.270256>,  <34.139778, 29.053558, 31.929630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131676, 29.263103, 32.270256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203197, -0.831804, 0.516539,
		0.978928, 0.183497, -0.089600,
		-0.020253, 0.523862, 0.851563,
		34.125599, 29.420261, 32.525726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788113, 29.068445, 32.359818>,  <34.139778, 29.053558, 31.929630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788113, 29.068445, 32.359818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492085, 29.140987, 32.618866>,  <34.314468, 29.184513, 32.774296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.492085, 29.140987, 32.618866>,  <34.788113, 29.068445, 32.359818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492085, 29.140987, 32.618866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270724, -0.801156, 0.533721,
		0.615638, 0.570316, 0.543811,
		-0.740067, 0.181356, 0.647620,
		34.270065, 29.195395, 32.813152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123672, 28.891869, 32.941650>,  <34.788113, 29.068445, 32.359818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123672, 28.891869, 32.941650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740776, 28.913994, 33.055233>,  <34.511040, 28.927269, 33.123383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.740776, 28.913994, 33.055233>,  <35.123672, 28.891869, 32.941650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740776, 28.913994, 33.055233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179191, -0.657213, 0.732094,
		0.227115, 0.751672, 0.619199,
		-0.957241, 0.055315, 0.283956,
		34.453606, 28.930588, 33.140419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180489, 28.988058, 33.671230>,  <35.123672, 28.891869, 32.941650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180489, 28.988058, 33.671230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.808865, 28.855732, 33.605007>,  <34.585892, 28.776337, 33.565273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.808865, 28.855732, 33.605007>,  <35.180489, 28.988058, 33.671230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808865, 28.855732, 33.605007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104395, -0.663807, 0.740582,
		-0.354895, 0.670761, 0.651251,
		-0.929059, -0.330817, -0.165558,
		34.530148, 28.756487, 33.555340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917385, 28.660830, 34.350655>,  <35.180489, 28.988058, 33.671230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917385, 28.660830, 34.350655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615349, 28.539886, 34.117958>,  <34.434128, 28.467319, 33.978340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.615349, 28.539886, 34.117958>,  <34.917385, 28.660830, 34.350655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615349, 28.539886, 34.117958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004704, -0.884786, 0.465974,
		-0.655605, 0.354588, 0.666670,
		-0.755089, -0.302359, -0.581738,
		34.388821, 28.449179, 33.943436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234272, 28.397326, 34.757111>,  <34.917385, 28.660830, 34.350655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234272, 28.397326, 34.757111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258278, 28.211346, 34.403790>,  <34.272682, 28.099758, 34.191795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258278, 28.211346, 34.403790>,  <34.234272, 28.397326, 34.757111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258278, 28.211346, 34.403790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032152, -0.885338, 0.463835,
		-0.997680, 0.000563, -0.068082,
		0.060014, -0.464948, -0.883302,
		34.276283, 28.071861, 34.138798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677235, 27.865616, 34.869354>,  <34.234272, 28.397326, 34.757111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677235, 27.865616, 34.869354> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890598, 27.739655, 34.555332>,  <34.018616, 27.664078, 34.366920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.890598, 27.739655, 34.555332>,  <33.677235, 27.865616, 34.869354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890598, 27.739655, 34.555332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088560, -0.902225, 0.422074,
		-0.841208, -0.294663, -0.453369,
		0.533410, -0.314901, -0.785055,
		34.050621, 27.645184, 34.319817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328533, 27.332752, 34.616192>,  <33.677235, 27.865616, 34.869354>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328533, 27.332752, 34.616192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709270, 27.295376, 34.499386>,  <33.937714, 27.272951, 34.429302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.709270, 27.295376, 34.499386>,  <33.328533, 27.332752, 34.616192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709270, 27.295376, 34.499386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023980, -0.926821, 0.374736,
		-0.305657, -0.363691, -0.879945,
		0.951839, -0.093440, -0.292011,
		33.994823, 27.267344, 34.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363586, 26.628069, 34.407494>,  <33.328533, 27.332752, 34.616192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363586, 26.628069, 34.407494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.746002, 26.731079, 34.463593>,  <33.975452, 26.792885, 34.497253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.746002, 26.731079, 34.463593>,  <33.363586, 26.628069, 34.407494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746002, 26.731079, 34.463593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185034, -0.900826, 0.392779,
		0.227492, -0.349561, -0.908875,
		0.956038, 0.257527, 0.140250,
		34.032814, 26.808336, 34.505669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909931, 26.064072, 34.212444>,  <33.363586, 26.628069, 34.407494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909931, 26.064072, 34.212444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128536, 26.287495, 34.462032>,  <34.259697, 26.421549, 34.611786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.128536, 26.287495, 34.462032>,  <33.909931, 26.064072, 34.212444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128536, 26.287495, 34.462032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403562, -0.828519, 0.388194,
		0.733801, 0.039661, -0.678205,
		0.546510, 0.558555, 0.623974,
		34.292488, 26.455061, 34.649223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582333, 25.785215, 34.155411>,  <33.909931, 26.064072, 34.212444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582333, 25.785215, 34.155411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559284, 25.988071, 34.499386>,  <34.545456, 26.109785, 34.705769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.559284, 25.988071, 34.499386>,  <34.582333, 25.785215, 34.155411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559284, 25.988071, 34.499386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353008, -0.795371, 0.492717,
		0.933844, 0.331956, -0.133192,
		-0.057623, 0.507139, 0.859936,
		34.541996, 26.140213, 34.757366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690754, 26.202581, 33.521179>,  <34.582333, 25.785215, 34.155411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690754, 26.202581, 33.521179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.726364, 25.896069, 33.266655>,  <34.747730, 25.712162, 33.113941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.726364, 25.896069, 33.266655>,  <34.690754, 26.202581, 33.521179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726364, 25.896069, 33.266655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201486, 0.639492, -0.741926,
		0.975437, -0.062157, 0.211326,
		0.089025, -0.766281, -0.636308,
		34.753071, 25.666183, 33.075764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216591, 26.350704, 33.084290>,  <34.690754, 26.202581, 33.521179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216591, 26.350704, 33.084290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.048035, 26.059296, 32.868256>,  <34.946903, 25.884451, 32.738636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.048035, 26.059296, 32.868256>,  <35.216591, 26.350704, 33.084290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048035, 26.059296, 32.868256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283656, 0.459777, -0.841513,
		0.861378, -0.507801, 0.012905,
		-0.421388, -0.728521, -0.540083,
		34.921619, 25.840740, 32.706230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541473, 26.324951, 32.407909>,  <35.216591, 26.350704, 33.084290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541473, 26.324951, 32.407909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.235329, 26.086212, 32.311584>,  <35.051640, 25.942968, 32.253788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.235329, 26.086212, 32.311584>,  <35.541473, 26.324951, 32.407909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235329, 26.086212, 32.311584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035646, 0.334280, -0.941800,
		0.642611, -0.729403, -0.234570,
		-0.765363, -0.596849, -0.240812,
		35.005718, 25.907158, 32.239342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747036, 26.001347, 31.827297>,  <35.541473, 26.324951, 32.407909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747036, 26.001347, 31.827297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347324, 25.987442, 31.821152>,  <35.107498, 25.979099, 31.817465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347324, 25.987442, 31.821152>,  <35.747036, 26.001347, 31.827297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347324, 25.987442, 31.821152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003885, 0.308675, -0.951159,
		0.037803, -0.950532, -0.308317,
		-0.999278, -0.034759, -0.015361,
		35.047543, 25.977015, 31.816544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449028, 25.488585, 31.328543>,  <35.747036, 26.001347, 31.827297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449028, 25.488585, 31.328543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143314, 25.739868, 31.386818>,  <34.959888, 25.890638, 31.421783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.143314, 25.739868, 31.386818>,  <35.449028, 25.488585, 31.328543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143314, 25.739868, 31.386818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095521, 0.113138, -0.988977,
		-0.637770, -0.769772, -0.026462,
		-0.764281, 0.628212, 0.145686,
		34.914028, 25.928331, 31.430523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956303, 25.245838, 30.843012>,  <35.449028, 25.488585, 31.328543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956303, 25.245838, 30.843012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854130, 25.621899, 30.933231>,  <34.792828, 25.847534, 30.987364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.854130, 25.621899, 30.933231>,  <34.956303, 25.245838, 30.843012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854130, 25.621899, 30.933231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098155, 0.206868, -0.973433,
		-0.961832, -0.270785, 0.039440,
		-0.255432, 0.940149, 0.225551,
		34.777500, 25.903944, 31.000896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368198, 25.371542, 30.351374>,  <34.956303, 25.245838, 30.843012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368198, 25.371542, 30.351374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.535061, 25.712929, 30.476318>,  <34.635178, 25.917761, 30.551285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.535061, 25.712929, 30.476318>,  <34.368198, 25.371542, 30.351374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535061, 25.712929, 30.476318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058886, 0.368354, -0.927819,
		-0.906923, 0.368655, 0.203920,
		0.417160, 0.853468, 0.312360,
		34.660210, 25.968969, 30.570026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606331, 25.184525, 30.294956>,  <34.368198, 25.371542, 30.351374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606331, 25.184525, 30.294956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.410645, 24.912384, 30.076675>,  <33.293232, 24.749100, 29.945707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.410645, 24.912384, 30.076675>,  <33.606331, 25.184525, 30.294956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410645, 24.912384, 30.076675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164701, -0.686496, 0.708235,
		-0.856472, 0.256600, 0.447897,
		-0.489212, -0.680353, -0.545702,
		33.263882, 24.708279, 29.912964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095623, 24.760649, 30.746681>,  <33.606331, 25.184525, 30.294956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095623, 24.760649, 30.746681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131451, 24.503212, 30.442638>,  <33.152946, 24.348749, 30.260212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.131451, 24.503212, 30.442638>,  <33.095623, 24.760649, 30.746681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131451, 24.503212, 30.442638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100429, -0.753450, 0.649790,
		-0.990904, -0.134539, -0.002851,
		0.089570, -0.643593, -0.760108,
		33.158321, 24.310135, 30.214605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654190, 24.197346, 30.815292>,  <33.095623, 24.760649, 30.746681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654190, 24.197346, 30.815292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945423, 24.054924, 30.580986>,  <33.120163, 23.969471, 30.440403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.945423, 24.054924, 30.580986>,  <32.654190, 24.197346, 30.815292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945423, 24.054924, 30.580986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165813, -0.737667, 0.654487,
		-0.665131, -0.573649, -0.478046,
		0.728085, -0.356053, -0.585763,
		33.163849, 23.948109, 30.405256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500282, 23.509237, 30.783775>,  <32.654190, 24.197346, 30.815292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500282, 23.509237, 30.783775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.879444, 23.541233, 30.660439>,  <33.106941, 23.560431, 30.586437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.879444, 23.541233, 30.660439>,  <32.500282, 23.509237, 30.783775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879444, 23.541233, 30.660439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218140, -0.868388, 0.445328,
		-0.232136, -0.489390, -0.840601,
		0.947907, 0.079992, -0.308340,
		33.163815, 23.565231, 30.567936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636677, 22.839155, 30.521969>,  <32.500282, 23.509237, 30.783775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636677, 22.839155, 30.521969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.998363, 22.995476, 30.590862>,  <33.215374, 23.089268, 30.632198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.998363, 22.995476, 30.590862>,  <32.636677, 22.839155, 30.521969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998363, 22.995476, 30.590862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248191, -0.809053, 0.532761,
		0.347550, -0.438985, -0.828554,
		0.904218, 0.390801, 0.172234,
		33.269630, 23.112717, 30.642532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124538, 22.292242, 30.481691>,  <32.636677, 22.839155, 30.521969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124538, 22.292242, 30.481691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321060, 22.575081, 30.685116>,  <33.438972, 22.744783, 30.807171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321060, 22.575081, 30.685116>,  <33.124538, 22.292242, 30.481691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321060, 22.575081, 30.685116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341548, -0.693533, 0.634317,
		0.801226, -0.137945, -0.582243,
		0.491306, 0.707095, 0.508562,
		33.468452, 22.787209, 30.837685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785908, 22.059311, 30.600471>,  <33.124538, 22.292242, 30.481691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785908, 22.059311, 30.600471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779221, 22.368484, 30.854179>,  <33.775208, 22.553988, 31.006403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.779221, 22.368484, 30.854179>,  <33.785908, 22.059311, 30.600471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779221, 22.368484, 30.854179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348161, -0.590155, 0.728355,
		0.937285, 0.233007, -0.259236,
		-0.016723, 0.772933, 0.634268,
		33.774204, 22.600365, 31.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414551, 22.036623, 30.933964>,  <33.785908, 22.059311, 30.600471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414551, 22.036623, 30.933964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159016, 22.227139, 31.175636>,  <34.005695, 22.341448, 31.320641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.159016, 22.227139, 31.175636>,  <34.414551, 22.036623, 30.933964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159016, 22.227139, 31.175636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318312, -0.551320, 0.771183,
		0.700403, 0.684980, 0.200597,
		-0.638838, 0.476287, 0.604183,
		33.967365, 22.370024, 31.356892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857861, 22.272436, 31.537605>,  <34.414551, 22.036623, 30.933964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857861, 22.272436, 31.537605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476521, 22.232212, 31.651455>,  <34.247715, 22.208076, 31.719765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.476521, 22.232212, 31.651455>,  <34.857861, 22.272436, 31.537605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476521, 22.232212, 31.651455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296908, -0.482598, 0.823981,
		0.054499, 0.870050, 0.489942,
		-0.953350, -0.100561, 0.284626,
		34.190517, 22.202044, 31.736843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.038414, 33.504841, 19.903200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681948, 33.361603, 20.014622>,  <30.468069, 33.275658, 20.081474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681948, 33.361603, 20.014622>,  <31.038414, 33.504841, 19.903200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681948, 33.361603, 20.014622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436044, -0.506539, 0.743830,
		-0.125267, 0.784336, 0.607557,
		-0.891164, -0.358099, 0.278552,
		30.414598, 33.254173, 20.098188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106997, 33.559681, 20.612524>,  <31.038414, 33.504841, 19.903200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106997, 33.559681, 20.612524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789085, 33.319550, 20.576893>,  <30.598339, 33.175472, 20.555515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789085, 33.319550, 20.576893>,  <31.106997, 33.559681, 20.612524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789085, 33.319550, 20.576893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298603, -0.514584, 0.803766,
		-0.528361, 0.612216, 0.588239,
		-0.794777, -0.600329, -0.089077,
		30.550652, 33.139450, 20.550169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824772, 33.414795, 21.328785>,  <31.106997, 33.559681, 20.612524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824772, 33.414795, 21.328785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743525, 33.128078, 21.061966>,  <30.694777, 32.956047, 20.901875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743525, 33.128078, 21.061966>,  <30.824772, 33.414795, 21.328785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743525, 33.128078, 21.061966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179231, -0.696956, 0.694355,
		-0.962611, 0.021480, 0.270035,
		-0.203117, -0.716792, -0.667047,
		30.682589, 32.913040, 20.861853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594427, 32.958038, 21.725060>,  <30.824772, 33.414795, 21.328785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594427, 32.958038, 21.725060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649696, 32.720898, 21.407711>,  <30.682858, 32.578613, 21.217302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649696, 32.720898, 21.407711>,  <30.594427, 32.958038, 21.725060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649696, 32.720898, 21.407711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349114, -0.720486, 0.599183,
		-0.926838, -0.359768, 0.107420,
		0.138172, -0.592847, -0.793373,
		30.691149, 32.543045, 21.169699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127813, 32.379971, 21.757143>,  <30.594427, 32.958038, 21.725060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127813, 32.379971, 21.757143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443321, 32.280743, 21.532181>,  <30.632626, 32.221207, 21.397203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443321, 32.280743, 21.532181>,  <30.127813, 32.379971, 21.757143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443321, 32.280743, 21.532181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143594, -0.815267, 0.561000,
		-0.597679, -0.523259, -0.607438,
		0.788772, -0.248073, -0.562405,
		30.679953, 32.206322, 21.363459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993307, 31.675613, 21.639851>,  <30.127813, 32.379971, 21.757143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993307, 31.675613, 21.639851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381689, 31.744152, 21.573055>,  <30.614719, 31.785275, 21.532978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381689, 31.744152, 21.573055>,  <29.993307, 31.675613, 21.639851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381689, 31.744152, 21.573055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232955, -0.836188, 0.496509,
		-0.054559, -0.520989, -0.851818,
		0.970956, 0.171347, -0.166989,
		30.672976, 31.795555, 21.522959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185837, 31.032106, 21.578407>,  <29.993307, 31.675613, 21.639851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185837, 31.032106, 21.578407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531210, 31.232727, 21.600044>,  <30.738434, 31.353100, 21.613026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531210, 31.232727, 21.600044>,  <30.185837, 31.032106, 21.578407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531210, 31.232727, 21.600044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401543, -0.748222, 0.528136,
		0.305360, -0.434291, -0.847436,
		0.863434, 0.501553, 0.054091,
		30.790239, 31.383194, 21.616272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720222, 30.627510, 21.290751>,  <30.185837, 31.032106, 21.578407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720222, 30.627510, 21.290751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889563, 30.889664, 21.540947>,  <30.991167, 31.046957, 21.691065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889563, 30.889664, 21.540947>,  <30.720222, 30.627510, 21.290751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889563, 30.889664, 21.540947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380569, -0.755197, 0.533708,
		0.822156, 0.012097, -0.569134,
		0.423352, 0.655386, 0.625493,
		31.016569, 31.086279, 21.728596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430742, 30.334372, 21.441875>,  <30.720222, 30.627510, 21.290751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430742, 30.334372, 21.441875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340290, 30.578728, 21.745369>,  <31.286018, 30.725342, 21.927465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340290, 30.578728, 21.745369>,  <31.430742, 30.334372, 21.441875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340290, 30.578728, 21.745369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416296, -0.643588, 0.642255,
		0.880660, 0.461092, -0.108776,
		-0.226132, 0.610891, 0.758734,
		31.272451, 30.761995, 21.972988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989071, 30.326248, 21.857399>,  <31.430742, 30.334372, 21.441875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989071, 30.326248, 21.857399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704470, 30.455322, 22.107082>,  <31.533709, 30.532766, 22.256893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704470, 30.455322, 22.107082>,  <31.989071, 30.326248, 21.857399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704470, 30.455322, 22.107082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291628, -0.672605, 0.680114,
		0.639309, 0.665941, 0.384457,
		-0.711503, 0.322685, 0.624210,
		31.491018, 30.552128, 22.294346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192680, 30.119360, 22.465734>,  <31.989071, 30.326248, 21.857399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192680, 30.119360, 22.465734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816511, 30.221916, 22.555054>,  <31.590809, 30.283451, 22.608644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816511, 30.221916, 22.555054>,  <32.192680, 30.119360, 22.465734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816511, 30.221916, 22.555054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026770, -0.598885, 0.800388,
		0.338942, 0.758684, 0.556344,
		-0.940426, 0.256391, 0.223297,
		31.534384, 30.298834, 22.622044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304970, 30.393684, 23.104254>,  <32.192680, 30.119360, 22.465734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304970, 30.393684, 23.104254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917521, 30.294483, 23.097748>,  <31.685051, 30.234962, 23.093845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917521, 30.294483, 23.097748>,  <32.304970, 30.393684, 23.104254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917521, 30.294483, 23.097748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156271, -0.658613, 0.736076,
		-0.193261, 0.710438, 0.676703,
		-0.968623, -0.248003, -0.016263,
		31.626934, 30.220081, 23.092869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466343, 31.024981, 23.375889>,  <32.304970, 30.393684, 23.104254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466343, 31.024981, 23.375889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774036, 31.156540, 23.595013>,  <32.958652, 31.235476, 23.726488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774036, 31.156540, 23.595013>,  <32.466343, 31.024981, 23.375889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774036, 31.156540, 23.595013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170430, 0.720671, -0.672002,
		-0.615814, 0.610293, 0.498313,
		0.769238, 0.328900, 0.547812,
		33.004807, 31.255211, 23.759356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398979, 31.790874, 23.477320>,  <32.466343, 31.024981, 23.375889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398979, 31.790874, 23.477320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780571, 31.680904, 23.525230>,  <33.009525, 31.614923, 23.553976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780571, 31.680904, 23.525230>,  <32.398979, 31.790874, 23.477320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780571, 31.680904, 23.525230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293076, 0.770122, -0.566585,
		0.063525, 0.575612, 0.815252,
		0.953976, -0.274923, 0.119776,
		33.066765, 31.598427, 23.561163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850563, 32.424610, 23.661858>,  <32.398979, 31.790874, 23.477320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850563, 32.424610, 23.661858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105072, 32.147221, 23.526653>,  <33.257778, 31.980787, 23.445532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105072, 32.147221, 23.526653>,  <32.850563, 32.424610, 23.661858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105072, 32.147221, 23.526653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488655, 0.701320, -0.519005,
		0.596969, 0.165059, 0.785101,
		0.636274, -0.693473, -0.338010,
		33.295956, 31.939178, 23.425251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538418, 32.725677, 23.655653>,  <32.850563, 32.424610, 23.661858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538418, 32.725677, 23.655653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585365, 32.456955, 23.363106>,  <33.613533, 32.295719, 23.187578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.585365, 32.456955, 23.363106>,  <33.538418, 32.725677, 23.655653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.585365, 32.456955, 23.363106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482674, 0.682211, -0.549195,
		0.867900, -0.288552, 0.404337,
		0.117372, -0.671809, -0.731366,
		33.620575, 32.255413, 23.143696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199776, 32.732262, 23.436054>,  <33.538418, 32.725677, 23.655653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199776, 32.732262, 23.436054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041481, 32.540085, 23.122986>,  <33.946507, 32.424778, 22.935144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041481, 32.540085, 23.122986>,  <34.199776, 32.732262, 23.436054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041481, 32.540085, 23.122986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452324, 0.639735, -0.621403,
		0.799249, -0.599930, -0.035850,
		-0.395733, -0.480440, -0.782670,
		33.922760, 32.395954, 22.888186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784771, 32.670788, 22.942192>,  <34.199776, 32.732262, 23.436054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784771, 32.670788, 22.942192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441509, 32.626945, 22.741570>,  <34.235554, 32.600639, 22.621197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441509, 32.626945, 22.741570>,  <34.784771, 32.670788, 22.942192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441509, 32.626945, 22.741570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362187, 0.563140, -0.742761,
		0.363857, -0.819060, -0.443563,
		-0.858155, -0.109606, -0.501555,
		34.184063, 32.594063, 22.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979172, 32.557632, 22.216307>,  <34.784771, 32.670788, 22.942192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979172, 32.557632, 22.216307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615192, 32.723331, 22.224125>,  <34.396805, 32.822750, 22.228815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615192, 32.723331, 22.224125>,  <34.979172, 32.557632, 22.216307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615192, 32.723331, 22.224125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246796, 0.578790, -0.777235,
		-0.333283, -0.702423, -0.628907,
		-0.909953, 0.414251, 0.019546,
		34.342205, 32.847607, 22.229988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922066, 32.768864, 21.503984>,  <34.979172, 32.557632, 22.216307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922066, 32.768864, 21.503984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600578, 32.958408, 21.647926>,  <34.407684, 33.072136, 21.734291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600578, 32.958408, 21.647926>,  <34.922066, 32.768864, 21.503984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600578, 32.958408, 21.647926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236232, 0.809199, -0.537951,
		-0.546107, -0.347353, -0.762308,
		-0.803718, 0.473860, 0.359853,
		34.359463, 33.100567, 21.755882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589165, 33.083744, 20.914499>,  <34.922066, 32.768864, 21.503984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589165, 33.083744, 20.914499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474892, 33.286755, 21.239658>,  <34.406326, 33.408562, 21.434753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474892, 33.286755, 21.239658>,  <34.589165, 33.083744, 20.914499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474892, 33.286755, 21.239658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370918, 0.840697, -0.394523,
		-0.883631, 0.188810, -0.428424,
		-0.285685, 0.507523, 0.812899,
		34.389187, 33.439011, 21.483528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387417, 33.682465, 20.671091>,  <34.589165, 33.083744, 20.914499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387417, 33.682465, 20.671091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429810, 33.793423, 21.053047>,  <34.455246, 33.859997, 21.282221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429810, 33.793423, 21.053047>,  <34.387417, 33.682465, 20.671091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429810, 33.793423, 21.053047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317801, 0.900485, -0.296866,
		-0.942215, 0.334928, 0.007281,
		0.105985, 0.277398, 0.954891,
		34.461605, 33.876640, 21.339514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145065, 34.436642, 20.646265>,  <34.387417, 33.682465, 20.671091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145065, 34.436642, 20.646265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307968, 34.410095, 21.010624>,  <34.405708, 34.394169, 21.229240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307968, 34.410095, 21.010624>,  <34.145065, 34.436642, 20.646265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307968, 34.410095, 21.010624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583848, 0.785872, -0.203779,
		-0.702326, 0.614818, 0.358801,
		0.407258, -0.066366, 0.910899,
		34.430145, 34.390186, 21.283894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112289, 35.048801, 21.052088>,  <34.145065, 34.436642, 20.646265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112289, 35.048801, 21.052088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435734, 34.846928, 21.173050>,  <34.629799, 34.725803, 21.245626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435734, 34.846928, 21.173050>,  <34.112289, 35.048801, 21.052088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435734, 34.846928, 21.173050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552033, 0.828589, -0.093271,
		-0.203497, 0.242357, 0.948605,
		0.808609, -0.504681, 0.302405,
		34.678318, 34.695522, 21.263771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321396, 35.420471, 21.574219>,  <34.112289, 35.048801, 21.052088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321396, 35.420471, 21.574219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657562, 35.215305, 21.504223>,  <34.859261, 35.092205, 21.462225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657562, 35.215305, 21.504223>,  <34.321396, 35.420471, 21.574219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657562, 35.215305, 21.504223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522353, 0.852677, 0.009403,
		0.144388, -0.099309, 0.984525,
		0.840416, -0.512913, -0.174991,
		34.909687, 35.061432, 21.451725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809490, 35.716022, 21.980236>,  <34.321396, 35.420471, 21.574219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809490, 35.716022, 21.980236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031979, 35.529293, 21.705223>,  <35.165470, 35.417255, 21.540216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031979, 35.529293, 21.705223>,  <34.809490, 35.716022, 21.980236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031979, 35.529293, 21.705223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706567, 0.701167, 0.095544,
		0.437472, -0.538929, 0.719843,
		0.556221, -0.466819, -0.687530,
		35.198845, 35.389248, 21.498964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074074, 36.102554, 22.540073>,  <34.809490, 35.716022, 21.980236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074074, 36.102554, 22.540073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375942, 36.342300, 22.646832>,  <35.557064, 36.486149, 22.710886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375942, 36.342300, 22.646832>,  <35.074074, 36.102554, 22.540073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375942, 36.342300, 22.646832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207157, -0.603651, 0.769865,
		0.622542, -0.525705, -0.579720,
		0.754670, 0.599367, 0.266894,
		35.602345, 36.522110, 22.726900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758831, 35.766846, 22.564114>,  <35.074074, 36.102554, 22.540073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758831, 35.766846, 22.564114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691120, 36.055145, 22.832996>,  <35.650494, 36.228127, 22.994326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691120, 36.055145, 22.832996>,  <35.758831, 35.766846, 22.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691120, 36.055145, 22.832996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293892, -0.614108, 0.732461,
		0.940730, 0.321547, -0.107866,
		-0.169279, 0.720749, 0.672209,
		35.640335, 36.271370, 23.034658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287560, 35.731384, 23.061289>,  <35.758831, 35.766846, 22.564114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287560, 35.731384, 23.061289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993153, 35.928497, 23.246952>,  <35.816509, 36.046764, 23.358349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993153, 35.928497, 23.246952>,  <36.287560, 35.731384, 23.061289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993153, 35.928497, 23.246952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193862, -0.503503, 0.841963,
		0.648608, 0.709684, 0.275057,
		-0.736020, 0.492781, 0.464157,
		35.772346, 36.076332, 23.386200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618195, 35.937603, 23.653179>,  <36.287560, 35.731384, 23.061289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618195, 35.937603, 23.653179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224747, 35.956841, 23.722660>,  <35.988678, 35.968384, 23.764349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224747, 35.956841, 23.722660>,  <36.618195, 35.937603, 23.653179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224747, 35.956841, 23.722660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131267, -0.469287, 0.873235,
		0.123511, 0.881735, 0.455289,
		-0.983623, 0.048089, 0.173704,
		35.929661, 35.971268, 23.774771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580700, 36.191364, 24.263275>,  <36.618195, 35.937603, 23.653179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580700, 36.191364, 24.263275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235279, 35.991402, 24.236816>,  <36.028027, 35.871422, 24.220942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235279, 35.991402, 24.236816>,  <36.580700, 36.191364, 24.263275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235279, 35.991402, 24.236816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135478, -0.356353, 0.924477,
		-0.485725, 0.789370, 0.375454,
		-0.863549, -0.499908, -0.066147,
		35.976215, 35.841431, 24.216972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300686, 36.234402, 24.918158>,  <36.580700, 36.191364, 24.263275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300686, 36.234402, 24.918158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117855, 35.933201, 24.728817>,  <36.008156, 35.752480, 24.615211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.117855, 35.933201, 24.728817>,  <36.300686, 36.234402, 24.918158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117855, 35.933201, 24.728817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099596, -0.572187, 0.814053,
		-0.883832, 0.324943, 0.336531,
		-0.457080, -0.753004, -0.473354,
		35.980732, 35.707298, 24.586811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813656, 36.042542, 25.376671>,  <36.300686, 36.234402, 24.918158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813656, 36.042542, 25.376671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883396, 35.731182, 25.135441>,  <35.925240, 35.544365, 24.990704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883396, 35.731182, 25.135441>,  <35.813656, 36.042542, 25.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883396, 35.731182, 25.135441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124334, -0.590149, 0.797663,
		-0.976803, -0.214054, -0.006110,
		0.174349, -0.778399, -0.603073,
		35.935699, 35.497662, 24.954519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317432, 35.543755, 25.564243>,  <35.813656, 36.042542, 25.376671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317432, 35.543755, 25.564243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624435, 35.356598, 25.388966>,  <35.808636, 35.244305, 25.283798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624435, 35.356598, 25.388966>,  <35.317432, 35.543755, 25.564243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624435, 35.356598, 25.388966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053535, -0.634391, 0.771156,
		-0.638835, -0.615306, -0.461832,
		0.767479, -0.467917, -0.438212,
		35.854687, 35.216228, 25.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133240, 34.875805, 25.457262>,  <35.317432, 35.543755, 25.564243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133240, 34.875805, 25.457262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530823, 34.888100, 25.499397>,  <35.769375, 34.895477, 25.524679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530823, 34.888100, 25.499397>,  <35.133240, 34.875805, 25.457262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530823, 34.888100, 25.499397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059678, -0.654157, 0.754001,
		0.092085, -0.755734, -0.648372,
		0.993961, 0.030739, 0.105339,
		35.829010, 34.897320, 25.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334629, 34.209763, 25.630819>,  <35.133240, 34.875805, 25.457262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334629, 34.209763, 25.630819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674225, 34.400703, 25.721466>,  <35.877983, 34.515266, 25.775854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674225, 34.400703, 25.721466>,  <35.334629, 34.209763, 25.630819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674225, 34.400703, 25.721466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187241, -0.672804, 0.715734,
		0.494122, -0.565219, -0.660583,
		0.848990, 0.477348, 0.226615,
		35.928921, 34.543907, 25.789450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765152, 33.690475, 25.829910>,  <35.334629, 34.209763, 25.630819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765152, 33.690475, 25.829910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949013, 34.009045, 25.987103>,  <36.059330, 34.200188, 26.081417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949013, 34.009045, 25.987103>,  <35.765152, 33.690475, 25.829910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949013, 34.009045, 25.987103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247263, -0.539763, 0.804684,
		0.852984, -0.272706, -0.445029,
		0.459652, 0.796422, 0.392979,
		36.086910, 34.247971, 26.104996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239910, 33.253414, 26.105297>,  <35.765152, 33.690475, 25.829910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239910, 33.253414, 26.105297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222755, 33.610523, 26.284683>,  <36.212463, 33.824787, 26.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222755, 33.610523, 26.284683>,  <36.239910, 33.253414, 26.105297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222755, 33.610523, 26.284683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130800, -0.439998, 0.888422,
		0.990481, 0.096759, -0.097905,
		-0.042884, 0.892771, 0.448465,
		36.209888, 33.878353, 26.419222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739021, 33.167149, 26.753086>,  <36.239910, 33.253414, 26.105297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739021, 33.167149, 26.753086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464779, 33.452858, 26.809303>,  <36.300232, 33.624283, 26.843033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464779, 33.452858, 26.809303>,  <36.739021, 33.167149, 26.753086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464779, 33.452858, 26.809303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148891, -0.326571, 0.933372,
		0.712580, 0.619004, 0.330249,
		-0.685610, 0.714273, 0.140543,
		36.259094, 33.667141, 26.851467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674217, 33.283813, 27.528749>,  <36.739021, 33.167149, 26.753086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674217, 33.283813, 27.528749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351501, 33.488079, 27.409874>,  <36.157871, 33.610638, 27.338549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351501, 33.488079, 27.409874>,  <36.674217, 33.283813, 27.528749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351501, 33.488079, 27.409874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438413, -0.180209, 0.880522,
		0.396093, 0.840684, 0.369271,
		-0.806787, 0.510661, -0.297187,
		36.109467, 33.641277, 27.320719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476654, 33.813545, 28.036425>,  <36.674217, 33.283813, 27.528749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476654, 33.813545, 28.036425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146385, 33.705406, 27.838364>,  <35.948223, 33.640522, 27.719526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.146385, 33.705406, 27.838364>,  <36.476654, 33.813545, 28.036425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146385, 33.705406, 27.838364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465891, -0.168190, 0.868710,
		-0.318132, 0.947958, 0.012919,
		-0.825674, -0.270346, -0.495152,
		35.898682, 33.624302, 27.689817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932659, 34.054958, 28.434849>,  <36.476654, 33.813545, 28.036425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932659, 34.054958, 28.434849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745663, 33.806023, 28.183723>,  <35.633465, 33.656662, 28.033049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.745663, 33.806023, 28.183723>,  <35.932659, 34.054958, 28.434849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745663, 33.806023, 28.183723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632029, -0.261235, 0.729586,
		-0.618056, 0.737869, -0.271212,
		-0.467488, -0.622339, -0.627813,
		35.605415, 33.619320, 27.995380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253540, 34.074764, 28.627869>,  <35.932659, 34.054958, 28.434849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253540, 34.074764, 28.627869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283432, 33.724110, 28.437744>,  <35.301369, 33.513718, 28.323669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283432, 33.724110, 28.437744>,  <35.253540, 34.074764, 28.627869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283432, 33.724110, 28.437744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524855, -0.439861, 0.728732,
		-0.847905, 0.195013, -0.492978,
		0.074730, -0.876637, -0.475314,
		35.305851, 33.461117, 28.295151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616386, 33.751514, 28.886377>,  <35.253540, 34.074764, 28.627869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616386, 33.751514, 28.886377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836498, 33.452827, 28.736923>,  <34.968567, 33.273617, 28.647251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836498, 33.452827, 28.736923>,  <34.616386, 33.751514, 28.886377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836498, 33.452827, 28.736923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338277, -0.608482, 0.717856,
		-0.763387, -0.268629, -0.587433,
		0.550280, -0.746718, -0.373637,
		35.001583, 33.228813, 28.624832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129658, 33.139885, 28.823387>,  <34.616386, 33.751514, 28.886377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129658, 33.139885, 28.823387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496681, 32.981850, 28.841228>,  <34.716896, 32.887028, 28.851933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496681, 32.981850, 28.841228>,  <34.129658, 33.139885, 28.823387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496681, 32.981850, 28.841228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292093, -0.593720, 0.749786,
		-0.269746, -0.701003, -0.660175,
		0.917562, -0.395084, 0.044604,
		34.771950, 32.863323, 28.854610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042664, 32.477436, 28.826191>,  <34.129658, 33.139885, 28.823387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042664, 32.477436, 28.826191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407597, 32.504990, 28.987637>,  <34.626556, 32.521523, 29.084505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407597, 32.504990, 28.987637>,  <34.042664, 32.477436, 28.826191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407597, 32.504990, 28.987637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249647, -0.687750, 0.681672,
		0.324540, -0.722673, -0.610261,
		0.912332, 0.068880, 0.403615,
		34.681297, 32.525654, 29.108721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251705, 31.767754, 28.859720>,  <34.042664, 32.477436, 28.826191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251705, 31.767754, 28.859720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488091, 31.958893, 29.119698>,  <34.629921, 32.073578, 29.275684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488091, 31.958893, 29.119698>,  <34.251705, 31.767754, 28.859720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488091, 31.958893, 29.119698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072052, -0.771197, 0.632506,
		0.803477, -0.420615, -0.421316,
		0.590959, 0.477847, 0.649946,
		34.665379, 32.102245, 29.314682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494389, 31.193361, 29.232058>,  <34.251705, 31.767754, 28.859720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494389, 31.193361, 29.232058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610119, 31.501064, 29.459930>,  <34.679558, 31.685686, 29.596653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610119, 31.501064, 29.459930>,  <34.494389, 31.193361, 29.232058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610119, 31.501064, 29.459930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017583, -0.599303, 0.800329,
		0.957070, -0.221536, -0.186918,
		0.289323, 0.769258, 0.569680,
		34.696915, 31.731842, 29.630835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136295, 31.020800, 29.702230>,  <34.494389, 31.193361, 29.232058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136295, 31.020800, 29.702230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911427, 31.309891, 29.863041>,  <34.776505, 31.483345, 29.959526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911427, 31.309891, 29.863041>,  <35.136295, 31.020800, 29.702230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911427, 31.309891, 29.863041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208215, -0.594141, 0.776945,
		0.800380, 0.353070, 0.484493,
		-0.562173, 0.722730, 0.402024,
		34.742775, 31.526711, 29.983648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196777, 30.953451, 30.468390>,  <35.136295, 31.020800, 29.702230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196777, 30.953451, 30.468390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869713, 31.177624, 30.415710>,  <34.673473, 31.312128, 30.384104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869713, 31.177624, 30.415710>,  <35.196777, 30.953451, 30.468390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869713, 31.177624, 30.415710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511899, -0.603100, 0.611743,
		0.263413, 0.567616, 0.780017,
		-0.817663, 0.560431, -0.131697,
		34.624413, 31.345753, 30.376202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051041, 31.296448, 31.168396>,  <35.196777, 30.953451, 30.468390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051041, 31.296448, 31.168396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714413, 31.293026, 30.952362>,  <34.512436, 31.290974, 30.822742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714413, 31.293026, 30.952362>,  <35.051041, 31.296448, 31.168396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714413, 31.293026, 30.952362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462463, -0.505219, 0.728617,
		-0.279094, 0.862949, 0.421219,
		-0.841567, -0.008554, -0.540085,
		34.461941, 31.290461, 30.790337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598660, 31.634207, 31.532366>,  <35.051041, 31.296448, 31.168396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598660, 31.634207, 31.532366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363674, 31.416119, 31.293159>,  <34.222683, 31.285265, 31.149635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363674, 31.416119, 31.293159>,  <34.598660, 31.634207, 31.532366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363674, 31.416119, 31.293159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355457, -0.490020, 0.795947,
		-0.727006, 0.680157, 0.094065,
		-0.587462, -0.545222, -0.598014,
		34.187435, 31.252552, 31.113756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965122, 31.634502, 31.902184>,  <34.598660, 31.634207, 31.532366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965122, 31.634502, 31.902184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940132, 31.333366, 31.640091>,  <33.925137, 31.152685, 31.482836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940132, 31.333366, 31.640091>,  <33.965122, 31.634502, 31.902184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940132, 31.333366, 31.640091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264977, -0.620440, 0.738135,
		-0.962229, 0.219739, -0.160721,
		-0.062479, -0.752841, -0.655230,
		33.921387, 31.107513, 31.443521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309921, 31.284018, 32.074760>,  <33.965122, 31.634502, 31.902184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309921, 31.284018, 32.074760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547005, 31.028728, 31.878242>,  <33.689255, 30.875555, 31.760332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.547005, 31.028728, 31.878242>,  <33.309921, 31.284018, 32.074760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547005, 31.028728, 31.878242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123154, -0.674629, 0.727812,
		-0.795947, -0.370875, -0.478457,
		0.592708, -0.638223, -0.491294,
		33.724815, 30.837261, 31.730854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550930, 31.251177, 31.637388>,  <33.309921, 31.284018, 32.074760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550930, 31.251177, 31.637388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160240, 31.264416, 31.722168>,  <31.925827, 31.272360, 31.773035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160240, 31.264416, 31.722168>,  <32.550930, 31.251177, 31.637388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160240, 31.264416, 31.722168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131699, 0.687385, -0.714253,
		-0.169331, -0.725539, -0.667024,
		-0.976720, 0.033099, 0.211949,
		31.867224, 31.274345, 31.785753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214294, 31.011290, 30.952166>,  <32.550930, 31.251177, 31.637388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214294, 31.011290, 30.952166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976812, 31.237091, 31.181545>,  <31.834322, 31.372572, 31.319174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976812, 31.237091, 31.181545>,  <32.214294, 31.011290, 30.952166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976812, 31.237091, 31.181545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164583, 0.782768, -0.600155,
		-0.787668, -0.261937, -0.557645,
		-0.593710, 0.564502, 0.573451,
		31.798700, 31.406441, 31.353580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769503, 31.232018, 30.503498>,  <32.214294, 31.011290, 30.952166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769503, 31.232018, 30.503498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743151, 31.496059, 30.802811>,  <31.727341, 31.654484, 30.982397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743151, 31.496059, 30.802811>,  <31.769503, 31.232018, 30.503498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743151, 31.496059, 30.802811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041318, 0.747460, -0.663020,
		-0.996972, -0.074596, -0.021967,
		-0.065878, 0.660105, 0.748279,
		31.723387, 31.694090, 31.027294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362255, 31.726280, 30.281546>,  <31.769503, 31.232018, 30.503498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362255, 31.726280, 30.281546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522026, 31.941986, 30.578098>,  <31.617889, 32.071411, 30.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522026, 31.941986, 30.578098>,  <31.362255, 31.726280, 30.281546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522026, 31.941986, 30.578098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091823, 0.781096, -0.617623,
		-0.912155, 0.314771, 0.262474,
		0.399427, 0.539267, 0.741384,
		31.641853, 32.103767, 30.800514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950371, 32.374428, 30.330601>,  <31.362255, 31.726280, 30.281546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950371, 32.374428, 30.330601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313438, 32.429295, 30.489254>,  <31.531279, 32.462215, 30.584446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313438, 32.429295, 30.489254>,  <30.950371, 32.374428, 30.330601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313438, 32.429295, 30.489254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149145, 0.777960, -0.610355,
		-0.392288, 0.613157, 0.685674,
		0.907671, 0.137170, 0.396634,
		31.585739, 32.470444, 30.608244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
